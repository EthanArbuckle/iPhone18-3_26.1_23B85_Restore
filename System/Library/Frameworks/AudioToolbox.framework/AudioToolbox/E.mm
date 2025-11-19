@interface E
@end

@implementation E

vDSP_biquad_Setup __E_UTIL_deemph_block_invoke(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[1] = 0.0;
  v2[2] = 0.0;
  v2[0] = 1.0;
  v2[3] = -*(a1 + 32);
  v2[4] = 0.0;
  result = vDSP_biquad_CreateSetup(v2, 1uLL);
  E_UTIL_deemph_biquad = result;
  return result;
}

vDSP_biquad_Setup __E_UTIL_hp50_12k8_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_19B0B2FF0;
  v1[1] = xmmword_19B0B3000;
  v2 = 0x3FEF550000000000;
  result = vDSP_biquad_CreateSetup(v1, 1uLL);
  E_UTIL_hp50_12k8_biquad = result;
  return result;
}

@end