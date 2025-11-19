@interface MSMessageRichLinkLayout
- (MSMessageRichLinkLayout)init;
- (MSMessageRichLinkLayout)initWithCoder:(id)a3;
- (MSMessageRichLinkLayout)initWithLinkMetadata:(id)a3;
- (id)_sanitizedCopy;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSMessageRichLinkLayout

- (MSMessageRichLinkLayout)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is unavailable. Please use -initWithLinkMetadata: instead."];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (MSMessageRichLinkLayout)initWithLinkMetadata:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"linkMetadata is required for MSMessageRichLinkLayout" userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = v5;
  v11.receiver = self;
  v11.super_class = MSMessageRichLinkLayout;
  v7 = [(MSMessageLayout *)&v11 _init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 11, a3);
  }

  return v8;
}

- (MSMessageRichLinkLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkMetadata"];

  v6 = [(MSMessageRichLinkLayout *)self initWithLinkMetadata:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MSMessageRichLinkLayout alloc];
  v5 = [(MSMessageRichLinkLayout *)self linkMetadata];
  v6 = [(MSMessageRichLinkLayout *)v4 initWithLinkMetadata:v5];

  return v6;
}

- (id)_sanitizedCopy
{
  v3 = [MSMessageRichLinkLayout alloc];
  v4 = [(MSMessageRichLinkLayout *)self linkMetadata];
  v5 = [(MSMessageRichLinkLayout *)v3 initWithLinkMetadata:v4];

  return v5;
}

@end