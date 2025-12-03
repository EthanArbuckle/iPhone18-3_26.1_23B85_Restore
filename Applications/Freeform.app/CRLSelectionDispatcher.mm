@interface CRLSelectionDispatcher
- (_TtC8Freeform22CRLSelectionDispatcher)init;
- (void)snapshotSelectionState;
- (void)validateSelections;
@end

@implementation CRLSelectionDispatcher

- (void)snapshotSelectionState
{
  selfCopy = self;
  sub_10113E27C();
}

- (void)validateSelections
{
  selfCopy = self;
  sub_10113EB48();
}

- (_TtC8Freeform22CRLSelectionDispatcher)init
{
  v3 = OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers;
  *(&self->super.isa + v3) = [objc_opt_self() weakObjectsHashTable];
  v4 = OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_selectionStateSnapshots;
  *(&self->super.isa + v4) = [objc_opt_self() weakToStrongObjectsMapTable];
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLSelectionDispatcher();
  return [(CRLSelectionDispatcher *)&v6 init];
}

@end