@interface WidgetPersonalizationService
- (_TtC7NewsTag28WidgetPersonalizationService)init;
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
  sub_100017A54(&qword_1000E7720);
  v6 = sub_1000A2F10();
  selfCopy = self;
  v8 = sub_10005D408(v6);

  return v8;
}

- (id)limitItemsByMinimumItemQuality:(id)quality
{
  sub_100017A54(&qword_1000E7720);
  sub_1000A2F10();
  selfCopy = self;
  sub_1000A1CD0();

  v5.super.isa = sub_1000A2F00().super.isa;

  return v5.super.isa;
}

- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count
{
  sub_100017A54(&qword_1000E7720);
  sub_1000A2F10();
  selfCopy = self;
  sub_1000A1CC0();

  v7.super.isa = sub_1000A2F00().super.isa;

  return v7.super.isa;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_1000A1CE0();
}

- (double)decayedPublisherDiversificationPenalty
{
  selfCopy = self;
  v3 = sub_1000A1D10();

  return v3;
}

- (id)rankTagIDsDescending:(id)descending
{
  if (descending)
  {
    v4 = sub_1000A2F10();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
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

- (id)scoresForTagIDs:(id)ds
{
  if (ds)
  {
    v4 = sub_1000A2F10();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
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

- (void)prewarmWithTabiScores:(id)scores configurationSet:(int64_t)set
{
  sub_100028E34(0, &qword_1000E7EB0);
  v5 = sub_1000A2C60();
  selfCopy = self;
  sub_10005E788(v5);
}

- (_TtC7NewsTag28WidgetPersonalizationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end