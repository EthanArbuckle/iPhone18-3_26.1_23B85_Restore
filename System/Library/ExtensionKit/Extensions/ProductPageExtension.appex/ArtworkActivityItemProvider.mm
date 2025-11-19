@interface ArtworkActivityItemProvider
- (_TtC20ProductPageExtension27ArtworkActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)item;
@end

@implementation ArtworkActivityItemProvider

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10065AF68(a4, &v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_10000CF78(&v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_10077165C();
    (*(v11 + 8))(v14, v9);
    sub_10000CD74(&v17);
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
  sub_10065B234(v5);

  sub_10000CF78(v5, v5[3]);
  v3 = sub_10077165C();
  sub_10000CD74(v5);

  return v3;
}

- (_TtC20ProductPageExtension27ArtworkActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_10077123C();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end