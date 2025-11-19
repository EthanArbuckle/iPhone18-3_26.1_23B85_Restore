@interface PHImageDecoder
+ (id)sharedDecoder;
- (id)decodeImageFromData:(id)a3 orFileURL:(id)a4 options:(id)a5 completion:(id)a6;
- (void)cancelInFlightAsyncDecodeForRequestHandle:(id)a3;
@end

@implementation PHImageDecoder

+ (id)sharedDecoder
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PHImageDecoder.m" lineNumber:119 description:@"Subclass to implement"];

  return 0;
}

- (void)cancelInFlightAsyncDecodeForRequestHandle:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PHImageDecoder.m" lineNumber:132 description:@"Subclass to implement"];
}

- (id)decodeImageFromData:(id)a3 orFileURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PHImageDecoder.m" lineNumber:127 description:@"Subclass to implement"];

  return 0;
}

@end