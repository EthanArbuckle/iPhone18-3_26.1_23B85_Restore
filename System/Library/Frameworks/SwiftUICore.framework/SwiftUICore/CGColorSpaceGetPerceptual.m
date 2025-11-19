@interface CGColorSpaceGetPerceptual
@end

@implementation CGColorSpaceGetPerceptual

CGColorSpaceRef ___CGColorSpaceGetPerceptual_block_invoke()
{
  result = CGColorSpaceCreateCalibratedRGB(_block_invoke_white, 0, _block_invoke_gamma, _block_invoke_matrix);
  _CGColorSpaceGetPerceptual_space = result;
  return result;
}

@end