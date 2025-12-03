@interface CardStackSubviewContainer
- (void)setContainedView:(id)view;
@end

@implementation CardStackSubviewContainer

- (void)setContainedView:(id)view
{
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_100135EA4(v6);
  sub_10013630C();
}

@end