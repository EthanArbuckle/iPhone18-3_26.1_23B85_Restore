@interface _BasicTwoLinesContentViewModel
- (CGSize)imageSize;
- (GEOObserverHashTable)observers;
- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)a3 subtitleText:(id)a4 cancelableImageCreationBlock:(id)a5;
- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)a3 subtitleText:(id)a4 imageCreationBlock:(id)a5;
- (void)dealloc;
- (void)fetchImageForScreenScale:(double)a3 withCompletionHandler:(id)a4;
- (void)invalidateCachedImage;
- (void)setImageCreationCanBeCached:(BOOL)a3;
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

- (void)fetchImageForScreenScale:(double)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    if ([(_BasicTwoLinesContentViewModel *)self imageCreationCanBeCached]&& (cachedImage = self->_cachedImage) != 0)
    {
      v6[2](v6, cachedImage, self->_cachedImageAllowsClipping);
    }

    else
    {
      v8 = [(_BasicTwoLinesContentViewModel *)self imageCreationBlock];

      if (v8)
      {
        if ([(_BasicTwoLinesContentViewModel *)self imageCreationCanBeCached]&& (v9 = self->_pendingImageCreationCompletionBlock) != 0)
        {
          v10 = objc_retainBlock(v9);
          v11 = [v6 copy];
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
            v16 = [v6 copy];
            v17 = self->_pendingImageCreationCompletionBlock;
            self->_pendingImageCreationCompletionBlock = v16;
          }

          objc_initWeak(&location, self);
          v18 = [(_BasicTwoLinesContentViewModel *)self imageCreationBlock];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100C47434;
          v21[3] = &unk_10164EC10;
          objc_copyWeak(&v23, &location);
          v21[4] = self;
          v22 = v6;
          v19 = (v18)[2](v18, v21, a3);
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

- (void)setImageCreationCanBeCached:(BOOL)a3
{
  if (self->_imageCreationCanBeCached != a3)
  {
    self->_imageCreationCanBeCached = a3;
    if (!a3)
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

- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)a3 subtitleText:(id)a4 imageCreationBlock:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C47730;
  v11[3] = &unk_10164EBE8;
  v12 = a5;
  v8 = v12;
  v9 = [(_BasicTwoLinesContentViewModel *)self initWithTitleText:a3 subtitleText:a4 cancelableImageCreationBlock:v11];

  return v9;
}

- (_BasicTwoLinesContentViewModel)initWithTitleText:(id)a3 subtitleText:(id)a4 cancelableImageCreationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _BasicTwoLinesContentViewModel;
  v11 = [(_BasicTwoLinesContentViewModel *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    titleText = v11->_titleText;
    v11->_titleText = v12;

    v14 = [v9 copy];
    subtitleText = v11->_subtitleText;
    v11->_subtitleText = v14;

    v16 = [v10 copy];
    imageCreationBlock = v11->_imageCreationBlock;
    v11->_imageCreationBlock = v16;
  }

  return v11;
}

@end