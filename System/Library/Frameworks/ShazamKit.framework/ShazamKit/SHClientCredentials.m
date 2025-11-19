@interface SHClientCredentials
- (BOOL)isEntitledForSource:(int64_t)a3;
- (SHClientCredentials)initWithConnection:(id)a3;
- (SHClientCredentials)initWithEntitlements:(id)a3 attribution:(id)a4;
- (int64_t)audioTapClient;
- (int64_t)clientType;
@end

@implementation SHClientCredentials

- (SHClientCredentials)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = [[SHAttribution alloc] initWithConnection:v4];
  v6 = [[SHEntitlements alloc] initWithConnection:v4];

  v7 = [(SHClientCredentials *)self initWithEntitlements:v6 attribution:v5];
  return v7;
}

- (SHClientCredentials)initWithEntitlements:(id)a3 attribution:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHClientCredentials;
  v9 = [(SHClientCredentials *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attribution, a4);
    objc_storeStrong(&v10->_entitlements, a3);
  }

  return v10;
}

- (int64_t)clientType
{
  v2 = [(SHClientCredentials *)self entitlements];
  if ([v2 isEntitledForInternalClient])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (BOOL)isEntitledForSource:(int64_t)a3
{
  v3 = [(SHClientCredentials *)self entitlements];
  v4 = [v3 isEntitledForMicrophone];

  return v4;
}

- (int64_t)audioTapClient
{
  v9[0] = @"com.apple.assistant_service";
  v9[1] = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v3 = [NSArray arrayWithObjects:v9 count:2];
  v4 = [(SHClientCredentials *)self attribution];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 containsObject:v5];

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