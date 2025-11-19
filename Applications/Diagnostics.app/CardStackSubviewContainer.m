@interface CardStackSubviewContainer
- (void)setContainedView:(id)a3;
@end

@implementation CardStackSubviewContainer

- (void)setContainedView:(id)a3
{
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView) = a3;
  v4 = a3;
  v5 = self;
  sub_100135EA4(v6);
  sub_10013630C();
}

@end