@interface UIImage(MessagesAdditions)
- (id)__ms_HEICData;
- (id)__ms_PNGData;
@end

@implementation UIImage(MessagesAdditions)

- (id)__ms_PNGData
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v3 = CGImageDestinationCreateWithData(v2, *MEMORY[0x1E6963860], 1uLL, 0);
  if (v3)
  {
    v4 = v3;
    CGImageDestinationAddImage(v3, [a1 CGImage], 0);
    CGImageDestinationFinalize(v4);
    CFRelease(v4);
  }

  if ([(__CFData *)v2 length])
  {
    v5 = [(__CFData *)v2 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)__ms_HEICData
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = CGImageDestinationCreateWithData(v2, @"public.heic", 1uLL, 0);
  if (v3)
  {
    v4 = v3;
    v8 = *MEMORY[0x1E696D338];
    v9[0] = &unk_1F4AC7108;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    CGImageDestinationAddImage(v4, [a1 CGImage], v5);
    CGImageDestinationFinalize(v4);
    CFAutorelease(v4);
    v6 = [(__CFData *)v2 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end