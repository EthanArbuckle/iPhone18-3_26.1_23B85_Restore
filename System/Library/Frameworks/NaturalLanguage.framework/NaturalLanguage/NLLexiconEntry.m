@interface NLLexiconEntry
- (NLLexiconEntry)initWithString:(id)a3 tokenID:(unsigned int)a4 flags:(unint64_t)a5 probability:(double)a6;
- (id)probabilityInfo;
@end

@implementation NLLexiconEntry

- (NLLexiconEntry)initWithString:(id)a3 tokenID:(unsigned int)a4 flags:(unint64_t)a5 probability:(double)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = NLLexiconEntry;
  v11 = [(NLLexiconEntry *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    string = v11->_string;
    v11->_string = v12;

    v11->_tokenID = a4;
    v11->_flags = a5;
    v11->_probability = a6;
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