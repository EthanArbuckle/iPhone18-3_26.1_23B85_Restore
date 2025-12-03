@interface EchoCodecCapability
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEchoCodecCapability:(id)capability;
- (EchoCodecCapability)init;
- (EchoCodecCapability)initWithCoder:(id)coder;
- (_NSRange)frameSizeRange;
- (_NSRange)hpfCutOffFreqRange;
- (_NSRange)numFrameRepeatRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EchoCodecCapability

- (EchoCodecCapability)init
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"echo"];
  v13.receiver = self;
  v13.super_class = EchoCodecCapability;
  v4 = [(AUPasscodeCodecCapability *)&v13 initWithAlgorithmName:v3];

  if (v4)
  {
    v4->_frameSizeRange = xmmword_2415AC8E0;
    v4->_numFrameRepeatRange = xmmword_2415AC8F0;
    v4->_hpfCutOffFreqRange = xmmword_2415AC900;
    array = [MEMORY[0x277CBEB18] array];
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = [MEMORY[0x277CCABB0] numberWithInt:*(&kSupportedAlgorithmVersions + v6)];
      [array addObject:v9];

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
    v10 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    algorithmVersionNumbers = v4->_algorithmVersionNumbers;
    v4->_algorithmVersionNumbers = v10;
  }

  return v4;
}

- (EchoCodecCapability)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"echo"];
  v20.receiver = self;
  v20.super_class = EchoCodecCapability;
  v6 = [(AUPasscodeCodecCapability *)&v20 initWithAlgorithmName:v5];

  if (v6)
  {
    v7 = [coderCopy decodeIntegerForKey:@"frmSizeRangeLoc"];
    v8 = [coderCopy decodeIntegerForKey:@"frmSizeRangeLen"];
    v6->_frameSizeRange.location = v7;
    v6->_frameSizeRange.length = v8;
    v9 = [coderCopy decodeIntegerForKey:@"numFrmRepeatRangeLoc"];
    v10 = [coderCopy decodeIntegerForKey:@"numFrmRepeatRangeLen"];
    v6->_numFrameRepeatRange.location = v9;
    v6->_numFrameRepeatRange.length = v10;
    v11 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"algorithmVersions"];
    algorithmVersionNumbers = v6->_algorithmVersionNumbers;
    v6->_algorithmVersionNumbers = v14;

    v16 = [coderCopy decodeIntegerForKey:@"hpfCutOffRangeLoc"];
    v17 = [coderCopy decodeIntegerForKey:@"hpfCutOffRangeLen"];
    v6->_hpfCutOffFreqRange.location = v16;
    v6->_hpfCutOffFreqRange.length = v17;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[EchoCodecCapability frameSizeRange](self forKey:{"frameSizeRange"), @"frmSizeRangeLoc"}];
  [(EchoCodecCapability *)self frameSizeRange];
  [coderCopy encodeInteger:v4 forKey:@"frmSizeRangeLen"];
  [coderCopy encodeInteger:-[EchoCodecCapability numFrameRepeatRange](self forKey:{"numFrameRepeatRange"), @"numFrmRepeatRangeLoc"}];
  [(EchoCodecCapability *)self numFrameRepeatRange];
  [coderCopy encodeInteger:v5 forKey:@"numFrmRepeatRangeLen"];
  algorithmVersionNumbers = [(EchoCodecCapability *)self algorithmVersionNumbers];
  [coderCopy encodeObject:algorithmVersionNumbers forKey:@"algorithmVersions"];

  [coderCopy encodeInteger:-[EchoCodecCapability hpfCutOffFreqRange](self forKey:{"hpfCutOffFreqRange"), @"hpfCutOffRangeLoc"}];
  [(EchoCodecCapability *)self hpfCutOffFreqRange];
  [coderCopy encodeInteger:v7 forKey:@"hpfCutOffRangeLen"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(EchoCodecCapability *)self isEqualToEchoCodecCapability:equalCopy];

  return v5;
}

- (BOOL)isEqualToEchoCodecCapability:(id)capability
{
  capabilityCopy = capability;
  v22.receiver = self;
  v22.super_class = EchoCodecCapability;
  if ([(AUPasscodeCodecCapability *)&v22 isEqual:capabilityCopy])
  {
    frameSizeRange = [(EchoCodecCapability *)self frameSizeRange];
    v7 = v6;
    v9 = 0;
    if (frameSizeRange == [capabilityCopy frameSizeRange] && v7 == v8)
    {
      numFrameRepeatRange = [(EchoCodecCapability *)self numFrameRepeatRange];
      v12 = v11;
      v9 = 0;
      if (numFrameRepeatRange == [capabilityCopy numFrameRepeatRange] && v12 == v13)
      {
        algorithmVersionNumbers = [(EchoCodecCapability *)self algorithmVersionNumbers];
        algorithmVersionNumbers2 = [capabilityCopy algorithmVersionNumbers];
        if ([algorithmVersionNumbers isEqual:algorithmVersionNumbers2])
        {
          hpfCutOffFreqRange = [(EchoCodecCapability *)self hpfCutOffFreqRange];
          v18 = v17;
          v9 = hpfCutOffFreqRange == [capabilityCopy hpfCutOffFreqRange] && v18 == v19;
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_NSRange)frameSizeRange
{
  p_frameSizeRange = &self->_frameSizeRange;
  location = self->_frameSizeRange.location;
  length = p_frameSizeRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)numFrameRepeatRange
{
  p_numFrameRepeatRange = &self->_numFrameRepeatRange;
  location = self->_numFrameRepeatRange.location;
  length = p_numFrameRepeatRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)hpfCutOffFreqRange
{
  p_hpfCutOffFreqRange = &self->_hpfCutOffFreqRange;
  location = self->_hpfCutOffFreqRange.location;
  length = p_hpfCutOffFreqRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end