@interface QLThumbnailReply
+ (QLThumbnailReply)replyWithContextSize:(CGSize)contextSize currentContextDrawingBlock:(void *)drawingBlock;
+ (QLThumbnailReply)replyWithContextSize:(CGSize)contextSize drawingBlock:(void *)drawingBlock;
+ (QLThumbnailReply)replyWithContextSize:(CGSize)size ioSurfaceAsyncBlock:(id)block;
+ (QLThumbnailReply)replyWithContextSize:(CGSize)size ioSurfaceBlock:(id)block;
+ (QLThumbnailReply)replyWithData:(id)data contentType:(id)type;
+ (QLThumbnailReply)replyWithFileURL:(id)l contentType:(id)type;
+ (QLThumbnailReply)replyWithImageFileURL:(NSURL *)fileURL;
+ (QLThumbnailReply)replyWithImageRenderer:(id)renderer;
+ (QLThumbnailReply)replyWithImages:(id)images;
- (CGSize)contextSize;
- (QLThumbnailReply)init;
- (QLThumbnailReply)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLThumbnailReply

- (QLThumbnailReply)init
{
  v6.receiver = self;
  v6.super_class = QLThumbnailReply;
  v2 = [(QLThumbnailReply *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    metadata = v2->_metadata;
    v2->_metadata = v3;

    [(QLThumbnailMetadata *)v2->_metadata setIconFlavor:0x7FFFFFFFLL];
    [(QLThumbnailMetadata *)v2->_metadata setInlinePreviewMode:1];
  }

  return v2;
}

+ (QLThumbnailReply)replyWithContextSize:(CGSize)contextSize drawingBlock:(void *)drawingBlock
{
  height = contextSize.height;
  width = contextSize.width;
  v6 = drawingBlock;
  v7 = objc_opt_new();
  [v7 setDrawInContextBlock:v6];

  [v7 setContextSize:{width, height}];
  [v7 setType:0];

  return v7;
}

+ (QLThumbnailReply)replyWithContextSize:(CGSize)contextSize currentContextDrawingBlock:(void *)drawingBlock
{
  height = contextSize.height;
  width = contextSize.width;
  v6 = drawingBlock;
  v7 = objc_opt_new();
  [v7 setDrawingBlock:v6];

  [v7 setContextSize:{width, height}];
  [v7 setType:1];

  return v7;
}

+ (QLThumbnailReply)replyWithImageFileURL:(NSURL *)fileURL
{
  v3 = fileURL;
  v4 = objc_opt_new();
  v5 = [[QLThumbnailItem alloc] initWithURL:v3];

  [v4 setItem:v5];
  [v4 setType:3];

  return v4;
}

+ (QLThumbnailReply)replyWithFileURL:(id)l contentType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v7 = objc_opt_new();
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v9 = [QLThumbnailItem alloc];
  v10 = v9;
  if (startAccessingSecurityScopedResource)
  {
    v11 = [MEMORY[0x1E6967408] wrapperWithSecurityScopedURL:lCopy];
    v12 = [(QLThumbnailItem *)v10 initWithURLWrapper:v11 parentDirectoryWrapper:0 contentType:typeCopy];

    [v7 setItem:v12];
    [lCopy stopAccessingSecurityScopedResource];
  }

  else
  {
    v13 = [(QLThumbnailItem *)v9 initWithURL:lCopy contentType:typeCopy];

    [v7 setItem:v13];
  }

  [v7 setType:3];

  return v7;
}

+ (QLThumbnailReply)replyWithData:(id)data contentType:(id)type
{
  typeCopy = type;
  dataCopy = data;
  v7 = objc_opt_new();
  v8 = [[QLThumbnailItem alloc] initWithData:dataCopy contentType:typeCopy];

  [v7 setItem:v8];
  [v7 setType:3];

  return v7;
}

+ (QLThumbnailReply)replyWithContextSize:(CGSize)size ioSurfaceBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v7 = objc_opt_new();
  [v7 setIoSurfaceBlock:blockCopy];

  [v7 setContextSize:{width, height}];
  [v7 setType:4];

  return v7;
}

+ (QLThumbnailReply)replyWithContextSize:(CGSize)size ioSurfaceAsyncBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v7 = objc_opt_new();
  [v7 setIoSurfaceAsyncBlock:blockCopy];

  [v7 setContextSize:{width, height}];
  [v7 setType:4];

  return v7;
}

+ (QLThumbnailReply)replyWithImages:(id)images
{
  imagesCopy = images;
  v4 = objc_opt_new();
  [v4 setImages:imagesCopy];

  [v4 setType:5];

  return v4;
}

+ (QLThumbnailReply)replyWithImageRenderer:(id)renderer
{
  rendererCopy = renderer;
  v4 = objc_opt_new();
  [v4 setRendererBlock:rendererCopy];

  [v4 setType:6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"t"];
  [coderCopy encodeObject:self->_bitmapImages forKey:@"b"];
  [coderCopy encodeObject:self->_ioSurface forKey:@"sf"];
  [coderCopy encodeObject:self->_item forKey:@"it"];
  [coderCopy encodeObject:self->_metadata forKey:@"m"];
}

- (QLThumbnailReply)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = QLThumbnailReply;
  coderCopy = coder;
  v4 = [(QLThumbnailReply *)&v14 init];
  v4->_type = [coderCopy decodeIntegerForKey:{@"t", v14.receiver, v14.super_class}];
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"b"];
  bitmapImages = v4->_bitmapImages;
  v4->_bitmapImages = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sf"];
  ioSurface = v4->_ioSurface;
  v4->_ioSurface = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"it"];
  item = v4->_item;
  v4->_item = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];

  metadata = v4->_metadata;
  v4->_metadata = v11;

  return v4;
}

- (CGSize)contextSize
{
  width = self->_contextSize.width;
  height = self->_contextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end