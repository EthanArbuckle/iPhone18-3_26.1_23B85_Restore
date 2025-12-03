@interface NotesMetadataActivityItemProvider
- (_TtC11AppStoreKit33NotesMetadataActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation NotesMetadataActivityItemProvider

- (id)item
{
  selfCopy = self;
  sub_1E14703E8(v5);

  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v3 = sub_1E1AF748C();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1E14704E4(type, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1E1AF748C();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1E1470908(type);

  v9 = sub_1E1AF5DBC();

  return v9;
}

- (_TtC11AppStoreKit33NotesMetadataActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end