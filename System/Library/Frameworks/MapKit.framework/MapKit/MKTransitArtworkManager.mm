@interface MKTransitArtworkManager
+ (id)sharedInstance;
- (BOOL)_isMemoryConstrained;
- (MKTransitArtworkManager)initWithIconManager:(id)manager;
- (id)_createImageWithBlockInAutoreleasePoolIfNeeded:(id)needed;
- (id)_imageFroMVKImage:(id)image;
- (id)_imageWithDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode withWidthPaddingMultiple:(double)multiple fullBleedColor:(id *)color;
- (id)_vkImageWithShieldDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode widthPaddingMultiple:(double)multiple;
- (id)transitArtworkImageWithDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode withWidthPaddingMultiple:(double)multiple;
- (id)transitArtworkImageWithDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode withWidthPaddingMultiple:(double)multiple fullBleedColor:(id *)color;
- (id)transitArtworkImageWithShieldDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode;
- (void)purge;
@end

@implementation MKTransitArtworkManager

- (id)_imageFroMVKImage:(id)image
{
  imageCopy = image;
  if ([(MKTransitArtworkManager *)self _isMemoryConstrained])
  {
    v5 = CGImageRetain([imageCopy image]);
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
    [imageCopy contentScale];
    v14 = [v12 imageWithCGImage:Image scale:0 orientation:v13];
    CGImageRelease(v5);
    CGImageRelease(Image);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v10);
  }

  else
  {
    v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageFromVKImage:imageCopy];
  }

  return v14;
}

- (id)_createImageWithBlockInAutoreleasePoolIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(MKTransitArtworkManager *)self _isMemoryConstrained])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = neededCopy[2](neededCopy);
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = neededCopy[2](neededCopy);
  }

  return v6;
}

- (id)transitArtworkImageWithDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode withWidthPaddingMultiple:(double)multiple fullBleedColor:(id *)color
{
  v10 = [(MKTransitArtworkManager *)self _imageWithDataSource:source size:size featureType:type scale:mode nightMode:color withWidthPaddingMultiple:scale fullBleedColor:multiple];
  v11 = [(MKTransitArtworkManager *)self _imageFroMVKImage:v10];

  return v11;
}

- (id)_imageWithDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode withWidthPaddingMultiple:(double)multiple fullBleedColor:(id *)color
{
  modeCopy = mode;
  sourceCopy = source;
  artworkSourceType = [sourceCopy artworkSourceType];
  if (artworkSourceType == 2)
  {
    iconDataSource = [sourceCopy iconDataSource];
    iconType = [iconDataSource iconType];
    if (iconType == 1)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        iconAttributeKey = [iconDataSource iconAttributeKey];
        iconAttributeValue = [iconDataSource iconAttributeValue];
        iconFallbackShieldDataSource2 = objc_alloc_init(MEMORY[0x1E69DF438]);
        v39 = +[MKSystemController sharedInstance];
        [iconFallbackShieldDataSource2 setNewInterfaceEnabled:{objc_msgSend(v39, "isGlassEnabled")}];

        if (modeCopy)
        {
          iconManager = [(MKTransitArtworkManager *)self iconManager];
          [iconFallbackShieldDataSource2 setVariant:{objc_msgSend(iconManager, "darkVariant")}];
        }

        iconManager2 = [(MKTransitArtworkManager *)self iconManager];
        *&v42 = scale;
        iconFallbackShieldDataSource = [iconManager2 imageForKey:iconAttributeKey value:iconAttributeValue contentScale:size sizeGroup:iconFallbackShieldDataSource2 modifiers:v42];

        goto LABEL_22;
      }
    }

    else if (!iconType && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      iconManager3 = [(MKTransitArtworkManager *)self iconManager];
      iconManager4 = [(MKTransitArtworkManager *)self iconManager];
      styleAttributeTransitSystemTypeKey = [iconManager4 styleAttributeTransitSystemTypeKey];
      cartoID = [iconDataSource cartoID];
      scaleCopy = scale;
      *&v28 = scaleCopy;
      iconFallbackShieldDataSource = [iconManager3 imageForKey:styleAttributeTransitSystemTypeKey value:cartoID contentScale:size sizeGroup:0 modifiers:v28];

      if (iconFallbackShieldDataSource || (-[MKTransitArtworkManager iconManager](self, "iconManager"), v29 = objc_claimAutoreleasedReturnValue(), -[MKTransitArtworkManager iconManager](self, "iconManager"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 styleAttributeTransitTypeKey], v32 = objc_msgSend(iconDataSource, "defaultTransitType"), *&v33 = scale, objc_msgSend(v29, "imageForKey:value:contentScale:sizeGroup:modifiers:", v31, v32, size, 0, v33), iconFallbackShieldDataSource = objc_claimAutoreleasedReturnValue(), v30, v29, iconFallbackShieldDataSource))
      {
LABEL_23:
        if (color && iconFallbackShieldDataSource)
        {
          if ([iconFallbackShieldDataSource calloutFillColor])
          {
            v43 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(iconFallbackShieldDataSource, "calloutFillColor")}];
            *color = v43;
          }

          else
          {
            *color = 0;
          }
        }

        goto LABEL_28;
      }

      iconFallbackShieldDataSource = [sourceCopy iconFallbackShieldDataSource];

      if (!iconFallbackShieldDataSource)
      {
        goto LABEL_28;
      }

      iconFallbackShieldDataSource2 = [sourceCopy iconFallbackShieldDataSource];
      v35 = round(scale * multiple);
      v36 = 1.0;
      if (multiple > 1.0)
      {
        v36 = v35;
      }

      iconFallbackShieldDataSource = [(MKTransitArtworkManager *)self _vkImageWithShieldDataSource:iconFallbackShieldDataSource2 size:size featureType:type scale:modeCopy nightMode:scale widthPaddingMultiple:v36];
