@interface VTVideoCodecService
@end

@implementation VTVideoCodecService

uint64_t __VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode_block_invoke()
{
  if (deviceIsDarwinOSProduct_onceToken != -1)
  {
    __VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode_block_invoke_cold_1();
  }

  if (deviceIsDarwinOSProduct_isDarwinOS)
  {
    result = 0;
  }

  else
  {
    result = _os_feature_enabled_impl();
  }

  VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode_featureEnabled = result;
  return result;
}

uint64_t __VTVideoCodecService_ShouldUseXPCRemoteTileDecompressionSession_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  VTVideoCodecService_ShouldUseXPCRemoteTileDecompressionSession_prefersMIG = result;
  return result;
}

uint64_t __VTVideoCodecService_ShouldUseOOPDecodeForVideoPlayer_block_invoke()
{
  result = _os_feature_enabled_impl();
  VTVideoCodecService_ShouldUseOOPDecodeForVideoPlayer_featureEnabled = result;
  return result;
}

uint64_t __VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = FigCFEqual();
  if (v0)
  {
    CFRelease(v0);
  }

  if (!v1)
  {
    if (deviceIsDarwinOSProduct_onceToken != -1)
    {
      __VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode_block_invoke_cold_1();
    }

    if (deviceIsDarwinOSProduct_isDarwinOS)
    {
      result = 0;
    }

    else
    {
      result = _os_feature_enabled_impl();
    }

    goto LABEL_12;
  }

  result = _os_feature_enabled_impl();
  VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode_featureEnabled = result;
  if ((result & 1) == 0)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = 1;
LABEL_12:
      VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode_featureEnabled = result;
    }
  }

  return result;
}

@end