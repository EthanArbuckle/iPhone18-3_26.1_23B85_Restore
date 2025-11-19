@interface WatchSmartStackLayoutSelector
- (_TtC21AppPredictionInternal29WatchSmartStackLayoutSelector)init;
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)a3 rankedSuggestions:(id)a4;
@end

@implementation WatchSmartStackLayoutSelector

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)a3 rankedSuggestions:(id)a4
{
  sub_2263B51C8();
  v5 = sub_226836568();
  v6 = self;
  v7 = sub_2267E1B7C(v5);

  return v7;
}

- (_TtC21AppPredictionInternal29WatchSmartStackLayoutSelector)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WatchSmartStackLayoutSelector();
  return [(WatchSmartStackLayoutSelector *)&v3 init];
}

@end