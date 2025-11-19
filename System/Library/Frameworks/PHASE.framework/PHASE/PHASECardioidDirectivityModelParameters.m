@interface PHASECardioidDirectivityModelParameters
- (PHASECardioidDirectivityModelParameters)initWithSubbandParameters:(NSArray *)subbandParameters;
@end

@implementation PHASECardioidDirectivityModelParameters

- (PHASECardioidDirectivityModelParameters)initWithSubbandParameters:(NSArray *)subbandParameters
{
  v4 = subbandParameters;
  v9.receiver = self;
  v9.super_class = PHASECardioidDirectivityModelParameters;
  v5 = [(PHASEDirectivityModelParameters *)&v9 initInternal];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
    internalArray = v5->_internalArray;
    v5->_internalArray = v6;
  }

  return v5;
}

@end