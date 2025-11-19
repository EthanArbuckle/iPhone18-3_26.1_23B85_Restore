@interface AUPasscodeCodecCapability
- (AUPasscodeCodecCapability)initWithAlgorithmName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPasscodeCodecCapability:(id)a3;
- (_NSRange)numChannelRange;
@end

@implementation AUPasscodeCodecCapability

- (AUPasscodeCodecCapability)initWithAlgorithmName:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(v6 + 1, a3);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AUPasscodeCodecCapability *)self isEqualToPasscodeCodecCapability:v4];

  return v5;
}

- (BOOL)isEqualToPasscodeCodecCapability:(id)a3
{
  v4 = a3;
  v5 = [(AUPasscodeCodecCapability *)self supportedSampleRates];
  v6 = [v4 supportedSampleRates];
  if ([v5 isEqual:v6])
  {
    v7 = [(AUPasscodeCodecCapability *)self numChannelRange];
    v9 = v8;
    v11 = 0;
    if (v7 == [v4 numChannelRange] && v9 == v10)
    {
      v12 = [(AUPasscodeCodecCapability *)self algorithmName];
      v13 = [v4 algorithmName];
      v11 = [v12 isEqual:v13];
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