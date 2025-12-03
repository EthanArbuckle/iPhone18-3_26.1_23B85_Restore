@interface AMSUIApplePayButton
- (AMSUIApplePayButton)initWithButtonType:(int64_t)type;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AMSUIApplePayButton

- (AMSUIApplePayButton)initWithButtonType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = AMSUIApplePayButton;
  v4 = [(AMSUIApplePayButton *)&v7 init];
  if (v4)
  {
    v5 = [objc_alloc(getPKPaymentButtonClass[0]()) initWithPaymentButtonType:type paymentButtonStyle:3];
    [v5 sizeToFit];
    [v5 setAutoresizingMask:18];
    [(AMSUIApplePayButton *)v4 setButton:v5];
    [(AMSUIApplePayButton *)v4 addSubview:v5];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  button = [(AMSUIApplePayButton *)self button];
  [button intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = AMSUIApplePayButton;
  [(AMSUIApplePayButton *)&v12 layoutSubviews];
  [(AMSUIApplePayButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  button = [(AMSUIApplePayButton *)self button];
  [button setFrame:{v4, v6, v8, v10}];
}

@end