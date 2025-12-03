@interface NLLMLanguageModel
- (id)sessionWithOptions:(id)options;
- (id)tokenIDConverter;
@end

@implementation NLLMLanguageModel

- (id)sessionWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [[NLLMLanguageModelSession alloc] initWithLanguageModel:self options:optionsCopy];

  return v5;
}

- (id)tokenIDConverter
{
  tokenIDConverter = self->_tokenIDConverter;
  if (!tokenIDConverter)
  {
    v4 = [[NLLMTokenIDConverter alloc] initWithLanguageModel:self];
    v5 = self->_tokenIDConverter;
    self->_tokenIDConverter = v4;

    tokenIDConverter = self->_tokenIDConverter;
  }

  return tokenIDConverter;
}

@end