@interface SSSScreenshotImageProvider
- (BOOL)requestOutputImageDataInTransition:(BOOL)a3 imageType:(id)a4 forSaving:(id)a5;
- (SSSScreenshot)screenshot;
- (SSSScreenshotImageProvider)initWithScreenshot:(id)a3;
- (id)_outputImageOnCurrentUneditedImage;
- (id)pdfDocument;
- (id)requestCGImageBackedUneditedImageForUIBlocking;
- (id)requestOutputImageForSavingBlocking;
- (id)requestOutputImageForUIBlocking;
- (id)requestUneditedImageForUIBlocking;
- (unint64_t)dispatchTimeForInTransition:(BOOL)a3;
- (void)_loadUneditedImageIfNecessaryWithCompletionBlock:(id)a3;
- (void)_resumeHighQualityQueueIfNecessary;
- (void)dealloc;
- (void)processImageIdentifier:(id)a3;
- (void)requestCGImageBackedUneditedImageForUI:(id)a3;
- (void)requestOutputImageForUI:(id)a3;
- (void)requestOutputImageInTransition:(BOOL)a3 forSaving:(id)a4;
- (void)requestUneditedImageForUI:(id)a3;
- (void)scheduleDeletionBlock:(id)a3;
- (void)setHighQualityQueueIsValid:(BOOL)a3;
@end

@implementation SSSScreenshotImageProvider

- (SSSScreenshotImageProvider)initWithScreenshot:(id)a3
{
  v18.receiver = self;
  v18.super_class = SSSScreenshotImageProvider;
  v3 = a3;
  v4 = [(SSSScreenshotImageProvider *)&v18 init];
  objc_storeWeak(v4 + 2, v3);

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
  v10 = [v4 screenshot];
  v11 = [v10 modelModificationInfo];
  v12 = [v11 copy];
  v13 = *(v4 + 7);
  *(v4 + 7) = v12;

  v14 = [v4 screenshot];
  v15 = [v14 backingImage];
  v16 = *(v4 + 5);
  *(v4 + 5) = v15;

  return v4;
}

- (void)setHighQualityQueueIsValid:(BOOL)a3
{
  if (self->_highQualityQueueIsValid != a3)
  {
    v3 = a3;
    v5 = os_log_create("com.apple.screenshotservices", "ImageProvider");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setHighQualityQueueIsValid: %{BOOL}d", v6, 8u);
    }

    self->_highQualityQueueIsValid = v3;
  }
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.screenshotservices", "ImageProvider");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
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
    v3 = [(SSSScreenshotImageProvider *)self highQualityImageQueue];
    dispatch_resume(v3);
  }
}

- (id)_outputImageOnCurrentUneditedImage
{
  os_unfair_lock_lock(&self->_outputImageLock);
  v3 = [(SSSScreenshotImageProvider *)self screenshot];
  v4 = v3;
  if (v3)
  {
    cachedModificationInfo = self->_cachedModificationInfo;
    v6 = [v3 modelModificationInfo];
    if ([(SSSScreenshotModificationInfo *)cachedModificationInfo isEqual:v6])
    {
      v7 = [(SSSScreenshotImageProvider *)self hasChangedBackingImage];

      if ((v7 & 1) == 0)
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

    v9 = [v4 modelModificationInfo];
    v10 = [v9 copy];
    [(SSSScreenshotImageProvider *)self setCachedModificationInfo:v10];
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_outputImageLock);
  cachedOutputImage = self->_cachedOutputImage;
  v12 = cachedOutputImage;

  return cachedOutputImage;
}

- (unint64_t)dispatchTimeForInTransition:(BOOL)a3
{
  v3 = a3;
  v4 = +[SSSSpringAnimationParameters scaleAnimationParameters];
  [v4 duration];
  v6 = v5;

  if (!v3)
  {
    return 0;
  }

  v7 = (fmin(v6, 0.5) * 1000000000.0);

  return dispatch_time(0, v7);
}

- (void)requestOutputImageInTransition:(BOOL)a3 forSaving:(id)a4
{
  v4 = a3;
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(SSSScreenshotImageProvider *)self screenshot];
  v8 = [v7 imageGenerator];

  v9 = [(SSSScreenshotImageProvider *)self dispatchTimeForInTransition:v4];
  highQualityImageQueue = self->_highQualityImageQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002BB64;
  v13[3] = &unk_1000BA320;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  dispatch_after(v9, highQualityImageQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (BOOL)requestOutputImageDataInTransition:(BOOL)a3 imageType:(id)a4 forSaving:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SSSScreenshotImageProvider *)self screenshot];
  v11 = [v10 imageGenerator];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = [v8 isEqual:UTTypeHEIC];
    v13 = [(SSSScreenshotImageProvider *)self dispatchTimeForInTransition:v6];
    highQualityImageQueue = self->_highQualityImageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BE2C;
    block[3] = &unk_1000BAB60;
    objc_copyWeak(&v21, &location);
    v17 = v11;
    v18 = v10;
    v22 = v12;
    v19 = v8;
    v20 = v9;
    dispatch_after(v13, highQualityImageQueue, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v11 != 0;
}

