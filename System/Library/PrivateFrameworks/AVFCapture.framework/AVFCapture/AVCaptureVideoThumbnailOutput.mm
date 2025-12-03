@interface AVCaptureVideoThumbnailOutput
+ (CGRect)contentsRectForFilterAtIndex:(unint64_t)index thumbnailSize:(CGSize)size filterCount:(unint64_t)count;
- (AVCaptureVideoThumbnailOutput)init;
- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason;
- (CGSize)thumbnailSize;
- (NSArray)filters;
- (NSArray)smartStyles;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_signalInvalidationOfPropagatedContentsIfNecessary;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session;
- (void)setFilters:(id)filters;
- (void)setSmartStyles:(id)styles;
- (void)setThumbnailContentsDelegate:(id)delegate;
- (void)setThumbnailSize:(CGSize)size;
@end

@implementation AVCaptureVideoThumbnailOutput

- (AVCaptureVideoThumbnailOutput)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  initSubclass = [(AVCaptureOutput *)&v5 initSubclass];
  if (initSubclass)
  {
    v3 = objc_alloc_init(AVCaptureVideoThumbnailOutputInternal);
    initSubclass->_internal = v3;
    if (v3)
    {
      initSubclass->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
    }

    else
    {

      return 0;
    }
  }

  return initSubclass;
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

- (void)setFilters:(id)filters
{
  self->_internal->filters = [filters copy];

  [(AVCaptureOutput *)self bumpChangeSeed];
}

- (void)setSmartStyles:(id)styles
{
  self->_internal->smartStyles = [styles copy];

  [(AVCaptureOutput *)self bumpChangeSeed];
}

- (void)setThumbnailSize:(CGSize)size
{
  internal = self->_internal;
  if (size.width != internal->thumbnailSize.width || size.height != internal->thumbnailSize.height)
  {
    internal->thumbnailSize = size;
    [(AVCaptureOutput *)self bumpChangeSeed];
  }
}

- (void)setThumbnailContentsDelegate:(id)delegate
{
  if ([(AVWeakReference *)self->_internal->delegateWeakReference referencedObject]!= delegate)
  {

    if (delegate)
    {
      v5 = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:delegate];
    }

    else
    {
      v5 = 0;
    }

    self->_internal->delegateWeakReference = v5;
  }
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", self->_internal->weakReference, vto_notificationHandler, *MEMORY[0x1E698FEB0], session, 0}];
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v5 attachSafelyToFigCaptureSession:session];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_internal->weakReference, vto_notificationHandler, *MEMORY[0x1E698FEB0], session}];
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v5 detachSafelyFromFigCaptureSession:session];
}

- (void)safelyHandleServerConnectionDeathForFigCaptureSession:(OpaqueFigCaptureSession *)session
{
  [(AVCaptureVideoThumbnailOutput *)self _signalInvalidationOfPropagatedContentsIfNecessary];
  v5.receiver = self;
  v5.super_class = AVCaptureVideoThumbnailOutput;
  [(AVCaptureOutput *)&v5 safelyHandleServerConnectionDeathForFigCaptureSession:session];
}

- (BOOL)canAddConnection:(id)connection failureReason:(id *)reason
{
  mediaType = [connection mediaType];
  if (![mediaType isEqualToString:*MEMORY[0x1E6987608]])
  {
    v8 = 1;
    goto LABEL_5;
  }

  if ([(NSArray *)[(AVCaptureOutput *)self connections] count])
  {
    v8 = 2;
LABEL_5:
    v9 = AVCaptureOutputConnectionFailureReasonString(v8, self, connection);
    result = 0;
    *reason = v9;
    return result;
  }

  return 1;
}

+ (CGRect)contentsRectForFilterAtIndex:(unint64_t)index thumbnailSize:(CGSize)size filterCount:(unint64_t)count
{
  v5 = (count + 1);
  v6 = 1.0 / v5;
  v7 = index / v5;
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
    referencedObject = [(AVWeakReference *)internal->delegateWeakReference referencedObject];
    if (objc_opt_respondsToSelector())
    {
      [referencedObject videoThumbnailOutputWillEndRenderingThumbnails:self];
    }

    self->_internal->didPropagateContents = 0;
  }
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  if ([notification isEqualToString:*MEMORY[0x1E698FEB0]])
  {
    v6 = [payload objectForKeyedSubscript:*MEMORY[0x1E698FAF0]];
    if (v6)
    {
      v7 = v6;
      referencedObject = [(AVWeakReference *)self->_internal->delegateWeakReference referencedObject];
      if (objc_opt_respondsToSelector())
      {
        intValue = [v7 intValue];
        [referencedObject videoThumbnailOutput:self willBeginRenderingThumbnailsWithContents:{objc_msgSend(MEMORY[0x1E6979320], "objectForSlot:", intValue)}];
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