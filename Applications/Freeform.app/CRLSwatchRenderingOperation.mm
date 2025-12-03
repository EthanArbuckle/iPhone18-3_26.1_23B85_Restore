@interface CRLSwatchRenderingOperation
- (CGImage)p_newSwatchPressedStateBackgroundFromCGImage:(CGImage *)image;
- (CGRect)swatchFrame;
- (CGSize)imageSize;
- (CRLSwatchRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame editingCoordinator:(id)coordinator;
- (CRLSwatchRenderingOperationDelegate)delegate;
- (UIEdgeInsets)swatchEdgeInsets;
- (void)cancel;
- (void)dealloc;
- (void)deliverCGImage:(CGImage *)image;
- (void)deliverSwatch;
- (void)doWorkWithReadLock;
- (void)main;
- (void)p_deliverResultOnMainThread:(id)thread;
- (void)p_didFinishRendering;
- (void)p_showSwatchInViewAnimated:(BOOL)animated;
- (void)provideSwatchForLaterDelivery:(id)delivery;
- (void)setDelegate:(id)delegate;
@end

@implementation CRLSwatchRenderingOperation

- (CRLSwatchRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame editingCoordinator:(id)coordinator
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = size.height;
  v13 = size.width;
  coordinatorCopy = coordinator;
  v19.receiver = self;
  v19.super_class = CRLSwatchRenderingOperation;
  v16 = [(CRLSwatchRenderingOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_imageSize.width = v13;
    v16->_imageSize.height = v12;
    v16->_imageScale = scale;
    v16->_swatchFrame.origin.x = x;
    v16->_swatchFrame.origin.y = y;
    v16->_swatchFrame.size.width = width;
    v16->_swatchFrame.size.height = height;
    objc_storeStrong(&v16->_editingCoordinator, coordinator);
    v17->_deliversImageAutomatically = 1;
  }

  return v17;
}

- (void)dealloc
{
  CGImageRelease(self->_deliveredImage);
  v3.receiver = self;
  v3.super_class = CRLSwatchRenderingOperation;
  [(CRLSwatchRenderingOperation *)&v3 dealloc];
}

- (void)p_showSwatchInViewAnimated:(BOOL)animated
{
  if (self->_view)
  {
    animatedCopy = animated;
    if (([(CRLSwatchRenderingOperation *)self isCancelled]& 1) == 0)
    {
      layer = [(UIView *)self->_view layer];
      v6 = layer;
      if (animatedCopy)
      {
        v7 = [layer valueForKey:@"CRLSwatchRenderingOperationLayerKey"];
        if (!v7 || (v8 = v7, [v6 valueForKey:@"CRLSwatchRenderingOperationLayerKey"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == self))
        {
          [v6 crl_addSpringScaleInAnimationWithDelay:0.05];
          [v6 setValue:0 forKey:@"CRLSwatchRenderingOperationLayerKey"];
        }
      }
    }

    view = self->_view;

    [(UIView *)view setHidden:0];
  }
}

- (CGImage)p_newSwatchPressedStateBackgroundFromCGImage:(CGImage *)image
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v7 = sub_10011ECB4();
  v11 = sub_10011FFD8(v7, v8, v9, v10, self->_imageScale);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_10050DF80(3, Width, Height);
  v19 = [CRLColor colorWithWhite:0.1 alpha:0.3];
  CGContextSetFillColorWithColor(v18, [v19 CGColor]);

  [(CRLSwatchRenderingOperation *)self swatchEdgeInsets];
  v21 = v13 + v20;
  v24 = v15 - (v22 + v23);
  v28.size.height = v17 - (v20 + v25);
  v28.origin.x = v11 + v22;
  v28.origin.y = v21;
  v28.size.width = v24;
  CGContextFillRect(v18, v28);
  Image = CGBitmapContextCreateImage(v18);
  CGContextRelease(v18);
  return Image;
}

- (void)p_deliverResultOnMainThread:(id)thread
{
  threadCopy = thread;
  view = self->_view;
  if (view)
  {
    v15 = threadCopy;
    layer = [(UIView *)view layer];
    v7 = objc_getAssociatedObject(self->_view, "CRLSwatchRenderingOperationTargetIndexPathKey");
    targetIndexPath = [(CRLSwatchRenderingOperation *)self targetIndexPath];
    v9 = targetIndexPath;
    if (!targetIndexPath || [targetIndexPath isEqual:v7])
    {
      v10 = objc_opt_class();
      v11 = sub_100014370(v10, self->_view);
      if (v11)
      {
        v12 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v15 foreground], 0, self->_imageScale);
        [v11 setImage:v12 forState:0];
        if ([(CRLSwatchRenderingOperation *)self needsPressedStateBackground])
        {
          if ([v15 background])
          {
            v13 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v15 background], 0, self->_imageScale);
            [v11 setBackgroundImage:v13 forState:1];
          }
        }

        else
        {
          v14 = [v11 backgroundImageForState:1];

          if (v14)
          {
            [v11 setBackgroundImage:0 forState:1];
          }
        }
      }

      else
      {
        [layer setContentsScale:self->_imageScale];
        [layer setContents:{objc_msgSend(v15, "foreground")}];
      }

      [layer setShouldRasterize:1];
      [layer setRasterizationScale:self->_imageScale];
      [(CRLSwatchRenderingOperation *)self p_showSwatchInViewAnimated:!self->_suppressesAnimation];
    }

    [(CRLSwatchRenderingOperation *)self setTargetIndexPath:0];
    [(CRLSwatchRenderingOperation *)self p_didFinishRendering];

    threadCopy = v15;
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_renderForWideGamut = 1;
  if (objc_opt_respondsToSelector())
  {
    self->_renderForWideGamut = [delegateCopy shouldRenderUsingWideGamutForSwatchRenderingOperation:self];
  }
}

