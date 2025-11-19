@interface ATXOngoingCallSuggestionProducer
- (ATXOngoingCallSuggestionProducer)initWithEnvironment:(id)a3;
- (id)suggestionWithContact:(id)a3 score:(double)a4;
- (id)suggestionsForOngoingCall:(id)a3;
@end

@implementation ATXOngoingCallSuggestionProducer

- (ATXOngoingCallSuggestionProducer)initWithEnvironment:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXOngoingCallSuggestionProducer;
  v6 = [(ATXOngoingCallSuggestionProducer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, a3);
    v8 = v7;
  }

  return v7;
}

- (id)suggestionsForOngoingCall:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 count];
  if (v6 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (v6)
  {
    v8 = 0;
    v9 = 80;
    do
    {
      v10 = [(ATXContextHeuristicsEnvironment *)self->_environment heuristicDevice];
      v11 = [v4 objectAtIndexedSubscript:v8];
      v12 = [v10 resolveContact:v11];

      v13 = [(ATXOngoingCallSuggestionProducer *)self suggestionWithContact:v12 score:v9];
      [v5 addObject:v13];

      ++v8;
      --v9;
    }

    while (v7 != v8);
  }

  return v5;
}

- (id)suggestionWithContact:(id)a3 score:(double)a4
{
  v5 = MEMORY[0x277CBDA78];
  v6 = a3;
  v7 = [v5 stringFromContact:v6 style:0];
  v8 = [v6 identifier];

  v9 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:v7 contactIdentifier:v8 subtitle:0 criteria:0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTEXT_ONGOING_CALL" value:&stru_2850AD368 table:0];

  v12 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v9 predictionReasons:0x80000 localizedReason:v11 score:0 dateInterval:a4];

  return v12;
}

@end