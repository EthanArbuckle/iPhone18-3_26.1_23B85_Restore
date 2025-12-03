@interface CycleTimelineCollectionViewLayoutInvalidationContext
- (NSString)description;
- (_TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext)init;
@end

@implementation CycleTimelineCollectionViewLayoutInvalidationContext

- (NSString)description
{
  sub_29E2C3714();
  v6[2] = self;
  selfCopy = self;
  sub_29E0D88FC(sub_29DEF8A84, v6);

  v4 = sub_29E2C33A4();

  return v4;
}

- (_TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateZoomArea) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateForHorizontalSizeChanges) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext();
  return [(CycleTimelineCollectionViewLayoutInvalidationContext *)&v3 init];
}

@end