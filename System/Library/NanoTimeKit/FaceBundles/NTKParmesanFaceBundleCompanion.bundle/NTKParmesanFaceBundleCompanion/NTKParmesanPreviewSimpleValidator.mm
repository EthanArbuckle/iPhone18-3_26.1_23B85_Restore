@interface NTKParmesanPreviewSimpleValidator
- (CGSize)photoSize;
- (NTKParmesanPreviewSimpleValidator)initWithPhotoSize:(CGSize)size maskOffsetTop:(double)top timeLabelInsetTop:(double)insetTop;
@end

@implementation NTKParmesanPreviewSimpleValidator

- (NTKParmesanPreviewSimpleValidator)initWithPhotoSize:(CGSize)size maskOffsetTop:(double)top timeLabelInsetTop:(double)insetTop
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = NTKParmesanPreviewSimpleValidator;
  result = [(NTKParmesanPreviewSimpleValidator *)&v10 init];
  if (result)
  {
    result->_photoSize.width = width;
    result->_photoSize.height = height;
    result->_maskOffsetTop = top;
    result->_timeLabelInsetTop = insetTop;
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