@interface PHASEConeDirectivityModelParameters
- (PHASEConeDirectivityModelParameters)initWithSubbandParameters:(NSArray *)subbandParameters;
@end

@implementation PHASEConeDirectivityModelParameters

- (PHASEConeDirectivityModelParameters)initWithSubbandParameters:(NSArray *)subbandParameters
{
  v4 = subbandParameters;
  v9.receiver = self;
  v9.super_class = PHASEConeDirectivityModelParameters;
  initInternal = [(PHASEDirectivityModelParameters *)&v9 initInternal];
  if (initInternal)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
    internalArray = initInternal->_internalArray;
    initInternal->_internalArray = v6;
  }

  return initInternal;
}

@end