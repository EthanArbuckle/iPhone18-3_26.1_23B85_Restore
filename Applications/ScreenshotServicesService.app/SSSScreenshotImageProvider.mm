@interface SSSScreenshotImageProvider
- (BOOL)requestOutputImageDataInTransition:(BOOL)transition imageType:(id)type forSaving:(id)saving;
- (SSSScreenshot)screenshot;
- (SSSScreenshotImageProvider)initWithScreenshot:(id)screenshot;
- (id)_outputImageOnCurrentUneditedImage;
- (id)pdfDocument;
- (id)requestCGImageBackedUneditedImageForUIBlocking;
- (id)requestOutputImageForSavingBlocking;
- (id)requestOutputImageForUIBlocking;
- (id)requestUneditedImageForUIBlocking;
- (unint64_t)dispatchTimeForInTransition:(BOOL)transition;
- (void)_loadUneditedImageIfNecessaryWithCompletionBlock:(id)block;
- (void)_resumeHighQualityQueueIfNecessary;
- (void)dealloc;
- (void)processImageIdentifier:(id)identifier;
- (void)requestCGImageBackedUneditedImageForUI:(id)i;
- (void)requestOutputImageForUI:(id)i;
- (void)requestOutputImageInTransition:(BOOL)transition forSaving:(id)saving;
- (void)requestUneditedImageForUI:(id)i;
- (void)scheduleDeletionBlock:(id)block;
- (void)setHighQualityQueueIsValid:(BOOL)valid;
@end

@implementation SSSScreenshotImageProvider

- (SSSScreenshotImageProvider)initWithScreenshot:(id)screenshot
{
  v18.receiver = self;
  v18.super_class = SSSScreenshotImageProvider;
  screenshotCopy = screenshot;
  v4 = [(SSSScreenshotImageProvider *)&v18 init];
  objc_storeWeak(v4 + 2, screenshotCopy);

  *(v4 + 2) = 0;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v6 = dispatch_queue_create("ScreenshotPotentiallyLowQualityOutputImageQueue", v5);
  v7 = *(v4 + 3);
  *(v4 + 3) = v6;

  v8 = dispatch_queue_create("ScreenshotHighQualityOutputImageQueue", v5);
  v9 = *(v4 + 4);
  *(v4 + 4) = v8;

  *(v4 + 13) = 1;
  dispatch_set_target_queue(*(v4 + 4), *(v4 + 3));
  dispatch_suspend(*(v4 + 4));
  screenshot = [v4 screenshot];
  modelModificationInfo = [screenshot modelModificationInfo];
  v12 = [modelModificationInfo copy];
  v13 = *(v4 + 7);
  *(v4 + 7) = v12;

  screenshot2 = [v4 screenshot];
  backingImage = [screenshot2 backingImage];
  v16 = *(v4 + 5);
  *(v4 + 5) = backingImage;

  return v4;
}

- (void)setHighQualityQueueIsValid:(BOOL)valid
{
  if (self->_highQualityQueueIsValid != valid)
  {
    validCopy = valid;
    v5 = os_log_create("com.apple.screenshotservices", "ImageProvider");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = validCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setHighQualityQueueIsValid: %{BOOL}d", v6, 8u);
    }

    self->_highQualityQueueIsValid = validCopy;
  }
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.screenshotservices", "ImageProvider");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc: %p", buf, 0xCu);
  }

  if ([(SSSScreenshotImageProvider *)self highQualityQueueIsValid]&& ![(SSSScreenshotImageProvider *)self highQualityQueueHasBeenResumed])
  {
    [(SSSScreenshotImageProvider *)self setHighQualityQueueIsValid:0];
    potentiallyLowQualityImageQueue = self->_potentiallyLowQualityImageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B7F4;
    block[3] = &unk_1000BA068;
    block[4] = self;
    dispatch_sync(potentiallyLowQualityImageQueue, block);
    dispatch_sync(self->_potentiallyLowQualityImageQueue, &stru_1000BAB10);
  }

  v5.receiver = self;
  v5.super_class = SSSScreenshotImageProvider;
  [(SSSScreenshotImageProvider *)&v5 dealloc];
}

- (void)_resumeHighQualityQueueIfNecessary
{
  if (![(SSSScreenshotImageProvider *)self highQualityQueueHasBeenResumed])
  {
    [(SSSScreenshotImageProvider *)self setHighQualityQueueHasBeenResumed:1];
    highQualityImageQueue = [(SSSScreenshotImageProvider *)self highQualityImageQueue];
    dispatch_resume(highQualityImageQueue);
  }
}