- (void)requestOutputImageForUI:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SSSScreenshotImageProvider *)self screenshot];
  v6 = [v5 imageGenerator];

  potentiallyLowQualityImageQueue = self->_potentiallyLowQualityImageQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BFF0;
  v10[3] = &unk_1000BAB88;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
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

- (void)requestUneditedImageForUI:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  potentiallyLowQualityImageQueue = self->_potentiallyLowQualityImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C480;
  block[3] = &unk_1000BABD8;
  v8 = v4;
  v6 = v4;
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

- (void)requestCGImageBackedUneditedImageForUI:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SSSScreenshotImageProvider *)self potentiallyLowQualityImageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C788;
  v7[3] = &unk_1000BAC00;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

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

- (void)_loadUneditedImageIfNecessaryWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (!self->_hasOriginalUneditedImage)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_semaphore_create(0);
    v6 = +[SSScreenshotAssetManager sharedAssetManager];
    v7 = [(SSSScreenshotImageProvider *)self screenshot];
    v8 = [v7 identifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002CBE0;
    v10[3] = &unk_1000BAC28;
    objc_copyWeak(&v12, &location);
    v9 = v5;
    v11 = v9;
    [v6 imageWithPreviouslyRegisteredIdentifier:v8 withAccessBlock:v10];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  v4[2](v4);
}

- (void)processImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotImageProvider *)self screenshot];
  [v5 setIdentifier:v4];

  objc_initWeak(&location, self);
  v6 = [(SSSScreenshotImageProvider *)self potentiallyLowQualityImageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CDCC;
  v7[3] = &unk_1000BA2F8;
  objc_copyWeak(&v8, &location);
  dispatch_async(v6, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)pdfDocument
{
  v2 = [(SSSScreenshotImageProvider *)self requestOutputImageForSavingBlocking];
  v3 = [[PDFPage alloc] initWithImage:v2];
  [v2 size];
  v5 = v4;
  [v2 size];
  [v3 setBounds:1 forBox:{0.0, 0.0, v5, v6}];
  v7 = objc_alloc_init(PDFDocument);
  [v7 insertPage:v3 atIndex:0];

  return v7;
}

- (void)scheduleDeletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotImageProvider *)self highQualityQueueIsValid];
  v6 = os_log_create("com.apple.screenshotservices", "ImageProvider");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v12 = self;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%p schedule deletion block, highQualityQueueIsValid: %{BOOL}d", buf, 0x12u);
  }

  if (v5)
  {
    v7 = [(SSSScreenshotImageProvider *)self highQualityImageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002D07C;
    block[3] = &unk_1000BA998;
    v10 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = os_log_create("com.apple.screenshotservices", "ImageProvider");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "highQualityImageQueue is invalid - execute deletion block immediately!", buf, 2u);
    }

    v4[2](v4);
  }
}

- (SSSScreenshot)screenshot
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshot);

  return WeakRetained;
}

@end