@interface WidgetPersonalizationService
- (_TtC10NewsToday228WidgetPersonalizationService)init;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5;
- (id)limitItemsByMinimumItemQuality:(id)a3;
- (id)rankTagIDsDescending:(id)a3;
- (id)scoresForTagIDs:(id)a3;
- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5;
- (void)prepareForUseWithCompletionHandler:(id)a3;
- (void)prewarmWithTabiScores:(id)a3 configurationSet:(int64_t)a4;
@end

@implementation WidgetPersonalizationService

- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5
{
  sub_100019558(&qword_10011F600);
  v6 = sub_1000CAED0();
  v7 = self;
  v8 = sub_10004B3B4(v6);

  return v8;
}

- (id)limitItemsByMinimumItemQuality:(id)a3
{
  sub_100019558(&qword_10011F600);
  sub_1000CAED0();
  v4 = self;
  sub_1000C9B10();

  v5.super.isa = sub_1000CAEC0().super.isa;

  return v5.super.isa;
}

- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5
{
  sub_100019558(&qword_10011F600);
  sub_1000CAED0();
  v6 = self;
  sub_1000C9B00();

  v7.super.isa = sub_1000CAEC0().super.isa;

  return v7.super.isa;
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_1000C9B20();
}

- (double)decayedPublisherDiversificationPenalty
{
  v2 = self;
  v3 = sub_1000C9B50();

  return v3;
}

- (id)rankTagIDsDescending:(id)a3
{
  if (a3)
  {
    v4 = sub_1000CAED0();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
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

- (id)scoresForTagIDs:(id)a3
{
  if (a3)
  {
    v4 = sub_1000CAED0();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
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

- (void)prewarmWithTabiScores:(id)a3 configurationSet:(int64_t)a4
{
  sub_10001F934(0, &unk_100121850);
  v5 = sub_1000CAC10();
  v6 = self;
  sub_10004C734(v5);
}

- (_TtC10NewsToday228WidgetPersonalizationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end