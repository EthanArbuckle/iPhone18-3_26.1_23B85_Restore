@interface ASTUIGazeEnrollmentStore
- (BOOL)enrollmentComplete;
- (NSArray)calibratedArray;
- (id)_retrieveDictionary;
- (void)clearStore;
- (void)saveCalibratedArray:(id)array;
- (void)saveEnrollmentPoint:(CGPoint)point withGazePoint:(CGPoint)gazePoint;
@end

@implementation ASTUIGazeEnrollmentStore

- (NSArray)calibratedArray
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues = [mEMORY[0x277CE7E20] assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues];

  return assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues;
}

- (BOOL)enrollmentComplete
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted = [mEMORY[0x277CE7E20] assistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted];

  return assistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted;
}

- (void)saveEnrollmentPoint:(CGPoint)point withGazePoint:(CGPoint)gazePoint
{
  y = gazePoint.y;
  x = gazePoint.x;
  v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{point.x, point.y}];
  v6 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap = [mEMORY[0x277CE7E20] assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap];
  dictionary = [assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v12 = [v10 base64EncodedStringWithOptions:0];
  v13 = [v11 base64EncodedStringWithOptions:0];
  [dictionary setObject:v13 forKey:v12];
  mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20]2 setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap:dictionary];
}

- (void)saveCalibratedArray:(id)array
{
  v3 = MEMORY[0x277CE7E20];
  arrayCopy = array;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance setAssistiveTouchMouseOnDeviceEyeTrackingCalibratedValues:arrayCopy];

  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap:0];
}

- (void)clearStore
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted:0];

  mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20]2 setAssistiveTouchMouseOnDeviceEyeTrackingCalibratedValues:0];

  mEMORY[0x277CE7E20]3 = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20]3 setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap:0];
}

- (id)_retrieveDictionary
{
  v26 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap = [mEMORY[0x277CE7E20] assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
        v10 = objc_alloc(MEMORY[0x277CBEA90]);
        v11 = [v4 objectForKeyedSubscript:v8];
        v12 = [v10 initWithBase64EncodedString:v11 options:0];

        v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
        v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          [dictionary setObject:v14 forKey:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end