@interface TextActivityItemProvider
- (_TtC20ProductPageExtension24TextActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation TextActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if (type)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_excludedActivityTypes);
    controllerCopy = controller;
    selfCopy = self;
    typeCopy = type;
    if (sub_1006938BC(typeCopy, v7))
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

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_text);
  v14 = *&self->text[OBJC_IVAR____TtC20ProductPageExtension24TextActivityItemProvider_text];
  v22[3] = &type metadata for String;
  v22[0] = v15;
  v22[1] = v14;

  v16 = sub_10000CF78(v22, &type metadata for String);
  v17 = *(&type metadata for String - 1);
  v18 = __chkstk_darwin(v16);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  v11 = sub_10077165C();
  (*(v17 + 8))(v20, &type metadata for String);
  sub_10000CD74(v22);
LABEL_6:

  return v11;
}

- (id)item
{

  v2 = sub_1007716BC();

  return v2;
}

- (_TtC20ProductPageExtension24TextActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_10077123C();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end