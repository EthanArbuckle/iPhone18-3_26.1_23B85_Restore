@interface PAGetTorch
- (PAGetTorch)initWithDictionary:(id)dictionary;
- (void)_performQueuedRequests;
- (void)_performWithCompletion:(id)completion;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performWithCompletion:(id)completion;
@end

@implementation PAGetTorch

- (PAGetTorch)initWithDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = PAGetTorch;
  v3 = [(PAGetTorch *)&v10 initWithDictionary:dictionary];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("PASetTorch", v4);
    flashlightQueue = v3->_flashlightQueue;
    v3->_flashlightQueue = v5;

    if (+[AVFlashlight hasFlashlight])
    {
      v7 = objc_alloc_init(AVFlashlight);
      flashlight = v3->_flashlight;
      v3->_flashlight = v7;

      [(AVFlashlight *)v3->_flashlight addObserver:v3 forKeyPath:@"flashlightLevel" options:0 context:0];
      [(AVFlashlight *)v3->_flashlight addObserver:v3 forKeyPath:@"overheated" options:0 context:0];
      [(AVFlashlight *)v3->_flashlight addObserver:v3 forKeyPath:@"available" options:0 context:0];
    }

    else
    {
      v3->_flashlightStatusHasBeenUpdated = 1;
    }
  }

  return v3;
}

- (void)dealloc
{
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"flashlightLevel" context:0];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"overheated" context:0];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"available" context:0];
  v3.receiver = self;
  v3.super_class = PAGetTorch;
  [(PAGetTorch *)&v3 dealloc];
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  flashlightQueue = self->_flashlightQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_54C8;
  v7[3] = &unk_10598;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(flashlightQueue, v7);
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[AVFlashlight hasFlashlight]&& [(AVFlashlight *)self->_flashlight isAvailable]&& ([(AVFlashlight *)self->_flashlight isOverheated]& 1) == 0)
  {
    [(AVFlashlight *)self->_flashlight flashlightLevel];
    v5 = v11 > 0.0;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(SASettingBooleanEntity);
  [v6 setValue:v5];
  v7 = objc_alloc_init(SASettingGetBoolResponse);
  [v7 setSetting:v6];
  v8 = PALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"OFF";
    if (v5)
    {
      v9 = @"ON";
    }

    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "########## PAGetTorch (%@)", &v12, 0xCu);
  }

  dictionary = [v7 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"available"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"flashlightLevel") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"overheated"))
  {
    flashlightQueue = self->_flashlightQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_59A8;
    block[3] = &unk_105E8;
    block[4] = self;
    dispatch_async(flashlightQueue, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PAGetTorch;
    [(PAGetTorch *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_performQueuedRequests
{
  pendingPerformRequests = self->_pendingPerformRequests;
  if (pendingPerformRequests)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = pendingPerformRequests;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    v9 = self->_pendingPerformRequests;
    self->_pendingPerformRequests = 0;
  }
}

@end