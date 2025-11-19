@interface AVTClippableImageStore
- (BOOL)saveImage:(id)a3 forItem:(id)a4 scope:(id)a5 clippingRect:(CGRect)a6 error:(id *)a7;
- (CGRect)resourceClippingRectForItem:(id)a3 scope:(id)a4;
@end

@implementation AVTClippableImageStore

- (BOOL)saveImage:(id)a3 forItem:(id)a4 scope:(id)a5 clippingRect:(CGRect)a6 error:(id *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(AVTImageStore *)self imageEncoder];
  v19 = [v18 conformsToProtocol:&unk_1F39D7668];

  v20 = [(AVTImageStore *)self imageEncoder];
  v21 = v20;
  if (v19)
  {
    [v20 dataFromImage:v17 clippingRect:{x, y, width, height}];
  }

  else
  {
    [v20 dataFromImage:v17];
  }
  v22 = ;

  v25.receiver = self;
  v25.super_class = AVTClippableImageStore;
  v23 = [(AVTImageStore *)&v25 saveImage:v17 withImageData:v22 forItem:v16 scope:v15 error:a7];

  return v23;
}

- (CGRect)resourceClippingRectForItem:(id)a3 scope:(id)a4
{
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v8 = [(AVTImageStore *)self resourceURLForItem:a3 scope:a4];
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