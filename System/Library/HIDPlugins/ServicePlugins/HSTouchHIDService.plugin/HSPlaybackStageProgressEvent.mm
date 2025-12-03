@interface HSPlaybackStageProgressEvent
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (id).cxx_construct;
@end

@implementation HSPlaybackStageProgressEvent

- (BOOL)hsEncode:(void *)encode
{
  if (!*encode)
  {
    *&v9 = *(encode + 17);
    DWORD2(v9) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v9);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xE8u, 0);
  }

  begin = self->datas.__begin_;
  var0 = self->datas.var0;
  while (begin != var0)
  {
    v7 = *begin;
    HSUtil::Encoder::encodeObject(encode, v7);

    ++begin;
  }

  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)decode
{
  HSUtil::Decoder::decodeArray(decode, v10);
  if (*decode)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v13);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPlaybackStageProgressEvent hsDecode:];
    }
  }

  else
  {
    while (1)
    {
      v5 = HSUtil::Decoder::decodeObject(v10);
      v9 = v5;
      if (v10[0])
      {
        break;
      }

      std::vector<objc_object * {__strong}>::push_back[abi:ne200100](&self->datas.__begin_, &v9);
    }

    if (v10[0] == 3)
    {

      v6 = 1;
      goto LABEL_12;
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v13);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPlaybackStageProgressEvent hsDecode:];
    }
  }

  v6 = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = v11;
  v11 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
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

@end