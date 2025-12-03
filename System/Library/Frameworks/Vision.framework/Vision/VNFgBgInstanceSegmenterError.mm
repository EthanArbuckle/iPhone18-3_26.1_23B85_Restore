@interface VNFgBgInstanceSegmenterError
+ (id)errorWithCode:(int64_t)code description:(id)description;
@end

@implementation VNFgBgInstanceSegmenterError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = description;
  v5 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VNFgBgInstanceSegmenterErrorCodeDomain" code:code userInfo:v7];

  return v8;
}

@end