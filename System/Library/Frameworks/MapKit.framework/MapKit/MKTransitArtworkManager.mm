@interface MKTransitArtworkManager
+ (id)sharedInstance;
- (BOOL)_isMemoryConstrained;
- (MKTransitArtworkManager)initWithIconManager:(id)a3;
- (id)_createImageWithBlockInAutoreleasePoolIfNeeded:(id)a3;
- (id)_imageFroMVKImage:(id)a3;
- (id)_imageWithDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 withWidthPaddingMultiple:(double)a8 fullBleedColor:(id *)a9;
- (id)_vkImageWithShieldDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 widthPaddingMultiple:(double)a8;
- (id)transitArtworkImageWithDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 withWidthPaddingMultiple:(double)a8;
- (id)transitArtworkImageWithDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 withWidthPaddingMultiple:(double)a8 fullBleedColor:(id *)a9;
- (id)transitArtworkImageWithShieldDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7;
- (void)purge;
@end

@implementation MKTransitArtworkManager

- (id)_imageFroMVKImage:(id)a3
{
  v4 = a3;
  if ([(MKTransitArtworkManager *)self _isMemoryConstrained])
  {
    v5 = CGImageRetain([v4 image]);
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v5);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = Width;
    v17.size.height = Height;
    CGContextClearRect(v10, v17);
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = Width;
    v18.size.height = Height;
    CGContextDrawImage(v10, v18, v5);
    Image = CGBitmapContextCreateImage(v10);
    v12 = MEMORY[0x1E69DCAB8];
    [v4 contentScale];
    v14 = [v12 imageWithCGImage:Image scale:0 orientation:v13];
    CGImageRelease(v5);
    CGImageRelease(Image);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v10);
  }

  else
  {
    v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageFromVKImage:v4];
  }

  return v14;
}

- (id)_createImageWithBlockInAutoreleasePoolIfNeeded:(id)a3
{
  v4 = a3;
  if ([(MKTransitArtworkManager *)self _isMemoryConstrained])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4[2](v4);
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = v4[2](v4);
  }

  return v6;
}

- (id)transitArtworkImageWithDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 withWidthPaddingMultiple:(double)a8 fullBleedColor:(id *)a9
{
  v10 = [(MKTransitArtworkManager *)self _imageWithDataSource:a3 size:a4 featureType:a5 scale:a7 nightMode:a9 withWidthPaddingMultiple:a6 fullBleedColor:a8];
  v11 = [(MKTransitArtworkManager *)self _imageFroMVKImage:v10];

  return v11;
}

- (id)_imageWithDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 withWidthPaddingMultiple:(double)a8 fullBleedColor:(id *)a9
{
  v11 = a7;
  v16 = a3;
  v17 = [v16 artworkSourceType];
  if (v17 == 2)
  {
    v18 = [v16 iconDataSource];
    v22 = [v18 iconType];
    if (v22 == 1)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v37 = [v18 iconAttributeKey];
        v38 = [v18 iconAttributeValue];
        v34 = objc_alloc_init(MEMORY[0x1E69DF438]);
        v39 = +[MKSystemController sharedInstance];
        [v34 setNewInterfaceEnabled:{objc_msgSend(v39, "isGlassEnabled")}];

        if (v11)
        {
          v40 = [(MKTransitArtworkManager *)self iconManager];
          [v34 setVariant:{objc_msgSend(v40, "darkVariant")}];
        }

        v41 = [(MKTransitArtworkManager *)self iconManager];
        *&v42 = a6;
        v21 = [v41 imageForKey:v37 value:v38 contentScale:a4 sizeGroup:v34 modifiers:v42];

        goto LABEL_22;
      }
    }

    else if (!v22 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v23 = [(MKTransitArtworkManager *)self iconManager];
      v24 = [(MKTransitArtworkManager *)self iconManager];
      v25 = [v24 styleAttributeTransitSystemTypeKey];
      v26 = [v18 cartoID];
      v27 = a6;
      *&v28 = v27;
      v21 = [v23 imageForKey:v25 value:v26 contentScale:a4 sizeGroup:0 modifiers:v28];

      if (v21 || (-[MKTransitArtworkManager iconManager](self, "iconManager"), v29 = objc_claimAutoreleasedReturnValue(), -[MKTransitArtworkManager iconManager](self, "iconManager"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 styleAttributeTransitTypeKey], v32 = objc_msgSend(v18, "defaultTransitType"), *&v33 = a6, objc_msgSend(v29, "imageForKey:value:contentScale:sizeGroup:modifiers:", v31, v32, a4, 0, v33), v21 = objc_claimAutoreleasedReturnValue(), v30, v29, v21))
      {
LABEL_23:
        if (a9 && v21)
        {
          if ([v21 calloutFillColor])
          {
            v43 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v21, "calloutFillColor")}];
            *a9 = v43;
          }

          else
          {
            *a9 = 0;
          }
        }

        goto LABEL_28;
      }

      v21 = [v16 iconFallbackShieldDataSource];

      if (!v21)
      {
        goto LABEL_28;
      }

      v34 = [v16 iconFallbackShieldDataSource];
      v35 = round(a6 * a8);
      v36 = 1.0;
      if (a8 > 1.0)
      {
        v36 = v35;
      }

      v21 = [(MKTransitArtworkManager *)self _vkImageWithShieldDataSource:v34 size:a4 featureType:a5 scale:v11 nightMode:a6 widthPaddingMultiple:v36];
