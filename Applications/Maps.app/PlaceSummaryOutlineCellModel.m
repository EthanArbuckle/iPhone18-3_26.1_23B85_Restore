@interface PlaceSummaryOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (UICollectionViewCellRegistration)cellRegistration;
- (_TtC4Maps28PlaceSummaryOutlineCellModel)init;
- (_TtP4Maps36PlaceSummaryOutlineCellModelDelegate_)delegate;
- (id)homeActionObject;
- (id)homeDragAndDropObject;
- (int64_t)hash;
- (void)setPlaceSummaryViewModelTemplate:(id)a3;
- (void)setRapObject:(id)a3;
- (void)setSearchResult:(id)a3;
@end

@implementation PlaceSummaryOutlineCellModel

- (void)setPlaceSummaryViewModelTemplate:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate);
  *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate) = a3;
  v3 = a3;
}

- (void)setSearchResult:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
  *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult) = a3;
  v3 = a3;
}

- (void)setRapObject:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_rapObject);
  *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_rapObject) = a3;
  v3 = a3;
}

- (_TtP4Maps36PlaceSummaryOutlineCellModelDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UICollectionViewCellRegistration)cellRegistration
{
  if (qword_101906658 != -1)
  {
    swift_once();
  }

  v3 = qword_10195FE68;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1002AD130(v8);

  sub_1000DB2F4(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  result = *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
  if (result)
  {
    return [result hash];
  }

  return result;
}

- (id)homeActionObject
{
  v2 = self;
  sub_1002AD488(v11);

  v3 = v12;
  if (v12)
  {
    v4 = sub_10005E838(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10004E3D0(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)homeDragAndDropObject
{
  v2 = *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
  if (v2)
  {
    v6 = *(self + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
    sub_100014C84(0, &qword_10190E160);
    v3 = v2;
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC4Maps28PlaceSummaryOutlineCellModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end