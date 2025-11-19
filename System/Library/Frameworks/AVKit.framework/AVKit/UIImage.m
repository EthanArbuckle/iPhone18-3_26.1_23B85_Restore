@interface UIImage
@end

@implementation UIImage

uint64_t __45__UIImage_AVAdditions___avkit_textImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _avkit_textImageCache_AVMobileTextImageCache;
  _avkit_textImageCache_AVMobileTextImageCache = v0;

  [_avkit_textImageCache_AVMobileTextImageCache setCountLimit:10];
  v2 = _avkit_textImageCache_AVMobileTextImageCache;

  return [v2 setName:@"com.apple.avkit.UIKit_AVAdditions.AVMobileTextImageCache"];
}

void __48__UIImage_AVAdditions___avkit_imageLoadingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.avkit.UIKit_AVAdditions.AVMobileImageLoadingQueue", v2);
  v1 = _avkit_imageLoadingQueue_AVMobileImageLoadingQueue;
  _avkit_imageLoadingQueue_AVMobileImageLoadingQueue = v0;
}

void __79__UIImage_AVAdditions__avkit_imageWithSize_ofText_font_scaleFactor_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCAB8] _avkit_imageWithSize:*(a1 + 32) ofText:*(a1 + 40) font:*(a1 + 72) scaleFactor:{*(a1 + 80), *(a1 + 88)}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__UIImage_AVAdditions__avkit_imageWithSize_ofText_font_scaleFactor_completion___block_invoke_2;
  v4[3] = &unk_1E7209FD8;
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __79__UIImage_AVAdditions__avkit_imageWithSize_ofText_font_scaleFactor_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __67__UIImage_AVAdditions__avkit_imageWithSymbolNamed_font_completion___block_invoke(uint64_t a1)
{
  v2 = [AVImage imageWithConfiguration:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__UIImage_AVAdditions__avkit_imageWithSymbolNamed_font_completion___block_invoke_2;
  block[3] = &unk_1E7209088;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v8 = v3;
  v12 = v4;
  v9 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = v2;
  v11 = v5;
  v6 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__UIImage_AVAdditions__avkit_imageWithSymbolNamed_font_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 64) avkit_loadedImageConfigurations];
    [v2 addObject:*(a1 + 40)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __52__UIImage_AVAdditions__avkit_imageNamed_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AVBundle();
  v4 = [AVImage imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIImage_AVAdditions__avkit_imageNamed_completion___block_invoke_3;
  block[3] = &unk_1E7209088;
  v12 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__UIImage_AVAdditions__avkit_imageNamed_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v2 = [*(a1 + 64) avkit_loadedImageConfigurations];
      [v2 addObject:*(a1 + 48)];
    }

    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:*(a1 + 40)];
    (*(v4 + 16))(v4, v5);
  }
}

void __52__UIImage_AVAdditions__avkit_imageNamed_completion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.avkit.images", v2);
  v1 = avkit_imageNamed_completion__imageQueue;
  avkit_imageNamed_completion__imageQueue = v0;
}

void __61__UIImage_AVAdditions__avkit_flatWhiteResizableTemplateImage__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{1.0, 1.0}];
  v0 = [v4 imageWithActions:&__block_literal_global_139_24675];
  v1 = [v0 resizableImageWithCapInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v2 = [v1 imageWithRenderingMode:2];
  v3 = avkit_flatWhiteResizableTemplateImage_solidWhitePixelTemplateImage;
  avkit_flatWhiteResizableTemplateImage_solidWhitePixelTemplateImage = v2;
}

void __61__UIImage_AVAdditions__avkit_flatWhiteResizableTemplateImage__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v4 = a2;
  v3 = [v2 whiteColor];
  [v3 setFill];

  [v4 fillRect:{0.0, 0.0, 1.0, 1.0}];
}

uint64_t __55__UIImage_AVAdditions__avkit_loadedImageConfigurations__block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = avkit_loadedImageConfigurations_avkit_loadedImageConfigurations;
  avkit_loadedImageConfigurations_avkit_loadedImageConfigurations = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end