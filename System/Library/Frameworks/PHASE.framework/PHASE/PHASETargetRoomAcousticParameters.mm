@interface PHASETargetRoomAcousticParameters
- (PHASETargetRoomAcousticParameters)init;
- (PHASETargetRoomAcousticParameters)initWithSubbandParameters:(id)parameters;
@end

@implementation PHASETargetRoomAcousticParameters

- (PHASETargetRoomAcousticParameters)init
{
  v6.receiver = self;
  v6.super_class = PHASETargetRoomAcousticParameters;
  v2 = [(PHASETargetRoomAcousticParameters *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    internalArray = v2->_internalArray;
    v2->_internalArray = v3;
  }

  return v2;
}

- (PHASETargetRoomAcousticParameters)initWithSubbandParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = PHASETargetRoomAcousticParameters;
  v5 = [(PHASETargetRoomAcousticParameters *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:parametersCopy];
    internalArray = v5->_internalArray;
    v5->_internalArray = v6;
  }

  return v5;
}

@end