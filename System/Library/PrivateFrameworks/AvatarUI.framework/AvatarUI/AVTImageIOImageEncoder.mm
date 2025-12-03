@interface AVTImageIOImageEncoder
- (id)dataFromImage:(id)image;
- (id)imageFromData:(id)data error:(id *)error;
- (id)imageFromImageSource:(CGImageSource *)source error:(id *)error;
- (id)imageFromURL:(id)l error:(id *)error;
@end

@implementation AVTImageIOImageEncoder

- (id)imageFromURL:(id)l error:(id *)error
{
  v6 = CGImageSourceCreateWithURL(l, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [(AVTImageIOImageEncoder *)self imageFromImageSource:v6 error:error];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageFromData:(id)data error:(id *)error
{
  v6 = CGImageSourceCreateWithData(data, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [(AVTImageIOImageEncoder *)self imageFromImageSource:v6 error:error];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageFromImageSource:(CGImageSource *)source error:(id *)error
{
  if (!source)
  {
    v7 = 0;
    goto LABEL_9;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
  if (ImageAtIndex)
  {
    v6 = ImageAtIndex;
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ImageAtIndex];
    CFRelease(v6);
    if (!error)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!error)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    *error = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

LABEL_9:

  return v7;
}

- (id)dataFromImage:(id)image
{
  v3 = MEMORY[0x1E695DF88];
  imageCopy = image;
  data = [v3 data];
  typeIdentifier = [objc_opt_class() typeIdentifier];
  v7 = CGImageDestinationCreateWithData(data, typeIdentifier, 1uLL, 0);
  addImageOptions = [objc_opt_class() addImageOptions];
  cGImage = [imageCopy CGImage];

  CGImageDestinationAddImage(v7, cGImage, addImageOptions);
  CGImageDestinationFinalize(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  v10 = [(__CFData *)data copy];

  return v10;
}

@end