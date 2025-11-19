@interface HSTContactStabilizerStats
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (id).cxx_construct;
@end

@implementation HSTContactStabilizerStats

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v8 = *(a3 + 17);
    DWORD2(v8) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v8);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xE7u, 0);
    if (!*a3)
    {
      HSUtil::Encoder::_encodeUInt(a3, self->hysteresisRadius);
    }
  }

  begin = self->contacts.__begin_;
  end = self->contacts.__end_;
  while (begin != end)
  {
    if (!*a3)
    {
      StatContact::encode(begin, a3);
    }

    begin = (begin + 28);
  }

  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v25 = v5;
  HSUtil::Decoder::decodeArray(a3, &v25);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTContactStabilizerStats hsDecode:];
    }
  }

  else
  {
    self->hysteresisRadius = HSUtil::Decoder::decodeUInt(&v25);
    if (v25)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTContactStabilizerStats hsDecode:];
      }
    }

    else
    {
      p_contacts = &self->contacts;
      for (self->contacts.__end_ = self->contacts.__begin_; ; self->contacts.__end_ = v10)
      {
        *v24 = -1431655936;
        memset(&v24[4], 0, 24);
        HSUtil::Decoder::decodeCodable<StatContact>(&v25, v24);
        if (v25)
        {
          break;
        }

        end = self->contacts.__end_;
        cap = self->contacts.__cap_;
        if (end >= cap)
        {
          v11 = 0x6DB6DB6DB6DB6DB7 * ((end - p_contacts->__begin_) >> 2);
          v12 = v11 + 1;
          if ((v11 + 1) > 0x924924924924924)
          {
            std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
          }

          v13 = 0x6DB6DB6DB6DB6DB7 * ((cap - p_contacts->__begin_) >> 2);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0x492492492492492)
          {
            v14 = 0x924924924924924;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<StatContact>>(&self->contacts, v14);
          }

          v15 = 28 * v11;
          v16 = *v24;
          *(v15 + 12) = *&v24[12];
          *v15 = v16;
          v10 = (28 * v11 + 28);
          begin = self->contacts.__begin_;
          v18 = (self->contacts.__end_ - begin);
          v19 = (28 * v11 - v18);
          memcpy((v15 - v18), begin, v18);
          v20 = self->contacts.__begin_;
          self->contacts.__begin_ = v19;
          self->contacts.__end_ = v10;
          self->contacts.__cap_ = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          v9 = *v24;
          *(end + 12) = *&v24[12];
          *end = v9;
          v10 = (end + 28);
        }
      }

      if (v25 == 3)
      {
        v21 = 1;
        goto LABEL_27;
      }

      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTContactStabilizerStats hsDecode:];
      }
    }
  }

  v21 = 0;
LABEL_27:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v22 = v26;
  *&v26 = 0;
  if (v22)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v22);
    operator delete();
  }

  return v21;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end