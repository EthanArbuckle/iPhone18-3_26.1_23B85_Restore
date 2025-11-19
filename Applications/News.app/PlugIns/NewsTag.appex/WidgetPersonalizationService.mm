@interface WidgetPersonalizationService
- (_TtC7NewsTag28WidgetPersonalizationService)init;
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
  sub_100017A54(&qword_1000E7720);
  v6 = sub_1000A2F10();
  v7 = self;
  v8 = sub_10005D408(v6);

  return v8;
}

- (id)limitItemsByMinimumItemQuality:(id)a3
{
  sub_100017A54(&qword_1000E7720);
  sub_1000A2F10();
  v4 = self;
  sub_1000A1CD0();

  v5.super.isa = sub_1000A2F00().super.isa;

  return v5.super.isa;
}

- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5
{
  sub_100017A54(&qword_1000E7720);
  sub_1000A2F10();
  v6 = self;
  sub_1000A1CC0();

  v7.super.isa = sub_1000A2F00().super.isa;

  return v7.super.isa;
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_1000A1CE0();
}

- (double)decayedPublisherDiversificationPenalty
{
  v2 = self;
  v3 = sub_1000A1D10();

  return v3;
}

- (id)rankTagIDsDescending:(id)a3
{
  if (a3)
  {
    v4 = sub_1000A2F10();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v10.value._rawValue = v4;
  v6 = sub_1000A1D00(v10);

  if (v6)
  {
    v7.super.isa = sub_1000A2F00().super.isa;
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
    v4 = sub_1000A2F10();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v10.value._rawValue = v4;
  v6 = sub_1000A1D20(v10);

  if (v6)
  {
    sub_100028E34(0, &qword_1000E7EB0);
    v7.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (void)prewarmWithTabiScores:(id)a3 configurationSet:(int64_t)a4
{
  sub_100028E34(0, &qword_1000E7EB0);
  v5 = sub_1000A2C60();
  v6 = self;
  sub_10005E788(v5);
}

- (_TtC7NewsTag28WidgetPersonalizationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end