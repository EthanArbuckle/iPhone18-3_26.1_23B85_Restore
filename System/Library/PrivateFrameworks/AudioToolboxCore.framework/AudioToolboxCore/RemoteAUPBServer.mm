@interface RemoteAUPBServer
- (id).cxx_construct;
- (void)addSema:(id)sema;
- (void)dealloc;
- (void)removeSema:(id)sema;
- (void)signalAllSemaphores;
@end

@implementation RemoteAUPBServer

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (void)signalAllSemaphores
{
  v15 = *MEMORY[0x1E69E9840];
  begin = self->replySemas.__begin_;
  var0 = self->replySemas.var0;
  if (begin != var0)
  {
    selfCopy = self;
    v4 = self->replySemas.__begin_;
    while (gLogScope)
    {
      v5 = *gLogScope;
      if (*gLogScope)
      {
        goto LABEL_7;
      }

LABEL_9:
      v6 = *begin++;
      dispatch_semaphore_signal(v6);
      ++v4;
      if (begin == var0)
      {
        self = selfCopy;
        begin = selfCopy->replySemas.__begin_;
        goto LABEL_11;
      }
    }

    v5 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "AUPBClientManager.mm";
      v11 = 1024;
      v12 = 92;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Signaling an outstanding sema %p\n", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_11:
  self->replySemas.var0 = begin;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeSema:(id)sema
{
  begin = self->replySemas.__begin_;
  var0 = self->replySemas.var0;
  if (begin != var0)
  {
    while (*begin != sema)
    {
      if (++begin == var0)
      {
        return;
      }
    }

    v6 = var0 - (begin + 1);
    if (var0 != begin + 1)
    {
      memmove(begin, begin + 1, var0 - (begin + 1));
    }

    self->replySemas.var0 = (begin + v6);
  }
}

- (void)addSema:(id)sema
{
  var0 = self->replySemas.var0;
  var1 = self->replySemas.var1;
  if (var0 >= var1)
  {
    begin = self->replySemas.__begin_;
    v9 = var0 - begin;
    v10 = var0 - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = var1 - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = var0 - begin;
    v15 = (8 * v10);
    v16 = (8 * v10 - 8 * v14);
    *v15 = sema;
    v7 = (v15 + 1);
    memcpy(v16, begin, v9);
    self->replySemas.__begin_ = v16;
    self->replySemas.var0 = v7;
    self->replySemas.var1 = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *var0 = sema;
    v7 = var0 + 1;
  }

  self->replySemas.var0 = v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RemoteAUPBServer;
  [(RemoteAUPBServer *)&v3 dealloc];
}

@end