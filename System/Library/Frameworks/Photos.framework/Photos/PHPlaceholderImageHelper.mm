@interface PHPlaceholderImageHelper
+ (id)placeholderImageDataForImageSize:(CGSize)size qualityClass:(id)class dataSpecification:(PHAssetResourceTableDataSpecification *)specification;
@end

@implementation PHPlaceholderImageHelper

+ (id)placeholderImageDataForImageSize:(CGSize)size qualityClass:(id)class dataSpecification:(PHAssetResourceTableDataSpecification *)specification
{
  height = size.height;
  width = size.width;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v8 = MEMORY[0x1E69BE6C8];
  classCopy = class;
  sharedManager = [v8 sharedManager];
  backingImageFormat = [classCopy backingImageFormat];

  v12 = [sharedManager placeholderDataForFormat:objc_msgSend(backingImageFormat photoImageSize:"formatID") width:&v21 + 4 height:&v21 bytesPerRow:&v20 + 4 dataWidth:&v20 dataHeight:&v19 + 4 imageDataOffset:width, height, &v19];

  if (specification)
  {
    v13 = v21;
    v15 = v20;
    v14 = HIDWORD(v20);
    v17 = v19;
    v16 = HIDWORD(v19);
    specification->var0 = HIDWORD(v21);
    specification->var1 = v13;
    specification->var2 = v14;
    specification->var3 = v15;
    specification->var4 = v16;
    specification->var5 = v17;
    specification->var6 = 0;
  }

  return v12;
}

@end