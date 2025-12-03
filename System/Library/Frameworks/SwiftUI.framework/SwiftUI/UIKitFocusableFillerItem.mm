@interface UIKitFocusableFillerItem
- (CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (UIFocusEnvironment)parentFocusEnvironment;
- (_TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem)init;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation UIKitFocusableFillerItem

- (CGRect)frame
{
  v2 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame;
  v3 = (self + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame);
  if (self->logicalFrame[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame + 7])
  {
    v2 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
    v3 = (self + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
  }

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[1];
  v7 = *(&self->super.super.super.isa + v2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (NSArray)preferredFocusEnvironments
{
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusEnvironment);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  specialized UIKitFocusableFillerItem.didUpdateFocus(in:with:)();
}

- (_TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end