@interface AUPasscodeCodecConfiguration
- (AUPasscodeCodecConfiguration)initWithAlgorithmName:(id)a3;
- (AUPasscodeCodecConfiguration)initWithCoder:(id)a3;
- (AUPasscodeCodecConfiguration)initWithCommandLineArgs:(id)a3;
- (id)commandLineOptions;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUPasscodeCodecConfiguration

- (AUPasscodeCodecConfiguration)initWithAlgorithmName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AUPasscodeCodecConfiguration;
  v6 = [(AUPasscodeCodecConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_algorithmName, a3);
    [(AUPasscodeCodecConfiguration *)v7 __setDefaultValues];
  }

  return v7;
}

- (AUPasscodeCodecConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AUPasscodeCodecConfiguration;
  v5 = [(AUPasscodeCodecConfiguration *)&v9 init];
  if (v5)
  {
    v5->_payloadLengthBytes = [v4 decodeIntegerForKey:@"payLen"];
    v5->_sampleRate = [v4 decodeIntegerForKey:@"samplerate"];
    v5->_numChannels = [v4 decodeIntegerForKey:@"chans"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algoName"];
    algorithmName = v5->_algorithmName;
    v5->_algorithmName = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  payloadLengthBytes = self->_payloadLengthBytes;
  v5 = a3;
  [v5 encodeInteger:payloadLengthBytes forKey:@"payLen"];
  [v5 encodeInteger:self->_sampleRate forKey:@"samplerate"];
  [v5 encodeInteger:self->_numChannels forKey:@"chans"];
  [v5 encodeObject:self->_algorithmName forKey:@"algoName"];
}

- (id)commandLineOptions
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-fs [sample_rate]" description:@"Set the sample rate to use for IO (44100 and 48000 only)"];
  v3 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-ps [payload_size]" description:@"Set the number of bytes in the payload (inferred from payload on encode/play)", v2];
  v8[1] = v3;
  v4 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-nc [channels]" description:@"Set the number of channels to use for IO"];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (AUPasscodeCodecConfiguration)initWithCommandLineArgs:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AUPasscodeCodecConfiguration;
  v5 = [(AUPasscodeCodecConfiguration *)&v27 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_22;
  }

  [(AUPasscodeCodecConfiguration *)v5 __setDefaultValues];
  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setNumberStyle:1];
  v26 = objc_alloc_init(AUPasscodeCodecCapability);
  v8 = [v4 count];
  if (![v4 count])
  {
LABEL_21:

LABEL_22:
    v24 = v6;
    goto LABEL_23;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v4 objectAtIndex:v9];
    if ([v10 isEqualToString:@"-fs"])
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v14 = [v4 objectAtIndex:++v9];
      v15 = [v7 numberFromString:v14];
      v6->_sampleRate = [v15 unsignedIntegerValue];

      v16 = [(AUPasscodeCodecCapability *)v26 supportedSampleRates];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v6->_sampleRate];
      v18 = [v16 containsObject:v17];

      if (!v18)
      {
        break;
      }

      goto LABEL_13;
    }

    if ([v10 isEqualToString:@"-ps"] && v8)
    {
      v12 = [v4 objectAtIndex:++v9];
      v13 = [v7 numberFromString:v12];
      v6->_payloadLengthBytes = [v13 unsignedIntegerValue];

      goto LABEL_13;
    }

    if (![v10 isEqualToString:@"-nc"] || !v8)
    {
      goto LABEL_14;
    }

    v19 = [v4 objectAtIndex:++v9];
    v20 = [v7 numberFromString:v19];
    v6->_numChannels = [v20 unsignedIntegerValue];

    numChannels = v6->_numChannels;
    v22 = [(AUPasscodeCodecCapability *)v26 numChannelRange];
    if (numChannels < v22 || numChannels - v22 >= v23)
    {
      break;
    }

LABEL_13:
    --v8;
LABEL_14:
    --v8;

    if (++v9 >= [v4 count])
    {
      goto LABEL_21;
    }
  }

  v24 = 0;
LABEL_23:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AUPasscodeCodecConfiguration allocWithZone:?]];
  [(AUPasscodeCodecConfiguration *)v4 setPayloadLengthBytes:[(AUPasscodeCodecConfiguration *)self payloadLengthBytes]];
  [(AUPasscodeCodecConfiguration *)v4 setSampleRate:[(AUPasscodeCodecConfiguration *)self sampleRate]];
  [(AUPasscodeCodecConfiguration *)v4 setNumChannels:[(AUPasscodeCodecConfiguration *)self numChannels]];
  v5 = [(AUPasscodeCodecConfiguration *)self algorithmName];
  v6 = [v5 copy];
  [(AUPasscodeCodecConfiguration *)v4 setAlgorithmName:v6];

  return v4;
}

@end