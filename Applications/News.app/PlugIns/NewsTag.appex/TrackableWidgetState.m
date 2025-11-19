@interface TrackableWidgetState
- (NSDate)fetchDate;
- (NSString)contentID;
- (NSString)entryID;
- (id)extentsOfSections:(id)a3;
- (id)sectionForItem:(id)a3;
- (id)visibleItems;
- (id)visibleItemsOfType:(unint64_t)a3;
- (id)visibleSections;
- (unint64_t)absoluteOrderOfSection:(id)a3;
- (unint64_t)activeDisplayMode;
@end

@implementation TrackableWidgetState

- (NSString)entryID
{

  v2 = sub_1000A2D10();

  return v2;
}

- (NSString)contentID
{
  if (*(self + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID + 8))
  {

    v2 = sub_1000A2D10();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)absoluteOrderOfSection:(id)a3
{
  v3 = a3;

  v4 = sub_10006692C(v3);

  return v4;
}

- (id)visibleSections
{

  sub_100066AD8();

  sub_100028E34(0, &qword_1000E5DF0);
  v2.super.isa = sub_1000A2F00().super.isa;

  return v2.super.isa;
}

- (id)sectionForItem:(id)a3
{
  swift_unknownObjectRetain();

  v4 = sub_100066E4C(a3);
  swift_unknownObjectRelease();

  return v4;
}

- (id)visibleItems
{

  sub_100065C78();

  sub_100017A54(&unk_1000E6020);
  v2.super.isa = sub_1000A2F00().super.isa;

  return v2.super.isa;
}

- (id)visibleItemsOfType:(unint64_t)a3
{

  sub_100067410(a3);

  sub_100017A54(&unk_1000E6020);
  v4.super.isa = sub_1000A2F00().super.isa;

  return v4.super.isa;
}

- (id)extentsOfSections:(id)a3
{
  sub_100028E34(0, &qword_1000E5DF0);
  sub_1000A2F10();

  v3 = objc_autoreleasePoolPush();
  sub_100068B9C();
  objc_autoreleasePoolPop(v3);
  sub_100028E34(0, &qword_1000E7EB0);
  sub_10006C818();
  sub_1000A2F30();

  v4.super.isa = sub_1000A2C50().super.isa;

  return v4.super.isa;
}

- (unint64_t)activeDisplayMode
{
  v2 = *(self + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext + 16) - 1;
  if (v2 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1000ADDB8[v2];
  }
}

- (NSDate)fetchDate
{
  v3 = sub_1000A1810();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentFetchDate, v3);
  v7.super.isa = sub_1000A1770().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

@end