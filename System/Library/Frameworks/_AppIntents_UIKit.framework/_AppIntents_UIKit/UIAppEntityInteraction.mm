@interface UIAppEntityInteraction
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)setView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation UIAppEntityInteraction

- (UIView)view
{
  v2 = sub_1AE86CDD0();

  return v2;
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1AE86CE6C(view);
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1AE86D8D0();
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1AE86DBAC(view);
}

@end