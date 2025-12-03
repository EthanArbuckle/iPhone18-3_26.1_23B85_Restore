@interface AVTClippableImageStore
- (BOOL)saveImage:(id)image forItem:(id)item scope:(id)scope clippingRect:(CGRect)rect error:(id *)error;
- (CGRect)resourceClippingRectForItem:(id)item scope:(id)scope;
@end

@implementation AVTClippableImageStore

- (BOOL)saveImage:(id)image forItem:(id)item scope:(id)scope clippingRect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scopeCopy = scope;
  itemCopy = item;
  imageCopy = image;
  imageEncoder = [(AVTImageStore *)self imageEncoder];
  v19 = [imageEncoder conformsToProtocol:&unk_1F39D7668];

  imageEncoder2 = [(AVTImageStore *)self imageEncoder];
  v21 = imageEncoder2;
  if (v19)
  {
    [imageEncoder2 dataFromImage:imageCopy clippingRect:{x, y, width, height}];
  }

  else
  {
    [imageEncoder2 dataFromImage:imageCopy];
  }
  v22 = ;

  v25.receiver = self;
  v25.super_class = AVTClippableImageStore;
  v23 = [(AVTImageStore *)&v25 saveImage:imageCopy withImageData:v22 forItem:itemCopy scope:scopeCopy error:error];

  return v23;
}

- (CGRect)resourceClippingRectForItem:(id)item scope:(id)scope
{
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v8 = [(AVTImageStore *)self resourceURLForItem:item scope:scope];
  v9 = CGImageSourceCreateWithURL(v8, 0);
  v10 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
  CFRelease(v9);
  if (v10)
  {
    v11 = *MEMORY[0x1E696D9B0];
    v12 = v10;
    v13 = [(__CFDictionary *)v12 objectForKey:v11];
    CFRelease(v12);

    if (v13)
    {
      v14 = [v13 objectForKey:*MEMORY[0x1E696DB40]];
      v19 = CGRectFromString(v14);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
    }
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end