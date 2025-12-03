@interface AVTIconImageProvider
+ (void)iconImageForBundleIdentifier:(id)identifier size:(CGSize)size scale:(double)scale completionBlock:(id)block;
+ (void)prewarmIconImageForBundleIdentifier:(id)identifier size:(CGSize)size scale:(double)scale;
@end

@implementation AVTIconImageProvider

+ (void)prewarmIconImageForBundleIdentifier:(id)identifier size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69A8A30];
  identifierCopy = identifier;
  v10 = [[v8 alloc] initWithSize:width scale:{height, scale}];
  v11 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:identifierCopy];

  v13[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v11 prepareImagesForImageDescriptors:v12];
}

+ (void)iconImageForBundleIdentifier:(id)identifier size:(CGSize)size scale:(double)scale completionBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v11 = MEMORY[0x1E69A8A30];
  identifierCopy = identifier;
  v13 = [[v11 alloc] initWithSize:width scale:{height, scale}];
  v14 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:identifierCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__AVTIconImageProvider_iconImageForBundleIdentifier_size_scale_completionBlock___block_invoke;
  v16[3] = &unk_1E7F3CF58;
  v17 = blockCopy;
  v15 = blockCopy;
  [v14 getCGImageForImageDescriptor:v13 completion:v16];
}

void __80__AVTIconImageProvider_iconImageForBundleIdentifier_size_scale_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
  (*(v2 + 16))(v2, v3);
}

@end