@interface ArtworkActivityItemProvider
- (_TtC18ASMessagesProvider27ArtworkActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)item;
@end

@implementation ArtworkActivityItemProvider

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_64C9CC(a4, &v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_B170(&v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_76A930();
    (*(v11 + 8))(v14, v9);
    sub_BEB8(&v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)item
{
  v2 = self;
  sub_64CC98(v5);

  sub_B170(v5, v5[3]);
  v3 = sub_76A930();
  sub_BEB8(v5);

  return v3;
}

- (_TtC18ASMessagesProvider27ArtworkActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_76A510();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end