@interface NSPersistentCloudKitContainerEvent
+ (id)eventTypeString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSPersistentCloudKitContainerEvent)initWithCKEvent:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation NSPersistentCloudKitContainerEvent

- (void)dealloc
{
  self->_endDate = 0;

  self->_error = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerEvent;
  [(NSPersistentCloudKitContainerEvent *)&v3 dealloc];
}

- (NSPersistentCloudKitContainerEvent)initWithCKEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSPersistentCloudKitContainerEvent;
  v4 = [(NSPersistentCloudKitContainerEvent *)&v6 init];
  if (v4)
  {
    v4->_ckEventObjectID = [a3 objectID];
    v4->_identifier = [a3 eventIdentifier];
    v4->_storeIdentifier = [objc_msgSend(objc_msgSend(a3 "objectID")];
    v4->_type = [a3 cloudKitEventType];
    v4->_startDate = [a3 startedAt];
    v4->_endDate = [a3 endedAt];
    v4->_succeeded = [a3 succeeded];
    if ([objc_msgSend(a3 "errorDomain")])
    {
      v4->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(a3 code:"errorDomain") userInfo:{objc_msgSend(a3, "errorCode"), 0}];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_identifier isEqual:*(a3 + 3)];
      if (v5)
      {
        LOBYTE(v5) = self->_type == *(a3 + 5);
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = NSPersistentCloudKitContainerEvent;
  v4 = [-[NSPersistentCloudKitContainerEvent description](&v8 description)];
  [v4 appendFormat:@" { type: %@ store: %@ started: %@ ended: %@", +[NSPersistentCloudKitContainerEvent eventTypeString:](NSPersistentCloudKitContainerEvent, "eventTypeString:", self->_type), self->_storeIdentifier, self->_startDate, self->_endDate];
  if (self->_succeeded)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v4 appendFormat:@" succeeded: %@", v5];
  error = self->_error;
  if (error)
  {
    [v4 appendFormat:@" error: %@:%ld", -[NSError domain](error, "domain"), -[NSError code](self->_error, "code")];
  }

  [v4 appendString:@" }"];
  objc_autoreleasePoolPop(v3);
  return v4;
}

+ (id)eventTypeString:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown event type, cannot covert to string: %ld\n", &v8, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Unknown event type, cannot covert to string: %ld", &v8, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = off_1E6EC2838[a3];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end