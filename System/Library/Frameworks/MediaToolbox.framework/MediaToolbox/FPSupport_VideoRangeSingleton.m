@interface FPSupport_VideoRangeSingleton
+ (id)sharedFPSupportSingleton;
- (FPSupport_VideoRangeSingleton)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation FPSupport_VideoRangeSingleton

+ (id)sharedFPSupportSingleton
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FPSupport_VideoRangeSingleton_sharedFPSupportSingleton__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = a1;
  if (sharedFPSupportSingleton_onceToken != -1)
  {
    dispatch_once(&sharedFPSupportSingleton_onceToken, block);
  }

  return sharedFPSupportSingleton_gSharedFPSupport;
}

- (FPSupport_VideoRangeSingleton)init
{
  v4.receiver = self;
  v4.super_class = FPSupport_VideoRangeSingleton;
  v2 = [(FPSupport_VideoRangeSingleton *)&v4 init];
  if (v2)
  {
    v2->_notificationQ = dispatch_queue_create("com.apple.coremedia.fpsupport.displayChangedNotificationQueue", 0);
    [objc_msgSend(MEMORY[0x1E6979328] "mainDisplay")];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FPSupport_VideoRangeSingleton;
  [(FPSupport_VideoRangeSingleton *)&v2 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"currentMode"])
  {
    notificationQ = self->_notificationQ;

    dispatch_async(notificationQ, &__block_literal_global_85);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = FPSupport_VideoRangeSingleton;
    [(FPSupport_VideoRangeSingleton *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

@end