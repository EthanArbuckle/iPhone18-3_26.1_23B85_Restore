@interface AVCaptureVideoThumbnailOutput
+ (CGRect)contentsRectForFilterAtIndex:(unint64_t)a3 thumbnailSize:(CGSize)a4 filterCount:(unint64_t)a5;
- (AVCaptureVideoThumbnailOutput)init;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (CGSize)thumbnailSize;
- (NSArray)filters;
- (NSArray)smartStyles;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_signalInvalidationOfPropagatedContentsIfNecessary;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)setFilters:(id)a3;
- (void)setSmartStyles:(id)a3;
- (void)setThumbnailContentsDelegate:(id)a3;
- (void)setThumbnailSize:(CGSize)a3;
@end

@implementation AVCaptureVideoThumbnailOutput

- (AVCaptureVideoThumbnailOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  v2 = [(AVCaptureOutput *)&v5 initSubclass];
  if (v2)
  {
    v3 = objc_alloc_init(AVCaptureVideoThumbnailOutputInternal);
    v2->_internal = v3;
    if (v3)
    {
      v2->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (NSArray)filters
{
  v2 = [(NSArray *)self->_internal->filters copy];

  return v2;
}

- (NSArray)smartStyles
{
  v2 = [(NSArray *)self->_internal->smartStyles copy];

  return v2;
}

- (CGSize)thumbnailSize
{
  internal = self->_internal;
  width = internal->thumbnailSize.width;
  height = internal->thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v3 dealloc];
}

- (void)setFilters:(id)a3
{
  self->_internal->filters = [a3 copy];

  [(AVCaptureOutput *)self bumpChangeSeed];
}

- (void)setSmartStyles:(id)a3
{
  self->_internal->smartStyles = [a3 copy];

  [(AVCaptureOutput *)self bumpChangeSeed];
}

- (void)setThumbnailSize:(CGSize)a3
{
  internal = self->_internal;
  if (a3.width != internal->thumbnailSize.width || a3.height != internal->thumbnailSize.height)
  {
    internal->thumbnailSize = a3;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setThumbnailContentsDelegate:(id)a3
{
  if ([(AVWeakReference *)self->_internal->delegateWeakReference referencedObject]!= a3)
  {

    if (a3)
    {
      v5 = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
    }

    else
    {
      v5 = 0;
    }

    self->_internal->delegateWeakReference = v5;
  }
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", self->_internal->weakReference, vto_notificationHandler, *MEMORY[0x1E698FEB0], a3, 0}];
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v5 attachSafelyToFigCaptureSession:a3];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_internal->weakReference, vto_notificationHandler, *MEMORY[0x1E698FEB0], a3}];
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v5 detachSafelyFromFigCaptureSession:a3];
}

- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  [(AVCaptureVideoThumbnailOutput *)self _signalInvalidationOfPropagatedContentsIfNecessary];
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v5 safelyHandleServerConnectionDeathForFigCaptureSession:a3];
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  v7 = [a3 mediaType];
  if (![v7 isEqualToString:*MEMORY[0x1E6987608]])
  {
    v8 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v8 = 2;
LABEL_5:
    v9 = AVCaptureOutputConnectionFailureReasonString(v8, self, a3);
    result = 0;
    *a4 = v9;
    return result;
  }

  return 1;
}

+ (CGRect)contentsRectForFilterAtIndex:(unint64_t)a3 thumbnailSize:(CGSize)a4 filterCount:(unint64_t)a5
{
  v5 = (a5 + 1);
  v6 = 1.0 / v5;
  v7 = a3 / v5;
  v8 = 0.0;
  v9 = 1.0;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v7;
  result.origin.x = v8;
  return result;
}

- (void)_signalInvalidationOfPropagatedContentsIfNecessary
{
  internal = self->_internal;
  if (internal->didPropagateContents)
  {
    v4 = [(AVWeakReference *)internal->delegateWeakReference referencedObject];
    if (objc_opt_respondsToSelector())
    {
      [v4 videoThumbnailOutputWillEndRenderingThumbnails:self];
    }

    self->_internal->didPropagateContents = 0;
  }
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([a3 isEqualToString:*MEMORY[0x1E698FEB0]])
  {
    v6 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FAF0]];
    if (v6)
    {
      v7 = v6;
      v8 = [(AVWeakReference *)self->_internal->delegateWeakReference referencedObject];
      if (objc_opt_respondsToSelector())
      {
        v9 = [v7 intValue];
        [v8 videoThumbnailOutput:self willBeginRenderingThumbnailsWithContents:{objc_msgSend(MEMORY[0x1E6979320], "objectForSlot:", v9)}];
        self->_internal->didPropagateContents = 1;
      }
    }

    else
    {

      [(AVCaptureVideoThumbnailOutput *)self _signalInvalidationOfPropagatedContentsIfNecessary];
    }
  }
}

@end