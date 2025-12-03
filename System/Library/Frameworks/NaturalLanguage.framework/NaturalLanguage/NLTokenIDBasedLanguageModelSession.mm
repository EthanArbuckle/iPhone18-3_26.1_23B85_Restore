@interface NLTokenIDBasedLanguageModelSession
- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)ds count:(unint64_t)count contextTokenIDs:(const unsigned int *)iDs length:(unint64_t)length;
- (id)conditionalProbabilityForTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length;
- (id)stateWithOptions:(id)options;
@end

@implementation NLTokenIDBasedLanguageModelSession

- (id)conditionalProbabilityForTokenID:(unsigned int)d contextTokenIDs:(const unsigned int *)ds length:(unint64_t)length
{
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];

  return initWithInvalidProbability;
}

- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)ds count:(unint64_t)count contextTokenIDs:(const unsigned int *)iDs length:(unint64_t)length
{
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v12 = *ds++;
    v13 = [(NLTokenIDBasedLanguageModelSession *)self conditionalProbabilityForTokenID:v12 contextTokenIDs:iDs length:length];
    [i addObject:v13];
  }

  return i;
}

- (id)stateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [NLTokenIDBasedLanguageModelState alloc];
  v6 = [(NLTokenIDBasedLanguageModelState *)v5 initWithSession:self options:optionsCopy context:&stru_1F10C6540 contextTokenIDArray:MEMORY[0x1E695E0F0]];

  return v6;
}

@end