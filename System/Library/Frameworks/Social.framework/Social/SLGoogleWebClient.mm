@interface SLGoogleWebClient
+ (id)dataclassesForScopes:(id)scopes;
- (NSString)clientID;
- (NSString)clientRedirectForAppOpenURL;
- (SLGoogleWebClient)initWithClientID:(id)d;
- (SLGoogleWebClient)initWithCoder:(id)coder;
@end

@implementation SLGoogleWebClient

- (SLGoogleWebClient)initWithClientID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SLGoogleWebClient;
  v6 = [(SLGoogleWebClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientID, d);
  }

  return v7;
}

- (SLGoogleWebClient)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SLGoogleWebClient;
  return [(SLGoogleWebClient *)&v4 init];
}

- (NSString)clientID
{
  if (self->_clientID)
  {
    return self->_clientID;
  }

  else
  {
    return @"450232826690-0rm6bs9d2fps9tifvk2oodh3tasd7vl7.apps.googleusercontent.com";
  }
}

+ (id)dataclassesForScopes:(id)scopes
{
  v9[2] = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  v4 = [MEMORY[0x1E695DFA8] set];
  if ([scopesCopy containsObject:@"https://mail.google.com/"])
  {
    v5 = *MEMORY[0x1E69596C0];
    v9[0] = *MEMORY[0x1E6959698];
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    [v4 addObjectsFromArray:v6];
  }

  if ([scopesCopy containsObject:@"https://www.googleapis.com/auth/calendar"])
  {
    [v4 addObject:*MEMORY[0x1E6959630]];
  }

  if ([scopesCopy containsObject:@"https://www.googleapis.com/auth/carddav"])
  {
    [v4 addObject:*MEMORY[0x1E6959640]];
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

- (NSString)clientRedirectForAppOpenURL
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

@end