@interface AXSDKShotDetector
- (AXSDKShotDetector)initWithCoder:(id)coder;
- (AXSDKShotDetector)initWithName:(id)name;
- (AXSDKShotDetector)initWithName:(id)name andIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKShotDetector:(id)detector;
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
- (void)addRecording:(id)recording;
- (void)encodeWithCoder:(id)coder;
- (void)mlModel;
- (void)setRecordings:(id)recordings;
@end

@implementation AXSDKShotDetector

- (AXSDKShotDetector)initWithName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = AXSDKShotDetector;
  v6 = [(AXSDKShotDetector *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customName, name);
    objc_storeStrong(&v7->_kshotCategory, *MEMORY[0x277CE6EB0]);
    lastAttemptedTrainingDate = v7->_lastAttemptedTrainingDate;
    v7->_lastAttemptedTrainingDate = 0;

    [(AXSDKShotDetector *)v7 setName:v7->_customName];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(AXSDDetector *)v7 setIdentifier:uUIDString];

    [(AXSDKShotDetector *)v7 setCategory:v7->_kshotCategory];
    [(AXSDKShotDetector *)v7 setModelFailed:0];
    [(AXSDKShotDetector *)v7 setTrainings:0];
  }

  return v7;
}

- (AXSDKShotDetector)initWithName:(id)name andIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AXSDKShotDetector;
  v9 = [(AXSDKShotDetector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customName, name);
    objc_storeStrong(&v10->_kshotCategory, *MEMORY[0x277CE6EB0]);
    lastAttemptedTrainingDate = v10->_lastAttemptedTrainingDate;
    v10->_lastAttemptedTrainingDate = 0;

    [(AXSDKShotDetector *)v10 setName:v10->_customName];
    uUIDString = [identifierCopy UUIDString];
    [(AXSDDetector *)v10 setIdentifier:uUIDString];

    [(AXSDKShotDetector *)v10 setCategory:v10->_kshotCategory];
    [(AXSDKShotDetector *)v10 setModelFailed:0];
    [(AXSDKShotDetector *)v10 setTrainings:0];
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AXSDKShotDetector *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(AXSDDetector *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  category = [(AXSDKShotDetector *)self category];
  [coderCopy encodeObject:category forKey:@"category"];

  [coderCopy encodeBool:-[AXSDKShotDetector modelFailed](self forKey:{"modelFailed"), @"modelFailed"}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotDetector trainings](self, "trainings")}];
  [coderCopy encodeObject:v8 forKey:@"trainings"];

  lastAttemptedTrainingDate = [(AXSDKShotDetector *)self lastAttemptedTrainingDate];
  [coderCopy encodeObject:lastAttemptedTrainingDate forKey:@"lastAttemptedTrainingDate"];
}

- (AXSDKShotDetector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AXSDKShotDetector;
  v5 = [(AXSDKShotDetector *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"name"];
    [(AXSDKShotDetector *)v5 setName:v6];

    v7 = [coderCopy decodeObjectForKey:@"identifier"];
    [(AXSDDetector *)v5 setIdentifier:v7];

    v8 = [coderCopy decodeObjectForKey:@"category"];
    [(AXSDKShotDetector *)v5 setCategory:v8];

    -[AXSDKShotDetector setModelFailed:](v5, "setModelFailed:", [coderCopy decodeBoolForKey:@"modelFailed"]);
    v9 = [coderCopy decodeObjectForKey:@"trainings"];
    -[AXSDKShotDetector setTrainings:](v5, "setTrainings:", [v9 unsignedIntegerValue]);

    v10 = [coderCopy decodeObjectForKey:@"lastAttemptedTrainingDate"];
    [(AXSDKShotDetector *)v5 setLastAttemptedTrainingDate:v10];
  }

  return v5;
}

- (BOOL)isEqualToKShotDetector:(id)detector
{
  detectorCopy = detector;
  identifier = [(AXSDDetector *)self identifier];
  identifier2 = [detectorCopy identifier];

  LOBYTE(detectorCopy) = [identifier isEqualToString:identifier2];
  return detectorCopy;
}

- (id)modelURL
{
  v2 = MEMORY[0x277CBEBC0];
  modelURLString = [(AXSDKShotDetector *)self modelURLString];
  v4 = [v2 fileURLWithPath:modelURLString];

  return v4;
}

- (id)modelURLString
{
  v2 = *MEMORY[0x277CE6ED0];
  identifier = [(AXSDDetector *)self identifier];
  v4 = [v2 stringByAppendingPathComponent:identifier];
  v5 = [v4 stringByAppendingPathExtension:*MEMORY[0x277CE6ED8]];

  return v5;
}

- (BOOL)isModelReady
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  modelURLString = [(AXSDKShotDetector *)self modelURLString];
  v5 = [defaultManager fileExistsAtPath:modelURLString];

  return v5;
}

- (id)recordings
{
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  v4 = [mEMORY[0x277CE6F98] kShotSoundRecordingsForDetector:self];

  return v4;
}

- (void)setRecordings:(id)recordings
{
  v4 = MEMORY[0x277CE6F98];
  recordingsCopy = recordings;
  sharedInstance = [v4 sharedInstance];
  kShotSoundRecordings = [sharedInstance kShotSoundRecordings];
  v10 = [kShotSoundRecordings mutableCopy];

  identifier = [(AXSDDetector *)self identifier];
  [v10 setValue:recordingsCopy forKey:identifier];

  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  [mEMORY[0x277CE6F98] setKShotSoundRecordings:v10];
}

- (void)addRecording:(id)recording
{
  recordingCopy = recording;
  recordings = [(AXSDKShotDetector *)self recordings];
  v6 = [recordings mutableCopy];

  [v6 addObject:recordingCopy];
  [(AXSDKShotDetector *)self setRecordings:v6];
}

- (BOOL)isTrainingComplete
{
  recordings = [(AXSDKShotDetector *)self recordings];
  v3 = [recordings count] > 4;

  return v3;
}

- (id)mlModel
{
  v3 = MEMORY[0x277CBEBC0];
  modelURLString = [(AXSDKShotDetector *)self modelURLString];
  v5 = [v3 URLWithString:modelURLString];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSDKShotDetector *)self isEqualToKShotDetector:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(AXSDDetector *)self identifier];
  v3 = [identifier hash];

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
  identifier = [(AXSDDetector *)self identifier];
  v6 = [v3 stringWithFormat:@"[%@] Identifier: %@", v4, identifier];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AXSDKShotDetector *)self description];
  name = [(AXSDKShotDetector *)self name];
  category = [(AXSDKShotDetector *)self category];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXSDKShotDetector isModelReady](self, "isModelReady")}];
  modelURLString = [(AXSDKShotDetector *)self modelURLString];
  recordings = [(AXSDKShotDetector *)self recordings];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[AXSDKShotDetector modelFailed](self, "modelFailed")}];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AXSDKShotDetector trainings](self, "trainings")}];
  lastAttemptedTrainingDate = [(AXSDKShotDetector *)self lastAttemptedTrainingDate];
  v13 = [v3 stringWithFormat:@"%@, Name: %@, Category: %@, Is Ready: %@, Model URL: %@, Recordings: %@, Model Failed: %@, Trainings: %@, Last Attempted Training Date: %@", v4, name, category, v7, modelURLString, recordings, v10, v11, lastAttemptedTrainingDate];

  return v13;
}

- (void)mlModel
{
  v12 = *MEMORY[0x277D85DE8];
  name = [self name];
  identifier = [self identifier];
  modelURL = [self modelURL];
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "No model found for detector: %@ %@ at URL %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end