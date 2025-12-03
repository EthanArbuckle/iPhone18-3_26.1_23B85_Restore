@interface TKClientToken
+ (NSArray)builtinTokenIDs;
- (TKClientToken)initWithTokenID:(id)d;
- (TKClientToken)initWithTokenID:(id)d ctkdConnection:(id)connection;
- (TKClientToken)initWithTokenID:(id)d serverEndpoint:(id)endpoint targetUID:(id)iD;
- (id)_initWithTokenID:(id)d;
- (id)sessionWithLAContext:(id)context error:(id *)error;
- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status;
@end

@implementation TKClientToken

- (id)_initWithTokenID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TKClientToken;
  v6 = [(TKClientToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenID, d);
  }

  return v7;
}

- (TKClientToken)initWithTokenID:(id)d
{
  dCopy = d;
  v5 = [TKSEPClientToken handlesTokenID:dCopy];
  v6 = off_1E86B6830;
  if (v5)
  {
    v6 = off_1E86B6840;
  }

  v7 = [objc_alloc(*v6) initWithTokenID:dCopy];

  return v7;
}

- (TKClientToken)initWithTokenID:(id)d ctkdConnection:(id)connection
{
  connectionCopy = connection;
  dCopy = d;
  if ([TKSEPClientToken handlesTokenID:dCopy])
  {
    v8 = [[TKSEPClientToken alloc] initWithTokenID:dCopy];
  }

  else
  {
    v8 = [[TKExtensionClientToken alloc] initWithTokenID:dCopy ctkdConnection:connectionCopy];
  }

  p_super = &v8->super;

  return p_super;
}

- (TKClientToken)initWithTokenID:(id)d serverEndpoint:(id)endpoint targetUID:(id)iD
{
  iDCopy = iD;
  endpointCopy = endpoint;
  dCopy = d;
  v11 = [[TKCTKDConnection alloc] initWithCTKDEndpoint:endpointCopy targetUID:iDCopy];

  v12 = [(TKClientToken *)self initWithTokenID:dCopy ctkdConnection:v11];
  return v12;
}

- (id)sessionWithLAContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [TKClientTokenSession alloc];
  v8 = [(TKClientTokenSession *)v7 initWithToken:self LAContext:contextCopy parameters:MEMORY[0x1E695E0F8] error:error];

  return v8;
}

+ (NSArray)builtinTokenIDs
{
  v2 = +[TKSEPClientToken builtinTokenIDs];
  v3 = +[TKExtensionClientToken builtinTokenIDs];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status
{
  v5 = TK_LOG_client_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TKClientToken notifyOperation:v5 forToken:? withStatus:?];
  }
}

@end