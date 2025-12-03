@interface FRCrashLogMessageManager
- (FRCrashLogMessageManager)initWithAppConfigurationManager:(id)manager;
- (id)formatArrayOfNumbers:(id)numbers;
- (id)formatSegmentsAndTreatments:(id)treatments treatments:(id)a4;
- (void)dealloc;
- (void)updateCrashLogMessageWithCurrentData;
@end

@implementation FRCrashLogMessageManager

- (FRCrashLogMessageManager)initWithAppConfigurationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FRCrashLogMessageManager;
  v6 = [(FRCrashLogMessageManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, manager);
    [(FCNewsAppConfigurationManager *)v7->_appConfigurationManager addAppConfigObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(FCNewsAppConfigurationManager *)self->_appConfigurationManager removeAppConfigObserver:self];
  qword_1000E5FD0 = 0;
  v3.receiver = self;
  v3.super_class = FRCrashLogMessageManager;
  [(FRCrashLogMessageManager *)&v3 dealloc];
}

- (void)updateCrashLogMessageWithCurrentData
{
  appConfigurationManager = [(FRCrashLogMessageManager *)self appConfigurationManager];
  segmentSetIDs = [appConfigurationManager segmentSetIDs];

  appConfigurationManager2 = [(FRCrashLogMessageManager *)self appConfigurationManager];
  treatmentIDs = [appConfigurationManager2 treatmentIDs];

  v6 = [(FRCrashLogMessageManager *)self formatSegmentsAndTreatments:segmentSetIDs treatments:treatmentIDs];
  [(FRCrashLogMessageManager *)self setCurrentCrashLogMessage:v6];

  currentCrashLogMessage = [(FRCrashLogMessageManager *)self currentCrashLogMessage];
  qword_1000E5FD0 = [currentCrashLogMessage UTF8String];
}

- (id)formatSegmentsAndTreatments:(id)treatments treatments:(id)a4
{
  v6 = a4;
  v7 = [(FRCrashLogMessageManager *)self formatArrayOfNumbers:treatments];
  v8 = [(FRCrashLogMessageManager *)self formatArrayOfNumbers:v6];

  v9 = [NSString stringWithFormat:@"Segments: %@ Treatments: %@", v7, v8];

  return v9;
}

- (id)formatArrayOfNumbers:(id)numbers
{
  numbersCopy = numbers;
  v4 = numbersCopy;
  if (numbersCopy && [numbersCopy count])
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          stringValue = [*(*(&v15 + 1) + 8 * i) stringValue];
          [v5 addObject:stringValue];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 componentsJoinedByString:{@", "}];
    v13 = [NSString stringWithFormat:@"[%@]", v12];
  }

  else
  {
    v13 = @"[]";
  }

  return v13;
}

@end