@interface AMSUIWebCameraTextField
- (AMSUIWebCameraTextField)initWithFrame:(CGRect)frame;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
@end

@implementation AMSUIWebCameraTextField

- (AMSUIWebCameraTextField)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AMSUIWebCameraTextField;
  v3 = [(AMSUIWebCameraTextField *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AMSUIWebCameraTextField *)v3 setBackgroundColor:clearColor];

    [(AMSUIWebCameraTextField *)v3 setOpaque:1];
  }

  return v3;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = AMSUIWebCameraTextField;
  [(AMSUIWebCameraTextField *)&v8 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = AMSUIWebCameraTextField;
  [(AMSUIWebCameraTextField *)&v8 placeholderRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = AMSUIWebCameraTextField;
  [(AMSUIWebCameraTextField *)&v8 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

@end