LABEL_22:

      goto LABEL_23;
    }

    v21 = 0;
    goto LABEL_28;
  }

  if (v17 != 1)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v18 = [v16 shieldDataSource];
  v19 = round(a6 * a8);
  v20 = 1.0;
  if (a8 > 1.0)
  {
    v20 = v19;
  }

  v21 = [(MKTransitArtworkManager *)self _vkImageWithShieldDataSource:v18 size:a4 featureType:a5 scale:v11 nightMode:a6 widthPaddingMultiple:v20];
LABEL_28:

LABEL_29:

  return v21;
}

- (id)transitArtworkImageWithDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 withWidthPaddingMultiple:(double)a8
{
  v14 = a3;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __119__MKTransitArtworkManager_transitArtworkImageWithDataSource_size_featureType_scale_nightMode_withWidthPaddingMultiple___block_invoke;
  v18[3] = &unk_1E76C7198;
  v18[4] = self;
  v19 = v14;
  v20 = a4;
  v21 = a5;
  v24 = a7;
  v22 = a6;
  v23 = a8;
  v15 = v14;
  v16 = [(MKTransitArtworkManager *)self _createImageWithBlockInAutoreleasePoolIfNeeded:v18];

  return v16;
}

id __119__MKTransitArtworkManager_transitArtworkImageWithDataSource_size_featureType_scale_nightMode_withWidthPaddingMultiple___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageWithDataSource:*(a1 + 40) size:*(a1 + 48) featureType:*(a1 + 56) scale:*(a1 + 80) nightMode:0 withWidthPaddingMultiple:*(a1 + 64) fullBleedColor:*(a1 + 72)];
  v3 = [*(a1 + 32) _imageFroMVKImage:v2];

  return v3;
}

- (id)transitArtworkImageWithShieldDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7
{
  v12 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__MKTransitArtworkManager_transitArtworkImageWithShieldDataSource_size_featureType_scale_nightMode___block_invoke;
  v16[3] = &unk_1E76C7170;
  v16[4] = self;
  v17 = v12;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v13 = v12;
  v14 = [(MKTransitArtworkManager *)self _createImageWithBlockInAutoreleasePoolIfNeeded:v16];

  return v14;
}

id __100__MKTransitArtworkManager_transitArtworkImageWithShieldDataSource_size_featureType_scale_nightMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _vkImageWithShieldDataSource:*(a1 + 40) size:*(a1 + 48) featureType:*(a1 + 56) scale:*(a1 + 72) nightMode:*(a1 + 64) widthPaddingMultiple:1.0];
  v3 = [*(a1 + 32) _imageFroMVKImage:v2];

  return v3;
}

- (id)_vkImageWithShieldDataSource:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 widthPaddingMultiple:(double)a8
{
  v8 = a7;
  v12 = a3;
  v13 = objc_alloc_init(MEMORY[0x1E69DF438]);
  v14 = [v12 shieldText];
  [v13 setText:v14];

  v15 = [v12 shieldColorString];
  VKShieldColorsFromHexString();
  [v13 setTransitLineColor:?];

  if (v8)
  {
    v16 = [(MKTransitArtworkManager *)self iconManager];
    [v13 setVariant:{objc_msgSend(v16, "darkVariant")}];
  }

  v17 = +[MKSystemController sharedInstance];
  [v13 setNewInterfaceEnabled:{objc_msgSend(v17, "isGlassEnabled")}];

  v18 = [(MKTransitArtworkManager *)self iconManager];
  v19 = [v12 shieldType];
  v20 = [v12 shieldText];
  *&v21 = a6;
  v22 = [v18 imageForDataID:v19 text:v20 contentScale:a4 sizeGroup:v13 modifiers:v21];

  return v22;
}

- (BOOL)_isMemoryConstrained
{
  v3 = [(MKTransitArtworkManager *)self iconManager];
  if (v3)
  {
    v4 = [(MKTransitArtworkManager *)self iconManager];
    v5 = [v4 isCachingAtlases] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)purge
{
  v2 = [(MKTransitArtworkManager *)self iconManager];
  [v2 purge];
}

- (MKTransitArtworkManager)initWithIconManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKTransitArtworkManager;
  v6 = [(MKTransitArtworkManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconManager, a3);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6536 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6536, &__block_literal_global_6537);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

void __41__MKTransitArtworkManager_sharedInstance__block_invoke()
{
  v0 = [MKTransitArtworkManager alloc];
  v3 = [MEMORY[0x1E69DF430] sharedManager];
  v1 = [(MKTransitArtworkManager *)v0 initWithIconManager:v3];
  v2 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v1;
}

@end