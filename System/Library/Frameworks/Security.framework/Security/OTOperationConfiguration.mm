@interface OTOperationConfiguration
- (OTOperationConfiguration)init;
- (OTOperationConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (OTOperationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeoutWaitForCKAccount"];
  self->_timeoutWaitForCKAccount = [v5 unsignedLongLongValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qualityOfService"];
  self->_qualityOfService = [v6 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discretionaryNetwork"];
  self->_discretionaryNetwork = [v7 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCachedAccountStatus"];

  self->_useCachedAccountStatus = [v8 BOOLValue];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  timeoutWaitForCKAccount = self->_timeoutWaitForCKAccount;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:timeoutWaitForCKAccount];
  [coderCopy encodeObject:v7 forKey:@"timeoutWaitForCKAccount"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_qualityOfService];
  [coderCopy encodeObject:v8 forKey:@"qualityOfService"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_discretionaryNetwork];
  [coderCopy encodeObject:v9 forKey:@"discretionaryNetwork"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_useCachedAccountStatus];
  [coderCopy encodeObject:v10 forKey:@"useCachedAccountStatus"];
}

@end