@interface PHPlaceholderImageHelper
+ (id)placeholderImageDataForImageSize:(CGSize)a3 qualityClass:(id)a4 dataSpecification:(PHAssetResourceTableDataSpecification *)a5;
@end

@implementation PHPlaceholderImageHelper

+ (id)placeholderImageDataForImageSize:(CGSize)a3 qualityClass:(id)a4 dataSpecification:(PHAssetResourceTableDataSpecification *)a5
{
  height = a3.height;
  width = a3.width;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v8 = MEMORY[0x1E69BE6C8];
  v9 = a4;
  v10 = [v8 sharedManager];
  v11 = [v9 backingImageFormat];

  v12 = [v10 placeholderDataForFormat:objc_msgSend(v11 photoImageSize:"formatID") width:&v21 + 4 height:&v21 bytesPerRow:&v20 + 4 dataWidth:&v20 dataHeight:&v19 + 4 imageDataOffset:width, height, &v19];

  if (a5)
  {
    v13 = v21;
    v15 = v20;
    v14 = HIDWORD(v20);
    v17 = v19;
    v16 = HIDWORD(v19);
    a5->var0 = HIDWORD(v21);
    a5->var1 = v13;
    a5->var2 = v14;
    a5->var3 = v15;
    a5->var4 = v16;
    a5->var5 = v17;
    a5->var6 = 0;
  }

  return v12;
}

@end