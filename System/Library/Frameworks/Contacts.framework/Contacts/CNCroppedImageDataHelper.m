@interface CNCroppedImageDataHelper
+ (BOOL)croppedImageDataAvailableForContact:(id)a3;
+ (id)descriptorForRequiredKeys;
- (CNCroppedImageDataHelper)initWithContactStore:(id)a3;
- (id)croppedImageDataForContact:(id)a3;
- (id)squareImageData:(id)a3;
@end

@implementation CNCroppedImageDataHelper

+ (id)descriptorForRequiredKeys
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"thumbnailImageData";
  v7[1] = @"cropRect";
  v7[2] = @"imageDataAvailable";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [a1 description];
  v5 = [CNContact descriptorWithKeyDescriptors:v3 description:v4];

  return v5;
}

- (CNCroppedImageDataHelper)initWithContactStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNCroppedImageDataHelper;
  v6 = [(CNCroppedImageDataHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = v7;
  }

  return v7;
}

+ (BOOL)croppedImageDataAvailableForContact:(id)a3
{
  v3 = a3;
  if ([v3 imageDataAvailable])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = *MEMORY[0x1E6996540];
    v6 = [v3 thumbnailImageData];
    v4 = (*(v5 + 16))(v5, v6) ^ 1;
  }

  return v4;
}

- (id)croppedImageDataForContact:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([objc_opt_class() croppedImageDataAvailableForContact:v4])
  {
    v5 = [v4 thumbnailImageData];
    if (v5 && (v6 = v5, [v4 thumbnailImageData], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
    {
      v9 = [v4 thumbnailImageData];
      v10 = [(CNCroppedImageDataHelper *)self squareImageData:v9];
    }

    else
    {
      if ([v4 isKeyAvailable:@"imageData"])
      {
        v11 = v4;
      }

      else
      {
        v12 = [(CNCroppedImageDataHelper *)self contactStore];
        v13 = [v4 identifier];
        v21[0] = @"imageData";
        v21[1] = @"cropRect";
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
        v11 = [v12 unifiedContactWithIdentifier:v13 keysToFetch:v14 error:0];
      }

      v10 = [v11 imageData];

      if (v10)
      {
        v15 = [v11 imageData];
        [v11 cropRect];
        v10 = CNImageUtilsCroppedImageDataFromFullSizeImageData(v15, 0, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)squareImageData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v5 = CGImageSourceCreateWithData(v3, 0);
  if (v5)
  {
    v6 = v5;
    v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
    v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v8 doubleValue];
    v10 = v9;

    v11 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v11 doubleValue];
    v13 = v12;

    if (vabdd_f64(v10, v13) <= 1.0)
    {
      CFRelease(v6);
      v15 = v4;
      goto LABEL_14;
    }

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
    CFRelease(v6);
  }

  else
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(0, 0, 0);
    v13 = 0.0;
    v10 = 0.0;
  }

  if (v10 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v10;
  }

  v17 = 0;
  v18 = 0;
  v19 = v16;
  v20 = CGImageCreateWithImageInRect(ImageAtIndex, *(&v16 - 2));
  CGImageRelease(ImageAtIndex);
  v15 = objc_opt_new();
  v21 = CGImageDestinationCreateWithData(v15, @"public.jpeg", 1uLL, 0);
  if (v21)
  {
    v22 = v21;
    v23 = [MEMORY[0x1E695DF90] dictionary];
    [v23 setObject:&unk_1F0987288 forKeyedSubscript:*MEMORY[0x1E696D338]];
    CGImageDestinationAddImage(v22, v20, v23);
    CGImageDestinationFinalize(v22);
    CFRelease(v22);
  }

  CGImageRelease(v20);
LABEL_14:

  return v15;
}

@end