@interface TKTokenDriverConfiguration
+ (NSDictionary)driverConfigurations;
+ (id)_connectionWithCTKDConnection:(id)a3;
+ (id)_driverConfigurationsWithConnection:(id)a3;
+ (id)driverConfigurationsWithCTKDConnection:(id)a3;
+ (id)driverConfigurationsWithClient:(id)a3;
- (NSDictionary)tokenConfigurations;
- (TKTokenDriverConfiguration)initWithClassID:(id)a3 configurationConnection:(id)a4;
- (id)beginTransaction;
- (void)removeTokenConfigurationForTokenInstanceID:(TKTokenInstanceID)instanceID;
@end

@implementation TKTokenDriverConfiguration

+ (id)driverConfigurationsWithClient:(id)a3
{
  v3 = [a3 ctkdConnection];
  v4 = [TKTokenDriverConfiguration _connectionWithCTKDConnection:v3];

  v5 = [TKTokenDriverConfiguration _driverConfigurationsWithConnection:v4];

  return v5;
}

+ (id)driverConfigurationsWithCTKDConnection:(id)a3
{
  v3 = [TKTokenDriverConfiguration _connectionWithCTKDConnection:a3];
  v4 = [TKTokenDriverConfiguration _driverConfigurationsWithConnection:v3];

  return v4;
}

+ (NSDictionary)driverConfigurations
{
  if (driverConfigurations_onceToken != -1)
  {
    +[TKTokenDriverConfiguration driverConfigurations];
  }

  v3 = driverConfigurations_connection;

  return [a1 _driverConfigurationsWithConnection:v3];
}

uint64_t __50__TKTokenDriverConfiguration_driverConfigurations__block_invoke()
{
  driverConfigurations_connection = [TKTokenDriverConfiguration _connectionWithCTKDConnection:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_connectionWithCTKDConnection:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = objc_alloc_init(TKCTKDConnection);
  }

  v4 = [(TKCTKDConnection *)v3 configurationEndpoint];
  if (v4)
  {
    v5 = [[TKTokenConfigurationConnection alloc] initWithEndpoint:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_driverConfigurationsWithConnection:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = [MEMORY[0x1E695E0F8] mutableCopy];
    v4 = [v3 configurationProtocol];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __66__TKTokenDriverConfiguration__driverConfigurationsWithConnection___block_invoke;
    v11 = &unk_1E86B75C0;
    v12 = v3;
    v13 = &v14;
    [v4 getClassIDsWithReply:&v8];

    v5 = [v15[5] copy];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = TK_LOG_tokencfg();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TKTokenDriverConfiguration _driverConfigurationsWithConnection:v6];
    }

    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

void __66__TKTokenDriverConfiguration__driverConfigurationsWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [[TKTokenDriverConfiguration alloc] initWithClassID:v8 configurationConnection:*(a1 + 32)];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (TKTokenDriverConfiguration)initWithClassID:(id)a3 configurationConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKTokenDriverConfiguration;
  v9 = [(TKTokenDriverConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_classID, a3);
    objc_storeStrong(&v10->_configurationConnection, a4);
  }

  return v10;
}

- (NSDictionary)tokenConfigurations
{
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  v4 = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  v5 = [(TKTokenDriverConfiguration *)self classID];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __49__TKTokenDriverConfiguration_tokenConfigurations__block_invoke;
  v12 = &unk_1E86B75E8;
  v13 = self;
  v14 = v3;
  v6 = v3;
  [v4 getTokenIDsForClassID:v5 reply:&v9];

  v7 = [v6 copy];

  return v7;
}

void __49__TKTokenDriverConfiguration_tokenConfigurations__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [[TKTokenConfiguration alloc] initWithTokenID:v8 configurationConnection:*(*(a1 + 32) + 8)];
        v10 = *(a1 + 40);
        v11 = [v8 instanceID];
        [v10 setObject:v9 forKeyedSubscript:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)beginTransaction
{
  v3 = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  [v3 beginTransactionWithReply:&__block_literal_global_196];

  v4 = [[TKTokenConfigurationTransaction alloc] initWithConfigurationConnection:self->_configurationConnection];

  return v4;
}

uint64_t __80__TKTokenDriverConfiguration_createTokenConfigurationWithInstanceID_persistent___block_invoke(void *a1)
{
  v2 = [[TKTokenConfiguration alloc] initWithTokenID:a1[4] configurationConnection:*(a1[5] + 8)];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)removeTokenConfigurationForTokenInstanceID:(TKTokenInstanceID)instanceID
{
  v4 = instanceID;
  v6 = [[TKTokenID alloc] initWithClassID:self->_classID instanceID:v4];

  v5 = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  [v5 removeTokenID:v6 reply:&__block_literal_global_198];
}

@end