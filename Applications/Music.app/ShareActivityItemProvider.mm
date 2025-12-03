@interface ShareActivityItemProvider
- (_TtC5Music25ShareActivityItemProvider)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ShareActivityItemProvider

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  URL.init(string:)();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v7 + 8))(v12, v6);

    return v14;
  }

  return result;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v5 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(self + OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url, v7, &qword_101183A20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_101183A20);
    v12 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v8);
    v12 = v13;
  }

  return v12;
}

- (_TtC5Music25ShareActivityItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end