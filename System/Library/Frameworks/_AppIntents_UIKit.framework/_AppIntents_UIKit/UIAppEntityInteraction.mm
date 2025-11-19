@interface UIAppEntityInteraction
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)setView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIAppEntityInteraction

- (UIView)view
{
  v2 = sub_1AE86CDD0();

  return v2;
}

- (void)setView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AE86CE6C(a3);
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AE86D8D0();
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AE86DBAC(a3);
}

@end