- (id)_outputImageOnCurrentUneditedImage
{
  os_unfair_lock_lock(&self->_outputImageLock);
  screenshot = [(SSSScreenshotImageProvider *)self screenshot];
  v4 = screenshot;
  if (screenshot)
  {
    cachedModificationInfo = self->_cachedModificationInfo;
    modelModificationInfo = [screenshot modelModificationInfo];
    if ([(SSSScreenshotModificationInfo *)cachedModificationInfo isEqual:modelModificationInfo])
    {
      hasChangedBackingImage = [(SSSScreenshotImageProvider *)self hasChangedBackingImage];

      if ((hasChangedBackingImage & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  else if (![(SSSScreenshotImageProvider *)self hasChangedBackingImage])
  {
    goto LABEL_12;
  }

  if ([(SSSScreenshotImageProvider *)self hasChangedBackingImage])
  {
    [(SSSScreenshotImageProvider *)self setHasChangedBackingImage:0];
  }

  if (v4)
  {
    v8 = [UIImage _sss_imageFromScreenshot:v4];
    [(SSSScreenshotImageProvider *)self setCachedOutputImage:v8];

    modelModificationInfo2 = [v4 modelModificationInfo];
    v10 = [modelModificationInfo2 copy];
    [(SSSScreenshotImageProvider *)self setCachedModificationInfo:v10];
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_outputImageLock);
  cachedOutputImage = self->_cachedOutputImage;
  v12 = cachedOutputImage;

  return cachedOutputImage;
}

- (unint64_t)dispatchTimeForInTransition:(BOOL)transition
{
  transitionCopy = transition;
  v4 = +[SSSSpringAnimationParameters scaleAnimationParameters];
  [v4 duration];
  v6 = v5;

  if (!transitionCopy)
  {
    return 0;
  }

  v7 = (fmin(v6, 0.5) * 1000000000.0);

  return dispatch_time(0, v7);
}

- (void)requestOutputImageInTransition:(BOOL)transition forSaving:(id)saving
{
  transitionCopy = transition;
  savingCopy = saving;
  objc_initWeak(&location, self);
  screenshot = [(SSSScreenshotImageProvider *)self screenshot];
  imageGenerator = [screenshot imageGenerator];

  v9 = [(SSSScreenshotImageProvider *)self dispatchTimeForInTransition:transitionCopy];
  highQualityImageQueue = self->_highQualityImageQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002BB64;
  v13[3] = &unk_1000BA320;
  objc_copyWeak(&v16, &location);
  v14 = imageGenerator;
  v15 = savingCopy;
  v11 = savingCopy;
  v12 = imageGenerator;
  dispatch_after(v9, highQualityImageQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (BOOL)requestOutputImageDataInTransition:(BOOL)transition imageType:(id)type forSaving:(id)saving
{
  transitionCopy = transition;
  typeCopy = type;
  savingCopy = saving;
  screenshot = [(SSSScreenshotImageProvider *)self screenshot];
  imageGenerator = [screenshot imageGenerator];
  if (imageGenerator)
  {
    objc_initWeak(&location, self);
    v12 = [typeCopy isEqual:UTTypeHEIC];
    v13 = [(SSSScreenshotImageProvider *)self dispatchTimeForInTransition:transitionCopy];
    highQualityImageQueue = self->_highQualityImageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BE2C;
    block[3] = &unk_1000BAB60;
    objc_copyWeak(&v21, &location);
    v17 = imageGenerator;
    v18 = screenshot;
    v22 = v12;
    v19 = typeCopy;
    v20 = savingCopy;
    dispatch_after(v13, highQualityImageQueue, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return imageGenerator != 0;
}

- (void)requestOutputImageForUI:(id)i
{
  iCopy = i;
  objc_initWeak(&location, self);
  screenshot = [(SSSScreenshotImageProvider *)self screenshot];
  imageGenerator = [screenshot imageGenerator];

  potentiallyLowQualityImageQueue = self->_potentiallyLowQualityImageQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BFF0;
  v10[3] = &unk_1000BAB88;
  v11 = imageGenerator;
  v12 = iCopy;
  v8 = iCopy;
  v9 = imageGenerator;
  objc_copyWeak(&v13, &location);
  dispatch_async(potentiallyLowQualityImageQueue, v10);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (id)requestOutputImageForSavingBlocking
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10002C1A8;
  v13 = sub_10002C1B8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C1C0;
  v6[3] = &unk_1000BABB0;
  v8 = &v9;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [(SSSScreenshotImageProvider *)self requestOutputImageForSaving:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)requestOutputImageForUIBlocking
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10002C1A8;
  v13 = sub_10002C1B8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C354;
  v6[3] = &unk_1000BABB0;
  v8 = &v9;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [(SSSScreenshotImageProvider *)self requestOutputImageForUI:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)requestUneditedImageForUI:(id)i
{
  iCopy = i;
  objc_initWeak(&location, self);
  potentiallyLowQualityImageQueue = self->_potentiallyLowQualityImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C480;
  block[3] = &unk_1000BABD8;
  v8 = iCopy;
  v6 = iCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(potentiallyLowQualityImageQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (id)requestUneditedImageForUIBlocking
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10002C1A8;
  v13 = sub_10002C1B8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C638;
  v6[3] = &unk_1000BABB0;
  v8 = &v9;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [(SSSScreenshotImageProvider *)self requestUneditedImageForUI:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)requestCGImageBackedUneditedImageForUI:(id)i
{
  iCopy = i;
  objc_initWeak(&location, self);
  potentiallyLowQualityImageQueue = [(SSSScreenshotImageProvider *)self potentiallyLowQualityImageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C788;
  v7[3] = &unk_1000BAC00;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = iCopy;
  v6 = iCopy;
  dispatch_async(potentiallyLowQualityImageQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)requestCGImageBackedUneditedImageForUIBlocking
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10002C1A8;
  v13 = sub_10002C1B8;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CA18;
  v6[3] = &unk_1000BABB0;
  v8 = &v9;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [(SSSScreenshotImageProvider *)self requestCGImageBackedUneditedImageForUI:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)_loadUneditedImageIfNecessaryWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (!self->_hasOriginalUneditedImage)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_semaphore_create(0);
    v6 = +[SSScreenshotAssetManager sharedAssetManager];
    screenshot = [(SSSScreenshotImageProvider *)self screenshot];
    identifier = [screenshot identifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002CBE0;
    v10[3] = &unk_1000BAC28;
    objc_copyWeak(&v12, &location);
    v9 = v5;
    v11 = v9;
    [v6 imageWithPreviouslyRegisteredIdentifier:identifier withAccessBlock:v10];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  blockCopy[2](blockCopy);
}

- (void)processImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  screenshot = [(SSSScreenshotImageProvider *)self screenshot];
  [screenshot setIdentifier:identifierCopy];

  objc_initWeak(&location, self);
  potentiallyLowQualityImageQueue = [(SSSScreenshotImageProvider *)self potentiallyLowQualityImageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CDCC;
  v7[3] = &unk_1000BA2F8;
  objc_copyWeak(&v8, &location);
  dispatch_async(potentiallyLowQualityImageQueue, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)pdfDocument
{
  requestOutputImageForSavingBlocking = [(SSSScreenshotImageProvider *)self requestOutputImageForSavingBlocking];
  v3 = [[PDFPage alloc] initWithImage:requestOutputImageForSavingBlocking];
  [requestOutputImageForSavingBlocking size];
  v5 = v4;
  [requestOutputImageForSavingBlocking size];
  [v3 setBounds:1 forBox:{0.0, 0.0, v5, v6}];
  v7 = objc_alloc_init(PDFDocument);
  [v7 insertPage:v3 atIndex:0];

  return v7;
}

- (void)scheduleDeletionBlock:(id)block
{
  blockCopy = block;
  highQualityQueueIsValid = [(SSSScreenshotImageProvider *)self highQualityQueueIsValid];
  v6 = os_log_create("com.apple.screenshotservices", "ImageProvider");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v13 = 1024;
    v14 = highQualityQueueIsValid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p schedule deletion block, highQualityQueueIsValid: %{BOOL}d", buf, 0x12u);
  }

  if (highQualityQueueIsValid)
  {
    highQualityImageQueue = [(SSSScreenshotImageProvider *)self highQualityImageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002D07C;
    block[3] = &unk_1000BA998;
    v10 = blockCopy;
    dispatch_async(highQualityImageQueue, block);
  }

  else
  {
    v8 = os_log_create("com.apple.screenshotservices", "ImageProvider");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "highQualityImageQueue is invalid - execute deletion block immediately!", buf, 2u);
    }

    blockCopy[2](blockCopy);
  }
}

- (SSSScreenshot)screenshot
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshot);

  return WeakRetained;
}

@end