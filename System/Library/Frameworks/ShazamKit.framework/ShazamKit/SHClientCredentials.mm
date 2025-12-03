@interface SHClientCredentials
- (BOOL)isEntitledForSource:(int64_t)source;
- (SHClientCredentials)initWithConnection:(id)connection;
- (SHClientCredentials)initWithEntitlements:(id)entitlements attribution:(id)attribution;
- (int64_t)audioTapClient;
- (int64_t)clientType;
@end

@implementation SHClientCredentials

- (SHClientCredentials)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[SHAttribution alloc] initWithConnection:connectionCopy];
  v6 = [[SHEntitlements alloc] initWithConnection:connectionCopy];

  v7 = [(SHClientCredentials *)self initWithEntitlements:v6 attribution:v5];
  return v7;
}

- (SHClientCredentials)initWithEntitlements:(id)entitlements attribution:(id)attribution
{
  entitlementsCopy = entitlements;
  attributionCopy = attribution;
  v12.receiver = self;
  v12.super_class = SHClientCredentials;
  v9 = [(SHClientCredentials *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attribution, attribution);
    objc_storeStrong(&v10->_entitlements, entitlements);
  }

  return v10;
}

- (int64_t)clientType
{
  entitlements = [(SHClientCredentials *)self entitlements];
  if ([entitlements isEntitledForInternalClient])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (BOOL)isEntitledForSource:(int64_t)source
{
  entitlements = [(SHClientCredentials *)self entitlements];
  isEntitledForMicrophone = [entitlements isEntitledForMicrophone];

  return isEntitledForMicrophone;
}

- (int64_t)audioTapClient
{
  v9[0] = @"com.apple.assistant_service";
  v9[1] = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v3 = [NSArray arrayWithObjects:v9 count:2];
  attribution = [(SHClientCredentials *)self attribution];
  bundleIdentifier = [attribution bundleIdentifier];
  v6 = [v3 containsObject:bundleIdentifier];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end