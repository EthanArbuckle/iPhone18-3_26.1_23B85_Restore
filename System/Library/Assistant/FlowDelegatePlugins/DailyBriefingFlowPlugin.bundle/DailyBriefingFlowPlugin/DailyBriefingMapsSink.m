@interface DailyBriefingMapsSink
- (NSString)uniqueName;
- (void)invalidateForMapsSuggestionsManager:(id)a3;
@end

@implementation DailyBriefingMapsSink

- (NSString)uniqueName
{
  sub_D0D8();
  v2 = sub_A45C4();

  return v2;
}

- (void)invalidateForMapsSuggestionsManager:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_A4AB4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_5000(v6);
}

@end