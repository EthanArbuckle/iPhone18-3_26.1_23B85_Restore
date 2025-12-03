@interface _BasicTwoLinesContentViewModel
- (CGSize)imageSize;
- (GEOObserverHashTable)observers;
- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)text subtitleText:(id)subtitleText cancelableImageCreationBlock:(id)block;
- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)text subtitleText:(id)subtitleText imageCreationBlock:(id)block;
- (void)dealloc;
- (void)fetchImageForScreenScale:(double)scale withCompletionHandler:(id)handler;
- (void)invalidateCachedImage;
- (void)setImageCreationCanBeCached:(BOOL)cached;
@end

@implementation _BasicTwoLinesContentViewModel

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)fetchImageForScreenScale:(double)scale withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(_BasicTwoLinesContentViewModel *)self imageCreationCanBeCached]&& (cachedImage = self->_cachedImage) != 0)
    {
      handlerCopy[2](handlerCopy, cachedImage, self->_cachedImageAllowsClipping);
    }

    else
    {
      imageCreationBlock = [(_BasicTwoLinesContentViewModel *)self imageCreationBlock];

      if (imageCreationBlock)
      {
        if ([(_BasicTwoLinesContentViewModel *)self imageCreationCanBeCached]&& (v9 = self->_pendingImageCreationCompletionBlock) != 0)
        {
          v10 = objc_retainBlock(v9);
          v11 = [handlerCopy copy];
          pendingImageCreationCompletionBlock = self->_pendingImageCreationCompletionBlock;
          self->_pendingImageCreationCompletionBlock = v11;

          (*(v10 + 2))(v10, 0, 0);
        }

        else
        {
          cancelImageCreation = self->_cancelImageCreation;
          if (cancelImageCreation)
          {
            v14 = objc_retainBlock(cancelImageCreation);
            v15 = self->_cancelImageCreation;
            self->_cancelImageCreation = 0;

            v14[2](v14);
          }

          if ([(_BasicTwoLinesContentViewModel *)self imageCreationCanBeCached])
          {
            v16 = [handlerCopy copy];
            v17 = self->_pendingImageCreationCompletionBlock;
            self->_pendingImageCreationCompletionBlock = v16;
          }

          objc_initWeak(&location, self);
          imageCreationBlock2 = [(_BasicTwoLinesContentViewModel *)self imageCreationBlock];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100C47434;
          v21[3] = &unk_10164EC10;
          objc_copyWeak(&v23, &location);
          v21[4] = self;
          v22 = handlerCopy;
          v19 = (imageCreationBlock2)[2](imageCreationBlock2, v21, scale);
          v20 = self->_cancelImageCreation;
          self->_cancelImageCreation = v19;

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

- (void)invalidateCachedImage
{
  cachedImage = self->_cachedImage;
  if (cachedImage)
  {
    self->_cachedImage = 0;

    self->_cachedImageAllowsClipping = 0;

    [(_BasicTwoLinesContentViewModel *)self updateObservers];
  }
}

- (void)setImageCreationCanBeCached:(BOOL)cached
{
  if (self->_imageCreationCanBeCached != cached)
  {
    self->_imageCreationCanBeCached = cached;
    if (!cached)
    {
      [(_BasicTwoLinesContentViewModel *)self invalidateCachedImage];
    }
  }
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___TwoLinesContentViewModelObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)dealloc
{
  cancelImageCreation = self->_cancelImageCreation;
  if (cancelImageCreation)
  {
    v4 = objc_retainBlock(cancelImageCreation);
    v5 = self->_cancelImageCreation;
    self->_cancelImageCreation = 0;

    pendingImageCreationCompletionBlock = self->_pendingImageCreationCompletionBlock;
    self->_pendingImageCreationCompletionBlock = 0;

    v4[2](v4);
  }

  v7.receiver = self;
  v7.super_class = _BasicTwoLinesContentViewModel;
  [(_BasicTwoLinesContentViewModel *)&v7 dealloc];
}

- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)text subtitleText:(id)subtitleText imageCreationBlock:(id)block
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C47730;
  v11[3] = &unk_10164EBE8;
  blockCopy = block;
  v8 = blockCopy;
  v9 = [(_BasicTwoLinesContentViewModel *)self initWithTitleText:text subtitleText:subtitleText cancelableImageCreationBlock:v11];

  return v9;
}

- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)text subtitleText:(id)subtitleText cancelableImageCreationBlock:(id)block
{
  textCopy = text;
  subtitleTextCopy = subtitleText;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = _BasicTwoLinesContentViewModel;
  v11 = [(_BasicTwoLinesContentViewModel *)&v19 init];
  if (v11)
  {
    v12 = [textCopy copy];
    titleText = v11->_titleText;
    v11->_titleText = v12;

    v14 = [subtitleTextCopy copy];
    subtitleText = v11->_subtitleText;
    v11->_subtitleText = v14;

    v16 = [blockCopy copy];
    imageCreationBlock = v11->_imageCreationBlock;
    v11->_imageCreationBlock = v16;
  }

  return v11;
}

@end