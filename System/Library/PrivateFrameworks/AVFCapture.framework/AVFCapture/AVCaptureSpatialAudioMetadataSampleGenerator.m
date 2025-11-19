@interface AVCaptureSpatialAudioMetadataSampleGenerator
- (AVCaptureSpatialAudioMetadataSampleGenerator)init;
- (void)dealloc;
@end

@implementation AVCaptureSpatialAudioMetadataSampleGenerator

- (AVCaptureSpatialAudioMetadataSampleGenerator)init
{
  v5.receiver = self;
  v5.super_class = AVCaptureSpatialAudioMetadataSampleGenerator;
  v2 = [(AVCaptureSpatialAudioMetadataSampleGenerator *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698F730]);
    v2->_spatialAudioMetadataSampleGenerator = v3;
    if (!v3)
    {
      [(AVCaptureSpatialAudioMetadataSampleGenerator *)v2 init];
      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSpatialAudioMetadataSampleGenerator;
  [(AVCaptureSpatialAudioMetadataSampleGenerator *)&v3 dealloc];
}

@end