@interface AEAssessmentUIConfiguration
- (AEAssessmentUIConfiguration)initWithCoder:(id)a3;
- (AEAssessmentUIConfiguration)initWithPresentDisplayShields:(BOOL)a3 captureDisplays:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)isEqualToConfiguration:(void *)a1;
@end

@implementation AEAssessmentUIConfiguration

- (AEAssessmentUIConfiguration)initWithPresentDisplayShields:(BOOL)a3 captureDisplays:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = AEAssessmentUIConfiguration;
  result = [(AEAssessmentUIConfiguration *)&v7 init];
  if (result)
  {
    result->_presentDisplayShields = a3;
    result->_captureDisplays = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[AEAssessmentUIConfiguration shouldPresentDisplayShields](self, "shouldPresentDisplayShields")}];
  [v5 encodeObject:v6 forKey:@"presentDisplayShields"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentUIConfiguration shouldCaptureDisplays](self, "shouldCaptureDisplays")}];
  [v5 encodeObject:v7 forKey:@"captureDisplays"];
}

- (AEAssessmentUIConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AEAssessmentUIConfiguration;
  v5 = [(AEAssessmentUIConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentDisplayShields"];
    v5->_presentDisplayShields = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"captureDisplays"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentUIConfiguration *)v4 isMemberOfClass:objc_opt_class()])
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

- (void)isEqualToConfiguration:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 shouldPresentDisplayShields];
    if (v4 == [v3 shouldPresentDisplayShields])
    {
      v5 = [a1 shouldCaptureDisplays];
      a1 = (v5 ^ [v3 shouldCaptureDisplays] ^ 1);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

@end