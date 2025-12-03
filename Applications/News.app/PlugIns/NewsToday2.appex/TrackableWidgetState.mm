@interface TrackableWidgetState
- (NSDate)fetchDate;
- (NSString)contentID;
- (NSString)entryID;
- (id)extentsOfSections:(id)sections;
- (id)sectionForItem:(id)item;
- (id)visibleItems;
- (id)visibleItemsOfType:(unint64_t)type;
- (id)visibleSections;
- (unint64_t)absoluteOrderOfSection:(id)section;
- (unint64_t)activeDisplayMode;
@end

@implementation TrackableWidgetState

- (NSString)entryID
{

  v2 = sub_1000CACD0();

  return v2;
}

- (NSString)contentID
{
  if (*(self + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID + 8))
  {

    v2 = sub_1000CACD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)absoluteOrderOfSection:(id)section
{
  sectionCopy = section;

  v4 = sub_10009FDB4(sectionCopy);

  return v4;
}

- (id)visibleSections
{

  sub_10009FF60();

  sub_10001F934(0, &qword_10011ED50);
  v2.super.isa = sub_1000CAEC0().super.isa;

  return v2.super.isa;
}

- (id)sectionForItem:(id)item
{
  swift_unknownObjectRetain();

  v4 = sub_1000A02D4(item);
  swift_unknownObjectRelease();

  return v4;
}

- (id)visibleItems
{

  sub_10009F100();

  sub_100019558(&unk_10011E710);
  v2.super.isa = sub_1000CAEC0().super.isa;

  return v2.super.isa;
}

- (id)visibleItemsOfType:(unint64_t)type
{

  sub_1000A0898(type);

  sub_100019558(&unk_10011E710);
  v4.super.isa = sub_1000CAEC0().super.isa;

  return v4.super.isa;
}

- (id)extentsOfSections:(id)sections
{
  sub_10001F934(0, &qword_10011ED50);
  sub_1000CAED0();

  v3 = objc_autoreleasePoolPush();
  sub_1000A2024();
  objc_autoreleasePoolPop(v3);
  sub_10001F934(0, &unk_100121850);
  sub_1000A5554();
  sub_1000CAEF0();

  v4.super.isa = sub_1000CAC00().super.isa;

  return v4.super.isa;
}

- (unint64_t)activeDisplayMode
{
  v2 = *(self + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext + 16) - 1;
  if (v2 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1000DAB78[v2];
  }
}

- (NSDate)fetchDate
{
  v3 = sub_1000C95A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentFetchDate, v3);
  v7.super.isa = sub_1000C94F0().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

@end