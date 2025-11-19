@interface MAHandleUISetMapsAnalytics
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleUISetMapsAnalytics

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v11 = [(MAHandleUISetMapsAnalytics *)self extSessionGuid];
  v6 = [(MAHandleUISetMapsAnalytics *)self extSessionGuidCreatedTimestamp];
  if (v11 && v6)
  {
    v7 = +[GEOUserSession sharedInstance];
    v8 = objc_alloc_init(GEOUserSessionEntity);
    [v8 updateSessionIDFromUUIDString:v11];
    [v6 timeIntervalSinceReferenceDate];
    [v8 setSessionCreationTime:?];
    [v7 setSharedMapsUserSessionEntity:v8 shareSessionIDWithMaps:1];
    v9 = objc_alloc_init(SACommandSucceeded);
    v10 = [v9 dictionary];
    v5[2](v5, v10);

    v5 = v9;
  }

  else
  {
    v7 = [[SACommandFailed alloc] initWithReason:@"Missing values for extSessionGuid or extSessionGuidCreatedTimestamp"];
    v8 = [v7 dictionary];
    v5[2](v5, v8);
  }
}

@end