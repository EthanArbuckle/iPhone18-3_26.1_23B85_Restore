@interface ADAnalyticsFBFDeliveryInfrastructure
- (void)_deliverSerializedWrapper:(id)wrapper;
- (void)deliverLogViewerIdentifier:(id)identifier;
- (void)deliverWrappedEvent:(id)event;
- (void)deliverWrappedEvents:(id)events;
@end

@implementation ADAnalyticsFBFDeliveryInfrastructure

- (void)_deliverSerializedWrapper:(id)wrapper
{
  if (wrapper)
  {
    wrapperCopy = wrapper;
    v5 = +[FLLogger sharedLogger];
    v4 = +[SiriAnalyticsOffDeviceTopics unordered];
    [v5 report:wrapperCopy application:v4];
  }
}

- (void)deliverWrappedEvents:(id)events
{
  eventsCopy = events;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(eventsCopy);
        }

        [(ADAnalyticsFBFDeliveryInfrastructure *)self deliverWrappedEvent:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)deliverWrappedEvent:(id)event
{
  data = [event data];
  [(ADAnalyticsFBFDeliveryInfrastructure *)self _deliverSerializedWrapper:data];
}

- (void)deliverLogViewerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = +[AFPreferences sharedPreferences];
  longLivedIdentifierUploadingEnabled = [v3 longLivedIdentifierUploadingEnabled];

  v5 = +[FLLogger sharedLogger];
  if (longLivedIdentifierUploadingEnabled)
  {
    v6 = identifierCopy;
  }

  else
  {
    v6 = 0;
  }

  [v5 setValue:v6 forUploadHeaderNamed:@"userId"];
}

@end