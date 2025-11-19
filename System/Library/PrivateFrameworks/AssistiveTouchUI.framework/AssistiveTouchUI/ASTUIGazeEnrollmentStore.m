@interface ASTUIGazeEnrollmentStore
- (BOOL)enrollmentComplete;
- (NSArray)calibratedArray;
- (id)_retrieveDictionary;
- (void)clearStore;
- (void)saveCalibratedArray:(id)a3;
- (void)saveEnrollmentPoint:(CGPoint)a3 withGazePoint:(CGPoint)a4;
@end

@implementation ASTUIGazeEnrollmentStore

- (NSArray)calibratedArray
{
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues];

  return v3;
}

- (BOOL)enrollmentComplete
{
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted];

  return v3;
}

- (void)saveEnrollmentPoint:(CGPoint)a3 withGazePoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3.x, a3.y}];
  v6 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v7 = [MEMORY[0x277CE7E20] sharedInstance];
  v8 = [v7 assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v12 = [v10 base64EncodedStringWithOptions:0];
  v13 = [v11 base64EncodedStringWithOptions:0];
  [v9 setObject:v13 forKey:v12];
  v14 = [MEMORY[0x277CE7E20] sharedInstance];
  [v14 setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap:v9];
}

- (void)saveCalibratedArray:(id)a3
{
  v3 = MEMORY[0x277CE7E20];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 setAssistiveTouchMouseOnDeviceEyeTrackingCalibratedValues:v4];

  v6 = [MEMORY[0x277CE7E20] sharedInstance];
  [v6 setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap:0];
}

- (void)clearStore
{
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  [v2 setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted:0];

  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  [v3 setAssistiveTouchMouseOnDeviceEyeTrackingCalibratedValues:0];

  v4 = [MEMORY[0x277CE7E20] sharedInstance];
  [v4 setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap:0];
}

- (id)_retrieveDictionary
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap];

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v3;
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
          [v19 setObject:v14 forKey:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

@end