@interface AEAssessmentUIConfiguration
- (AEAssessmentUIConfiguration)initWithCoder:(id)coder;
- (AEAssessmentUIConfiguration)initWithPresentDisplayShields:(BOOL)shields captureDisplays:(BOOL)displays;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)isEqualToConfiguration:(void *)configuration;
@end

@implementation AEAssessmentUIConfiguration

- (AEAssessmentUIConfiguration)initWithPresentDisplayShields:(BOOL)shields captureDisplays:(BOOL)displays
{
  v7.receiver = self;
  v7.super_class = AEAssessmentUIConfiguration;
  result = [(AEAssessmentUIConfiguration *)&v7 init];
  if (result)
  {
    result->_presentDisplayShields = shields;
    result->_captureDisplays = displays;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[AEAssessmentUIConfiguration shouldPresentDisplayShields](self, "shouldPresentDisplayShields")}];
  [coderCopy encodeObject:v6 forKey:@"presentDisplayShields"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentUIConfiguration shouldCaptureDisplays](self, "shouldCaptureDisplays")}];
  [coderCopy encodeObject:v7 forKey:@"captureDisplays"];
}

- (AEAssessmentUIConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AEAssessmentUIConfiguration;
  v5 = [(AEAssessmentUIConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentDisplayShields"];
    v5->_presentDisplayShields = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captureDisplays"];
    v5->_captureDisplays = [v7 BOOLValue];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentUIConfiguration shouldPresentDisplayShields](self, "shouldPresentDisplayShields")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentUIConfiguration shouldCaptureDisplays](self, "shouldCaptureDisplays")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentUIConfiguration *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = [(AEAssessmentUIConfiguration *)self isEqualToConfiguration:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([(AEAssessmentUIConfiguration *)self shouldPresentDisplayShields])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  if ([(AEAssessmentUIConfiguration *)self shouldCaptureDisplays])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  return [v3 stringWithFormat:@"<%@: %p { shouldPresentDisplayShields = %@, shouldCaptureDisplays = %@ }>", v4, self, v5, v6];
}

- (void)isEqualToConfiguration:(void *)configuration
{
  v3 = a2;
  if (configuration)
  {
    shouldPresentDisplayShields = [configuration shouldPresentDisplayShields];
    if (shouldPresentDisplayShields == [v3 shouldPresentDisplayShields])
    {
      shouldCaptureDisplays = [configuration shouldCaptureDisplays];
      configuration = (shouldCaptureDisplays ^ [v3 shouldCaptureDisplays] ^ 1);
    }

    else
    {
      configuration = 0;
    }
  }

  return configuration;
}

@end