@interface EchoCodecConfiguration
- (EchoCodecConfiguration)init;
- (EchoCodecConfiguration)initWithCapabilityData:(id)a3;
- (EchoCodecConfiguration)initWithCoder:(id)a3;
- (EchoCodecConfiguration)initWithCommandLineArgs:(id)a3;
- (id)commandLineOptions;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultValues;
@end

@implementation EchoCodecConfiguration

- (EchoCodecConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EchoCodecConfiguration;
  v5 = [(AUPasscodeCodecConfiguration *)&v13 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"delayForBit0"];
    v5->_delayForBit0 = v6;
    [v4 decodeFloatForKey:@"delayForBit1"];
    v5->_delayForBit1 = v7;
    v5->_frameSize = [v4 decodeIntegerForKey:@"frameSize"];
    v5->_numFrameRepeat = [v4 decodeIntegerForKey:@"numFrameRepeat"];
    [v4 decodeFloatForKey:@"syncDetectThreshold"];
    v5->_syncDetectThreshold = v8;
    v5->_randomSeed = [v4 decodeIntegerForKey:@"randomSeed"];
    [v4 decodeFloatForKey:@"echoGain"];
    v5->_echoGainDB = v9;
    [v4 decodeFloatForKey:@"noiseGain"];
    v5->_noiseGainDB = v10;
    [v4 decodeFloatForKey:@"hpfCutOffFreq"];
    v5->_hpfCutOffFreq = v11;
    v5->_hfNoiseFillingFlag = [v4 decodeIntegerForKey:@"hfNoiseFilling"] != 0;
    v5->_algorithmVersionNumber = [v4 decodeIntegerForKey:@"algorithmVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(EchoCodecConfiguration *)self delayForBit0];
  [v4 encodeFloat:@"delayForBit0" forKey:?];
  [(EchoCodecConfiguration *)self delayForBit1];
  [v4 encodeFloat:@"delayForBit1" forKey:?];
  [v4 encodeInteger:-[EchoCodecConfiguration frameSize](self forKey:{"frameSize"), @"frameSize"}];
  [v4 encodeInteger:-[EchoCodecConfiguration numFrameRepeat](self forKey:{"numFrameRepeat"), @"numFrameRepeat"}];
  [(EchoCodecConfiguration *)self syncDetectThreshold];
  [v4 encodeFloat:@"syncDetectThreshold" forKey:?];
  [v4 encodeInteger:-[EchoCodecConfiguration randomSeed](self forKey:{"randomSeed"), @"randomSeed"}];
  [(EchoCodecConfiguration *)self echoGainDB];
  [v4 encodeFloat:@"echoGain" forKey:?];
  [(EchoCodecConfiguration *)self noiseGainDB];
  [v4 encodeFloat:@"noiseGain" forKey:?];
  [(EchoCodecConfiguration *)self hpfCutOffFreq];
  [v4 encodeFloat:@"hpfCutOffFreq" forKey:?];
  [v4 encodeInteger:-[EchoCodecConfiguration hfNoiseFillingFlag](self forKey:{"hfNoiseFillingFlag"), @"hfNoiseFilling"}];
  [v4 encodeInteger:-[EchoCodecConfiguration algorithmVersionNumber](self forKey:{"algorithmVersionNumber"), @"algorithmVersion"}];
  v5.receiver = self;
  v5.super_class = EchoCodecConfiguration;
  [(AUPasscodeCodecConfiguration *)&v5 encodeWithCoder:v4];
}

- (EchoCodecConfiguration)init
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"echo"];
  v6.receiver = self;
  v6.super_class = EchoCodecConfiguration;
  v4 = [(AUPasscodeCodecConfiguration *)&v6 initWithAlgorithmName:v3];

  if (v4)
  {
    [(EchoCodecConfiguration *)v4 setDefaultValues];
  }

  return v4;
}

- (void)setDefaultValues
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"echo"];
  [(AUPasscodeCodecConfiguration *)self setAlgorithmName:v3];

  self->_delayForBit0 = 0.002;
  self->_delayForBit1 = 0.008;
  self->_frameSize = 2048;
  self->_numFrameRepeat = 2;
  self->_randomSeed = 0;
  self->_echoGainDB = 0.0;
  self->_noiseGainDB = -40.0;
  self->_syncDetectThreshold = 6.0;
  self->_hpfCutOffFreq = 18000.0;
  self->_hfNoiseFillingFlag = 1;
  self->_algorithmVersionNumber = 100;
}

