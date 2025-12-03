@interface AVCaptionInsetsOptions
- (AVCaptionInsetsOptions)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVCaptionInsetsOptions

- (AVCaptionInsetsOptions)init
{
  v3.receiver = self;
  v3.super_class = AVCaptionInsetsOptions;
  result = [(AVCaptionInsetsOptions *)&v3 init];
  if (result)
  {
    *&result->_allowsHorizontalTextWrap = 257;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AVCaptionInsetsOptions allocWithZone:?]];
  [(AVCaptionInsetsOptions *)v4 setAllowsHorizontalTextWrap:[(AVCaptionInsetsOptions *)self allowsHorizontalTextWrap]];
  [(AVCaptionInsetsOptions *)v4 setAllowsHorizontalTextRepositioning:[(AVCaptionInsetsOptions *)self allowsHorizontalTextRepositioning]];
  [(AVCaptionInsetsOptions *)v4 setAllowsVerticalTextWrap:[(AVCaptionInsetsOptions *)self allowsVerticalTextWrap]];
  [(AVCaptionInsetsOptions *)v4 setAllowsVerticalTextRepositioning:[(AVCaptionInsetsOptions *)self allowsVerticalTextRepositioning]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  allowsHorizontalTextWrap = [(AVCaptionInsetsOptions *)self allowsHorizontalTextWrap];
  if (allowsHorizontalTextWrap != [equal allowsHorizontalTextWrap])
  {
    return 0;
  }

  allowsHorizontalTextRepositioning = [(AVCaptionInsetsOptions *)self allowsHorizontalTextRepositioning];
  if (allowsHorizontalTextRepositioning != [equal allowsHorizontalTextRepositioning])
  {
    return 0;
  }

  allowsVerticalTextWrap = [(AVCaptionInsetsOptions *)self allowsVerticalTextWrap];
  if (allowsVerticalTextWrap != [equal allowsVerticalTextWrap])
  {
    return 0;
  }

  allowsVerticalTextRepositioning = [(AVCaptionInsetsOptions *)self allowsVerticalTextRepositioning];
  return allowsVerticalTextRepositioning ^ [equal allowsVerticalTextRepositioning] ^ 1;
}

@end