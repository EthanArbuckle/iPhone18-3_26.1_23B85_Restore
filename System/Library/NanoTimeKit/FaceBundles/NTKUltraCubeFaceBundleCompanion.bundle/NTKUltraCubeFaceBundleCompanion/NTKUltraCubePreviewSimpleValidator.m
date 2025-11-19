@interface NTKUltraCubePreviewSimpleValidator
- (CGSize)photoSize;
- (NTKUltraCubePreviewSimpleValidator)initWithPhotoSize:(CGSize)a3 maskOffsetTop:(double)a4 timeLabelInsetTop:(double)a5;
@end

@implementation NTKUltraCubePreviewSimpleValidator

- (NTKUltraCubePreviewSimpleValidator)initWithPhotoSize:(CGSize)a3 maskOffsetTop:(double)a4 timeLabelInsetTop:(double)a5
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = NTKUltraCubePreviewSimpleValidator;
  result = [(NTKUltraCubePreviewSimpleValidator *)&v10 init];
  if (result)
  {
    result->_photoSize.width = width;
    result->_photoSize.height = height;
    result->_maskOffsetTop = a4;
    result->_timeLabelInsetTop = a5;
  }

  return result;
}

- (CGSize)photoSize
{
  width = self->_photoSize.width;
  height = self->_photoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end