- (id)commandLineOptions
{
  v31 = *MEMORY[0x277D85DE8];
  v18 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-n [frames]" description:@"Set the echo frame size"];
  v20 = v18;
  v21 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-r [repeats]" description:@"Set the number of frame repeats"];
  v17 = v21;
  v2 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-d0 [delay]" description:@"Set the echo delay in msec for bit 0"];
  v22 = v2;
  v3 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-d1 [delay]" description:@"Set the echo delay in msec for bit 1"];
  v23 = v3;
  v4 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-s [seed]" description:@"Set the random number generator seed (32-bit non-zero unsigned integer)"];
  v24 = v4;
  v5 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-t [threshold]" description:@"Set the threshold for sync detection in decoder"];
  v25 = v5;
  v6 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-eg [echo gain ]" description:@"Set the echo gain in dB for the encoder"];
  v26 = v6;
  v7 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-ng [noise gain]" description:@"Set the noise gain in dB for the encoder"];
  v27 = v7;
  v8 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-f [freq]" description:@"Set the HPF cut-off frequency in Hz (16000 <= freq <= 20000)"];
  v28 = v8;
  v9 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-alg [algorithm version]" description:@"Set the algorithm version number (100 or 110 (default))"];
  v29 = v9;
  v10 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-nf [0/1]" description:@"Enable noise filling in high band (0:disable, 1:enable (default))"];
  v30 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:11];

  v19.receiver = self;
  v19.super_class = EchoCodecConfiguration;
  v12 = [(AUPasscodeCodecConfiguration *)&v19 commandLineOptions];
  v13 = [v12 arrayByAddingObjectsFromArray:v11];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (EchoCodecConfiguration)initWithCapabilityData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"echo"];
  v11.receiver = self;
  v11.super_class = EchoCodecConfiguration;
  v6 = [(AUPasscodeCodecConfiguration *)&v11 initWithAlgorithmName:v5];

  if (v6)
  {
    [(EchoCodecConfiguration *)v6 setDefaultValues];
    v7 = [v4 algorithmVersionNumbers];
    v8 = [v7 valueForKeyPath:@"@max.self"];
    v9 = [v8 intValue];

    v6->_algorithmVersionNumber = v9;
  }

  return v6;
}

- (EchoCodecConfiguration)initWithCommandLineArgs:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = EchoCodecConfiguration;
  v5 = [(AUPasscodeCodecConfiguration *)&v58 initWithCommandLineArgs:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_71;
  }

  [(EchoCodecConfiguration *)v5 setDefaultValues];
  v6->_algorithmVersionNumber = 110;
  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setNumberStyle:1];
  v8 = [v4 count];
  v9 = objc_alloc_init(EchoCodecCapability);
  for (i = 0; i < [v4 count]; ++i)
  {
    v11 = [v4 objectAtIndex:i];
    v12 = [v11 isEqualToString:@"-n"];
    if (v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      v14 = [v4 objectAtIndex:++i];
      v15 = [v7 numberFromString:v14];
      v6->_frameSize = [v15 unsignedIntegerValue];

      frameSize = v6->_frameSize;
      v17 = [(EchoCodecCapability *)v9 frameSizeRange];
LABEL_14:
      v23 = frameSize - v17;
      if (frameSize < v17)
      {
        goto LABEL_69;
      }

LABEL_15:
      if (v23 >= v18)
      {
        goto LABEL_69;
      }

LABEL_29:
      --v8;
      goto LABEL_30;
    }

    v19 = [v11 isEqualToString:@"-r"];
    if (v8)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v21 = [v4 objectAtIndex:++i];
      v22 = [v7 numberFromString:v21];
      v6->_numFrameRepeat = [v22 unsignedIntegerValue];

      frameSize = v6->_numFrameRepeat;
      v17 = [(EchoCodecCapability *)v9 numFrameRepeatRange];
      goto LABEL_14;
    }

    v24 = [v11 isEqualToString:@"-d0"];
    if (v8)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      [v27 floatValue];
      v29 = v28 / 1000.0;
      v30 = 44;
      goto LABEL_27;
    }

    v31 = [v11 isEqualToString:@"-d1"];
    if (v8)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      [v27 floatValue];
      v29 = v33 / 1000.0;
      v30 = 48;
      goto LABEL_27;
    }

    v34 = [v11 isEqualToString:@"-s"];
    if (v8)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      v6->_randomSeed = [v27 unsignedIntegerValue];
      goto LABEL_28;
    }

    v36 = [v11 isEqualToString:@"-t"];
    if (v8)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v37 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      [v27 floatValue];
      v30 = 52;
