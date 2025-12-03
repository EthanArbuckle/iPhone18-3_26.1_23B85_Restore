@interface JSSocialOnboardingWelcomeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setIsAccessibilityElement:(BOOL)element;
@end

@implementation JSSocialOnboardingWelcomeView

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(JSSocialOnboardingWelcomeView *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (void)setAccessibilityLabel:(id)label
{
  ObjectType = swift_getObjectType();
  if (label)
  {
    sub_AB92A0();
    selfCopy = self;
    label = sub_AB9260();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(JSSocialOnboardingWelcomeView *)&v8 setAccessibilityLabel:label];
}

- (void)layoutSubviews
{
  selfCopy = self;
  JSSocialOnboardingWelcomeView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = JSSocialOnboardingWelcomeView.sizeThatFits(_:)(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end