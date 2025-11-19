@interface UIAppIntentInteraction
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)setView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIAppIntentInteraction

- (UIView)view
{
  v2 = sub_1AE85AD8C();

  return v2;
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AE85AE00();
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AE85B5A4();
}

- (void)setView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AE85B104(a3);
}

@end