@interface QLThumbnailReply
+ (QLThumbnailReply)replyWithContextSize:(CGSize)a3 ioSurfaceAsyncBlock:(id)a4;
+ (QLThumbnailReply)replyWithContextSize:(CGSize)a3 ioSurfaceBlock:(id)a4;
+ (QLThumbnailReply)replyWithContextSize:(CGSize)contextSize currentContextDrawingBlock:(void *)drawingBlock;
+ (QLThumbnailReply)replyWithContextSize:(CGSize)contextSize drawingBlock:(void *)drawingBlock;
+ (QLThumbnailReply)replyWithData:(id)a3 contentType:(id)a4;
+ (QLThumbnailReply)replyWithFileURL:(id)a3 contentType:(id)a4;
+ (QLThumbnailReply)replyWithImageFileURL:(NSURL *)fileURL;
+ (QLThumbnailReply)replyWithImageRenderer:(id)a3;
+ (QLThumbnailReply)replyWithImages:(id)a3;
- (CGSize)contextSize;
- (QLThumbnailReply)init;
- (QLThumbnailReply)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (QLThumbnailReply)replyWithFileURL:(id)a3 contentType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v5 startAccessingSecurityScopedResource];
  v9 = [QLThumbnailItem alloc];
  v10 = v9;
  if (v8)
  {
    v11 = [MEMORY[0x1E6967408] wrapperWithSecurityScopedURL:v5];
    v12 = [(QLThumbnailItem *)v10 initWithURLWrapper:v11 parentDirectoryWrapper:0 contentType:v6];

    [v7 setItem:v12];
    [v5 stopAccessingSecurityScopedResource];
  }

  else
  {
    v13 = [(QLThumbnailItem *)v9 initWithURL:v5 contentType:v6];

    [v7 setItem:v13];
  }

  [v7 setType:3];

  return v7;
}

+ (QLThumbnailReply)replyWithData:(id)a3 contentType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [[QLThumbnailItem alloc] initWithData:v6 contentType:v5];

  [v7 setItem:v8];
  [v7 setType:3];

  return v7;
}

+ (QLThumbnailReply)replyWithContextSize:(CGSize)a3 ioSurfaceBlock:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setIoSurfaceBlock:v6];

  [v7 setContextSize:{width, height}];
  [v7 setType:4];

  return v7;
}

+ (QLThumbnailReply)replyWithContextSize:(CGSize)a3 ioSurfaceAsyncBlock:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setIoSurfaceAsyncBlock:v6];

  [v7 setContextSize:{width, height}];
  [v7 setType:4];

  return v7;
}

+ (QLThumbnailReply)replyWithImages:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setImages:v3];

  [v4 setType:5];

  return v4;
}

+ (QLThumbnailReply)replyWithImageRenderer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setRendererBlock:v3];

  [v4 setType:6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"t"];
  [v5 encodeObject:self->_bitmapImages forKey:@"b"];
  [v5 encodeObject:self->_ioSurface forKey:@"sf"];
  [v5 encodeObject:self->_item forKey:@"it"];
  [v5 encodeObject:self->_metadata forKey:@"m"];
}

- (QLThumbnailReply)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = QLThumbnailReply;
  v3 = a3;
  v4 = [(QLThumbnailReply *)&v14 init];
  v4->_type = [v3 decodeIntegerForKey:{@"t", v14.receiver, v14.super_class}];
  v5 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"b"];
  bitmapImages = v4->_bitmapImages;
  v4->_bitmapImages = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sf"];
  ioSurface = v4->_ioSurface;
  v4->_ioSurface = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"it"];
  item = v4->_item;
  v4->_item = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"m"];

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