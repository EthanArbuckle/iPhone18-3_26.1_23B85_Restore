@interface CRLAnimatedGIFFrame
- (CGImage)image;
- (CRLAnimatedGIFFrame)initWithImageSource:(CGImageSource *)a3 index:(unint64_t)a4 time:(double)a5 preloadImage:(BOOL)a6;
- (void)dealloc;
@end

@implementation CRLAnimatedGIFFrame

- (CRLAnimatedGIFFrame)initWithImageSource:(CGImageSource *)a3 index:(unint64_t)a4 time:(double)a5 preloadImage:(BOOL)a6
{
  v6 = a6;
  v15.receiver = self;
  v15.super_class = CRLAnimatedGIFFrame;
  v10 = [(CRLAnimatedGIFFrame *)&v15 init];
  if (v10)
  {
    if (a3)
    {
      v10->_imageSource = CFRetain(a3);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139A644();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A66C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139A708();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLAnimatedGIFFrame initWithImageSource:index:time:preloadImage:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:56 isFatal:0 description:"invalid nil value for '%{public}s'", "imageSource"];
    }

    v10->_index = a4;
    v10->_time = a5;
    if (a4 != -1 && v6)
    {
      v10->_preloadedImage = CGImageSourceCreateImageAtIndex(v10->_imageSource, a4, 0);
    }

    v10->_imageLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v10;
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
    self->_imageSource = 0;
  }

  preloadedImage = self->_preloadedImage;
  if (preloadedImage)
  {
    CFRelease(preloadedImage);
    self->_preloadedImage = 0;
  }

  v5.receiver = self;
  v5.super_class = CRLAnimatedGIFFrame;
  [(CRLAnimatedGIFFrame *)&v5 dealloc];
}

- (CGImage)image
{
  if (self->_index == -1)
  {
    return 0;
  }

  preloadedImage = self->_preloadedImage;
  if (!preloadedImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(self->_imageSource, self->_index, 0);
    os_unfair_lock_unlock(&self->_imageLock);
    if (ImageAtIndex)
    {
      v4 = ImageAtIndex;
      goto LABEL_6;
    }

    return 0;
  }

  v4 = CFRetain(preloadedImage);
LABEL_6:

  return CFAutorelease(v4);
}

@end