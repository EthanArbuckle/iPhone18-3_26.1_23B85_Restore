@interface CNCroppedImageDataHelper
+ (BOOL)croppedImageDataAvailableForContact:(id)contact;
+ (id)descriptorForRequiredKeys;
- (CNCroppedImageDataHelper)initWithContactStore:(id)store;
- (id)croppedImageDataForContact:(id)contact;
- (id)squareImageData:(id)data;
@end

@implementation CNCroppedImageDataHelper

+ (id)descriptorForRequiredKeys
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"thumbnailImageData";
  v7[1] = @"cropRect";
  v7[2] = @"imageDataAvailable";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [self description];
  v5 = [CNContact descriptorWithKeyDescriptors:v3 description:v4];

  return v5;
}

- (CNCroppedImageDataHelper)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNCroppedImageDataHelper;
  v6 = [(CNCroppedImageDataHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = v7;
  }

  return v7;
}

+ (BOOL)croppedImageDataAvailableForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy imageDataAvailable])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = *MEMORY[0x1E6996540];
    thumbnailImageData = [contactCopy thumbnailImageData];
    v4 = (*(v5 + 16))(v5, thumbnailImageData) ^ 1;
  }

  return v4;
}

- (id)croppedImageDataForContact:(id)contact
{
  v21[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([objc_opt_class() croppedImageDataAvailableForContact:contactCopy])
  {
    thumbnailImageData = [contactCopy thumbnailImageData];
    if (thumbnailImageData && (v6 = thumbnailImageData, [contactCopy thumbnailImageData], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
    {
      thumbnailImageData2 = [contactCopy thumbnailImageData];
      imageData = [(CNCroppedImageDataHelper *)self squareImageData:thumbnailImageData2];
    }

    else
    {
      if ([contactCopy isKeyAvailable:@"imageData"])
      {
        v11 = contactCopy;
      }

      else
      {
        contactStore = [(CNCroppedImageDataHelper *)self contactStore];
        identifier = [contactCopy identifier];
        v21[0] = @"imageData";
        v21[1] = @"cropRect";
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
        v11 = [contactStore unifiedContactWithIdentifier:identifier keysToFetch:v14 error:0];
      }

      imageData = [v11 imageData];

      if (imageData)
      {
        imageData2 = [v11 imageData];
        [v11 cropRect];
        imageData = CNImageUtilsCroppedImageDataFromFullSizeImageData(imageData2, 0, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    imageData = 0;
  }

  return imageData;
}

- (id)squareImageData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (!dataCopy)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v5 = CGImageSourceCreateWithData(dataCopy, 0);
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:&unk_1F0987288 forKeyedSubscript:*MEMORY[0x1E696D338]];
    CGImageDestinationAddImage(v22, v20, dictionary);
    CGImageDestinationFinalize(v22);
    CFRelease(v22);
  }

  CGImageRelease(v20);
LABEL_14:

  return v15;
}

@end