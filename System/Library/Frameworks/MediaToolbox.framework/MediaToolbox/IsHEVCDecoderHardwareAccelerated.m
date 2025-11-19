@interface IsHEVCDecoderHardwareAccelerated
@end

@implementation IsHEVCDecoderHardwareAccelerated

uint64_t __mv_IsHEVCDecoderHardwareAccelerated_block_invoke()
{
  result = VTIsHardwareDecodeSupported(0x68766331u);
  if (result)
  {
    sHEVCDecoderIsHardwareAccelerated = 1;
  }

  return result;
}

@end