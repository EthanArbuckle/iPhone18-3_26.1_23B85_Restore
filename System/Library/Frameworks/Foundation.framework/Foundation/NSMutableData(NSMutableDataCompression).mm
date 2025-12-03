@interface NSMutableData(NSMutableDataCompression)
- (uint64_t)_compressUsingCompressionAlgorithm:()NSMutableDataCompression error:;
- (uint64_t)_decompressUsingCompressionAlgorithm:()NSMutableDataCompression error:;
- (uint64_t)compressUsingAlgorithm:()NSMutableDataCompression error:;
- (uint64_t)decompressUsingAlgorithm:()NSMutableDataCompression error:;
@end

@implementation NSMutableData(NSMutableDataCompression)

- (uint64_t)_compressUsingCompressionAlgorithm:()NSMutableDataCompression error:
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__NSMutableData_NSMutableDataCompression___compressUsingCompressionAlgorithm_error___block_invoke;
  v10[3] = &unk_1E69F2BD8;
  v10[4] = self;
  v10[5] = &v11;
  [self _produceDataWithCompressionOperation:0 algorithm:a3 handler:v10];
  objc_autoreleasePoolPop(v7);
  v8 = *(v12 + 24);
  if (a4 && (v12[3] & 1) == 0)
  {
    *a4 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:5376 userInfo:0];
    v8 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

- (uint64_t)_decompressUsingCompressionAlgorithm:()NSMutableDataCompression error:
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__NSMutableData_NSMutableDataCompression___decompressUsingCompressionAlgorithm_error___block_invoke;
  v10[3] = &unk_1E69F2BD8;
  v10[4] = self;
  v10[5] = &v11;
  [self _produceDataWithCompressionOperation:1 algorithm:a3 handler:v10];
  objc_autoreleasePoolPop(v7);
  v8 = *(v12 + 24);
  if (a4 && (v12[3] & 1) == 0)
  {
    *a4 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:5377 userInfo:0];
    v8 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

- (uint64_t)compressUsingAlgorithm:()NSMutableDataCompression error:
{
  v6 = _NSAlgToCompAlg(a3);

  return [self _compressUsingCompressionAlgorithm:v6 error:a4];
}

- (uint64_t)decompressUsingAlgorithm:()NSMutableDataCompression error:
{
  v6 = _NSAlgToCompAlg(a3);

  return [self _decompressUsingCompressionAlgorithm:v6 error:a4];
}

@end