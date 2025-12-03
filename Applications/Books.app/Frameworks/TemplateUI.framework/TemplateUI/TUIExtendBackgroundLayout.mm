@interface TUIExtendBackgroundLayout
- (_TtC10TemplateUIP33_6F1B14DAC644E9753C9E747B48468C3725TUIExtendBackgroundLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
- (void)onChildrenUpdated;
@end

@implementation TUIExtendBackgroundLayout

- (void)onChildrenUpdated
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TUIExtendBackgroundLayout();
  v2 = v3.receiver;
  [(TUILayout *)&v3 onChildrenUpdated];
  swift_unknownObjectWeakAssign();
}

- (void)computeLayout
{
  selfCopy = self;
  sub_1954D8();
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_195610(kind, context);
  v10 = v9;

  return v10;
}

- (_TtC10TemplateUIP33_6F1B14DAC644E9753C9E747B48468C3725TUIExtendBackgroundLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  swift_unknownObjectWeakInit();
  v12.receiver = self;
  v12.super_class = type metadata accessor for TUIExtendBackgroundLayout();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  controllerCopy = controller;
  v10 = [(TUILayout *)&v12 initWithModel:model parent:parent controller:controllerCopy];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v10)
  {
  }

  return v10;
}

@end