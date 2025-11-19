@interface NSPersistentCloudKitContainerActivityVoucher
+ (id)describeConfiguration:(id)a3;
+ (id)describeConfigurationWithoutPointer:(id)a3;
+ (id)stringForQoS:(int64_t)a3;
+ (id)stringForQoSClass:(unsigned int)a3;
+ (unsigned)qosClassForQualityOfService:(int64_t)a3;
- (NSPersistentCloudKitContainerActivityVoucher)initWithCoder:(id)a3;
- (NSPersistentCloudKitContainerActivityVoucher)initWithLabel:(id)a3 forEventsOfType:(int64_t)a4 withConfiguration:(id)a5 affectingObjectsMatching:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPersistentCloudKitContainerActivityVoucher

- (NSPersistentCloudKitContainerActivityVoucher)initWithLabel:(id)a3 forEventsOfType:(int64_t)a4 withConfiguration:(id)a5 affectingObjectsMatching:(id)a6
{
  v43[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = NSPersistentCloudKitContainerActivityVoucher;
  v10 = [(NSPersistentCloudKitContainerActivityVoucher *)&v41 init];
  if (v10)
  {
    if (a4)
    {
      if (a5)
      {
        if ([a5 isLongLived])
        {
          v22 = MEMORY[0x1E695DF30];
          v23 = *MEMORY[0x1E695D940];
          v24 = MEMORY[0x1E696AEC0];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = objc_opt_class();
          v28 = [v24 stringWithFormat:@"%@ does not allow clients to specify if operations are longlived or not. Clients should leave longLived unmodified and allow %@ to choose to mark operations long lived or not.", v26, NSStringFromClass(v27)];
          v42 = @"offendingConfiguration";
          v43[0] = a5;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
          v30 = v22;
          v31 = v23;
          v32 = v28;
          goto LABEL_15;
        }

        if ([a5 allowsCellularAccess])
        {
          if ([a5 allowsExpensiveNetworkAccess])
          {
            v10->_eventType = a4;
            v10->_bundleIdentifier = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
            v10->_processName = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
            v10->_label = [a3 copy];
            v10->_fetchRequest = [a6 copy];
            v10->_operationConfiguration = [a5 copy];
            goto LABEL_8;
          }

          v13 = MEMORY[0x1E695DF30];
          v14 = *MEMORY[0x1E695D940];
          v35 = MEMORY[0x1E696AEC0];
          v36 = objc_opt_class();
          v17 = [v35 stringWithFormat:@"%@ does not support network customizations yet (allowsExpensiveNetworkAccess = NO). If you require this functionality please file a radar to CoreData | New Bugs.", NSStringFromClass(v36), v37, v38, v39, v40];
        }

        else
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = *MEMORY[0x1E695D940];
          v33 = MEMORY[0x1E696AEC0];
          v34 = objc_opt_class();
          v17 = [v33 stringWithFormat:@"%@ does not support network customizations yet (allowsCellularAccess = NO). If you require this functionality please file a radar to CoreData | New Bugs.", NSStringFromClass(v34), v37, v38, v39, v40];
        }
      }

      else
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D940];
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        getCloudKitCKOperationConfigurationClass[0]();
        v21 = objc_opt_class();
        v17 = [v18 stringWithFormat:@"%@ requires that clients pass in an instance of %@ that describes how they would like to prioritize work on behalf of the voucher.", v20, NSStringFromClass(v21), v38, v39, v40];
      }
    }

    else
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = [v15 stringWithFormat:@"%@ does not support the escalation of events of type %@. %@ events will be escalated in association with a voucher that is applied to %@ / %@ events as needed.", NSStringFromClass(v16), +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", 0), +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", 0), +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", 2), +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", 1)];
    }

    v32 = v17;
    v30 = v13;
    v31 = v14;
    v29 = 0;
LABEL_15:
    objc_exception_throw([v30 exceptionWithName:v31 reason:v32 userInfo:v29]);
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  self->_bundleIdentifier = 0;

  self->_fetchRequest = 0;
  self->_fetchRequest = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerActivityVoucher;
  [(NSPersistentCloudKitContainerActivityVoucher *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPersistentCloudKitContainerActivityVoucher alloc] initWithLabel:self->_label forEventsOfType:self->_eventType withConfiguration:self->_operationConfiguration affectingObjectsMatching:self->_fetchRequest];

  v4->_bundleIdentifier = self->_bundleIdentifier;
  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@:%p %@>\n\t%@\n\t%@:%@\n\t%@\n\t%@", NSStringFromClass(v5), self, self->_label, +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", self->_eventType), self->_processName, self->_bundleIdentifier, +[NSPersistentCloudKitContainerActivityVoucher describeConfiguration:](NSPersistentCloudKitContainerActivityVoucher, "describeConfiguration:", self->_operationConfiguration), self->_fetchRequest];
  objc_autoreleasePoolPop(v3);

  return v6;
}

