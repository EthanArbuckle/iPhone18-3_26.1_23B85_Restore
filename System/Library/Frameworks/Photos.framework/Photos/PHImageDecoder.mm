@interface PHImageDecoder
+ (id)sharedDecoder;
- (id)decodeImageFromData:(id)data orFileURL:(id)l options:(id)options completion:(id)completion;
- (void)cancelInFlightAsyncDecodeForRequestHandle:(id)handle;
@end

@implementation PHImageDecoder

+ (id)sharedDecoder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageDecoder.m" lineNumber:119 description:@"Subclass to implement"];

  return 0;
}

- (void)cancelInFlightAsyncDecodeForRequestHandle:(id)handle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageDecoder.m" lineNumber:132 description:@"Subclass to implement"];
}

- (id)decodeImageFromData:(id)data orFileURL:(id)l options:(id)options completion:(id)completion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageDecoder.m" lineNumber:127 description:@"Subclass to implement"];

  return 0;
}

@end