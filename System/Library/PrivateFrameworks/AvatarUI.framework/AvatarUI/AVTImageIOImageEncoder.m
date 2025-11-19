@interface AVTImageIOImageEncoder
- (id)dataFromImage:(id)a3;
- (id)imageFromData:(id)a3 error:(id *)a4;
- (id)imageFromImageSource:(CGImageSource *)a3 error:(id *)a4;
- (id)imageFromURL:(id)a3 error:(id *)a4;
@end

@implementation AVTImageIOImageEncoder

- (id)imageFromURL:(id)a3 error:(id *)a4
{
  v6 = CGImageSourceCreateWithURL(a3, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [(AVTImageIOImageEncoder *)self imageFromImageSource:v6 error:a4];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageFromData:(id)a3 error:(id *)a4
{
  v6 = CGImageSourceCreateWithData(a3, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [(AVTImageIOImageEncoder *)self imageFromImageSource:v6 error:a4];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageFromImageSource:(CGImageSource *)a3 error:(id *)a4
{
  if (!a3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, 0);
  if (ImageAtIndex)
  {
    v6 = ImageAtIndex;
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ImageAtIndex];
    CFRelease(v6);
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    *a4 = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

LABEL_9:

  return v7;
}

- (id)dataFromImage:(id)a3
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a3;
  v5 = [v3 data];
  v6 = [objc_opt_class() typeIdentifier];
  v7 = CGImageDestinationCreateWithData(v5, v6, 1uLL, 0);
  v8 = [objc_opt_class() addImageOptions];
  v9 = [v4 CGImage];

  CGImageDestinationAddImage(v7, v9, v8);
  CGImageDestinationFinalize(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  v10 = [(__CFData *)v5 copy];

  return v10;
}

@end