- (NSPersistentCloudKitContainerActivityVoucher)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSPersistentCloudKitContainerActivityVoucher;
  v4 = [(NSPersistentCloudKitContainerActivityVoucher *)&v6 init];
  if (v4)
  {
    v4->_label = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    v4->_bundleIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v4->_eventType = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"eventTypeNum", "unsignedIntegerValue"}];
    v4->_fetchRequest = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fetchRequest"];
    getCloudKitCKOperationConfigurationClass[0]();
    v4->_operationConfiguration = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"operationConfiguration"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", self->_eventType), @"eventTypeNum"}];
  [a3 encodeObject:self->_label forKey:@"label"];
  [a3 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [a3 encodeObject:self->_fetchRequest forKey:@"fetchRequest"];
  operationConfiguration = self->_operationConfiguration;

  [a3 encodeObject:operationConfiguration forKey:@"operationConfiguration"];
}

+ (id)describeConfiguration:(id)a3
{
  if (!a3)
  {
    return @"nil";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = +[NSPersistentCloudKitContainerActivityVoucher stringForQoS:](NSPersistentCloudKitContainerActivityVoucher, "stringForQoS:", [a3 qualityOfService]);
  if ([a3 allowsCellularAccess])
  {
    v8 = @"wifi+celluar";
  }

  else
  {
    v8 = @"wifi-only";
  }

  v9 = [a3 isLongLived];
  [a3 timeoutIntervalForRequest];
  v11 = v10;
  [a3 timeoutIntervalForResource];
  return [v4 stringWithFormat:@"<%@:%p %@:%@:%d:%f:%f>", v6, a3, v7, v8, v9, v11, v12];
}

+ (id)describeConfigurationWithoutPointer:(id)a3
{
  if (!a3)
  {
    return @"nil";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = +[NSPersistentCloudKitContainerActivityVoucher stringForQoS:](NSPersistentCloudKitContainerActivityVoucher, "stringForQoS:", [a3 qualityOfService]);
  if ([a3 allowsCellularAccess])
  {
    v6 = @"wifi+celluar";
  }

  else
  {
    v6 = @"wifi-only";
  }

  v7 = [a3 isLongLived];
  [a3 timeoutIntervalForRequest];
  v9 = v8;
  [a3 timeoutIntervalForResource];
  return [v4 stringWithFormat:@"%@:%@:%d:%f:%f", v5, v6, v7, v9, v10];
}

+ (id)stringForQoS:(int64_t)a3
{
  if (a3 > 16)
  {
    switch(a3)
    {
      case 17:
        return @"Utility";
      case 33:
        return @"UserInteractive";
      case 25:
        return @"UserInitiated";
    }
  }

  else
  {
    switch(a3)
    {
      case -1:
        return @"Default";
      case 5:
        return @"Maintenance";
      case 9:
        return @"Background";
    }
  }

  v10 = v3;
  v11 = v4;
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Did someone add a new QoS class? This method should probably be updated.\n", buf, 2u);
  }

  v7 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Did someone add a new QoS class? This method should probably be updated.", v8, 2u);
  }

  return @"unknown";
}

+ (id)stringForQoSClass:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 <= 16)
  {
    switch(a3)
    {
      case 0u:
        result = @"QOS_CLASS_UNSPECIFIED";
        goto LABEL_22;
      case 5u:
        result = @"QOS_CLASS_MAINTENANCE";
        goto LABEL_22;
      case 9u:
        result = @"QOS_CLASS_BACKGROUND";
        goto LABEL_22;
    }
  }

  else if (a3 > 24)
  {
    if (a3 == 33)
    {
      result = @"QOS_CLASS_USER_INTERACTIVE";
      goto LABEL_22;
    }

    if (a3 == 25)
    {
      result = @"QOS_CLASS_USER_INITIATED";
      goto LABEL_22;
    }
  }

  else
  {
    if (a3 == 17)
    {
      result = @"QOS_CLASS_UTILITY";
      goto LABEL_22;
    }

    if (a3 == 21)
    {
      result = @"QOS_CLASS_DEFAULT";
      goto LABEL_22;
    }
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v8 = 67109120;
    v9 = a3;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: What qos class is this? %u\n", &v8, 8u);
  }

  v6 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v8 = 67109120;
    v9 = a3;
    _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: What qos class is this? %u", &v8, 8u);
  }

  result = @"Unknown QOS Class";
LABEL_22:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unsigned)qosClassForQualityOfService:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 > 16)
  {
    switch(a3)
    {
      case 17:
        result = 17;
        goto LABEL_18;
      case 33:
        result = 33;
        goto LABEL_18;
      case 25:
        result = 25;
        goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (a3 == -1)
  {
LABEL_15:
    result = 21;
    goto LABEL_18;
  }

  if (a3 == 5)
  {
    result = 5;
    goto LABEL_18;
  }

  if (a3 != 9)
  {
LABEL_11:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown quality of service: %ld\n", &v8, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Unknown quality of service: %ld", &v8, 0xCu);
    }

    goto LABEL_15;
  }

  result = 9;
LABEL_18:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end