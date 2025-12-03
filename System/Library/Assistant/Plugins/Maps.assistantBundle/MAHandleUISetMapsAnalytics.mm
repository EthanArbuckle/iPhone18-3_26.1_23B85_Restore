@interface MAHandleUISetMapsAnalytics
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleUISetMapsAnalytics

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  extSessionGuid = [(MAHandleUISetMapsAnalytics *)self extSessionGuid];
  extSessionGuidCreatedTimestamp = [(MAHandleUISetMapsAnalytics *)self extSessionGuidCreatedTimestamp];
  if (extSessionGuid && extSessionGuidCreatedTimestamp)
  {
    v7 = +[GEOUserSession sharedInstance];
    dictionary2 = objc_alloc_init(GEOUserSessionEntity);
    [dictionary2 updateSessionIDFromUUIDString:extSessionGuid];
    [extSessionGuidCreatedTimestamp timeIntervalSinceReferenceDate];
    [dictionary2 setSessionCreationTime:?];
    [v7 setSharedMapsUserSessionEntity:dictionary2 shareSessionIDWithMaps:1];
    v9 = objc_alloc_init(SACommandSucceeded);
    dictionary = [v9 dictionary];
    completionCopy[2](completionCopy, dictionary);

    completionCopy = v9;
  }

  else
  {
    v7 = [[SACommandFailed alloc] initWithReason:@"Missing values for extSessionGuid or extSessionGuidCreatedTimestamp"];
    dictionary2 = [v7 dictionary];
    completionCopy[2](completionCopy, dictionary2);
  }
}

@end