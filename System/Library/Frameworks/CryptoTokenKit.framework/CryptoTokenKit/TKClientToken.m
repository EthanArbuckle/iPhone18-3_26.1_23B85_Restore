@interface TKClientToken
+ (NSArray)builtinTokenIDs;
- (TKClientToken)initWithTokenID:(id)a3;
- (TKClientToken)initWithTokenID:(id)a3 ctkdConnection:(id)a4;
- (TKClientToken)initWithTokenID:(id)a3 serverEndpoint:(id)a4 targetUID:(id)a5;
- (id)_initWithTokenID:(id)a3;
- (id)sessionWithLAContext:(id)a3 error:(id *)a4;
- (void)notifyOperation:(int64_t)a3 forToken:(id)a4 withStatus:(int64_t)a5;
@end

@implementation TKClientToken

- (id)_initWithTokenID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKClientToken;
  v6 = [(TKClientToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenID, a3);
  }

  return v7;
}

- (TKClientToken)initWithTokenID:(id)a3
{
  v4 = a3;
  v5 = [TKSEPClientToken handlesTokenID:v4];
  v6 = off_1E86B6830;
  if (v5)
  {
    v6 = off_1E86B6840;
  }

  v7 = [objc_alloc(*v6) initWithTokenID:v4];

  return v7;
}

- (TKClientToken)initWithTokenID:(id)a3 ctkdConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([TKSEPClientToken handlesTokenID:v7])
  {
    v8 = [[TKSEPClientToken alloc] initWithTokenID:v7];
  }

  else
  {
    v8 = [[TKExtensionClientToken alloc] initWithTokenID:v7 ctkdConnection:v6];
  }

  p_super = &v8->super;

  return p_super;
}

- (TKClientToken)initWithTokenID:(id)a3 serverEndpoint:(id)a4 targetUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[TKCTKDConnection alloc] initWithCTKDEndpoint:v9 targetUID:v8];

  v12 = [(TKClientToken *)self initWithTokenID:v10 ctkdConnection:v11];
  return v12;
}

- (id)sessionWithLAContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [TKClientTokenSession alloc];
  v8 = [(TKClientTokenSession *)v7 initWithToken:self LAContext:v6 parameters:MEMORY[0x1E695E0F8] error:a4];

  return v8;
}

+ (NSArray)builtinTokenIDs
{
  v2 = +[TKSEPClientToken builtinTokenIDs];
  v3 = +[TKExtensionClientToken builtinTokenIDs];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)notifyOperation:(int64_t)a3 forToken:(id)a4 withStatus:(int64_t)a5
{
  v5 = TK_LOG_client_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TKClientToken notifyOperation:v5 forToken:? withStatus:?];
  }
}

@end