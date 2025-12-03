@interface IMJPEGPrefetch
- (CGImage)cachedImage;
- (IMJPEGPrefetch)initWithData:(id)data optimalSize:(CGSize)size options:(unint64_t)options;
- (id)_decodeSessionOptionsWithOptimalSize:(CGSize)size highPriority:(BOOL)priority;
- (void)_startDecodeWithData:(id)data;
- (void)addImageHandler:(id)handler queue:(id)queue;
- (void)cancelPrefetchRequest;
- (void)dealloc;
@end

@implementation IMJPEGPrefetch

- (IMJPEGPrefetch)initWithData:(id)data optimalSize:(CGSize)size options:(unint64_t)options
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = IMJPEGPrefetch;
  v10 = [(IMJPEGPrefetch *)&v16 init];
  if (v10)
  {
    v11 = dispatch_queue_create("IMJPEGPrefetch", 0);
    v12 = *(v10 + 4);
    *(v10 + 4) = v11;

    v13 = dispatch_group_create();
    v14 = *(v10 + 5);
    *(v10 + 5) = v13;

    *(v10 + 12) = 0;
    *(v10 + 2) = width;
    *(v10 + 3) = height;
    *(v10 + 9) = options;
    dispatch_group_enter(*(v10 + 5));
    if (dataCopy)
    {
      [v10 _startDecodeWithData:dataCopy];
    }
  }

  return v10;
}

- (void)dealloc
{
  CGImageRelease(self->_cachedImage);
  v3.receiver = self;
  v3.super_class = IMJPEGPrefetch;
  [(IMJPEGPrefetch *)&v3 dealloc];
}

- (void)_startDecodeWithData:(id)data
{
  if (!data)
  {
    JUMPOUT(0x10024);
  }

  if (self->_options)
  {
    JUMPOUT(0x10030);
  }

  [(IMJPEGPrefetch *)self _decodeSessionOptionsWithOptimalSize:1 highPriority:self->_optimalSize.width, self->_optimalSize.height];
  objc_claimAutoreleasedReturnValue();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10224;
  v13[3] = &unk_2C7F18;
  v13[4] = self;
  v4 = objc_retainBlock(v13);
  if ((self->_options & 2) != 0)
  {
    JUMPOUT(0x100ACLL);
  }

  if (qword_342120 != -1)
  {
    sub_1E4978();
  }

  v5 = v4;
  sub_10000(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
}

- (id)_decodeSessionOptionsWithOptimalSize:(CGSize)size highPriority:(BOOL)priority
{
  height = size.height;
  width = size.width;
  v15[0] = kCMPhotoJPEGDecodeSessionImageOptionKey_ApplyTransform;
  v15[1] = kCMPhotoJPEGDecodeSessionImageOptionKey_HighPriority;
  v16[0] = &__kCFBooleanFalse;
  v16[1] = &__kCFBooleanFalse;
  v15[2] = kCMPhotoJPEGDecodeSessionImageOptionKey_BackCGImageWithIOSurface;
  v15[3] = kCMPhotoJPEGDecodeSessionImageOptionKey_ForceHighSpeedDecode;
  v16[2] = &__kCFBooleanTrue;
  v16[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v7 = v6;
  v8 = CGSizeZero.height;
  if (CGSizeZero.width != width || v8 != height)
  {
    v10 = [v6 mutableCopy];
    if (width <= height)
    {
      v11 = height;
    }

    else
    {
      v11 = width;
    }

    v12 = [NSNumber numberWithInt:v11];
    [v10 setObject:v12 forKey:kCMPhotoJPEGDecodeSessionImageOptionKey_MaxPixelSize];

    v13 = [v10 copy];
    v7 = v13;
  }

  return v7;
}

- (CGImage)cachedImage
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  sync = self->_sync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1076C;
  block[3] = &unk_2C7F90;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v14;
  dispatch_sync(sync, block);
  if (*(v11 + 24) == 1)
  {
    dispatch_group_wait(self->_requestGroup, 0xFFFFFFFFFFFFFFFFLL);
    v4 = self->_sync;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_107BC;
    v8[3] = &unk_2C7FB8;
    v8[4] = self;
    v8[5] = &v14;
    dispatch_sync(v4, v8);
  }

  v5 = v15[3];
  if (v5)
  {
    v6 = CFAutorelease(v5);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

- (void)cancelPrefetchRequest
{
  [(IMJPEGPrefetch *)self _cancel];
  sync = self->_sync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1087C;
  block[3] = &unk_2C7FE0;
  block[4] = self;
  dispatch_sync(sync, block);
}

- (void)addImageHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  if (!queueCopy)
  {
    queueCopy = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
  }

  sync = self->_sync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_109C8;
  block[3] = &unk_2C7F68;
  block[4] = self;
  v13 = queueCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queueCopy;
  dispatch_sync(sync, block);
}

@end