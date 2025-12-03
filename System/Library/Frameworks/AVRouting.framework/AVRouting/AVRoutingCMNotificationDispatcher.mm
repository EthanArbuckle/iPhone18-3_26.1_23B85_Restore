@interface AVRoutingCMNotificationDispatcher
+ (id)notificationDispatcherForCMNotificationCenter:(opaqueCMNotificationCenter *)center;
+ (void)initialize;
- (AVRoutingCMNotificationDispatcher)initWithCMNotificationCenter:(opaqueCMNotificationCenter *)center;
- (id)_copyAndRemoveObserverForWeakReferenceToListener:(id)listener callback:(void *)callback name:(__CFString *)name object:(void *)object;
- (void)addListenerWithWeakReference:(id)reference callback:(void *)callback name:(__CFString *)name object:(void *)object flags:(unsigned int)flags;
- (void)dealloc;
- (void)removeListenerWithWeakReference:(id)reference callback:(void *)callback name:(__CFString *)name object:(void *)object;
@end

@implementation AVRoutingCMNotificationDispatcher

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x1EEDBE8E8]();
  }
}

+ (id)notificationDispatcherForCMNotificationCenter:(opaqueCMNotificationCenter *)center
{
  if (CMNotificationCenterGetDefaultLocalCenter() != center && CMNotificationCenterGetDefaultLocalCenter() != center)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromClass(self);
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@ only supports listening to notifications from CMNotificationCenterGetDefaultLocalCenter", v10, v11, v12, v13, v14, v9), 0}];
    objc_exception_throw(v15);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AVRoutingCMNotificationDispatcher_notificationDispatcherForCMNotificationCenter___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = center;
  if (notificationDispatcherForCMNotificationCenter__sSharedDispatcherOnce != -1)
  {
    dispatch_once(&notificationDispatcherForCMNotificationCenter__sSharedDispatcherOnce, block);
  }

  return notificationDispatcherForCMNotificationCenter__sSharedDispatcher;
}

AVRoutingCMNotificationDispatcher *__83__AVRoutingCMNotificationDispatcher_notificationDispatcherForCMNotificationCenter___block_invoke(uint64_t a1)
{
  result = [[AVRoutingCMNotificationDispatcher alloc] initWithCMNotificationCenter:*(a1 + 32)];
  notificationDispatcherForCMNotificationCenter__sSharedDispatcher = result;
  return result;
}

- (AVRoutingCMNotificationDispatcher)initWithCMNotificationCenter:(opaqueCMNotificationCenter *)center
{
  if (!center)
  {
    selfCopy = self;
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v7, v8, v9, v10, v11, "cmNotificationCenter != NULL"), 0}];
    objc_exception_throw(v12);
  }

  [(AVRoutingCMNotificationDispatcher *)self initWithCMNotificationCenter:center, &v14];
  return v14;
}

- (void)dealloc
{
  cmNotificationCenter = self->_cmNotificationCenter;
  if (cmNotificationCenter)
  {
    CFRelease(cmNotificationCenter);
  }

  listenerObjectsQueue = self->_listenerObjectsQueue;
  if (listenerObjectsQueue)
  {
    dispatch_release(listenerObjectsQueue);
  }

  v5.receiver = self;
  v5.super_class = AVRoutingCMNotificationDispatcher;
  [(AVRoutingCMNotificationDispatcher *)&v5 dealloc];
}

- (void)addListenerWithWeakReference:(id)reference callback:(void *)callback name:(__CFString *)name object:(void *)object flags:(unsigned int)flags
{
  listenerObjectsQueue = self->_listenerObjectsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__AVRoutingCMNotificationDispatcher_addListenerWithWeakReference_callback_name_object_flags___block_invoke;
  block[3] = &unk_1E794EDE0;
  block[6] = name;
  block[7] = object;
  block[8] = callback;
  block[4] = reference;
  block[5] = self;
  dispatch_sync(listenerObjectsQueue, block);
}

