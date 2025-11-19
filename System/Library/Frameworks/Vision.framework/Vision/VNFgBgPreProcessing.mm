@interface VNFgBgPreProcessing
+ (vImage_Buffer)rescaleImage:(SEL)a3 toWidth:(vImage_Buffer *)a4 toHeight:(unint64_t)a5;
@end

@implementation VNFgBgPreProcessing

+ (vImage_Buffer)rescaleImage:(SEL)a3 toWidth:(vImage_Buffer *)a4 toHeight:(unint64_t)a5
{
  *&retstr->data = 0u;
  *&retstr->width = 0u;
  ImageProcessing_reallocVImageBuffer(retstr, a5, a6, 4);

  return vImageScale_ARGB8888(a4, retstr, 0, 0x20u);
}

@end