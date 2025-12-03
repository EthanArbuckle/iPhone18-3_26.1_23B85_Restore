@interface NSPersistentCloudKitContainerActivity
- (id)_initWithIdentifier:(id)identifier forStore:(id)store activityType:(unint64_t)type;
- (id)createDictionaryRepresentation;
- (void)dealloc;
- (void)finishWithError:(id)error;
@end

@implementation NSPersistentCloudKitContainerActivity

- (id)_initWithIdentifier:(id)identifier forStore:(id)store activityType:(unint64_t)type
{
  v11.receiver = self;
  v11.super_class = NSPersistentCloudKitContainerActivity;
  v8 = [(NSPersistentCloudKitContainerActivity *)&v11 init];
  if (v8)
  {
    v8->_identifier = identifier;
    v8->_storeIdentifier = store;
    v9 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v8->_activityType = type;
    v8->_startDate = v9;
  }

  return v8;
}

- (void)dealloc
{
  self->_error = 0;

  self->_parentActivityIdentifier = 0;
  self->_endDate = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerActivity;
  [(NSPersistentCloudKitContainerActivity *)&v3 dealloc];
}

- (id)createDictionaryRepresentation
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKey:@"identifier"];
  [v3 setObject:self->_storeIdentifier forKey:@"storeIdentifier"];
  parentActivityIdentifier = self->_parentActivityIdentifier;
  if (parentActivityIdentifier)
  {
    [v3 setObject:parentActivityIdentifier forKey:@"parentActivityIdentifier"];
  }

  activityType = self->_activityType;
  objc_opt_self();
  if (activityType >= 5)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      v15 = activityType;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to create a string for activity type '%lu'\n", &v14, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v14 = 134217984;
      v15 = activityType;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to create a string for activity type '%lu'", &v14, 0xCu);
    }

    v6 = &stru_1EF3F1768;
  }

  else
  {
    v6 = off_1E6EC5478[activityType];
  }

  [v3 setObject:v6 forKey:@"activityType"];
  [v3 setObject:self->_startDate forKey:@"startDate"];
  endDate = self->_endDate;
  if (endDate)
  {
    [v3 setObject:endDate forKey:@"endDate"];
  }

  error = self->_error;
  if (error)
  {
    [v3 setObject:error forKey:@"error"];
  }

  if (self->_endDate)
  {
    v11 = self->_error == 0;
  }

  else
  {
    v11 = 0;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v11), @"succeeded"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_endDate != 0), @"finished"}];
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)finishWithError:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_endDate)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to finish an activity multiple times: %@\n", &v8, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to finish an activity multiple times: %@", &v8, 0xCu);
    }
  }

  else
  {
    self->_endDate = objc_alloc_init(MEMORY[0x1E695DF00]);
    self->_error = error;
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end