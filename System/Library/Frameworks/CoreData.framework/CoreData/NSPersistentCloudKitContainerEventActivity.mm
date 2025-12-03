@interface NSPersistentCloudKitContainerEventActivity
- (id)beginActivityForPhase:(unint64_t)phase;
- (id)createDictionaryRepresentation;
- (id)endActivityForPhase:(unint64_t)phase withError:(id)error;
- (void)dealloc;
- (void)initWithRequestIdentifier:(void *)identifier storeIdentifier:(uint64_t)storeIdentifier eventType:(uint64_t)type;
@end

@implementation NSPersistentCloudKitContainerEventActivity

- (void)initWithRequestIdentifier:(void *)identifier storeIdentifier:(uint64_t)storeIdentifier eventType:(uint64_t)type
{
  if (!identifier)
  {
    return 0;
  }

  v5.receiver = identifier;
  v5.super_class = NSPersistentCloudKitContainerEventActivity;
  v3 = objc_msgSendSuper2(&v5, sel__initWithIdentifier_forStore_activityType_, storeIdentifier, type, 0);
  if (v3)
  {
    v3[8] = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerEventActivity;
  [(NSPersistentCloudKitContainerActivity *)&v3 dealloc];
}

- (id)beginActivityForPhase:(unint64_t)phase
{
  v5 = [NSPersistentCloudKitContainerSetupPhaseActivity alloc];
  if (self)
  {
    v6 = [(NSPersistentCloudKitContainerSetupPhaseActivity *)v5 initWithPhase:phase storeIdentifier:self->super._storeIdentifier];
    identifier = self->super._identifier;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = [(NSPersistentCloudKitContainerSetupPhaseActivity *)v5 initWithPhase:phase storeIdentifier:0];
    identifier = 0;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  parentActivityIdentifier = v6->super._parentActivityIdentifier;
  if (parentActivityIdentifier != identifier)
  {

    v6->super._parentActivityIdentifier = identifier;
  }

LABEL_5:
  -[NSMutableDictionary setObject:forKey:](self->_activitiesByPhaseNum, "setObject:forKey:", v6, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:phase]);
  return v6;
}

- (id)endActivityForPhase:(unint64_t)phase withError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = -[NSMutableDictionary objectForKey:](self->_activitiesByPhaseNum, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?]);
  if (!v6)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v11 = [NSPersistentCloudKitContainerSetupPhaseActivity stringForPhase:phase];
      v12 = objc_opt_class();
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = NSStringFromClass(v12);
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: No activity was found for phase '%@', this is a critical bug in activity tracking for %@. Please file a radar.\n", &v16, 0x16u);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v13 = [NSPersistentCloudKitContainerSetupPhaseActivity stringForPhase:phase];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v15;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: No activity was found for phase '%@', this is a critical bug in activity tracking for %@. Please file a radar.", &v16, 0x16u);
    }
  }

  [v6 finishWithError:error];
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)createDictionaryRepresentation
{
  v5.receiver = self;
  v5.super_class = NSPersistentCloudKitContainerEventActivity;
  createDictionaryRepresentation = [(NSPersistentCloudKitContainerActivity *)&v5 createDictionaryRepresentation];
  [createDictionaryRepresentation setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", self->_eventType), @"eventType"}];
  return createDictionaryRepresentation;
}

@end