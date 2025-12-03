@interface UIAppIntentInteraction
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)setView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation UIAppIntentInteraction

- (UIView)view
{
  v2 = sub_1AE85AD8C();

  return v2;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1AE85AE00();
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1AE85B5A4();
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1AE85B104(view);
}

@end