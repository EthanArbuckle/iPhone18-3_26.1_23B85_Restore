@interface NotesMetadataActivityItemProvider
- (_TtC18ASMessagesProvider33NotesMetadataActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation NotesMetadataActivityItemProvider

- (id)item
{
  selfCopy = self;
  sub_30C710(v5);

  sub_B170(v5, v5[3]);
  v3 = sub_76A930();
  sub_BEB8(v5);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_30C80C(type, v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_B170(v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_76A930();
    (*(v11 + 8))(v14, v9);
    sub_BEB8(v17);
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
  sub_30CC98(type);

  v9 = sub_769210();

  return v9;
}

- (_TtC18ASMessagesProvider33NotesMetadataActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_76A510();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end