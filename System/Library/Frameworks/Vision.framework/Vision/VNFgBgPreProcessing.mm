@interface VNFgBgPreProcessing
+ (vImage_Buffer)rescaleImage:(SEL)image toWidth:(vImage_Buffer *)width toHeight:(unint64_t)height;
@end

@implementation VNFgBgPreProcessing

+ (vImage_Buffer)rescaleImage:(SEL)image toWidth:(vImage_Buffer *)width toHeight:(unint64_t)height
{
  *&retstr->data = 0u;
  *&retstr->width = 0u;
  ImageProcessing_reallocVImageBuffer(retstr, height, a6, 4);

  return vImageScale_ARGB8888(width, retstr, 0, 0x20u);
}

@end