@interface AMSMetricsIdentifier
+ (id)clientIdKey;
- (AMSMetricsIdentifier)init;
- (id)generateEventFields;
- (id)generateIdentifier;
@end

@implementation AMSMetricsIdentifier

- (AMSMetricsIdentifier)init
{
  v7.receiver = self;
  v7.super_class = AMSMetricsIdentifier;
  v2 = [(AMSMetricsIdentifier *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    store = v2->_store;
    v2->_store = v3;

    v5 = +[AMSProcessInfo currentProcess];
    [(AMSMetricsIdentifierStore *)v2->_store setClientInfo:v5];
  }

  return v2;
}

- (id)generateEventFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [(AMSMetricsIdentifier *)self generateIdentifier];
  v3 = v2;
  if (v2)
  {
    v6[0] = @"clientGeneratedId";
    v6[1] = @"clientId";
    v7[0] = MEMORY[0x1E695E118];
    v7[1] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (id)generateIdentifier
{
  store = self->_store;
  v3 = +[AMSMetricsIdentifier clientIdKey];
  v4 = [(AMSMetricsIdentifierStore *)store identifierForKey:v3];

  return v4;
}

+ (id)clientIdKey
{
  if (_MergedGlobals_133 != -1)
  {
    dispatch_once(&_MergedGlobals_133, &__block_literal_global_96);
  }

  v3 = qword_1ED6E2F38;

  return v3;
}

uint64_t __35__AMSMetricsIdentifier_clientIdKey__block_invoke()
{
  qword_1ED6E2F38 = [AMSMetricsIdentifierKey keyWithName:0x1F07235F8 crossDeviceSync:0];

  return MEMORY[0x1EEE66BB8]();
}

@end