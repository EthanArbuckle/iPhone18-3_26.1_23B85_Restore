@interface EditorViews
- (UIView)backgroundView;
- (UIView)floatingView;
- (UIView)foregroundView;
@end

@implementation EditorViews

- (UIView)backgroundView
{
  v2 = self;
  v3 = sub_10000A630();

  return v3;
}

- (UIView)foregroundView
{
  v2 = self;
  v3 = sub_10000A6B4();

  return v3;
}

- (UIView)floatingView
{
  v2 = self;
  v3 = sub_10000A738();

  return v3;
}

@end