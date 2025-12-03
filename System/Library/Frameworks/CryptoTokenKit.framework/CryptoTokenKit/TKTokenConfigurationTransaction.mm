@interface TKTokenConfigurationTransaction
- (TKTokenConfigurationTransaction)initWithConfigurationConnection:(id)connection;
- (void)commit;
- (void)dealloc;
@end

@implementation TKTokenConfigurationTransaction

- (TKTokenConfigurationTransaction)initWithConfigurationConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = TKTokenConfigurationTransaction;
  v6 = [(TKTokenConfigurationTransaction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationConnection, connection);
  }

  return v7;
}

- (void)commit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"TKTokenConfiguration.m" lineNumber:99 description:@"Double-commit of transaction"];

  *a4 = *a3;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"TKTokenConfiguration.m" lineNumber:105 description:@"Destroying uncommited transaction"];
}

@end