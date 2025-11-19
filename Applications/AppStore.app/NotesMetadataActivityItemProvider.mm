@interface NotesMetadataActivityItemProvider
- (_TtC8AppStore33NotesMetadataActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)item;
@end

@implementation NotesMetadataActivityItemProvider

- (id)item
{
  v2 = self;
  sub_1004CE530(v5);

  sub_10002A400(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100007000(v5);

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004CE62C(a4, v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_10002A400(v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100007000(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004CEA50(a4);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (_TtC8AppStore33NotesMetadataActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end