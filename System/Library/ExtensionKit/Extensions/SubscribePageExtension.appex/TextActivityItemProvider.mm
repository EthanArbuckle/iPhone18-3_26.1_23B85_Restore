@interface TextActivityItemProvider
- (_TtC22SubscribePageExtension24TextActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)item;
@end

@implementation TextActivityItemProvider

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if (a4)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_excludedActivityTypes);
    v8 = a3;
    v9 = self;
    v10 = a4;
    if (sub_1002A5630(v10, v7))
    {

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = a3;
    v13 = self;
  }

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_text);
  v14 = *&self->text[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_text];
  v22[3] = &type metadata for String;
  v22[0] = v15;
  v22[1] = v14;

  v16 = sub_10000C888(v22, &type metadata for String);
  v17 = *(&type metadata for String - 1);
  v18 = __chkstk_darwin(v16);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  v11 = sub_100754734();
  (*(v17 + 8))(v20, &type metadata for String);
  sub_10000C620(v22);
LABEL_6:

  return v11;
}

- (id)item
{

  v2 = sub_100754794();

  return v2;
}

- (_TtC22SubscribePageExtension24TextActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_100754314();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end