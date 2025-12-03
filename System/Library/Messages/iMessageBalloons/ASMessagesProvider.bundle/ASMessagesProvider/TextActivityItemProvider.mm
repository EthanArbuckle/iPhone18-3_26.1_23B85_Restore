@interface TextActivityItemProvider
- (_TtC18ASMessagesProvider24TextActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation TextActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_6672F8(typeCopy, v7))
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

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_text);
  v14 = *&self->text[OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_text];
  v22[3] = &type metadata for String;
  v22[0] = v15;
  v22[1] = v14;

  v16 = sub_B170(v22, &type metadata for String);
  v17 = *(&type metadata for String - 1);
  v18 = __chkstk_darwin(v16);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  v11 = sub_76A930();
  (*(v17 + 8))(v20, &type metadata for String);
  sub_BEB8(v22);
LABEL_6:

  return v11;
}

- (id)item
{

  v2 = sub_76A990();

  return v2;
}

- (_TtC18ASMessagesProvider24TextActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_76A510();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end