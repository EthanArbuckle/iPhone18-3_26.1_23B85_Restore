@interface AVTStickerImageEncoder
- (id)dataFromImage:(id)image clippingRect:(CGRect)rect;
- (id)imageFromData:(id)data error:(id *)error;
- (id)imageFromURL:(id)l error:(id *)error;
@end

@implementation AVTStickerImageEncoder

- (id)imageFromURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v8 = [[v6 alloc] initWithContentsOfURL:lCopy options:1 error:error];

  if (v8)
  {
    v9 = [(AVTStickerImageEncoder *)self imageFromData:v8 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageFromData:(id)data error:(id *)error
{
  v5 = [MEMORY[0x1E69DCAB8] imageWithData:data];
  v6 = v5;
  if (error && !v5)
  {
    *error = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

  return v6;
}

- (id)dataFromImage:(id)image clippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  DataProvider = CGImageGetDataProvider([imageCopy CGImage]);
  v10 = CGImageSourceCreateWithDataProvider(DataProvider, 0);
  [imageCopy scale];
  v12 = v11 * 72.0;
  v25[0] = *MEMORY[0x1E696D888];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11 * 72.0];
  v26[0] = v13;
  v25[1] = *MEMORY[0x1E696D880];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v26[1] = v14;
  v25[2] = *MEMORY[0x1E696D9B0];
  v23 = *MEMORY[0x1E696DB40];
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v15 = NSStringFromCGRect(v28);
  v24 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

  Mutable = CFDataCreateMutable(0, 0);
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v20 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);

  cGImage = [imageCopy CGImage];
  CGImageDestinationAddImage(v20, cGImage, v17);
  CGImageDestinationFinalize(v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

@end