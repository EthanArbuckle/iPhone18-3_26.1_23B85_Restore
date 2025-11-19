@interface NLLMLanguageModel
- (id)sessionWithOptions:(id)a3;
- (id)tokenIDConverter;
@end

@implementation NLLMLanguageModel

- (id)sessionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [[NLLMLanguageModelSession alloc] initWithLanguageModel:self options:v4];

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