LABEL_27:
      *(&v6->super.super.isa + v30) = v29;
      goto LABEL_28;
    }

    v38 = [v11 isEqualToString:@"-eg"];
    if (v8)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    if (v39 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      [v27 floatValue];
      v30 = 56;
      goto LABEL_27;
    }

    v40 = [v11 isEqualToString:@"-ng"];
    if (v8)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    if (v41 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      [v27 floatValue];
      v30 = 60;
      goto LABEL_27;
    }

    v42 = [v11 isEqualToString:@"-f"];
    if (v8)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    if (v43 == 1)
    {
      v44 = [v4 objectAtIndex:++i];
      v45 = [v7 numberFromString:v44];
      [v45 floatValue];
      v6->_hpfCutOffFreq = v46;

      hpfCutOffFreq = v6->_hpfCutOffFreq;
      v48 = [(EchoCodecCapability *)v9 hpfCutOffFreqRange];
      v23 = hpfCutOffFreq - v48;
      if (hpfCutOffFreq < v48)
      {
        goto LABEL_69;
      }

      goto LABEL_15;
    }

    v49 = [v11 isEqualToString:@"-nf"];
    if (v8)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v50 == 1)
    {
      v26 = [v4 objectAtIndex:++i];
      v27 = [v7 numberFromString:v26];
      v6->_hfNoiseFillingFlag = [v27 unsignedIntegerValue] != 0;
LABEL_28:

      goto LABEL_29;
    }

    v51 = [v11 isEqualToString:@"-alg"];
    if (v8)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    if (v52 == 1)
    {
      v53 = [v4 objectAtIndex:++i];
      v54 = [v7 numberFromString:v53];
      v6->_algorithmVersionNumber = [v54 unsignedIntegerValue];

      algorithmVersionNumber = v6->_algorithmVersionNumber;
      if (HIDWORD(algorithmVersionNumber) || algorithmVersionNumber != 110 && algorithmVersionNumber != 100)
      {
LABEL_69:

        v56 = 0;
        goto LABEL_72;
      }

      goto LABEL_29;
    }

LABEL_30:
    --v8;
  }

LABEL_71:
  v56 = v6;
LABEL_72:

  return v56;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[EchoCodecConfiguration allocWithZone:?]];
  [(AUPasscodeCodecConfiguration *)v4 setSampleRate:[(AUPasscodeCodecConfiguration *)self sampleRate]];
  [(AUPasscodeCodecConfiguration *)v4 setNumChannels:[(AUPasscodeCodecConfiguration *)self numChannels]];
  v5 = [(AUPasscodeCodecConfiguration *)self algorithmName];
  v6 = [v5 copy];
  [(AUPasscodeCodecConfiguration *)v4 setAlgorithmName:v6];

  [(AUPasscodeCodecConfiguration *)v4 setPayloadLengthBytes:[(AUPasscodeCodecConfiguration *)self payloadLengthBytes]];
  [(EchoCodecConfiguration *)v4 setFrameSize:[(EchoCodecConfiguration *)self frameSize]];
  [(EchoCodecConfiguration *)v4 setNumFrameRepeat:[(EchoCodecConfiguration *)self numFrameRepeat]];
  [(EchoCodecConfiguration *)self delayForBit0];
  [(EchoCodecConfiguration *)v4 setDelayForBit0:?];
  [(EchoCodecConfiguration *)self delayForBit1];
  [(EchoCodecConfiguration *)v4 setDelayForBit1:?];
  [(EchoCodecConfiguration *)v4 setRandomSeed:[(EchoCodecConfiguration *)self randomSeed]];
  [(EchoCodecConfiguration *)self syncDetectThreshold];
  [(EchoCodecConfiguration *)v4 setSyncDetectThreshold:?];
  [(EchoCodecConfiguration *)self echoGainDB];
  [(EchoCodecConfiguration *)v4 setEchoGainDB:?];
  [(EchoCodecConfiguration *)self noiseGainDB];
  [(EchoCodecConfiguration *)v4 setNoiseGainDB:?];
  [(EchoCodecConfiguration *)self hpfCutOffFreq];
  [(EchoCodecConfiguration *)v4 setHpfCutOffFreq:?];
  [(EchoCodecConfiguration *)v4 setHfNoiseFillingFlag:[(EchoCodecConfiguration *)self hfNoiseFillingFlag]];
  [(EchoCodecConfiguration *)v4 setAlgorithmVersionNumber:[(EchoCodecConfiguration *)self algorithmVersionNumber]];
  return v4;
}

@end