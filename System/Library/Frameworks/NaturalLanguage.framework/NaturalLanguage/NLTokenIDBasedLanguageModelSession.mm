@interface NLTokenIDBasedLanguageModelSession
- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)a3 count:(unint64_t)a4 contextTokenIDs:(const unsigned int *)a5 length:(unint64_t)a6;
- (id)conditionalProbabilityForTokenID:(unsigned int)a3 contextTokenIDs:(const unsigned int *)a4 length:(unint64_t)a5;
- (id)stateWithOptions:(id)a3;
@end

@implementation NLTokenIDBasedLanguageModelSession

- (id)conditionalProbabilityForTokenID:(unsigned int)a3 contextTokenIDs:(const unsigned int *)a4 length:(unint64_t)a5
{
  v5 = [[NLProbabilityInfo alloc] initWithInvalidProbability];

  return v5;
}

- (id)conditionalProbabilitiesForTokenIDs:(const unsigned int *)a3 count:(unint64_t)a4 contextTokenIDs:(const unsigned int *)a5 length:(unint64_t)a6
{
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v12 = *a3++;
    v13 = [(NLTokenIDBasedLanguageModelSession *)self conditionalProbabilityForTokenID:v12 contextTokenIDs:a5 length:a6];
    [i addObject:v13];
  }

  return i;
}

- (id)stateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [NLTokenIDBasedLanguageModelState alloc];
  v6 = [(NLTokenIDBasedLanguageModelState *)v5 initWithSession:self options:v4 context:&stru_1F10C6540 contextTokenIDArray:MEMORY[0x1E695E0F0]];

  return v6;
}

@end