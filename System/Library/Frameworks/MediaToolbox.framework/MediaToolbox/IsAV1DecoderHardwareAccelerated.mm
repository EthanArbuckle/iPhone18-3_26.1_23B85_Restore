@interface IsAV1DecoderHardwareAccelerated
@end

@implementation IsAV1DecoderHardwareAccelerated

uint64_t __mv_IsAV1DecoderHardwareAccelerated_block_invoke()
{
  result = VTIsHardwareDecodeSupported(0x61763031u);
  if (result)
  {
    sAV1DecoderIsHardwareAccelerated = 1;
  }

  return result;
}

@end