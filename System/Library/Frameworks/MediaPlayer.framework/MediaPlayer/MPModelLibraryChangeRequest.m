@interface MPModelLibraryChangeRequest
+ (NSOperationQueue)sharedOperationQueue;
@end

@implementation MPModelLibraryChangeRequest

+ (NSOperationQueue)sharedOperationQueue
{
  if (sharedOperationQueue_onceToken != -1)
  {
    dispatch_once(&sharedOperationQueue_onceToken, &__block_literal_global_30117);
  }

  v3 = sharedOperationQueue___sharedQueue;

  return v3;
}

uint64_t __51__MPModelLibraryChangeRequest_sharedOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedOperationQueue___sharedQueue;
  sharedOperationQueue___sharedQueue = v0;

  [sharedOperationQueue___sharedQueue setMaxConcurrentOperationCount:10];
  [sharedOperationQueue___sharedQueue setName:@"com.apple.MediaPlayer.MPModelLibraryChangeRequest.sharedOperationQueue"];
  v2 = sharedOperationQueue___sharedQueue;

  return [v2 setQualityOfService:25];
}

@end