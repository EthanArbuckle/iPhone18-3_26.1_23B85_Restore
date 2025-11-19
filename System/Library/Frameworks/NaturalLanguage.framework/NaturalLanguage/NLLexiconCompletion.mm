@interface NLLexiconCompletion
- (NLLexiconCompletion)initWithTokenID:(unsigned int)a3 score:(double)a4;
@end

@implementation NLLexiconCompletion

- (NLLexiconCompletion)initWithTokenID:(unsigned int)a3 score:(double)a4
{
  v7.receiver = self;
  v7.super_class = NLLexiconCompletion;
  result = [(NLLexiconCompletion *)&v7 init];
  if (result)
  {
    result->_tokenID = a3;
    result->_score = a4;
  }

  return result;
}

@end