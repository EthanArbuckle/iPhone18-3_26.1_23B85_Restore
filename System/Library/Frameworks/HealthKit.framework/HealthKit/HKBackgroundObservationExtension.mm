@interface HKBackgroundObservationExtension
- (HKBackgroundObservationExtension)init;
- (void)backgroundObservationExtensionTimeWillExpire;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)didReceiveUpdateForSampleType:(id)type completionHandler:(id)handler;
@end

@implementation HKBackgroundObservationExtension

- (HKBackgroundObservationExtension)init
{
  v11.receiver = self;
  v11.super_class = HKBackgroundObservationExtension;
  v2 = [(HKBackgroundObservationExtension *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel_beginRequestWithExtensionContext_);
    if (InstanceMethod != class_getInstanceMethod(v3, sel_beginRequestWithExtensionContext_))
    {
      _HKInitializeLogging();
      v6 = HKLogBackgroundUpdates;
      if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_ERROR))
      {
        [(HKBackgroundObservationExtension *)v6 init];
      }

      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D920];
      v9 = NSStringFromClass(v3);
      [v7 raise:v8 format:{@"You have overridden 'beginRequestWithExtensionContext:' on your subclass (%@) - this is not allowed", v9}];
    }
  }

  return v2;
}

- (void)didReceiveUpdateForSampleType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [HKBackgroundObservationExtension didReceiveUpdateForSampleType:a2 completionHandler:self];
  }

  _HKInitializeLogging();
  v10 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEBUG))
  {
    [HKBackgroundObservationExtension didReceiveUpdateForSampleType:v10 completionHandler:?];
  }

  handlerCopy[2](handlerCopy);
}

- (void)backgroundObservationExtensionTimeWillExpire
{
  _HKInitializeLogging();
  v2 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEBUG))
  {
    [(HKBackgroundObservationExtension *)v2 backgroundObservationExtensionTimeWillExpire];
  }
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(HKBackgroundObservationExtension *)v5 beginRequestWithExtensionContext:a2, self, contextCopy];
  }

  [contextCopy setExtensionInstance:self];
}

- (void)didReceiveUpdateForSampleType:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKBackgroundObservationExtension.m" lineNumber:44 description:@"sample type should be of quantity type"];
}

- (void)beginRequestWithExtensionContext:(uint64_t)a3 .cold.1(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = NSStringFromClass(a1);
  [v9 handleFailureInMethod:a2 object:a3 file:@"HKBackgroundObservationExtension.m" lineNumber:57 description:{@"remoteContext of type: %@ is not an instance of %@", a4, v8}];
}

@end