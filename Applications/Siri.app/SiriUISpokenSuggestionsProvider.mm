@interface SiriUISpokenSuggestionsProvider
+ (void)fetchTopSpokenSuggestionFrom:(id)from completion:(id)completion;
- (_TtC4Siri31SiriUISpokenSuggestionsProvider)init;
@end

@implementation SiriUISpokenSuggestionsProvider

+ (void)fetchTopSpokenSuggestionFrom:(id)from completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  fromCopy = from;
  sub_1000AFD94(fromCopy, v5);
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