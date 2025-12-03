@interface AVFigSampleBufferAudioRendererFactory
- (OpaqueFigSampleBufferAudioRenderer)createAudioRendererWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options error:(id *)error;
@end

@implementation AVFigSampleBufferAudioRendererFactory

- (OpaqueFigSampleBufferAudioRenderer)createAudioRendererWithAllocator:(__CFAllocator *)allocator options:(__CFDictionary *)options error:(id *)error
{
  RemoteWithOptionsAndRetry = FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry();
  if (error && RemoteWithOptionsAndRetry)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(RemoteWithOptionsAndRetry, 0);
  }

  return 0;
}

@end