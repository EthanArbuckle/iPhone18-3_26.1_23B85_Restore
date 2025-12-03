@interface AUPasscodeCodecCapability
- (AUPasscodeCodecCapability)initWithAlgorithmName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPasscodeCodecCapability:(id)capability;
- (_NSRange)numChannelRange;
@end

@implementation AUPasscodeCodecCapability

- (AUPasscodeCodecCapability)initWithAlgorithmName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = AUPasscodeCodecCapability;
  v6 = [(AUPasscodeCodecCapability *)&v13 init];
  if (v6)
  {
    v7 = MEMORY[0x277CBEA60];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:44100];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:48000];
    v10 = [v7 arrayWithObjects:{v8, v9, 0}];
    v11 = *(v6 + 2);
    *(v6 + 2) = v10;

    *(v6 + 24) = xmmword_2415ACC30;
    objc_storeStrong(v6 + 1, name);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AUPasscodeCodecCapability *)self isEqualToPasscodeCodecCapability:equalCopy];

  return v5;
}

- (BOOL)isEqualToPasscodeCodecCapability:(id)capability
{
  capabilityCopy = capability;
  supportedSampleRates = [(AUPasscodeCodecCapability *)self supportedSampleRates];
  supportedSampleRates2 = [capabilityCopy supportedSampleRates];
  if ([supportedSampleRates isEqual:supportedSampleRates2])
  {
    numChannelRange = [(AUPasscodeCodecCapability *)self numChannelRange];
    v9 = v8;
    v11 = 0;
    if (numChannelRange == [capabilityCopy numChannelRange] && v9 == v10)
    {
      algorithmName = [(AUPasscodeCodecCapability *)self algorithmName];
      algorithmName2 = [capabilityCopy algorithmName];
      v11 = [algorithmName isEqual:algorithmName2];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (_NSRange)numChannelRange
{
  length = self->_numChannelRange.length;
  location = self->_numChannelRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end