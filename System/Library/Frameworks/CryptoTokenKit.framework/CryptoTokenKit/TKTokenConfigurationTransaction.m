@interface TKTokenConfigurationTransaction
- (TKTokenConfigurationTransaction)initWithConfigurationConnection:(id)a3;
- (void)commit;
- (void)dealloc;
@end

@implementation TKTokenConfigurationTransaction

- (TKTokenConfigurationTransaction)initWithConfigurationConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKTokenConfigurationTransaction;
  v6 = [(TKTokenConfigurationTransaction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationConnection, a3);
  }

  return v7;
}

- (void)commit
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"TKTokenConfiguration.m" lineNumber:99 description:@"Double-commit of transaction"];

  *a4 = *a3;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenConfiguration.m" lineNumber:105 description:@"Destroying uncommited transaction"];
}

@end