@interface SiriUISpokenSuggestionsProvider
+ (void)fetchTopSpokenSuggestionFrom:(id)a3 completion:(id)a4;
- (_TtC4Siri31SiriUISpokenSuggestionsProvider)init;
@end

@implementation SiriUISpokenSuggestionsProvider

+ (void)fetchTopSpokenSuggestionFrom:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = a3;
  sub_1000AFD94(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtC4Siri31SiriUISpokenSuggestionsProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriUISpokenSuggestionsProvider();
  return [(SiriUISpokenSuggestionsProvider *)&v3 init];
}

@end