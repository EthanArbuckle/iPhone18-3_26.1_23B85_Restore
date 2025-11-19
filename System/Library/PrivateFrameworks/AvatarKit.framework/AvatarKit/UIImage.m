@interface UIImage
@end

@implementation UIImage

void __63__UIImage_Conversion__avt_dataRepresentationForTypeIdentifier___block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 CGImage];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  CGImageDestinationAddImage(v6, v5, v7);
}

@end