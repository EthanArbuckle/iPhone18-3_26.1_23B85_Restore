@interface TextActivityItemProvider
- (_TtC11AppStoreKit24TextActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation TextActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_1E14AB35C(typeCopy, v7))
    {

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text);
  v14 = *(&self->super.super._iop.__prevOp + OBJC_IVAR____TtC11AppStoreKit24TextActivityItemProvider_text);
  v16 = MEMORY[0x1E69E6158];
  v23[3] = MEMORY[0x1E69E6158];
  v23[0] = v15;
  v23[1] = v14;

  v17 = __swift_project_boxed_opaque_existential_1Tm(v23, v16);
  v18 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v19);
  v11 = sub_1E1AF748C();
  (*(v18 + 8))(v21, v16);
  __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_6:

  return v11;
}

- (id)item
{

  v2 = sub_1E1AF755C();

  return v2;
}

- (_TtC11AppStoreKit24TextActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end