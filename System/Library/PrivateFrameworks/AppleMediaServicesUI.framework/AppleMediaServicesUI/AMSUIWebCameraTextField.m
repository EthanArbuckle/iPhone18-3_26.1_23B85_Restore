@interface AMSUIWebCameraTextField
- (AMSUIWebCameraTextField)initWithFrame:(CGRect)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
@end

@implementation AMSUIWebCameraTextField

- (AMSUIWebCameraTextField)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AMSUIWebCameraTextField;
  v3 = [(AMSUIWebCameraTextField *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(AMSUIWebCameraTextField *)v3 setBackgroundColor:v4];

    [(AMSUIWebCameraTextField *)v3 setOpaque:1];
  }

  return v3;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = AMSUIWebCameraTextField;
  [(AMSUIWebCameraTextField *)&v8 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = AMSUIWebCameraTextField;
  [(AMSUIWebCameraTextField *)&v8 placeholderRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = AMSUIWebCameraTextField;
  [(AMSUIWebCameraTextField *)&v8 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

@end