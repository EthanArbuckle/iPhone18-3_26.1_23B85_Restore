@interface NTKParmesanPreviewSimpleValidator
- (CGSize)photoSize;
- (NTKParmesanPreviewSimpleValidator)initWithPhotoSize:(CGSize)a3 maskOffsetTop:(double)a4 timeLabelInsetTop:(double)a5;
@end

@implementation NTKParmesanPreviewSimpleValidator

- (NTKParmesanPreviewSimpleValidator)initWithPhotoSize:(CGSize)a3 maskOffsetTop:(double)a4 timeLabelInsetTop:(double)a5
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = NTKParmesanPreviewSimpleValidator;
  result = [(NTKParmesanPreviewSimpleValidator *)&v10 init];
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