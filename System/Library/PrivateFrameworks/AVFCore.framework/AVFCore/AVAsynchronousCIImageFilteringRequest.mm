@interface AVAsynchronousCIImageFilteringRequest
- (CGSize)renderSize;
- (CIImage)sourceImage;
- (CMTime)compositionTime;
- (id)initUsingCompositingRequest:(id)request sourceFrame:(__CVBuffer *)frame cancellationTest:(id)test defaultCIContextProvider:(id)provider completionHandler:(id)handler;
- (void)_willDeallocOrFinalize;
- (void)dealloc;
- (void)finishWithError:(NSError *)error;
- (void)finishWithImage:(CIImage *)filteredImage context:(CIContext *)context;
@end

@implementation AVAsynchronousCIImageFilteringRequest

- (id)initUsingCompositingRequest:(id)request sourceFrame:(__CVBuffer *)frame cancellationTest:(id)test defaultCIContextProvider:(id)provider completionHandler:(id)handler
{
  v15.receiver = self;
  v15.super_class = AVAsynchronousCIImageFilteringRequest;
  v12 = [(AVAsynchronousCIImageFilteringRequest *)&v15 init];
  if (v12)
  {
    v13 = objc_alloc_init(AVAsynchronousCIImageFilteringRequestInternal);
    v12->_internal = v13;
    CFRetain(v13);
    [(AVAsynchronousCIImageFilteringRequestInternal *)v12->_internal setCompositingRequest:request];
    [(AVAsynchronousCIImageFilteringRequestInternal *)v12->_internal setCancellationTest:test];
    [(AVAsynchronousCIImageFilteringRequestInternal *)v12->_internal setDefaultCIContextProvider:provider];
    [(AVAsynchronousCIImageFilteringRequestInternal *)v12->_internal setCompletionHandler:handler];
    [(AVAsynchronousCIImageFilteringRequestInternal *)v12->_internal setSourcePBuf:frame];
  }

  return v12;
}

- (void)_willDeallocOrFinalize
{
  internal = self->_internal;
  if (internal)
  {
    CFRelease(internal);
  }
}

- (void)dealloc
{
  [(AVAsynchronousCIImageFilteringRequest *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVAsynchronousCIImageFilteringRequest;
  [(AVAsynchronousCIImageFilteringRequest *)&v3 dealloc];
}

- (CGSize)renderSize
{
  renderContext = [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] renderContext];

  [(AVVideoCompositionRenderContext *)renderContext size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CIImage)sourceImage
{
  if (![(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal sourceCIImage])
  {
    videoCompositionInstruction = [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] videoCompositionInstruction];
    if ([(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal sourcePBuf])
    {
      sourcePBuf = [(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal sourcePBuf];
      v5 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:sourcePBuf];
    }

    else
    {
      v5 = [MEMORY[0x1E695F658] imageWithColor:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:", 0.0, 0.0, 0.0)}];
    }

    v6 = v5;
    memset(&v23, 0, sizeof(v23));
    if (videoCompositionInstruction)
    {
      [videoCompositionInstruction sourceTrackPreferredTransform];
    }

    v22 = v23;
    if (!CGAffineTransformIsIdentity(&v22))
    {
      v21 = 0;
      v22 = v23;
      RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform();
      [v6 extent];
      v9 = v8;
      v11 = v10;
      CGAffineTransformMakeTranslation(&v22, v8 * -0.5, v10 * -0.5);
      v23 = v22;
      CGAffineTransformMakeRotation(&t2, -RotationAngleAndFlipsFromCGAffineTransform * 3.14159265 / 180.0);
      v19 = v23;
      CGAffineTransformConcat(&v22, &v19, &t2);
      v23 = v22;
      v12 = -1.0;
      if (v21)
      {
        v13 = -1.0;
      }

      else
      {
        v13 = 1.0;
      }

      if (!HIBYTE(v21))
      {
        v12 = 1.0;
      }

      CGAffineTransformMakeScale(&t2, v13, v12);
      v19 = v23;
      CGAffineTransformConcat(&v22, &v19, &t2);
      v23 = v22;
      if (RotationAngleAndFlipsFromCGAffineTransform == 270 || RotationAngleAndFlipsFromCGAffineTransform == 90)
      {
        v14 = v9;
        v15 = v14;
      }

      else
      {
        v15 = v11;
        v11 = v9;
      }

      CGAffineTransformMakeTranslation(&t2, v11 * 0.5, v15 * 0.5);
      v19 = v23;
      CGAffineTransformConcat(&v22, &v19, &t2);
      v23 = v22;
      v6 = [v6 imageByApplyingTransform:&v22];
    }

    renderContext = [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] renderContext];
    if (renderContext)
    {
      [(AVVideoCompositionRenderContext *)renderContext renderTransform];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    if (!CGAffineTransformIsIdentity(&v22))
    {
      renderContext2 = [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] renderContext];
      if (renderContext2)
      {
        [(AVVideoCompositionRenderContext *)renderContext2 renderTransform];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      v6 = [v6 imageByApplyingTransform:&v22];
    }

    [(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal setSourceCIImage:v6];
  }

  return [(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal sourceCIImage];
}

- (CMTime)compositionTime
{
  result = [(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest];
  if (result)
  {

    return [(CMTime *)result compositionTime];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)finishWithImage:(CIImage *)filteredImage context:(CIContext *)context
{
  if (!filteredImage)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", context, v4, v5, v6, v7, "filteredImage != nil"), 0}];
    objc_exception_throw(v16);
  }

  v9 = context;
  if ((*([(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal cancellationTest]+ 16))())
  {
    [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] finishCancelledRequest];
    v11 = *([(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal completionHandler]+ 16);

    v11();
  }

  else
  {
    if (v9 || (v14 = [(CIImage *)filteredImage pixelBuffer]) == 0)
    {
      newPixelBuffer = [(AVVideoCompositionRenderContext *)[(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] renderContext] newPixelBuffer];
      if (!newPixelBuffer)
      {
        [AVAsynchronousCIImageFilteringRequest finishWithImage:? context:?];
        return;
      }

      v13 = newPixelBuffer;
      if (v9 || (v9 = (*([(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal defaultCIContextProvider]+ 16))()) != 0)
      {
        [(CIContext *)v9 render:filteredImage toCVPixelBuffer:v13];
      }

      else
      {
        [AVAsynchronousCIImageFilteringRequest finishWithImage:context:];
      }
    }

    else
    {
      v13 = v14;
      CFRetain(v14);
      v15 = CVBufferCopyAttachments(v13, kCVAttachmentMode_ShouldPropagate);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] finishWithComposedVideoFrame:v13];
    (*([(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal completionHandler]+ 16))();

    CFRelease(v13);
  }
}

- (void)finishWithError:(NSError *)error
{
  [(AVAsynchronousVideoCompositionRequest *)[(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal compositingRequest] finishWithError:error];
  v4 = *([(AVAsynchronousCIImageFilteringRequestInternal *)self->_internal completionHandler]+ 16);

  v4();
}

@end