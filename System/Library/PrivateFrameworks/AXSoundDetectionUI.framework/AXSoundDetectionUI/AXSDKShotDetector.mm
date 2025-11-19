@interface AXSDKShotDetector
- (AXSDKShotDetector)initWithCoder:(id)a3;
- (AXSDKShotDetector)initWithName:(id)a3;
- (AXSDKShotDetector)initWithName:(id)a3 andIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKShotDetector:(id)a3;
- (BOOL)isModelReady;
- (BOOL)isTrainingComplete;
- (BOOL)shouldRetrain;
- (id)debugDescription;
- (id)description;
- (id)mlModel;
- (id)modelURL;
- (id)modelURLString;
- (id)recordings;
- (unint64_t)hash;
- (void)addRecording:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mlModel;
- (void)setRecordings:(id)a3;
@end

@implementation AXSDKShotDetector

- (AXSDKShotDetector)initWithName:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AXSDKShotDetector;
  v6 = [(AXSDKShotDetector *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customName, a3);
    objc_storeStrong(&v7->_kshotCategory, *MEMORY[0x277CE6EB0]);
    lastAttemptedTrainingDate = v7->_lastAttemptedTrainingDate;
    v7->_lastAttemptedTrainingDate = 0;

    [(AXSDKShotDetector *)v7 setName:v7->_customName];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    [(AXSDDetector *)v7 setIdentifier:v10];

    [(AXSDKShotDetector *)v7 setCategory:v7->_kshotCategory];
    [(AXSDKShotDetector *)v7 setModelFailed:0];
    [(AXSDKShotDetector *)v7 setTrainings:0];
  }

  return v7;
}

- (AXSDKShotDetector)initWithName:(id)a3 andIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AXSDKShotDetector;
  v9 = [(AXSDKShotDetector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customName, a3);
    objc_storeStrong(&v10->_kshotCategory, *MEMORY[0x277CE6EB0]);
    lastAttemptedTrainingDate = v10->_lastAttemptedTrainingDate;
    v10->_lastAttemptedTrainingDate = 0;

    [(AXSDKShotDetector *)v10 setName:v10->_customName];
    v12 = [v8 UUIDString];
    [(AXSDDetector *)v10 setIdentifier:v12];

    [(AXSDKShotDetector *)v10 setCategory:v10->_kshotCategory];
    [(AXSDKShotDetector *)v10 setModelFailed:0];
    [(AXSDKShotDetector *)v10 setTrainings:0];
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSDKShotDetector *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(AXSDDetector *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(AXSDKShotDetector *)self category];
  [v4 encodeObject:v7 forKey:@"category"];

  [v4 encodeBool:-[AXSDKShotDetector modelFailed](self forKey:{"modelFailed"), @"modelFailed"}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotDetector trainings](self, "trainings")}];
  [v4 encodeObject:v8 forKey:@"trainings"];

  v9 = [(AXSDKShotDetector *)self lastAttemptedTrainingDate];
  [v4 encodeObject:v9 forKey:@"lastAttemptedTrainingDate"];
}

- (AXSDKShotDetector)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AXSDKShotDetector;
  v5 = [(AXSDKShotDetector *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"name"];
    [(AXSDKShotDetector *)v5 setName:v6];

    v7 = [v4 decodeObjectForKey:@"identifier"];
    [(AXSDDetector *)v5 setIdentifier:v7];

    v8 = [v4 decodeObjectForKey:@"category"];
    [(AXSDKShotDetector *)v5 setCategory:v8];

    -[AXSDKShotDetector setModelFailed:](v5, "setModelFailed:", [v4 decodeBoolForKey:@"modelFailed"]);
    v9 = [v4 decodeObjectForKey:@"trainings"];
    -[AXSDKShotDetector setTrainings:](v5, "setTrainings:", [v9 unsignedIntegerValue]);

    v10 = [v4 decodeObjectForKey:@"lastAttemptedTrainingDate"];
    [(AXSDKShotDetector *)v5 setLastAttemptedTrainingDate:v10];
  }

  return v5;
}

- (BOOL)isEqualToKShotDetector:(id)a3
{
  v4 = a3;
  v5 = [(AXSDDetector *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)modelURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(AXSDKShotDetector *)self modelURLString];
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (id)modelURLString
{
  v2 = *MEMORY[0x277CE6ED0];
  v3 = [(AXSDDetector *)self identifier];
  v4 = [v2 stringByAppendingPathComponent:v3];
  v5 = [v4 stringByAppendingPathExtension:*MEMORY[0x277CE6ED8]];

  return v5;
}

- (BOOL)isModelReady
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(AXSDKShotDetector *)self modelURLString];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (id)recordings
{
  v3 = [MEMORY[0x277CE6F98] sharedInstance];
  v4 = [v3 kShotSoundRecordingsForDetector:self];

  return v4;
}

- (void)setRecordings:(id)a3
{
  v4 = MEMORY[0x277CE6F98];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 kShotSoundRecordings];
  v10 = [v7 mutableCopy];

  v8 = [(AXSDDetector *)self identifier];
  [v10 setValue:v5 forKey:v8];

  v9 = [MEMORY[0x277CE6F98] sharedInstance];
  [v9 setKShotSoundRecordings:v10];
}

- (void)addRecording:(id)a3
{
  v4 = a3;
  v5 = [(AXSDKShotDetector *)self recordings];
  v6 = [v5 mutableCopy];

  [v6 addObject:v4];
  [(AXSDKShotDetector *)self setRecordings:v6];
}

- (BOOL)isTrainingComplete
{
  v2 = [(AXSDKShotDetector *)self recordings];
  v3 = [v2 count] > 4;

  return v3;
}

- (id)mlModel
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(AXSDKShotDetector *)self modelURLString];
  v5 = [v3 URLWithString:v4];

  if (v5)
  {
    v14 = 0;
    v6 = [MEMORY[0x277CBFF20] compileModelAtURL:v5 error:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v13 = 0;
      v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v6 error:&v13];
      v9 = v13;
    }

    else
    {
      v9 = v7;
      v10 = AXLogUltron();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AXSDKShotDetector *)self mlModel];
      }

      v11 = 0;
    }
  }

  else
  {
    v9 = AXLogUltronKShot();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXSDKShotDetector *)self mlModel];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSDKShotDetector *)self isEqualToKShotDetector:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(AXSDDetector *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)shouldRetrain
{
  if ([(AXSDKShotDetector *)self isModelReady]|| [(AXSDKShotDetector *)self modelFailed])
  {
    return 0;
  }

  return [(AXSDKShotDetector *)self isTrainingComplete];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(AXSDDetector *)self identifier];
  v6 = [v3 stringWithFormat:@"[%@] Identifier: %@", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AXSDKShotDetector *)self description];
  v5 = [(AXSDKShotDetector *)self name];
  v6 = [(AXSDKShotDetector *)self category];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXSDKShotDetector isModelReady](self, "isModelReady")}];
  v8 = [(AXSDKShotDetector *)self modelURLString];
  v9 = [(AXSDKShotDetector *)self recordings];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXSDKShotDetector modelFailed](self, "modelFailed")}];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotDetector trainings](self, "trainings")}];
  v12 = [(AXSDKShotDetector *)self lastAttemptedTrainingDate];
  v13 = [v3 stringWithFormat:@"%@, Name: %@, Category: %@, Is Ready: %@, Model URL: %@, Recordings: %@, Model Failed: %@, Trainings: %@, Last Attempted Training Date: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (void)mlModel
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  v11 = [a1 modelURL];
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "No model found for detector: %@ %@ at URL %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end