@interface FRCrashLogMessageManager
- (FRCrashLogMessageManager)initWithAppConfigurationManager:(id)a3;
- (id)formatArrayOfNumbers:(id)a3;
- (id)formatSegmentsAndTreatments:(id)a3 treatments:(id)a4;
- (void)dealloc;
- (void)updateCrashLogMessageWithCurrentData;
@end

@implementation FRCrashLogMessageManager

- (FRCrashLogMessageManager)initWithAppConfigurationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FRCrashLogMessageManager;
  v6 = [(FRCrashLogMessageManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, a3);
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
  v3 = [(FRCrashLogMessageManager *)self appConfigurationManager];
  v8 = [v3 segmentSetIDs];

  v4 = [(FRCrashLogMessageManager *)self appConfigurationManager];
  v5 = [v4 treatmentIDs];

  v6 = [(FRCrashLogMessageManager *)self formatSegmentsAndTreatments:v8 treatments:v5];
  [(FRCrashLogMessageManager *)self setCurrentCrashLogMessage:v6];

  v7 = [(FRCrashLogMessageManager *)self currentCrashLogMessage];
  qword_1000E5FD0 = [v7 UTF8String];
}

- (id)formatSegmentsAndTreatments:(id)a3 treatments:(id)a4
{
  v6 = a4;
  v7 = [(FRCrashLogMessageManager *)self formatArrayOfNumbers:a3];
  v8 = [(FRCrashLogMessageManager *)self formatArrayOfNumbers:v6];

  v9 = [NSString stringWithFormat:@"Segments: %@ Treatments: %@", v7, v8];

  return v9;
}

- (id)formatArrayOfNumbers:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
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

          v11 = [*(*(&v15 + 1) + 8 * i) stringValue];
          [v5 addObject:v11];
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