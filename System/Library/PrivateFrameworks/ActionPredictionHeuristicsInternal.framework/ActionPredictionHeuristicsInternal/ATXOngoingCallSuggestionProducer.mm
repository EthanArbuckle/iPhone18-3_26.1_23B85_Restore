@interface ATXOngoingCallSuggestionProducer
- (ATXOngoingCallSuggestionProducer)initWithEnvironment:(id)environment;
- (id)suggestionWithContact:(id)contact score:(double)score;
- (id)suggestionsForOngoingCall:(id)call;
@end

@implementation ATXOngoingCallSuggestionProducer

- (ATXOngoingCallSuggestionProducer)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = ATXOngoingCallSuggestionProducer;
  v6 = [(ATXOngoingCallSuggestionProducer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, environment);
    v8 = v7;
  }

  return v7;
}

- (id)suggestionsForOngoingCall:(id)call
{
  callCopy = call;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [callCopy count];
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
      heuristicDevice = [(ATXContextHeuristicsEnvironment *)self->_environment heuristicDevice];
      v11 = [callCopy objectAtIndexedSubscript:v8];
      v12 = [heuristicDevice resolveContact:v11];

      v13 = [(ATXOngoingCallSuggestionProducer *)self suggestionWithContact:v12 score:v9];
      [v5 addObject:v13];

      ++v8;
      --v9;
    }

    while (v7 != v8);
  }

  return v5;
}

- (id)suggestionWithContact:(id)contact score:(double)score
{
  v5 = MEMORY[0x277CBDA78];
  contactCopy = contact;
  v7 = [v5 stringFromContact:contactCopy style:0];
  identifier = [contactCopy identifier];

  v9 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:v7 contactIdentifier:identifier subtitle:0 criteria:0];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTEXT_ONGOING_CALL" value:&stru_2850AD368 table:0];

  v12 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:v9 predictionReasons:0x80000 localizedReason:v11 score:0 dateInterval:score];

  return v12;
}

@end