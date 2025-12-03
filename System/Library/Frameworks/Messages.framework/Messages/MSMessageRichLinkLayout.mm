@interface MSMessageRichLinkLayout
- (MSMessageRichLinkLayout)init;
- (MSMessageRichLinkLayout)initWithCoder:(id)coder;
- (MSMessageRichLinkLayout)initWithLinkMetadata:(id)metadata;
- (id)_sanitizedCopy;
- (id)copyWithZone:(_NSZone *)zone;
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

- (MSMessageRichLinkLayout)initWithLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"linkMetadata is required for MSMessageRichLinkLayout" userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = metadataCopy;
  v11.receiver = self;
  v11.super_class = MSMessageRichLinkLayout;
  _init = [(MSMessageLayout *)&v11 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 11, metadata);
  }

  return v8;
}

- (MSMessageRichLinkLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkMetadata"];

  v6 = [(MSMessageRichLinkLayout *)self initWithLinkMetadata:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MSMessageRichLinkLayout alloc];
  linkMetadata = [(MSMessageRichLinkLayout *)self linkMetadata];
  v6 = [(MSMessageRichLinkLayout *)v4 initWithLinkMetadata:linkMetadata];

  return v6;
}

- (id)_sanitizedCopy
{
  v3 = [MSMessageRichLinkLayout alloc];
  linkMetadata = [(MSMessageRichLinkLayout *)self linkMetadata];
  v5 = [(MSMessageRichLinkLayout *)v3 initWithLinkMetadata:linkMetadata];

  return v5;
}

@end