@interface AVTStickerGeneratorPosterOptions
- (AVTStickerGeneratorPosterOptions)init;
- (CGSize)size;
@end

@implementation AVTStickerGeneratorPosterOptions

- (AVTStickerGeneratorPosterOptions)init
{
  v3.receiver = self;
  v3.super_class = AVTStickerGeneratorPosterOptions;
  result = [(AVTStickerGeneratorPosterOptions *)&v3 init];
  if (result)
  {
    *&result->_minimumHorizontalMargin = xmmword_1BB4F0690;
    result->_size = vdupq_n_s64(0x4061800000000000uLL);
    result->_growsForExtraTallContent = 1;
  }

  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end