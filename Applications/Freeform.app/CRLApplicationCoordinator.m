@interface CRLApplicationCoordinator
+ (_TtC8Freeform25CRLApplicationCoordinator)shared;
- (_TtC8Freeform25CRLApplicationCoordinator)init;
@end

@implementation CRLApplicationCoordinator

- (_TtC8Freeform25CRLApplicationCoordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLApplicationCoordinator_isActivating) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLApplicationCoordinator_isInBackground) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLApplicationCoordinator_isTerminating) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLApplicationCoordinator();
  return [(CRLApplicationCoordinator *)&v3 init];
}

+ (_TtC8Freeform25CRLApplicationCoordinator)shared
{
  if (qword_1019F1EB0 != -1)
  {
    swift_once();
  }

  v3 = qword_101A152D0;

  return v3;
}

@end