void __93__AVRoutingCMNotificationDispatcher_addListenerWithWeakReference_callback_name_object_flags___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__AVRoutingCMNotificationDispatcher_addListenerWithWeakReference_callback_name_object_flags___block_invoke_2;
  v8[3] = &unk_1E794EDB8;
  v10 = *(a1 + 64);
  v9 = *(a1 + 32);
  v5 = [v2 addObserverForName:v3 object:v4 queue:0 usingBlock:v8];
  v6 = [AVRoutingCMNotificationDispatcherListenerKey listenerKeyWithWeakReferenceToListener:*(a1 + 32) callback:*(a1 + 64) name:*(a1 + 48) object:*(a1 + 56)];
  v7 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(a1 + 40) + 24) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v5];
}

uint64_t __93__AVRoutingCMNotificationDispatcher_addListenerWithWeakReference_callback_name_object_flags___block_invoke_2(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v5 = result;
    v10 = *(a1 + 48);
    v6 = [*(a1 + 40) CMNotificationCenter];
    v7 = [a2 name];
    v8 = [a2 object];
    v9 = [a2 userInfo];

    return v10(v6, v5, v7, v8, v9);
  }

  return result;
}

- (void)removeListenerWithWeakReference:(id)reference callback:(void *)callback name:(__CFString *)name object:(void *)object
{
  v6 = [(AVRoutingCMNotificationDispatcher *)self _copyAndRemoveObserverForWeakReferenceToListener:reference callback:callback name:name object:object];
  if (v6)
  {
    v7 = v6;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v6 = v7;
  }
}

- (id)_copyAndRemoveObserverForWeakReferenceToListener:(id)listener callback:(void *)callback name:(__CFString *)name object:(void *)object
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  listenerObjectsQueue = self->_listenerObjectsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__AVRoutingCMNotificationDispatcher__copyAndRemoveObserverForWeakReferenceToListener_callback_name_object___block_invoke;
  block[3] = &unk_1E794EE08;
  block[8] = name;
  block[9] = object;
  block[4] = listener;
  block[5] = self;
  block[10] = a2;
  block[6] = &v10;
  block[7] = callback;
  dispatch_sync(listenerObjectsQueue, block);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __107__AVRoutingCMNotificationDispatcher__copyAndRemoveObserverForWeakReferenceToListener_callback_name_object___block_invoke(uint64_t a1)
{
  v2 = [AVRoutingCMNotificationDispatcherListenerKey listenerKeyWithWeakReferenceToListener:*(a1 + 32) callback:*(a1 + 56) name:*(a1 + 64) object:*(a1 + 72)];
  v3 = [*(*(a1 + 40) + 24) objectForKeyedSubscript:v2];
  if (v3 && (v9 = v3, [v3 count]))
  {
    *(*(*(a1 + 48) + 8) + 40) = [v9 lastObject];
    [v9 removeObjectAtIndex:{objc_msgSend(v9, "count") - 1}];
    if (![v9 count])
    {
      v10 = *(*(a1 + 40) + 24);

      [v10 removeObjectForKey:v2];
    }
  }

  else
  {
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v12 = *(a1 + 56);
    v11 = AVMethodExceptionReasonWithObjectAndSelector(*(a1 + 40), *(a1 + 80), @"Cannot remove a listener %@ (callback %p) for %@ from object %p that was never added.  Break on AVRoutingCMNotificationDispatcherUnbalancedUnregistrationBreak() to debug.", v4, v5, v6, v7, v8, *(a1 + 32));
    NSLog(&stru_1F2027F60.isa, v11, v12, v13, v14);
  }
}

- (void)initWithCMNotificationCenter:(const void *)a3 .cold.1(void *a1, objc_super *a2, const void *a3, objc_super **a4)
{
  a2->receiver = a1;
  a2->super_class = AVRoutingCMNotificationDispatcher;
  v6 = [(objc_super *)a2 init];
  v7 = v6;
  if (v6)
  {
    v6 = CFRetain(a3);
    v7->super_class = v6;
    if (v6)
    {
      v7[1].super_class = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7[1].receiver = dispatch_queue_create("com.apple.avfoundation.AVRoutingCMNotificationDispatcher.ivars", v8);
      v6 = v7;
    }
  }

  *a4 = v6;
}

@end