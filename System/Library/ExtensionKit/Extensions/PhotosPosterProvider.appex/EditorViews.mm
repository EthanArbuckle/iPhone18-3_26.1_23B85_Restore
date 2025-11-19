@interface EditorViews
- (UIView)backgroundView;
- (UIView)floatingView;
- (UIView)foregroundView;
@end

@implementation EditorViews

- (UIView)backgroundView
{
  v2 = self;
  v3 = sub_10000F5F4();

  return v3;
}

- (UIView)foregroundView
{
  v2 = self;
  v3 = sub_10000F678();

  return v3;
}

- (UIView)floatingView
{
  v2 = self;
  v3 = sub_10000F6FC();

  return v3;
}

@end