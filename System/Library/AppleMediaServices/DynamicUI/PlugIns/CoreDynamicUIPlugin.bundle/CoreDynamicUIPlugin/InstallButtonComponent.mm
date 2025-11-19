@interface InstallButtonComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSString)accessibilityLabel;
- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation InstallButtonComponent

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_44F34();
  v4 = v3;

  if (v4)
  {
    v5 = sub_8F5C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_8F5F4();
  }

  v4 = self;
  sub_18714();
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_4503C();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_450C8(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_45128();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_451C4();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v5 = self;
  sub_452FC();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_46758();
}

- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_46DCC();

  swift_unknownObjectRelease();

  return v7;
}

@end