@interface HSServiceDirectoryService
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
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

- (BOOL)hsEncode:(void *)encode
{
  if (!*encode)
  {
    *&v6 = *(encode + 17);
    DWORD2(v6) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v6);
    HSUtil::Encoder::_writeTokenValue16(encode, 0xE7u, 0);
  }

  HSUtil::Encoder::encodeNSString(encode, self->name);
  HSUtil::Encoder::encodeNSString(encode, self->description);
  HSUtil::Encoder::encodeNSString(encode, self->protocol);
  if (!*encode)
  {
    HSUtil::Encoder::_encodeUInt(encode, self->version);
    if (!*encode)
    {
      HSUtil::Encoder::_encodeContainerStop(encode);
    }
  }

  return 1;
}

- (BOOL)hsDecode:(void *)decode
{
  HSUtil::Decoder::decodeArray(decode, v14);
  if (*decode)
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