@interface AVVideoCompositionRenderContextInternal
- (void)_willDeallocOrFinalize;
- (void)dealloc;
@end

@implementation AVVideoCompositionRenderContextInternal

- (void)_willDeallocOrFinalize
{
  FigSimpleMutexDestroy();
  pixelBufferPoolQ = self->_pixelBufferPoolQ;
  if (pixelBufferPoolQ)
  {
    dispatch_sync(pixelBufferPoolQ, &__block_literal_global_31);
    dispatch_release(self->_pixelBufferPoolQ);
  }

  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  pixelAspectRatioDict = self->_pixelAspectRatioDict;
  if (pixelAspectRatioDict)
  {
    CFRelease(pixelAspectRatioDict);
  }

  cleanApertureDict = self->_cleanApertureDict;
  if (cleanApertureDict)
  {

    CFRelease(cleanApertureDict);
  }
}

- (void)dealloc
{
  [(AVVideoCompositionRenderContextInternal *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVVideoCompositionRenderContextInternal;
  [(AVVideoCompositionRenderContextInternal *)&v3 dealloc];
}

@end