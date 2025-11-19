@interface HSTHIDEvents
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (HSTHIDEvents)init;
- (NSString)description;
- (id).cxx_construct;
@end

@implementation HSTHIDEvents

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (HSTHIDEvents)init
{
  v6.receiver = self;
  v6.super_class = HSTHIDEvents;
  v2 = [(HSTHIDEvents *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->timestamp = HSUtil::GetMonotonicTime(v2);
    v4 = v3;
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_new();
  begin = self->events.__begin_;
  for (i = self->events.var0; begin != i; ++begin)
  {
    v6 = *begin;
    [v3 appendFormat:@"%@\n", v6];
  }

  v7 = [NSString stringWithFormat:@"<HSTHIDEvents events: %@>", v3];

  return v7;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v10 = *(a3 + 17);
    DWORD2(v10) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v10);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xE7u, 0);
  }

  begin = self->events.__begin_;
  var0 = self->events.var0;
  while (begin != var0)
  {
    v7 = *begin;
    Data = IOHIDEventCreateData();
    if (!Data)
    {

      return 0;
    }

    HSUtil::Encoder::encodeNSData(a3, Data);

    ++begin;
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
  v15 = v5;
  v16 = v5;
  v13 = v5;
  v14 = v5;
  v12 = v5;
  HSUtil::Decoder::decodeArray(a3, &v12);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEvents.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEvents hsDecode:];
    }
  }

  else
  {
    while (1)
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v10[2] = v6;
      v10[3] = v6;
      v10[0] = v6;
      v10[1] = v6;
      HSUtil::Decoder::decodeData(&v12, v10);
      if (v12)
      {
        break;
      }

      __b[0] = IOHIDEventCreateWithBytes();
      if (!__b[0])
      {
        goto LABEL_11;
      }

      std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](&self->events.__begin_, __b);

      HSUtil::Buffer::~Buffer(v10);
    }

    if (v12 == 3)
    {
      HSUtil::Buffer::~Buffer(v10);
      v7 = 1;
      goto LABEL_13;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEvents.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTHIDEvents hsDecode:];
    }

LABEL_11:
    HSUtil::Buffer::~Buffer(v10);
  }

  v7 = 0;
LABEL_13:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v8 = v13;
  *&v13 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  return v7;
}

- (void)hsDecode:.cold.1()
{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 53;
  v3 = v0;
  v4 = "coder";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

- (void)hsDecode:.cold.2()
{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 60;
  v3 = v0;
  v4 = "array";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

@end