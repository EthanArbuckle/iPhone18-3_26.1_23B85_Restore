@interface HMXPCMessageTransportConfiguration
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMXPCMessageTransportConfiguration)initWithMachServiceName:(id)name;
- (NSArray)attributeDescriptions;
- (NSString)serverStartNotification;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMXPCMessageTransportConfiguration

- (NSString)serverStartNotification
{
  machServiceName = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v3 = [machServiceName stringByAppendingString:@".start.notification"];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  machServiceName = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v5 = [v3 initWithName:@"Mach Service Name" value:machServiceName];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableXPCMessageTransportConfiguration allocWithZone:zone];
  machServiceName = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v6 = [(HMXPCMessageTransportConfiguration *)v4 initWithMachServiceName:machServiceName];

  [(HMXPCMessageTransportConfiguration *)v6 setRequiredEntitlements:[(HMXPCMessageTransportConfiguration *)self requiredEntitlements]];
  [(HMXPCMessageTransportConfiguration *)v6 setRequiresHomeDataAccess:[(HMXPCMessageTransportConfiguration *)self requiresHomeDataAccess]];
  queue = [(HMXPCMessageTransportConfiguration *)self queue];
  [(HMXPCMessageTransportConfiguration *)v6 setQueue:queue];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  machServiceName = [(HMXPCMessageTransportConfiguration *)self machServiceName];
  v3 = [machServiceName hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    machServiceName = [(HMXPCMessageTransportConfiguration *)self machServiceName];
    machServiceName2 = [v6 machServiceName];
    if ([machServiceName isEqualToString:machServiceName2] && (v9 = -[HMXPCMessageTransportConfiguration requiredEntitlements](self, "requiredEntitlements"), v9 == objc_msgSend(v6, "requiredEntitlements")) && (v10 = -[HMXPCMessageTransportConfiguration requiresHomeDataAccess](self, "requiresHomeDataAccess"), v10 == objc_msgSend(v6, "requiresHomeDataAccess")))
    {
      queue = [(HMXPCMessageTransportConfiguration *)self queue];
      queue2 = [v6 queue];
      v11 = [queue isEqual:queue2];
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

- (HMXPCMessageTransportConfiguration)initWithMachServiceName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
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
      uTF8String = [v9 UTF8String];
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create(uTF8String, v11);
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