- (void)p_didFinishRendering
{
  delegate = [(CRLSwatchRenderingOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRLSwatchRenderingOperation *)self delegate];
    [delegate2 swatchRenderingOperation:self didFinishRenderingForView:self->_view];
  }
}

- (void)deliverCGImage:(CGImage *)image
{
  if ([(CRLSwatchRenderingOperation *)self needsPressedStateBackground])
  {
    v5 = [(CRLSwatchRenderingOperation *)self p_newSwatchPressedStateBackgroundFromCGImage:image];
  }

  else
  {
    v5 = 0;
  }

  v6 = [CRLSwatchRenderingResult renderingResultWithForeground:image background:v5];
  if (v5)
  {
    CGImageRelease(v5);
  }

  self->_deliveredImage = CGImageRetain(image);
  if (+[NSThread isMainThread])
  {
    [(CRLSwatchRenderingOperation *)self p_deliverResultOnMainThread:v6];
  }

  else
  {
    [(CRLSwatchRenderingOperation *)self performSelectorOnMainThread:"p_deliverResultOnMainThread:" withObject:v6 waitUntilDone:0];
  }
}

- (void)deliverSwatch
{
  swatch = self->_swatch;
  if (swatch)
  {
    [(CRLSwatchRenderingOperation *)self deliverCGImage:[(CRLImage *)swatch CGImage]];
    v4 = self->_swatch;
    self->_swatch = 0;
  }
}

- (void)provideSwatchForLaterDelivery:(id)delivery
{
  deliveryCopy = delivery;
  if (self->_swatch)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131620C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101316220();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013162B4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLSwatchRenderingOperation provideSwatchForLaterDelivery:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSwatchRenderingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:286 isFatal:0 description:"Should not have two swatches!"];
  }

  swatch = self->_swatch;
  self->_swatch = deliveryCopy;
}

- (UIEdgeInsets)swatchEdgeInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)doWorkWithReadLock
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013162DC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013162F0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101316384();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLSwatchRenderingOperation doWorkWithReadLock]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSwatchRenderingOperation.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:303 isFatal:0 description:"Subclasses must override"];
}

- (void)main
{
  if ([(CRLSwatchRenderingOperation *)self isReadyToRender])
  {

    [(CRLSwatchRenderingOperation *)self doWorkWithReadLock];
  }

  else
  {
    swatch = self->_swatch;
    self->_swatch = 0;

    view = self->_view;

    [(UIView *)view crl_setPresetRenderingInvalid:1];
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = CRLSwatchRenderingOperation;
  [(CRLSwatchRenderingOperation *)&v2 cancel];
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)swatchFrame
{
  objc_copyStruct(v6, &self->_swatchFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CRLSwatchRenderingOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end