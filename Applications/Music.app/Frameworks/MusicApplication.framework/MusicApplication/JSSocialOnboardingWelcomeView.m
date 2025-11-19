@interface JSSocialOnboardingWelcomeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
@end

@implementation JSSocialOnboardingWelcomeView

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(JSSocialOnboardingWelcomeView *)&v4 setIsAccessibilityElement:v3];
}

- (NSString)accessibilityLabel
{
  v2 = self;
  JSSocialOnboardingWelcomeView.accessibilityLabel.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_AB92A0();
    v6 = self;
    a3 = sub_AB9260();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(JSSocialOnboardingWelcomeView *)&v8 setAccessibilityLabel:a3];
}

- (void)layoutSubviews
{
  v2 = self;
  JSSocialOnboardingWelcomeView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = JSSocialOnboardingWelcomeView.sizeThatFits(_:)(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end