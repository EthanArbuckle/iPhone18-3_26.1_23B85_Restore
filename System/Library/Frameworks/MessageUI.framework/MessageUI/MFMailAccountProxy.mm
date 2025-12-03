@interface MFMailAccountProxy
+ (id)log;
- (BOOL)_isActive;
- (BOOL)_isRestricted;
- (BOOL)isDefaultDeliveryAccount;
- (BOOL)isManaged;
- (BOOL)restrictsRepliesAndForwards;
- (BOOL)supportsMailDrop;
- (BOOL)supportsThreadOperations;
- (NSString)firstEmailAddress;
- (id)_initWithProperties:(id)properties;
- (id)mailAccount;
@end

@implementation MFMailAccountProxy

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MFMailAccountProxy_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __25__MFMailAccountProxy_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

- (id)_initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = MFMailAccountProxy;
  v5 = [(MFMailAccountProxy *)&v9 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (BOOL)isDefaultDeliveryAccount
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADA88]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)firstEmailAddress
{
  v3 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADA50]];
  v4 = v3;
  if (v3)
  {
    firstObject = v3;
  }

  else
  {
    emailAddresses = [(MFMailAccountProxy *)self emailAddresses];
    firstObject = [emailAddresses firstObject];
  }

  return firstObject;
}

- (BOOL)supportsThreadOperations
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADAB0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)restrictsRepliesAndForwards
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADAA0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMailDrop
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADAA8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isManaged
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADA90]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isActive
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADA80]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isRestricted
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x1E69ADA98]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)mailAccount
{
  if (MFIsMobileMail())
  {
    v3 = MEMORY[0x1E69B16A8];
    firstEmailAddress = [(MFMailAccountProxy *)self firstEmailAddress];
    v5 = [v3 accountContainingEmailAddress:firstEmailAddress includingInactive:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end