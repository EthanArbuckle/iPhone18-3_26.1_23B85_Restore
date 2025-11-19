@interface AMSUICommonButton
- (AMSUICommonButton)init;
@end

@implementation AMSUICommonButton

- (AMSUICommonButton)init
{
  v5.receiver = self;
  v5.super_class = AMSUICommonButton;
  v2 = [(AMSUICommonButton *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AMSUICommonButton *)v2 _setup];
  }

  return v3;
}

@end