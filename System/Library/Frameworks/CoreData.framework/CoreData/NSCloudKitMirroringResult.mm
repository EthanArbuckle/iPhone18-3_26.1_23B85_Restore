@interface NSCloudKitMirroringResult
- (NSCloudKitMirroringResult)initWithRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes error:(id)error;
- (id)description;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringResult

- (void)dealloc
{
  self->_error = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

- (NSCloudKitMirroringResult)initWithRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes error:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = [(NSCloudKitMirroringResult *)self init];
  if (!v12)
  {
    goto LABEL_16;
  }

  v12->_request = request;
  v12->_storeIdentifier = identifier;
  v12->_success = success;
  v12->_madeChanges = changes;
  errorCopy = error;
  v12->_error = errorCopy;
  success = v12->_success;
  if (success && errorCopy != 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      errorCopy3 = error;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: initWithRequest passed an error (%@) on a succes condition\n", &v26, 0xCu);
    }

    v23 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 138412290;
    errorCopy3 = error;
    v18 = "CoreData: initWithRequest passed an error (%@) on a succes condition";
    v19 = v23;
    v20 = 12;
LABEL_18:
    _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, v18, &v26, v20);
    goto LABEL_16;
  }

  if (!success && !errorCopy)
  {
    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: initWithRequest illegally passed nil instead of an error on a failure condition\n", &v26, 2u);
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v26) = 0;
      v18 = "CoreData: initWithRequest illegally passed nil instead of an error on a failure condition";
      v19 = v17;
      v20 = 2;
      goto LABEL_18;
    }
  }

LABEL_16:
  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringResult;
  v4 = [-[NSCloudKitMirroringResult description](&v6 description)];
  [v4 appendFormat:@" storeIdentifier: %@ success: %d madeChanges: %d error: %@", self->_storeIdentifier, self->_success, self->_madeChanges, self->_error];
  objc_autoreleasePoolPop(v3);
  return v4;
}

@end