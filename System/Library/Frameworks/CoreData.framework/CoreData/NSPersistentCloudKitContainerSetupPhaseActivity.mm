@interface NSPersistentCloudKitContainerSetupPhaseActivity
+ (__CFString)stringForPhase:(uint64_t)phase;
- (NSPersistentCloudKitContainerSetupPhaseActivity)initWithPhase:(unint64_t)phase storeIdentifier:(id)identifier;
- (id)createDictionaryRepresentation;
@end

@implementation NSPersistentCloudKitContainerSetupPhaseActivity

+ (__CFString)stringForPhase:(uint64_t)phase
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2 >= 7)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to create a string for this phase: %lu\n", &v7, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to create a string for this phase: %lu", &v7, 0xCu);
    }

    result = &stru_1EF3F1768;
  }

  else
  {
    result = off_1E6EC54A0[a2];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSPersistentCloudKitContainerSetupPhaseActivity)initWithPhase:(unint64_t)phase storeIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NSPersistentCloudKitContainerSetupPhaseActivity;
  result = -[NSPersistentCloudKitContainerActivity _initWithIdentifier:forStore:activityType:](&v6, sel__initWithIdentifier_forStore_activityType_, [MEMORY[0x1E696AFB0] UUID], identifier, 4);
  if (result)
  {
    result->_phase = phase;
  }

  return result;
}

- (id)createDictionaryRepresentation
{
  v5.receiver = self;
  v5.super_class = NSPersistentCloudKitContainerSetupPhaseActivity;
  createDictionaryRepresentation = [(NSPersistentCloudKitContainerActivity *)&v5 createDictionaryRepresentation];
  [createDictionaryRepresentation setObject:+[NSPersistentCloudKitContainerSetupPhaseActivity stringForPhase:](NSPersistentCloudKitContainerSetupPhaseActivity forKey:{self->_phase), @"phase"}];
  return createDictionaryRepresentation;
}

@end