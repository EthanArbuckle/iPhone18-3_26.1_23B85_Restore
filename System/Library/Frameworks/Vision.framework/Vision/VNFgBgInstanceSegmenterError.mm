@interface VNFgBgInstanceSegmenterError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
@end

@implementation VNFgBgInstanceSegmenterError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VNFgBgInstanceSegmenterErrorCodeDomain" code:a3 userInfo:v7];

  return v8;
}

@end