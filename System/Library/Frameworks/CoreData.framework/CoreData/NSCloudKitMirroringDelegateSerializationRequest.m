@interface NSCloudKitMirroringDelegateSerializationRequest
+ (__CFString)stringForResultType:(uint64_t)a1;
- (NSCloudKitMirroringDelegateSerializationRequest)initWithOptions:(id)a3 completionBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)setObjectIDsToSerialize:(id)a3;
@end

@implementation NSCloudKitMirroringDelegateSerializationRequest

- (NSCloudKitMirroringDelegateSerializationRequest)initWithOptions:(id)a3 completionBlock:(id)a4
{
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringDelegateSerializationRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v7 initWithOptions:a3 completionBlock:a4];
  v5 = v4;
  if (v4)
  {
    v4->_resultType = 0;
    v4->_objectIDsToSerialize = NSSet_EmptySet;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateSerializationRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringDelegateSerializationRequest;
  v4 = [MEMORY[0x1E696AD60] stringWithString:{-[NSCloudKitMirroringRequest description](&v7, sel_description)}];
  [v4 appendFormat:@" resultType: %@", +[NSCloudKitMirroringDelegateSerializationRequest stringForResultType:](NSCloudKitMirroringDelegateSerializationRequest, self->_resultType)];
  [v4 appendFormat:@" resultType: %@", +[NSCloudKitMirroringDelegateSerializationRequest stringForResultType:](NSCloudKitMirroringDelegateSerializationRequest, self->_resultType)];
  [v4 appendFormat:@"\nobjectIDsToSerialize:\n%@", self->_objectIDsToSerialize];
  v5 = v4;
  objc_autoreleasePoolPop(v3);
  return v4;
}

+ (__CFString)stringForResultType:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2 == 1)
  {
    result = @"Records";
  }

  else if (a2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown result type: %lu\n", &v7, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Unknown result type: %lu", &v7, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = @"RecordIDs";
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setObjectIDsToSerialize:(id)a3
{
  objectIDsToSerialize = self->_objectIDsToSerialize;
  if (objectIDsToSerialize != a3)
  {

    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = NSSet_EmptySet;
    }

    self->_objectIDsToSerialize = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringDelegateSerializationRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:a3];
  v4[10] = self->_resultType;
  v4[11] = self->_objectIDsToSerialize;
  return v4;
}

@end