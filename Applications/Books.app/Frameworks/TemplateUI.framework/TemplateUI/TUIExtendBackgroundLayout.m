@interface TUIExtendBackgroundLayout
- (_TtC10TemplateUIP33_6F1B14DAC644E9753C9E747B48468C3725TUIExtendBackgroundLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
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
  v2 = self;
  sub_1954D8();
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v7 = a4;
  v8 = self;
  sub_195610(a3, a4);
  v10 = v9;

  return v10;
}

- (_TtC10TemplateUIP33_6F1B14DAC644E9753C9E747B48468C3725TUIExtendBackgroundLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  swift_unknownObjectWeakInit();
  v12.receiver = self;
  v12.super_class = type metadata accessor for TUIExtendBackgroundLayout();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = [(TUILayout *)&v12 initWithModel:a3 parent:a4 controller:v9];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v10)
  {
  }

  return v10;
}

@end