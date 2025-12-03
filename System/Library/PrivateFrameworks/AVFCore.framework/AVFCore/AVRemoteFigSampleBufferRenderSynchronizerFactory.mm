@interface AVRemoteFigSampleBufferRenderSynchronizerFactory
- (OpaqueFigSampleBufferRenderSynchronizer)createRenderSynchronizerWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options error:(id *)error;
@end

@implementation AVRemoteFigSampleBufferRenderSynchronizerFactory

- (OpaqueFigSampleBufferRenderSynchronizer)createRenderSynchronizerWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options error:(id *)error
{
  RemoteWithOptions = FigSampleBufferRenderSynchronizerCreateRemoteWithOptions();
  if (error && RemoteWithOptions)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(RemoteWithOptions, 0);
  }

  return 0;
}

@end