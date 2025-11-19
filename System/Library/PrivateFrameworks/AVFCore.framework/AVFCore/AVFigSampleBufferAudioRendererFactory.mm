@interface AVFigSampleBufferAudioRendererFactory
- (OpaqueFigSampleBufferAudioRenderer)createAudioRendererWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4 error:(id *)a5;
@end

@implementation AVFigSampleBufferAudioRendererFactory

- (OpaqueFigSampleBufferAudioRenderer)createAudioRendererWithAllocator:(__CFAllocator *)a3 options:(__CFDictionary *)a4 error:(id *)a5
{
  RemoteWithOptionsAndRetry = FigSampleBufferAudioRendererCreateRemoteWithOptionsAndRetry();
  if (a5 && RemoteWithOptionsAndRetry)
  {
    *a5 = AVLocalizedErrorWithUnderlyingOSStatus(RemoteWithOptionsAndRetry, 0);
  }

  return 0;
}

@end