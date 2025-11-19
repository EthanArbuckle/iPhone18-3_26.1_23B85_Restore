@interface URLActivityItemProvider
- (_TtC8AppStore23URLActivityItemProvider)initWithPlaceholderItem:(id)a3;
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
    v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore23URLActivityItemProvider_excludedActivityTypes);
    v8 = a3;
    v9 = self;
    v10 = a4;
    if (sub_100296374(v10, v7))
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

  *(&v22 + 1) = type metadata accessor for URL();
  sub_1000056E0(&v21);
  ShareSheetData.url.getter();

LABEL_6:
  v13 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v14 = sub_10002A400(&v21, *(&v22 + 1));
    v15 = *(v13 - 8);
    v16 = __chkstk_darwin(v14);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v18, v13);
    sub_100007000(&v21);
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
  sub_100714D60(v5);

  sub_10002A400(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100007000(v5);

  return v3;
}

- (_TtC8AppStore23URLActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100715220();

  return v6;
}

- (id)activityViewControllerSubject:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1007162BC();
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end