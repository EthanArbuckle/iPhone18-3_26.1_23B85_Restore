@interface AVCaptionInsetsOptions
- (AVCaptionInsetsOptions)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVCaptionInsetsOptions allocWithZone:?]];
  [(AVCaptionInsetsOptions *)v4 setAllowsHorizontalTextWrap:[(AVCaptionInsetsOptions *)self allowsHorizontalTextWrap]];
  [(AVCaptionInsetsOptions *)v4 setAllowsHorizontalTextRepositioning:[(AVCaptionInsetsOptions *)self allowsHorizontalTextRepositioning]];
  [(AVCaptionInsetsOptions *)v4 setAllowsVerticalTextWrap:[(AVCaptionInsetsOptions *)self allowsVerticalTextWrap]];
  [(AVCaptionInsetsOptions *)v4 setAllowsVerticalTextRepositioning:[(AVCaptionInsetsOptions *)self allowsVerticalTextRepositioning]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVCaptionInsetsOptions *)self allowsHorizontalTextWrap];
  if (v5 != [a3 allowsHorizontalTextWrap])
  {
    return 0;
  }

  v6 = [(AVCaptionInsetsOptions *)self allowsHorizontalTextRepositioning];
  if (v6 != [a3 allowsHorizontalTextRepositioning])
  {
    return 0;
  }

  v7 = [(AVCaptionInsetsOptions *)self allowsVerticalTextWrap];
  if (v7 != [a3 allowsVerticalTextWrap])
  {
    return 0;
  }

  v9 = [(AVCaptionInsetsOptions *)self allowsVerticalTextRepositioning];
  return v9 ^ [a3 allowsVerticalTextRepositioning] ^ 1;
}

@end