@interface _MFMessageObserver
+ (id)sharedObserver;
+ (void)invokeCompletionForMessageGUID:(id)d didSend:(BOOL)send;
+ (void)observeMessageGUID:(id)d completion:(id)completion;
+ (void)removeCompletionForMessageGUID:(id)d;
- (_MFMessageObserver)init;
- (void)invokeCompletionForMessageGUID:(id)d didSend:(BOOL)send;
- (void)observeMessageGUID:(id)d completion:(id)completion;
@end

@implementation _MFMessageObserver

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    +[_MFMessageObserver sharedObserver];
  }

  v3 = sharedObserver_sharedObserver;

  return v3;
}

- (_MFMessageObserver)init
{
  v12.receiver = self;
  v12.super_class = _MFMessageObserver;
  v2 = [(_MFMessageObserver *)&v12 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  completionMap = v2->_completionMap;
  v2->_completionMap = v3;

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getIMMessageSentDistributedNotificationSymbolLoc_ptr;
  v21 = getIMMessageSentDistributedNotificationSymbolLoc_ptr;
  if (!getIMMessageSentDistributedNotificationSymbolLoc_ptr)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getIMMessageSentDistributedNotificationSymbolLoc_block_invoke;
    v16 = &unk_1E806CA38;
    v17 = &v18;
    v7 = IMSharedUtilitiesLibrary();
    v8 = dlsym(v7, "IMMessageSentDistributedNotification");
    *(v17[1] + 24) = v8;
    getIMMessageSentDistributedNotificationSymbolLoc_ptr = *(v17[1] + 24);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v6)
  {
    CFNotificationCenterAddObserver(DistributedCenter, v2, _MFMessageSentCallback, *v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    return v2;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIMMessageSentDistributedNotification(void)"];
  [currentHandler handleFailureInFunction:v11 file:@"MFMessageComposeViewController.m" lineNumber:87 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

+ (void)observeMessageGUID:(id)d completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "UPISupport observeMessageGUID %@", &v10, 0xCu);
  }

  sharedObserver = [self sharedObserver];
  [sharedObserver observeMessageGUID:dCopy completion:completionCopy];
}

- (void)observeMessageGUID:(id)d completion:(id)completion
{
  dCopy = d;
  v7 = _Block_copy(completion);
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

+ (void)invokeCompletionForMessageGUID:(id)d didSend:(BOOL)send
{
  sendCopy = send;
  dCopy = d;
  sharedObserver = [self sharedObserver];
  [sharedObserver invokeCompletionForMessageGUID:dCopy didSend:sendCopy];
}

- (void)invokeCompletionForMessageGUID:(id)d didSend:(BOOL)send
{
  sendCopy = send;
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_completionMap objectForKeyedSubscript:dCopy];
  v8 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(v7);
    v10 = 138412546;
    v11 = dCopy;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_DEFAULT, "UPISupport invokeCompletionForMessageGUID %@ %@", &v10, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, sendCopy);
    [(_MFMessageObserver *)self removeCompletionForMessageGUID:dCopy];
  }
}

+ (void)removeCompletionForMessageGUID:(id)d
{
  dCopy = d;
  sharedObserver = [self sharedObserver];
  [sharedObserver removeCompletionForMessageGUID:dCopy];
}

@end