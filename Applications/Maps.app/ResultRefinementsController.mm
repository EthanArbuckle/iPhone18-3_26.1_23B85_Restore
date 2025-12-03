@interface ResultRefinementsController
- (_TtC4Maps27ResultRefinementsController)init;
- (_TtP4Maps35ResultRefinementsControllerDelegate_)delegate;
- (void)refinementBarButtonTappedWithRefinementID:(id)d submenuElementID:(id)iD viewModel:(id)model;
@end

@implementation ResultRefinementsController

- (_TtP4Maps35ResultRefinementsControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)refinementBarButtonTappedWithRefinementID:(id)d submenuElementID:(id)iD viewModel:(id)model
{
  v8 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (iD)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v12 + 56))(v10, v15, 1, v11);
  modelCopy = model;
  selfCopy = self;
  sub_10023F49C(v14, v10, modelCopy);

  sub_100192A14(v10);
  (*(v12 + 8))(v14, v11);
}

- (_TtC4Maps27ResultRefinementsController)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ResultRefinementsController();
  return [(ResultRefinementsController *)&v4 init];
}

@end