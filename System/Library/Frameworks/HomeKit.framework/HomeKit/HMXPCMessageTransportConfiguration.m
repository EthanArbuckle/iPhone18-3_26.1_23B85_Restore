@interface HMXPCMessageTransportConfiguration
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMXPCMessageTransportConfiguration)initWithMachServiceName:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)serverStartNotification;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMXPCMessageTransportConfiguration

- (NSString)serverStartNotification
{
  v2 = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v3 = [v2 stringByAppendingString:@".start.notification"];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v5 = [v3 initWithName:@"Mach Service Name" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = HMXPCClientEntitlementsShortDescription([(HMXPCMessageTransportConfiguration *)self requiredEntitlements]);
  v8 = [v6 initWithName:@"Required Entitlements" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMXPCMessageTransportConfiguration *)self requiresHomeDataAccess];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Requires Home Data Access" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableXPCMessageTransportConfiguration allocWithZone:a3];
  v5 = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v6 = [(HMXPCMessageTransportConfiguration *)v4 initWithMachServiceName:v5];

  [(HMXPCMessageTransportConfiguration *)v6 setRequiredEntitlements:[(HMXPCMessageTransportConfiguration *)self requiredEntitlements]];
  [(HMXPCMessageTransportConfiguration *)v6 setRequiresHomeDataAccess:[(HMXPCMessageTransportConfiguration *)self requiresHomeDataAccess]];
  v7 = [(HMXPCMessageTransportConfiguration *)self queue];
  [(HMXPCMessageTransportConfiguration *)v6 setQueue:v7];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMXPCMessageTransportConfiguration *)self machServiceName];
    v8 = [v6 machServiceName];
    if ([v7 isEqualToString:v8] && (v9 = -[HMXPCMessageTransportConfiguration requiredEntitlements](self, "requiredEntitlements"), v9 == objc_msgSend(v6, "requiredEntitlements")) && (v10 = -[HMXPCMessageTransportConfiguration requiresHomeDataAccess](self, "requiresHomeDataAccess"), v10 == objc_msgSend(v6, "requiresHomeDataAccess")))
    {
      v13 = [(HMXPCMessageTransportConfiguration *)self queue];
      v14 = [v6 queue];
      v11 = [v13 isEqual:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMXPCMessageTransportConfiguration)initWithMachServiceName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v17.receiver = self;
    v17.super_class = HMXPCMessageTransportConfiguration;
    v6 = [(HMXPCMessageTransportConfiguration *)&v17 init];
    if (v6)
    {
      v7 = [v5 copy];
      machServiceName = v6->_machServiceName;
      v6->_machServiceName = v7;

      v6->_requiredEntitlements = 1;
      v6->_requiresHomeDataAccess = 1;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.HomeKit.XPC.%@", v5];
      v10 = [v9 UTF8String];
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create(v10, v11);
      queue = v6->_queue;
      v6->_queue = v12;
    }

    return v6;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    [(HMDevice *)v15 .cxx_destruct];
  }

  return result;
}

@end