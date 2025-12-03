@interface NLLexiconCompletion
- (NLLexiconCompletion)initWithTokenID:(unsigned int)d score:(double)score;
@end

@implementation NLLexiconCompletion

- (NLLexiconCompletion)initWithTokenID:(unsigned int)d score:(double)score
{
  v7.receiver = self;
  v7.super_class = NLLexiconCompletion;
  result = [(NLLexiconCompletion *)&v7 init];
  if (result)
  {
    result->_tokenID = d;
    result->_score = score;
  }

  return result;
}

@end