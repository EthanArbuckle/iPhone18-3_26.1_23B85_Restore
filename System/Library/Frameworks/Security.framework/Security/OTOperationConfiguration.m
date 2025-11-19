@interface OTOperationConfiguration
- (OTOperationConfiguration)init;
- (OTOperationConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OTOperationConfiguration

- (OTOperationConfiguration)init
{
  v6.receiver = self;
  v6.super_class = OTOperationConfiguration;
  v2 = [(OTOperationConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_timeoutWaitForCKAccount = xmmword_18895E170;
    *&v2->_discretionaryNetwork = 0;
    v4 = v2;
  }

  return v3;
}

- (OTOperationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeoutWaitForCKAccount"];
  self->_timeoutWaitForCKAccount = [v5 unsignedLongLongValue];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"qualityOfService"];
  self->_qualityOfService = [v6 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discretionaryNetwork"];
  self->_discretionaryNetwork = [v7 BOOLValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useCachedAccountStatus"];

  self->_useCachedAccountStatus = [v8 BOOLValue];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  timeoutWaitForCKAccount = self->_timeoutWaitForCKAccount;
  v6 = a3;
  v7 = [v4 numberWithUnsignedLongLong:timeoutWaitForCKAccount];
  [v6 encodeObject:v7 forKey:@"timeoutWaitForCKAccount"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_qualityOfService];
  [v6 encodeObject:v8 forKey:@"qualityOfService"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_discretionaryNetwork];
  [v6 encodeObject:v9 forKey:@"discretionaryNetwork"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_useCachedAccountStatus];
  [v6 encodeObject:v10 forKey:@"useCachedAccountStatus"];
}

@end