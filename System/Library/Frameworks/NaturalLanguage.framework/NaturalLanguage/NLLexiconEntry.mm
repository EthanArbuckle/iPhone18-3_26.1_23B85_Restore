@interface NLLexiconEntry
- (NLLexiconEntry)initWithString:(id)string tokenID:(unsigned int)d flags:(unint64_t)flags probability:(double)probability;
- (id)probabilityInfo;
@end

@implementation NLLexiconEntry

- (NLLexiconEntry)initWithString:(id)string tokenID:(unsigned int)d flags:(unint64_t)flags probability:(double)probability
{
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = NLLexiconEntry;
  v11 = [(NLLexiconEntry *)&v15 init];
  if (v11)
  {
    v12 = [stringCopy copy];
    string = v11->_string;
    v11->_string = v12;

    v11->_tokenID = d;
    v11->_flags = flags;
    v11->_probability = probability;
  }

  return v11;
}

- (id)probabilityInfo
{
  v3 = [NLProbabilityInfo alloc];
  [(NLLexiconEntry *)self probability];
  v4 = [(NLProbabilityInfo *)v3 initWithLog10Probability:0 flags:?];

  return v4;
}

@end