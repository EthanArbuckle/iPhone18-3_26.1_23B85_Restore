@interface WidgetPersonalizationService
- (_TtC10NewsToday228WidgetPersonalizationService)init;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count;
- (id)limitItemsByMinimumItemQuality:(id)quality;
- (id)rankTagIDsDescending:(id)descending;
- (id)scoresForTagIDs:(id)ds;
- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set;
- (void)prepareForUseWithCompletionHandler:(id)handler;
- (void)prewarmWithTabiScores:(id)scores configurationSet:(int64_t)set;
@end

@implementation WidgetPersonalizationService

- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set
{
  sub_100019558(&qword_10011F600);
  v6 = sub_1000CAED0();
  selfCopy = self;
  v8 = sub_10004B3B4(v6);

  return v8;
}

- (id)limitItemsByMinimumItemQuality:(id)quality
{
  sub_100019558(&qword_10011F600);
  sub_1000CAED0();
  selfCopy = self;
  sub_1000C9B10();

  v5.super.isa = sub_1000CAEC0().super.isa;

  return v5.super.isa;
}

- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count
{
  sub_100019558(&qword_10011F600);
  sub_1000CAED0();
  selfCopy = self;
  sub_1000C9B00();

  v7.super.isa = sub_1000CAEC0().super.isa;

  return v7.super.isa;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_1000C9B20();
}

- (double)decayedPublisherDiversificationPenalty
{
  selfCopy = self;
  v3 = sub_1000C9B50();

  return v3;
}

- (id)rankTagIDsDescending:(id)descending
{
  if (descending)
  {
    v4 = sub_1000CAED0();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v10.value._rawValue = v4;
  v6 = sub_1000C9B40(v10);

  if (v6)
  {
    v7.super.isa = sub_1000CAEC0().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)scoresForTagIDs:(id)ds
{
  if (ds)
  {
    v4 = sub_1000CAED0();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v10.value._rawValue = v4;
  v6 = sub_1000C9B60(v10);

  if (v6)
  {
    sub_10001F934(0, &unk_100121850);
    v7.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (void)prewarmWithTabiScores:(id)scores configurationSet:(int64_t)set
{
  sub_10001F934(0, &unk_100121850);
  v5 = sub_1000CAC10();
  selfCopy = self;
  sub_10004C734(v5);
}

- (_TtC10NewsToday228WidgetPersonalizationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end