LABEL_22:

      goto LABEL_23;
    }

    iconFallbackShieldDataSource = 0;
    goto LABEL_28;
  }

  if (artworkSourceType != 1)
  {
    iconFallbackShieldDataSource = 0;
    goto LABEL_29;
  }

  iconDataSource = [sourceCopy shieldDataSource];
  v19 = round(scale * multiple);
  v20 = 1.0;
  if (multiple > 1.0)
  {
    v20 = v19;
  }

  iconFallbackShieldDataSource = [(MKTransitArtworkManager *)self _vkImageWithShieldDataSource:iconDataSource size:size featureType:type scale:modeCopy nightMode:scale widthPaddingMultiple:v20];
LABEL_28:

LABEL_29:

  return iconFallbackShieldDataSource;
}

- (id)transitArtworkImageWithDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode withWidthPaddingMultiple:(double)multiple
{
  sourceCopy = source;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __119__MKTransitArtworkManager_transitArtworkImageWithDataSource_size_featureType_scale_nightMode_withWidthPaddingMultiple___block_invoke;
  v18[3] = &unk_1E76C7198;
  v18[4] = self;
  v19 = sourceCopy;
  sizeCopy = size;
  typeCopy = type;
  modeCopy = mode;
  scaleCopy = scale;
  multipleCopy = multiple;
  v15 = sourceCopy;
  v16 = [(MKTransitArtworkManager *)self _createImageWithBlockInAutoreleasePoolIfNeeded:v18];

  return v16;
}

id __119__MKTransitArtworkManager_transitArtworkImageWithDataSource_size_featureType_scale_nightMode_withWidthPaddingMultiple___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageWithDataSource:*(a1 + 40) size:*(a1 + 48) featureType:*(a1 + 56) scale:*(a1 + 80) nightMode:0 withWidthPaddingMultiple:*(a1 + 64) fullBleedColor:*(a1 + 72)];
  v3 = [*(a1 + 32) _imageFroMVKImage:v2];

  return v3;
}

- (id)transitArtworkImageWithShieldDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode
{
  sourceCopy = source;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__MKTransitArtworkManager_transitArtworkImageWithShieldDataSource_size_featureType_scale_nightMode___block_invoke;
  v16[3] = &unk_1E76C7170;
  v16[4] = self;
  v17 = sourceCopy;
  sizeCopy = size;
  typeCopy = type;
  scaleCopy = scale;
  modeCopy = mode;
  v13 = sourceCopy;
  v14 = [(MKTransitArtworkManager *)self _createImageWithBlockInAutoreleasePoolIfNeeded:v16];

  return v14;
}

id __100__MKTransitArtworkManager_transitArtworkImageWithShieldDataSource_size_featureType_scale_nightMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _vkImageWithShieldDataSource:*(a1 + 40) size:*(a1 + 48) featureType:*(a1 + 56) scale:*(a1 + 72) nightMode:*(a1 + 64) widthPaddingMultiple:1.0];
  v3 = [*(a1 + 32) _imageFroMVKImage:v2];

  return v3;
}

- (id)_vkImageWithShieldDataSource:(id)source size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode widthPaddingMultiple:(double)multiple
{
  modeCopy = mode;
  sourceCopy = source;
  v13 = objc_alloc_init(MEMORY[0x1E69DF438]);
  shieldText = [sourceCopy shieldText];
  [v13 setText:shieldText];

  shieldColorString = [sourceCopy shieldColorString];
  VKShieldColorsFromHexString();
  [v13 setTransitLineColor:?];

  if (modeCopy)
  {
    iconManager = [(MKTransitArtworkManager *)self iconManager];
    [v13 setVariant:{objc_msgSend(iconManager, "darkVariant")}];
  }

  v17 = +[MKSystemController sharedInstance];
  [v13 setNewInterfaceEnabled:{objc_msgSend(v17, "isGlassEnabled")}];

  iconManager2 = [(MKTransitArtworkManager *)self iconManager];
  shieldType = [sourceCopy shieldType];
  shieldText2 = [sourceCopy shieldText];
  *&v21 = scale;
  v22 = [iconManager2 imageForDataID:shieldType text:shieldText2 contentScale:size sizeGroup:v13 modifiers:v21];

  return v22;
}

- (BOOL)_isMemoryConstrained
{
  iconManager = [(MKTransitArtworkManager *)self iconManager];
  if (iconManager)
  {
    iconManager2 = [(MKTransitArtworkManager *)self iconManager];
    v5 = [iconManager2 isCachingAtlases] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)purge
{
  iconManager = [(MKTransitArtworkManager *)self iconManager];
  [iconManager purge];
}

- (MKTransitArtworkManager)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MKTransitArtworkManager;
  v6 = [(MKTransitArtworkManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconManager, manager);
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