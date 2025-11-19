@interface AbortWaitLock
- (AbortWaitLock)init;
- (BOOL)increment;
- (id).cxx_construct;
- (void)decrement;
- (void)wait;
@end

@implementation AbortWaitLock

- (AbortWaitLock)init
{
  v4.receiver = self;
  v4.super_class = AbortWaitLock;
  result = [(AbortWaitLock *)&v4 init];
  *(result + 128) = 0;
  v3 = ++gNextDbgID;
  *(result + 30) = 0;
  *(result + 31) = v3;
  return result;
}

- (void)wait
{
  __lk.__m_ = (self + 8);
  __lk.__owns_ = 1;
  std::mutex::lock((self + 8));
  *(self + 128) = 1;
  while (*(self + 30))
  {
    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v5.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v3.__d_.__rep_ = 500000000;
    if (!v5.__d_.__rep_)
    {
      goto LABEL_3;
    }

    if (v5.__d_.__rep_ < 1)
    {
      v3.__d_.__rep_ = 0x800000001DCD6500;
      if (v5.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        goto LABEL_3;
      }

LABEL_10:
      if (v5.__d_.__rep_ < 0x20C49BA5DBB2D8)
      {
        v3.__d_.__rep_ = 1000 * v5.__d_.__rep_ + 500000000;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if (v5.__d_.__rep_ <= 0x20C49BA5E353F7)
    {
      goto LABEL_10;
    }

LABEL_2:
    v3.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_3:
    std::condition_variable::__do_timed_wait((self + 72), &__lk, v3);
    if (std::chrono::steady_clock::now().__d_.__rep_ - v4.__d_.__rep_ > 499999999)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Timeout waiting for pipe abort", v6, 2u);
      }

      *(self + 30) = 0;
      break;
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

- (BOOL)increment
{
  std::mutex::lock((self + 8));
  v3 = *(self + 128);
  if ((v3 & 1) == 0)
  {
    ++*(self + 30);
  }

  std::mutex::unlock((self + 8));
  return v3 ^ 1;
}

- (void)decrement
{
  std::mutex::lock((self + 8));
  v3 = *(self + 30) - 1;
  *(self + 30) = v3;
  if (v3)
  {
    v4 = (self + 8);
  }

  else
  {
    std::condition_variable::notify_one((self + 72));
    v4 = (self + 8);
  }

  std::mutex::unlock(v4);
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 1018212795;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 14) = 0;
  return self;
}

@end