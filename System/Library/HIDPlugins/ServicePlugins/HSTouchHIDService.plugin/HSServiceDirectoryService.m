@interface HSServiceDirectoryService
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (NSString)description;
@end

@implementation HSServiceDirectoryService

- (NSString)description
{
  name = self->name;
  protocol = self->protocol;
  v4 = [NSNumber numberWithUnsignedLongLong:self->version];
  v5 = [NSString stringWithFormat:@"HSServiceDirectoryService{%@, %@:%@}", name, protocol, v4];

  return v5;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v6 = *(a3 + 17);
    DWORD2(v6) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xE7u, 0);
  }

  HSUtil::Encoder::encodeNSString(a3, self->name);
  HSUtil::Encoder::encodeNSString(a3, self->description);
  HSUtil::Encoder::encodeNSString(a3, self->protocol);
  if (!*a3)
  {
    HSUtil::Encoder::_encodeUInt(a3, self->version);
    if (!*a3)
    {
      HSUtil::Encoder::_encodeContainerStop(a3);
    }
  }

  return 1;
}

- (BOOL)hsDecode:(void *)a3
{
  HSUtil::Decoder::decodeArray(a3, v14);
  if (*a3)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectoryService hsDecode:];
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v5 = HSUtil::Decoder::decodeNSString(v14);
  name = self->name;
  self->name = v5;

  if (v14[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectoryService hsDecode:];
    }

    goto LABEL_16;
  }

  v7 = HSUtil::Decoder::decodeNSString(v14);
  description = self->description;
  self->description = v7;

  if (v14[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectoryService hsDecode:];
    }

    goto LABEL_16;
  }

  v9 = HSUtil::Decoder::decodeNSString(v14);
  protocol = self->protocol;
  self->protocol = v9;

  if (v14[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectoryService hsDecode:];
    }

    goto LABEL_16;
  }

  self->version = HSUtil::Decoder::decodeUInt(v14);
  if (v14[0])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServiceDirectory.mm", v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSServiceDirectoryService hsDecode:];
    }

    goto LABEL_16;
  }

  v11 = 1;
LABEL_17:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v12);
    operator delete();
  }

  return v11;
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

- (void)hsDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end