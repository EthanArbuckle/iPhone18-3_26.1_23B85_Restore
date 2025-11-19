@interface C3DTextureSamplerTrilinearRepeatNoAnisotropy
@end

@implementation C3DTextureSamplerTrilinearRepeatNoAnisotropy

__n128 __C3DTextureSamplerTrilinearRepeatNoAnisotropy_block_invoke()
{
  v0 = C3DTextureSamplerCreate();
  C3DTextureSamplerTrilinearRepeatNoAnisotropy_states = v0;
  v0[2].n128_u64[0] = 0x200000002;
  result.n128_u64[0] = 0x200000002;
  result.n128_u64[1] = 0x200000002;
  v0[1] = result;
  v0[4].n128_u32[2] = 2;
  v0[4].n128_u32[0] = 1065353216;
  v0[5].n128_u64[0] = (v0[4].n128_u8[4] << 16) | 0x1000A925;
  return result;
}

@end