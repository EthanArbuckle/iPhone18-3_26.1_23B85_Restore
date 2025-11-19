@interface HSTGetPropertyEvent
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (id).cxx_construct;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSTGetPropertyEvent

- (void)encodeToMap:(void *)a3
{
  v6.receiver = self;
  v6.super_class = HSTGetPropertyEvent;
  [(HSTEvent *)&v6 encodeToMap:?];
  p_key = &self->key;
  if (*(&self->key.__rep_.__l + 23) < 0)
  {
    p_key = p_key->__rep_.__l.__data_;
  }

  HSUtil::Encoder::encodeString(a3, HSUtil::CoderKey::Literal<(char)107,(char)101,(char)121>::Key, p_key->__rep_.__s.__data_);
  HSUtil::Encoder::encodeObject(a3, HSUtil::CoderKey::Literal<(char)118,(char)97,(char)108,(char)117,(char)101>::Key, self->value);
}

- (BOOL)decodeFromMap:(void *)a3
{
  v8.receiver = self;
  v8.super_class = HSTGetPropertyEvent;
  if ([(HSTEvent *)&v8 decodeFromMap:?])
  {
    HSUtil::Decoder::decodeString(a3, HSUtil::CoderKey::Literal<(char)107,(char)101,(char)121>::Key, __b);
    std::string::assign(&self->key, __b[5]);
    HSUtil::Buffer::~Buffer(__b);
    if (*a3)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTGetPropertyEvent decodeFromMap:];
      }
    }

    else
    {
      v6 = HSUtil::Decoder::decodeObject(a3, HSUtil::CoderKey::Literal<(char)118,(char)97,(char)108,(char)117,(char)101>::Key);
      value = self->value;
      self->value = v6;

      if (!*a3)
      {
        return 1;
      }

      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTGetPropertyEvent decodeFromMap:];
      }
    }
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTGetPropertyEvent decodeFromMap:];
    }
  }

  return 0;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v6 = *(a3 + 17);
    DWORD2(v6) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xEAu, 0);
  }

  [(HSTGetPropertyEvent *)self encodeToMap:a3];
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
  v12 = v5;
  v13 = v5;
  v10 = v5;
  v11 = v5;
  v9 = v5;
  HSUtil::Decoder::decodeMap(a3, &v9);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTGetPropertyEvent hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(HSTGetPropertyEvent *)self decodeFromMap:&v9];
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v10;
  *&v10 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 24) = 0uLL;
  *(self + 2) = 0;
  return self;
}

- (void)decodeFromMap:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end