@interface URLActivityItemProvider
- (_TtC22SubscribePageExtension23URLActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (id)activityViewControllerSubject:(id)a3;
- (id)item;
@end

@implementation URLActivityItemProvider

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if (a4)
  {
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension23URLActivityItemProvider_excludedActivityTypes);
    v8 = a3;
    v9 = self;
    v10 = a4;
    if (sub_1002A5630(v10, v7))
    {
      v21 = 0u;
      v22 = 0u;

      goto LABEL_6;
    }
  }

  else
  {
    v11 = a3;
    v12 = self;
  }

  *(&v22 + 1) = sub_100741264();
  sub_10000D134(&v21);
  sub_100744FE4();

LABEL_6:
  v13 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v14 = sub_10000C888(&v21, *(&v22 + 1));
    v15 = *(v13 - 8);
    v16 = __chkstk_darwin(v14);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_100754734();
    (*(v15 + 8))(v18, v13);
    sub_10000C620(&v21);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)item
{
  v2 = self;
  sub_10055E518(v5);

  sub_10000C888(v5, v5[3]);
  v3 = sub_100754734();
  sub_10000C620(v5);

  return v3;
}

- (_TtC22SubscribePageExtension23URLActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_100754314();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10055E9D8();

  return v6;
}

- (id)activityViewControllerSubject:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_10055FA74();
  v7 = v6;

  if (v7)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end