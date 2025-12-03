@interface ExpandableSection
- (void)handleTap;
@end

@implementation ExpandableSection

- (void)handleTap
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded) = (*(&self->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded) & 1) == 0;
  selfCopy = self;
  sub_1001321AC();
}

@end