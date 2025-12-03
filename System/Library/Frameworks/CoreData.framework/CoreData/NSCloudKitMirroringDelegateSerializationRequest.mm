@interface NSCloudKitMirroringDelegateSerializationRequest
+ (__CFString)stringForResultType:(uint64_t)type;
- (NSCloudKitMirroringDelegateSerializationRequest)initWithOptions:(id)options completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)setObjectIDsToSerialize:(id)serialize;
@end

@implementation NSCloudKitMirroringDelegateSerializationRequest

- (NSCloudKitMirroringDelegateSerializationRequest)initWithOptions:(id)options completionBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringDelegateSerializationRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v7 initWithOptions:options completionBlock:block];
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

+ (__CFString)stringForResultType:(uint64_t)type
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

- (void)setObjectIDsToSerialize:(id)serialize
{
  objectIDsToSerialize = self->_objectIDsToSerialize;
  if (objectIDsToSerialize != serialize)
  {

    if (serialize)
    {
      serializeCopy = serialize;
    }

    else
    {
      serializeCopy = NSSet_EmptySet;
    }

    self->_objectIDsToSerialize = serializeCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringDelegateSerializationRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:zone];
  v4[10] = self->_resultType;
  v4[11] = self->_objectIDsToSerialize;
  return v4;
}

@end