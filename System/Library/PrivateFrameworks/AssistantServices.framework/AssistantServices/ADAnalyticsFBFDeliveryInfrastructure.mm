@interface ADAnalyticsFBFDeliveryInfrastructure
- (void)_deliverSerializedWrapper:(id)a3;
- (void)deliverLogViewerIdentifier:(id)a3;
- (void)deliverWrappedEvent:(id)a3;
- (void)deliverWrappedEvents:(id)a3;
@end

@implementation ADAnalyticsFBFDeliveryInfrastructure

- (void)_deliverSerializedWrapper:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = +[FLLogger sharedLogger];
    v4 = +[SiriAnalyticsOffDeviceTopics unordered];
    [v5 report:v3 application:v4];
  }
}

- (void)deliverWrappedEvents:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ADAnalyticsFBFDeliveryInfrastructure *)self deliverWrappedEvent:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)deliverWrappedEvent:(id)a3
{
  v4 = [a3 data];
  [(ADAnalyticsFBFDeliveryInfrastructure *)self _deliverSerializedWrapper:v4];
}

- (void)deliverLogViewerIdentifier:(id)a3
{
  v7 = a3;
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 longLivedIdentifierUploadingEnabled];

  v5 = +[FLLogger sharedLogger];
  if (v4)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  [v5 setValue:v6 forUploadHeaderNamed:@"userId"];
}

@end