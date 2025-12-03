@interface ArtworkActivityItemProvider
- (_TtC22SubscribePageExtension27ArtworkActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation ArtworkActivityItemProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_10070B0B0(type, &v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_10000C888(&v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_100754734();
    (*(v11 + 8))(v14, v9);
    sub_10000C620(&v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)item
{
  selfCopy = self;
  sub_10070B37C(v5);

  sub_10000C888(v5, v5[3]);
  v3 = sub_100754734();
  sub_10000C620(v5);

  return v3;
}

- (_TtC22SubscribePageExtension27ArtworkActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_100754314();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end