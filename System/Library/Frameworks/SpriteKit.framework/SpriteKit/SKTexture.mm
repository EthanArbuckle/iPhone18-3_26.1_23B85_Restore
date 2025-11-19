@interface SKTexture
+ (SKTexture)textureNoiseWithSmoothness:(CGFloat)smoothness size:(CGSize)size grayscale:(BOOL)grayscale;
+ (SKTexture)textureVectorNoiseWithSmoothness:(CGFloat)smoothness size:(CGSize)size;
+ (SKTexture)textureWithCGImage:(CGImage *)a3 pointSize:(CGSize)a4;
+ (SKTexture)textureWithData:(NSData *)pixelData size:(CGSize)size;
+ (SKTexture)textureWithData:(NSData *)pixelData size:(CGSize)size flipped:(BOOL)flipped;
+ (SKTexture)textureWithData:(NSData *)pixelData size:(CGSize)size rowLength:(unsigned int)rowLength alignment:(unsigned int)alignment;
+ (SKTexture)textureWithIOSurfaceID:(unsigned int)a3 width:(unsigned int)a4 height:(unsigned int)a5 format:(unsigned int)a6;
+ (SKTexture)textureWithImage:(UIImage *)image;
+ (SKTexture)textureWithImageNamed:(NSString *)name;
+ (SKTexture)textureWithImageNamed:(id)a3 rect:(CGRect)a4;
+ (SKTexture)textureWithImagePath:(id)a3;
+ (SKTexture)textureWithMetalTexture:(id)a3;
+ (SKTexture)textureWithRect:(CGRect)rect inTexture:(SKTexture *)texture;
+ (id)_cachedTextureNames;
+ (id)_textureByTransferingData:(char *)a3 size:(CGSize)a4;
+ (id)_textureByTransferingData:(char *)a3 size:(CGSize)a4 rowLength:(unsigned int)a5 alignment:(unsigned int)a6;
+ (id)_textureWithGLTextureId:(unsigned int)a3 size:(CGSize)a4;
+ (id)_textureWithImageNamed:(id)a3;
+ (id)compressedTextureWithData:(id)a3;
+ (id)compressedTextureWithData:(id)a3 size:(CGSize)a4 bitsPerPixel:(unsigned int)a5 hasAlpha:(BOOL)a6;
+ (id)lookupTextureCacheForName:(id)a3;
+ (id)preloadQueue;
+ (void)_reloadTextureCacheForImageNamed:(id)a3;
+ (void)preloadTextures:(NSArray *)textures withCompletionHandler:(void *)completionHandler;
- (BOOL)isEqualToTexture:(id)a3;
- (BOOL)loadImageDataFromPVRData:(id)a3;
- (BOOL)loadImageDataFromPVRGZData:(id)a3;
- (CGImage)_newTextureFromGLCache;
- (CGPoint)cropOffset;
- (CGPoint)cropScale;
- (CGRect)textureRect;
- (CGSize)alphaMapSize;
- (CGSize)pixelSize;
- (CGSize)size;
- (SKTexture)init;
- (SKTexture)initWithBackingTetxure:(shared_ptr<jet_texture>)a3;
- (SKTexture)initWithBackingTetxure:(shared_ptr<jet_texture>)a3 logicalWidth:(float)a4 height:(float)a5;
- (SKTexture)initWithCoder:(id)a3;
- (SKTexture)initWithImageNamed:(id)a3;
- (SKTexture)initWithImagePath:(id)a3;
- (SKTexture)textureByApplyingCIFilter:(CIFilter *)filter;
- (SKTextureFilteringMode)filteringMode;
- (id)_copyImageData;
- (id)_generateNormalMap:(double)a3 contrast:(double)a4 multiPass:(unint64_t)a5;
- (id)_initWithGLTextureId:(unsigned int)a3 size:(CGSize)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)metalTexture;
- (int)_convert_jet_texture_format_to_ci_format:(unsigned int)a3;
- (int)glTextureId;
- (int)wrapMode;
- (shared_ptr<jet_texture>)_backingTexture;
- (void)_ensureImageData;
- (void)_savePngFromGLCache:(id)a3;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initTextureCacheWithImageData;
- (void)loadImageData;
- (void)loadImageDataFromCGImage:(CGImage *)a3 pointsSize:(CGSize)a4;
- (void)preloadWithCompletionHandler:(void *)completionHandler;
- (void)setFilteringMode:(SKTextureFilteringMode)filteringMode;
- (void)setTextureDimension:(const CGSize *)a3 withPixelSize:(const CGSize *)a4;
- (void)setWrapMode:(int)a3;
@end

@implementation SKTexture

+ (id)lookupTextureCacheForName:(id)a3
{
  v3 = [_textureTable objectForKey:a3];

  return v3;
}

- (void)commonInit
{
  originalAtlasName = self->_originalAtlasName;
  self->_originalAtlasName = 0;

  subTextureName = self->_subTextureName;
  self->_subTextureName = 0;

  imgName = self->_imgName;
  self->_imgName = 0;

  searchPaths = self->_searchPaths;
  self->_searchPaths = 0;

  if ([SKTexture commonInit]::_queueInit != -1)
  {
    [SKTexture commonInit];
  }

  v7 = objc_opt_new();
  textureCache = self->_textureCache;
  self->_textureCache = v7;

  *&self->_disableAlpha = 0;
  *&self->_shouldGenerateMipmaps = 0;
  self->_isData = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *v18 = _Q0;
  self->_cropScale = _Q0;
  self->_cropOffset.x = 0.0;
  self->_cropOffset.y = 0.0;
  *&self->_alignment = 1;
  filter = self->_filter;
  self->_filter = 0;

  originalTexture = self->_originalTexture;
  self->_originalTexture = 0;

  self->_textureTarget = 3553;
  self->_textRect.origin.x = 0.0;
  self->_textRect.origin.y = 0.0;
  self->_textRect.size = *v18;
  v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v16 = dispatch_queue_create("com.apple.spritekit.textureSync", v19);
  textureSyncQueue = self->_textureSyncQueue;
  self->_textureSyncQueue = v16;
}

void __23__SKTexture_commonInit__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.spritekit.textureOp", 0);
  v1 = _textureOpQueue;
  _textureOpQueue = v0;

  v2 = [SKThreadSafeMapTable alloc];
  v5 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v3 = [(SKThreadSafeMapTable *)v2 initWithNSMapTable:?];
  v4 = _textureTable;
  _textureTable = v3;
}

- (void)setTextureDimension:(const CGSize *)a3 withPixelSize:(const CGSize *)a4
{
  textureSyncQueue = self->_textureSyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SKTexture_setTextureDimension_withPixelSize___block_invoke;
  block[3] = &unk_278310050;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(textureSyncQueue, block);
}

uint64_t __47__SKTexture_setTextureDimension_withPixelSize___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 184) setSize:{**(a1 + 40), *(*(a1 + 40) + 8)}];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(*(a1 + 32) + 184);

  return [v5 setPixelSize:{v3, v4}];
}

- (BOOL)loadImageDataFromPVRGZData:(id)a3
{
  v4 = [a3 gzipInflate];
  LOBYTE(self) = [(SKTexture *)self loadImageDataFromPVRData:v4];

  return self;
}

- (BOOL)loadImageDataFromPVRData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = v5;
  if (*(v5 + 44) == 559044176)
  {
    v7 = *(v5 + 20);
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
    memcpy(v8, ([v4 bytes] + 52), v7);
    v9 = *(v6 + 4);
    v10 = v9.u32[1];
    v11 = v9.i32[0];
    v13 = 0;
    if (v9.i32[1])
    {
      v12 = vceqz_s32(vand_s8(v9, vadd_s32(v9, -1)));
      if (v12.i8[4] & 1) != 0 && v11 && (v12.i8[0])
      {
        v13 = 1;
      }
    }

    [(SKTextureCache *)self->_textureCache setIsPOT:v13];
    [(SKTextureCache *)self->_textureCache setHasAlpha:*(v6 + 40) != 0];
    [(SKTextureCache *)self->_textureCache setPixelSize:v10, v11];
    v16 = [(NSString *)self->_imgName lowercaseString];
    v17 = [v16 rangeOfString:@"@2x"];

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v10;
    }

    else
    {
      v18 = v10 * 0.5;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v11;
    }

    else
    {
      v19 = v11 * 0.5;
    }

    [(SKTextureCache *)self->_textureCache setSize:v18, v19, v11 * 0.5];
    self->_isData = 1;
    [(SKTextureCache *)self->_textureCache setState:1];
    v20 = *(v6 + 16);
    if (v20 > 0x11)
    {
      if (v20 == 18)
      {
LABEL_28:
        [(SKTextureCache *)self->_textureCache setPixelData:v8];
        v15 = 1;
        goto LABEL_29;
      }

      if (v20 == 19)
      {
        [(SKTextureCache *)self->_textureCache setTextureFormat:3];
        v21 = malloc_type_malloc(4 * v11 * v10, 0x100004077774924uLL);
        jet_convert_pixel_data_rgb_565_to_rgba_8888(v8, v21);
        goto LABEL_27;
      }
    }

    else
    {
      if (v20 == 16)
      {
        [(SKTextureCache *)self->_textureCache setTextureFormat:3];
        v21 = malloc_type_malloc(4 * v11 * v10, 0x100004077774924uLL);
        jet_convert_pixel_data_rgba_4444_to_rgba_8888(v8, v21);
        goto LABEL_27;
      }

      if (v20 == 17)
      {
        [(SKTextureCache *)self->_textureCache setTextureFormat:3];
        v21 = malloc_type_malloc(4 * v11 * v10, 0x100004077774924uLL);
        jet_convert_pixel_data_rgba_5551_to_rgba_8888(v8, v21);
LABEL_27:
        free(v8);
        v8 = v21;
        goto LABEL_28;
      }
    }

    free(v8);
    if (self->_imgName)
    {
      goto LABEL_8;
    }
  }

  else if (self->_imgName)
  {
LABEL_8:
    v14 = [objc_opt_class() description];
    NSLog(&cfstr_ErrorLoadingPv.isa, v14, self->_imgName);
  }

  v15 = 0;
LABEL_29:

  return v15;
}

- (void)loadImageDataFromCGImage:(CGImage *)a3 pointsSize:(CGSize)a4
{
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    AlphaInfo = CGImageGetAlphaInfo(a3);
    v9 = CGImageGetWidth(a3);
    v10 = CGImageGetHeight(a3);
    v12 = v10;
    v13 = v9 * v10;
    if ((v13 & 0xFFFFFFFF00000000) != 0)
    {
      [SKTexture loadImageDataFromCGImage:pointsSize:];
    }

    v15 = 0;
    if (v9)
    {
      if ((v9 & (v9 - 1)) == 0)
      {
        if (v10)
        {
          v11.i32[0] = v10;
          v14 = vcnt_s8(v11);
          v14.i16[0] = vaddlv_u8(v14);
          if (v14.i32[0] < 2u)
          {
            v15 = 1;
          }
        }
      }
    }

    [(SKTextureCache *)self->_textureCache setIsPOT:v15];
    if (SKGetShouldUseExtendedRangeColor() && (ColorSpace = CGImageGetColorSpace(a3), SKColorSpaceIsWideGamut(ColorSpace)))
    {
      v17 = malloc_type_malloc(16 * v13, 0x100004077774924uLL);
      DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
      v19 = CGBitmapContextCreate(v17, v9, v12, 0x20uLL, 16 * (v9 & 0xFFFFFFF), DeviceRGB, 0x2101u);
      v20 = 1;
    }

    else
    {
      v17 = malloc_type_malloc(4 * v13, 0x100004077774924uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v19 = CGBitmapContextCreate(v17, v9, v12, 8uLL, 4 * (v9 & 0x3FFFFFFF), DeviceRGB, 0x4001u);
      v20 = 0;
    }

    CGColorSpaceRelease(DeviceRGB);
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = v9;
    v30.size.height = v12;
    CGContextClearRect(v19, v30);
    CGContextTranslateCTM(v19, 0.0, v12);
    CGContextScaleCTM(v19, 1.0, -1.0);
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = v9;
    v31.size.height = v12;
    CGContextDrawImage(v19, v31, a3);
    [(SKTextureCache *)self->_textureCache setHasAlpha:(AlphaInfo > kCGImageAlphaNoneSkipFirst) | (0x1Eu >> AlphaInfo) & 1];
    CGContextRelease(v19);
    [(SKTextureCache *)self->_textureCache setPixelSize:v9, v12];
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [(SKTextureCache *)self->_textureCache pixelSize];
      width = v21;
      height = v22;
    }

    if (v20)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __49__SKTexture_loadImageDataFromCGImage_pointsSize___block_invoke;
      v25[3] = &unk_278310078;
      v25[4] = &v26;
      SKCPerformResourceOperation(v25);
      v23 = 8 * (v12 * v9);
      if (*(v27 + 24) == 1)
      {
        v24 = malloc_type_malloc(v23, 0xA04384C1uLL);
        jet_convert_pixel_data_rgba_fp32_to_argb64_xr10_srgb(v17, v24);
        free(v17);
        [(SKTextureCache *)self->_textureCache setTextureFormat:7];
      }

      else
      {
        v24 = malloc_type_malloc(v23, 0x6C372441uLL);
        jet_convert_pixel_data_rgba_fp32_to_rgba_fp16(v17, v24);
        free(v17);
        [(SKTextureCache *)self->_textureCache setTextureFormat:10];
      }

      _Block_object_dispose(&v26, 8);
      v17 = v24;
    }

    else
    {
      [(SKTextureCache *)self->_textureCache setTextureFormat:3];
    }

    [(SKTextureCache *)self->_textureCache setSize:width, height];
    [(SKTextureCache *)self->_textureCache setPixelData:v17];
    [(SKTextureCache *)self->_textureCache setState:1];
  }
}

void __49__SKTexture_loadImageDataFromCGImage_pointsSize___block_invoke(uint64_t a1, void *a2)
{
  if ((*(**a2 + 136))() == 1)
  {
    v4 = *a2;
    if (*a2 && (v4 = __dynamic_cast(v4, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0)) != 0)
    {
      v5 = a2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = (*(*v4 + 360))(v4);
    v7 = v6;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      v6 = v7;
    }

    *(*(*(a1 + 32) + 8) + 24) = SKDeviceSupportsExtendedXR10Formats(v6);
  }
}

- (void)preloadWithCompletionHandler:(void *)completionHandler
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  v6[0] = self;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [SKTexture preloadTextures:v5 withCompletionHandler:v4];
}

+ (id)preloadQueue
{
  if (+[SKTexture preloadQueue]::onceToken != -1)
  {
    +[SKTexture preloadQueue];
  }

  v3 = +[SKTexture preloadQueue]::preloadQueue;

  return v3;
}

void __25__SKTexture_preloadQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.spritekit.preloadQueue", MEMORY[0x277D85CD8]);
  v1 = +[SKTexture preloadQueue]::preloadQueue;
  +[SKTexture preloadQueue]::preloadQueue = v0;
}

+ (void)preloadTextures:(NSArray *)textures withCompletionHandler:(void *)completionHandler
{
  v6 = textures;
  v23 = completionHandler;
  v7 = [(NSArray *)v6 count];
  v8 = dispatch_group_create();
  v9 = [a1 preloadQueue];
  if (v7)
  {
    v10 = 0;
    HIDWORD(v11) = -858993459 * v7;
    LODWORD(v11) = -858993459 * v7;
    v12 = 19;
    if ((v11 >> 2) >= 0xCCCCCCD)
    {
      v13 = 19;
    }

    else
    {
      v13 = 20;
    }

    v14 = v7 / v13;
    if (v14 <= 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    v16 = v7;
    do
    {
      v17 = v12;
      if (v16 != v10)
      {
        if (v7 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v7;
        }

        v19 = [(NSArray *)v6 subarrayWithRange:v10, v18];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__SKTexture_preloadTextures_withCompletionHandler___block_invoke;
        block[3] = &unk_2783100A0;
        v27 = v19;
        v20 = v19;
        dispatch_group_async(v8, v9, block);
      }

      v21 = v7 >= v15;
      v7 -= v15;
      if (!v21)
      {
        break;
      }

      v12 = v17 - 1;
      v10 += v15;
    }

    while (v17);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __51__SKTexture_preloadTextures_withCompletionHandler___block_invoke_2;
  v24[3] = &unk_2783100C8;
  v25 = v23;
  v22 = v23;
  dispatch_group_notify(v8, v9, v24);
}

void __51__SKTexture_preloadTextures_withCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v6 + 1) + 8 * v4);
        if (![v5[23] state])
        {
          [v5 loadImageData];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v2);
  }
}

- (void)initTextureCacheWithImageData
{
  v3 = [SKTexture lookupTextureCacheForName:self->_imgName];
  if (v3 || ([(NSString *)self->_imgName stringByDeletingPathExtension], v4 = objc_claimAutoreleasedReturnValue(), [SKTexture lookupTextureCacheForName:v4], v3 = objc_claimAutoreleasedReturnValue(), v4, v3))
  {
    textureCache = self->_textureCache;
    self->_textureCache = v3;
    v6 = v3;
  }
}

- (void)loadImageData
{
  if (self->_imgName)
  {
    [(SKTexture *)self initTextureCacheWithImageData];
    if ([(SKTextureCache *)self->_textureCache state]!= 1)
    {
      v3 = [SKTextureAtlas lookupCachedTextureNamed:self->_imgName];
      v4 = v3;
      if (v3)
      {
        [v3 _ensureImageData];
        objc_storeStrong(&self->_textureCache, *(v4 + 23));
        v5 = [*(v4 + 2) copy];
        imgName = self->_imgName;
        self->_imgName = v5;

        v7 = *(v4 + 3);
        self->_textRect.origin = *(v4 + 2);
        self->_textRect.size = v7;
        self->_isPath = v4[11];
        self->_disableAlpha = v4[96];
        objc_storeStrong(&self->_subTextureName, *(v4 + 22));
        objc_storeStrong(&self->_originalAtlasName, *(v4 + 21));
        self->_needsExtrusionWorkaround = v4[10];
        self->_cropOffset = *(v4 + 120);
        self->_isRotated = v4[97];
        self->_isFlipped = v4[98];
        self->_cropScale = *(v4 + 104);
      }

      else
      {
        textureSyncQueue = self->_textureSyncQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __26__SKTexture_loadImageData__block_invoke;
        block[3] = &unk_2783100A0;
        block[4] = self;
        dispatch_sync(textureSyncQueue, block);
      }
    }
  }
}

void __26__SKTexture_loadImageData__block_invoke(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 184) state] != 1)
  {
    v2 = *MEMORY[0x277CBF3A8];
    v3 = *(MEMORY[0x277CBF3A8] + 8);
    v4 = *(a1 + 32);
    if (*(v4 + 24))
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v5 = *(v4 + 24);
      v6 = [v5 countByEnumeratingWithState:&v100 objects:v104 count:16];
      if (v6)
      {
        v7 = *v101;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v101 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v100 + 1) + 8 * i);
            v10 = [*(*(a1 + 32) + 16) lastPathComponent];
            v11 = [v9 stringByAppendingPathComponent:v10];

            v12 = [v11 pathExtension];
            v13 = [v12 length] == 0;

            if (v13)
            {
              v14 = [v11 stringByAppendingPathExtension:@"png"];

              v11 = v14;
            }

            v15 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v11];
            v16 = v15;
            if (v15)
            {
              v18 = v15;
              v17 = [v16 CGImage];
              [v16 size];
              v2 = v19;
              v3 = v20;

              goto LABEL_15;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v100 objects:v104 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_15:
    }

    else
    {
      v17 = 0;
    }

    v21 = MEMORY[0x277D02670];
    v22 = SKGetResourceBundle();
    v23 = [v21 defaultUICatalogForBundle:v22];

    v24 = [MEMORY[0x277D759A0] mainScreen];
    [v24 scale];
    v26 = v25;

    v27 = [MEMORY[0x277D75418] currentDevice];
    v28 = [v27 userInterfaceIdiom];

    v29 = [v23 imageWithName:*(*(a1 + 32) + 16) scaleFactor:__deviceClassForInterfaceIdiom(v28) deviceIdiom:v26];
    v30 = [v23 parentNamedImageAtlastForImageNamed:*(*(a1 + 32) + 16) scaleFactor:v26];
    if (v30)
    {
      v31 = [SKTextureAtlas atlasNamed:v30];
      v32 = [v31 textureNamed:*(*(a1 + 32) + 16)];
      v33 = v32;
      if (v32)
      {
        objc_storeStrong((*(a1 + 32) + 184), *(v32 + 184));
        v34 = [*(v33 + 16) copy];
        v36 = *(a1 + 32);
        v35 = (a1 + 32);
        v37 = *(v36 + 16);
        *(v36 + 16) = v34;

        v38 = *v35;
        v39 = *(v33 + 48);
        *(v38 + 32) = *(v33 + 32);
        *(v38 + 48) = v39;
        *(*v35 + 11) = *(v33 + 11);
        *(*v35 + 96) = *(v33 + 96);
        objc_storeStrong((*v35 + 176), *(v33 + 176));
        objc_storeStrong((*v35 + 168), *(v33 + 168));
        objc_storeStrong((*v35 + 152), *(v33 + 152));
        *(*v35 + 120) = *(v33 + 120);
        *(*v35 + 97) = *(v33 + 97);
        *(*v35 + 98) = *(v33 + 98);
        *(*v35 + 104) = *(v33 + 104);
        objc_storeStrong((*v35 + 208), *(v33 + 208));

LABEL_33:
LABEL_34:

        return;
      }
    }

    if ([v29 image])
    {
      if ([v29 isAlphaCropped])
      {
        [v29 size];
        v97 = v40;
        [v29 scale];
        v42 = v41;
        [v29 size];
        v44 = v43;
        [v29 scale];
        v46 = v45;
        [v29 alphaCroppedRect];
        v48 = v47;
        [v29 alphaCroppedRect];
        v50 = v49;
        [v29 alphaCroppedRect];
        v52 = v51;
        [v29 alphaCroppedRect];
        v54 = v53;
        [v29 alphaCroppedRect];
        v55 = v97 * v42;
        v56 = v44 * v46;
        v58 = +[SKTextureAtlas createCGImageFromCUINamedImage:withSize:atRect:](SKTextureAtlas, "createCGImageFromCUINamedImage:withSize:atRect:", [v29 image], v55, v56, v48, v56 - (v50 + v52), v54, v57);
        [v29 scale];
        v60 = v59;
        [v29 scale];
        v2 = v55 / v60;
        v3 = v56 / v61;
        [*(a1 + 32) loadImageDataFromCGImage:v58 pointsSize:{v2, v3}];
        CGImageRelease(v58);
      }

      else
      {
        v17 = [v29 image];
        [v29 size];
        v2 = v68;
        v3 = v69;
      }

      goto LABEL_28;
    }

    if (v17)
    {
LABEL_28:
      v70 = 0;
LABEL_29:
      [*(a1 + 32) loadImageDataFromCGImage:v17 pointsSize:{v2, v3}];
      v71 = *(a1 + 32);
      if (!v71[26])
      {
        [SKTexture registerTextureCache:v71[23] forName:v71[2]];
      }

      if (!v70)
      {
        goto LABEL_34;
      }

      v31 = [objc_opt_class() description];
      NSLog(&cfstr_ErrorLoadingIm.isa, v31, *(*(a1 + 32) + 16));
      goto LABEL_33;
    }

    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __26__SKTexture_loadImageData__block_invoke_3;
    v98[3] = &unk_278310110;
    v98[4] = *(a1 + 32);
    v99 = &__block_literal_global_103;
    v62 = MEMORY[0x21CF0AB10](v98);
    v63 = MEMORY[0x277D755B8];
    v64 = *(*(a1 + 32) + 16);
    if (*(*(a1 + 32) + 11) == 1)
    {
      v65 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v64];
      v66 = MEMORY[0x277CBF3A8];
      v67 = v65;
    }

    else
    {
      v72 = SKGetResourceBundle();
      v67 = [v63 imageNamed:v64 inBundle:v72];

      v66 = MEMORY[0x277CBF3A8];
    }

    if (v67)
    {
      [v67 size];
      v70 = 0;
      if (v74 != *v66 || v73 != v66[1])
      {
        goto LABEL_58;
      }
    }

    if (v62[2](v62))
    {
      v75 = 0;
      v17 = 0;
      v70 = 0;
      goto LABEL_60;
    }

    v76 = [*(*(a1 + 32) + 16) hasSuffix:@".pvr"];
    if ((v76 & 1) != 0 || (v76 = [*(*(a1 + 32) + 16) hasSuffix:@".pvrtc"], v76))
    {
      v67 = __26__SKTexture_loadImageData__block_invoke_2(v76, *(*(a1 + 32) + 16));
      if (v67)
      {
        [*(a1 + 32) loadImageDataFromPVRData:v67];
LABEL_56:
        v75 = 0;
        v17 = 0;
        v70 = 0;
LABEL_59:

LABEL_60:
        if ((v75 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      goto LABEL_54;
    }

    if ([*(*(a1 + 32) + 16) rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v67 = *(*(a1 + 32) + 16);
      v77 = SKGetResourceBundle();
      v78 = [v77 pathForResource:v67 ofType:@"pvr"];

      v79 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v78];
      if (v79)
      {
        [*(a1 + 32) loadImageDataFromPVRData:v79];
LABEL_52:

        goto LABEL_56;
      }

      v80 = SKGetResourceBundle();
      v81 = [v80 pathForResource:v67 ofType:@"pvrtc"];

      v82 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v81];
      if (v82)
      {
        v78 = v81;
        v79 = v82;
        [*(a1 + 32) loadImageDataFromPVRData:?];
        goto LABEL_52;
      }
    }

LABEL_54:
    v83 = [SKTextureAtlas findTextureNamed:*(*(a1 + 32) + 16)];
    v67 = v83;
    if (v83)
    {
      objc_storeStrong((*(a1 + 32) + 184), *(v83 + 184));
      v84 = [*(v67 + 2) copy];
      v86 = a1 + 32;
      v85 = *(a1 + 32);
      v87 = *(v85 + 16);
      *(v85 + 16) = v84;

      v88 = *(a1 + 32);
      v89 = *(v67 + 3);
      *(v88 + 32) = *(v67 + 2);
      *(v88 + 48) = v89;
      *(*v86 + 11) = v67[11];
      *(*v86 + 96) = v67[96];
      objc_storeStrong((*(a1 + 32) + 176), *(v67 + 22));
      objc_storeStrong((*(a1 + 32) + 168), *(v67 + 21));
      objc_storeStrong((*(a1 + 32) + 152), *(v67 + 19));
      *(*v86 + 120) = *(v67 + 120);
      *(*v86 + 97) = v67[97];
      *(*v86 + 98) = v67[98];
      *(*v86 + 104) = *(v67 + 104);
      objc_storeStrong((*(a1 + 32) + 208), *(v67 + 26));
      goto LABEL_56;
    }

    v90 = MEMORY[0x277D755B8];
    v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v92 = [v91 pathForResource:@"MissingResource.png" ofType:0];
    v93 = [v90 imageWithContentsOfFile:v92];

    v70 = 1;
    v67 = v93;
LABEL_58:
    v94 = v67;
    v17 = [v67 CGImage];
    [v67 size];
    v2 = v95;
    v3 = v96;
    v75 = 1;
    goto LABEL_59;
  }
}

id __26__SKTexture_loadImageData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 stringByDeletingPathExtension];
    v7 = [v2 pathExtension];
    v8 = SKGetResourceBundle();
    v9 = [v8 pathForResource:v6 ofType:v7];

    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
  }

  return v5;
}

uint64_t __26__SKTexture_loadImageData__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) lowercaseString];
  v3 = [v2 hasSuffix:@".pvr.gz"];

  if (v3)
  {
    v4 = (*(*(a1 + 40) + 16))();
    if (v4)
    {
      v5 = v4;
      [*(a1 + 32) loadImageDataFromPVRGZData:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [*(*(a1 + 32) + 16) pathExtension];
    v7 = [v6 length];

    if (!v7)
    {
      v5 = [*(*(a1 + 32) + 16) stringByAppendingPathExtension:@"pvr.gz"];
      v9 = (*(*(a1 + 40) + 16))();
      if (!v9)
      {
        v8 = 0;
        goto LABEL_9;
      }

      [*(a1 + 32) loadImageDataFromPVRGZData:v9];

LABEL_8:
      v8 = 1;
LABEL_9:

      return v8;
    }
  }

  return 0;
}

- (SKTexture)initWithImageNamed:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SKTexture;
  v5 = [(SKTexture *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(SKTexture *)v5 commonInit];
    v7 = [v4 copy];
    imgName = v6->_imgName;
    v6->_imgName = v7;

    v9 = v6->_imgName;
    if (v9)
    {
      v10 = [(NSString *)v9 length];
      v11 = v6->_imgName;
      if (!v10)
      {
        v6->_imgName = @"MissingResource.png";

        v12 = [SKTexture _textureWithImageNamed:v6->_imgName];
        goto LABEL_7;
      }

      if ([(NSString *)v11 isAbsolutePath])
      {
        v6->_isPath = 1;
      }
    }
  }

  v12 = v6;
LABEL_7:
  v13 = v12;

  return v13;
}

- (SKTexture)init
{
  v5.receiver = self;
  v5.super_class = SKTexture;
  v2 = [(SKTexture *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKTexture *)v2 commonInit];
  }

  return v3;
}

- (SKTexture)initWithImagePath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SKTexture;
  v5 = [(SKTexture *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(SKTexture *)v5 commonInit];
    v6->_isPath = 1;
    v7 = [v4 copy];
    imgName = v6->_imgName;
    v6->_imgName = v7;
  }

  return v6;
}

- (SKTexture)initWithCoder:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = SKTexture;
  v5 = [(SKTexture *)&v54 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  [(SKTexture *)v5 commonInit];
  *(v6 + 12) = [v4 decodeBoolForKey:@"_isData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    v8 = [v7 searchPaths];
    v9 = *(v6 + 24);
    *(v6 + 24) = v8;
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalAtlasName"];
  v11 = *(v6 + 168);
  *(v6 + 168) = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_subTextureName"];
  v13 = *(v6 + 176);
  *(v6 + 176) = v12;

  if (*(v6 + 168) && *(v6 + 176))
  {
    if (![v4 decodeBoolForKey:@"_isCapture"])
    {
      v28 = [SKTextureAtlas atlasNamed:*(v6 + 168)];
      v53 = [v28 textureNamed:*(v6 + 176)];

      v6 = v53;
      goto LABEL_10;
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalTexture"];
    v15 = *(v6 + 152);
    *(v6 + 152) = v14;

    v16 = [*(v6 + 152) _textureCache];
    v17 = *(v6 + 184);
    *(v6 + 184) = v16;

    *(v6 + 11) = [v4 decodeBoolForKey:@"_isPath"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imgName"];
    v19 = *(v6 + 16);
    *(v6 + 16) = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_textRect"];
    [v20 CGRectValue];
    *(v6 + 32) = v21;
    *(v6 + 40) = v22;
    *(v6 + 48) = v23;
    *(v6 + 56) = v24;

    *(v6 + 97) = [v4 decodeBoolForKey:@"_isRotated"];
    *(v6 + 98) = [v4 decodeBoolForKey:@"_isFlipped"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cropOffset"];
    [v25 CGPointValue];
    *(v6 + 120) = v26;
    *(v6 + 128) = v27;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cropScale"];
    [v28 CGPointValue];
  }

  else
  {
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pixelSize"];
    [v31 CGSizeValue];
    [*(v6 + 184) setPixelSize:?];

    *(v6 + 11) = [v4 decodeBoolForKey:@"_isPath"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imgName"];
    v33 = *(v6 + 16);
    *(v6 + 16) = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_textRect"];
    [v34 CGRectValue];
    *(v6 + 32) = v35;
    *(v6 + 40) = v36;
    *(v6 + 48) = v37;
    *(v6 + 56) = v38;

    *(v6 + 97) = [v4 decodeBoolForKey:@"_isRotated"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cropOffset"];
    [v39 CGPointValue];
    *(v6 + 120) = v40;
    *(v6 + 128) = v41;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cropScale"];
    [v28 CGPointValue];
  }

  *(v6 + 104) = v29;
  *(v6 + 112) = v30;
LABEL_10:

  if (*(v6 + 12) == 1)
  {
    [*(v6 + 184) setState:1];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pixelSize"];
    [v42 CGSizeValue];
    [*(v6 + 184) setPixelSize:?];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_size"];
    [v43 CGSizeValue];
    [*(v6 + 184) setSize:?];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_textRect"];
    [v44 CGRectValue];
    *(v6 + 32) = v45;
    *(v6 + 40) = v46;
    *(v6 + 48) = v47;
    *(v6 + 56) = v48;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v50 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v49];
    v51 = [v50 CGImage];
    [*(v6 + 184) size];
    [v6 loadImageDataFromCGImage:v51 pointsSize:?];
  }

  *(v6 + 96) = [v4 decodeBoolForKey:@"_disableAlpha"];
  [v6 setFilteringMode:{objc_msgSend(v4, "decodeIntForKey:", @"_filteringMode"}];
LABEL_13:

  return v6;
}

- (BOOL)isEqualToTexture:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_33;
  }

  if (self->_isPath != v4->_isPath)
  {
    goto LABEL_20;
  }

  if (self->_performFullCapture != v4->_performFullCapture)
  {
    goto LABEL_20;
  }

  if (self->_disableAlpha != v4->_disableAlpha)
  {
    goto LABEL_20;
  }

  if (self->_isRotated != v4->_isRotated)
  {
    goto LABEL_20;
  }

  if (self->_isFlipped != v4->_isFlipped)
  {
    goto LABEL_20;
  }

  v6 = [(SKTexture *)self filteringMode];
  if (v6 != [(SKTexture *)v5 filteringMode])
  {
    goto LABEL_20;
  }

  [(SKTextureCache *)self->_textureCache size];
  v8 = v7;
  [(SKTextureCache *)v5->_textureCache size];
  if (v8 != v9)
  {
    goto LABEL_20;
  }

  [(SKTextureCache *)self->_textureCache size];
  v11 = v10;
  [(SKTextureCache *)v5->_textureCache size];
  if (v11 != v12)
  {
    goto LABEL_20;
  }

  [(SKTextureCache *)self->_textureCache pixelSize];
  v14 = v13;
  [(SKTextureCache *)v5->_textureCache pixelSize];
  if (v14 != v15)
  {
    goto LABEL_20;
  }

  [(SKTextureCache *)self->_textureCache pixelSize];
  v17 = v16;
  [(SKTextureCache *)v5->_textureCache pixelSize];
  if (v17 != v18)
  {
    goto LABEL_20;
  }

  if (self->_cropOffset.x != v5->_cropOffset.x)
  {
    goto LABEL_20;
  }

  if (self->_cropOffset.y != v5->_cropOffset.y)
  {
    goto LABEL_20;
  }

  if (self->_cropScale.x != v5->_cropScale.x)
  {
    goto LABEL_20;
  }

  if (self->_cropScale.y != v5->_cropScale.y)
  {
    goto LABEL_20;
  }

  if (self->_textRect.origin.x != v5->_textRect.origin.x)
  {
    goto LABEL_20;
  }

  if (self->_textRect.origin.y != v5->_textRect.origin.y)
  {
    goto LABEL_20;
  }

  if (self->_textRect.size.width != v5->_textRect.size.width)
  {
    goto LABEL_20;
  }

  if (self->_textRect.size.height != v5->_textRect.size.height)
  {
    goto LABEL_20;
  }

  originalAtlasName = self->_originalAtlasName;
  if (originalAtlasName | v5->_originalAtlasName)
  {
    if (![(NSString *)originalAtlasName isEqualToString:?])
    {
      goto LABEL_20;
    }
  }

  subTextureName = self->_subTextureName;
  if (subTextureName | v5->_subTextureName)
  {
    if (![(NSString *)subTextureName isEqualToString:?])
    {
      goto LABEL_20;
    }
  }

  if (![(NSString *)self->_imgName isEqualToString:v5->_imgName])
  {
    goto LABEL_20;
  }

  if ([(SKTexture *)self performFullCapture])
  {
    if (!self->_originalTexture)
    {
      if (self->_isData != v5->_isData)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }

LABEL_33:
    v19 = 1;
    goto LABEL_34;
  }

  if (self->_isData != v5->_isData)
  {
    goto LABEL_20;
  }

  if (!self->_isData)
  {
    goto LABEL_33;
  }

LABEL_32:
  v22 = [(SKTexture *)self _copyImageData];
  v23 = [(SKTexture *)v5 _copyImageData];
  v24 = [v22 isEqual:v23];

  if (v24)
  {
    goto LABEL_33;
  }

LABEL_20:
  v19 = 0;
LABEL_34:

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeObject:self->_originalAtlasName forKey:@"_originalAtlasName"];
  [v13 encodeObject:self->_subTextureName forKey:@"_subTextureName"];
  [v13 encodeBool:self->_isPath forKey:@"_isPath"];
  [v13 encodeBool:-[SKTexture performFullCapture](self forKey:{"performFullCapture"), @"_isCapture"}];
  if ([(SKTexture *)self performFullCapture])
  {
    originalTexture = self->_originalTexture;
    if (originalTexture)
    {
      [v13 encodeObject:originalTexture forKey:@"_originalTexture"];
      goto LABEL_8;
    }

    [v13 encodeBool:1 forKey:@"_isData"];
    v5 = [(SKTexture *)self _copyImageData];
    [v13 encodeObject:v5 forKey:@"_imageData"];
  }

  else
  {
    [v13 encodeBool:self->_isData forKey:@"_isData"];
    if (!self->_isData)
    {
      goto LABEL_8;
    }

    v5 = [(SKTexture *)self _copyImageData];
    [v13 encodeObject:v5 forKey:@"_imageData"];
  }

LABEL_8:
  [v13 encodeObject:self->_imgName forKey:@"_imgName"];
  [v13 encodeBool:self->_disableAlpha forKey:@"_disableAlpha"];
  v6 = MEMORY[0x277CCAE60];
  [(SKTextureCache *)self->_textureCache size];
  v7 = [v6 valueWithCGSize:?];
  [v13 encodeObject:v7 forKey:@"_size"];

  v8 = MEMORY[0x277CCAE60];
  [(SKTextureCache *)self->_textureCache pixelSize];
  v9 = [v8 valueWithCGSize:?];
  [v13 encodeObject:v9 forKey:@"_pixelSize"];

  v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_textRect.origin.x, self->_textRect.origin.y, self->_textRect.size.width, self->_textRect.size.height}];
  [v13 encodeObject:v10 forKey:@"_textRect"];

  v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{self->_cropOffset.x, self->_cropOffset.y}];
  [v13 encodeObject:v11 forKey:@"_cropOffset"];

  v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{self->_cropScale.x, self->_cropScale.y}];
  [v13 encodeObject:v12 forKey:@"_cropScale"];

  [v13 encodeBool:self->_isRotated forKey:@"_isRotated"];
  [v13 encodeBool:self->_isFlipped forKey:@"_isFlipped"];
  [v13 encodeInteger:-[SKTexture filteringMode](self forKey:{"filteringMode"), @"_filteringMode"}];
}

+ (SKTexture)textureWithImageNamed:(NSString *)name
{
  v4 = name;
  v5 = [[a1 alloc] initWithImageNamed:v4];

  return v5;
}

+ (SKTexture)textureWithImageNamed:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [[a1 alloc] initWithImageNamed:v9];
  v10[4] = x;
  v10[5] = y;
  v10[6] = width;
  v10[7] = height;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_imgName copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  size = self->_textRect.size;
  *(v4 + 32) = self->_textRect.origin;
  *(v4 + 48) = size;
  *(v4 + 11) = self->_isPath;
  [*(v4 + 184) setHasAlpha:{-[SKTextureCache hasAlpha](self->_textureCache, "hasAlpha")}];
  *(v4 + 96) = self->_disableAlpha;
  *(v4 + 10) = self->_needsExtrusionWorkaround;
  objc_storeStrong((v4 + 176), self->_subTextureName);
  objc_storeStrong((v4 + 168), self->_originalAtlasName);
  objc_storeStrong((v4 + 184), self->_textureCache);
  *(v4 + 120) = self->_cropOffset;
  *(v4 + 97) = self->_isRotated;
  *(v4 + 98) = self->_isFlipped;
  *(v4 + 104) = self->_cropScale;
  objc_storeStrong((v4 + 208), self->_rootAtlas);
  return v4;
}

+ (SKTexture)textureWithRect:(CGRect)rect inTexture:(SKTexture *)texture
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = texture;
  if (SKGetLinkedOnOrAfter(655360) && (width < 0.0 || height < 0.0))
  {
    v11 = MEMORY[0x277CBEAD8];
    v19.width = width;
    v19.height = height;
    v12 = NSStringFromCGSize(v19);
    [v11 raise:*MEMORY[0x277CBE660] format:{@"Invalid size specified (should be positive): %@", v12}];
  }

  v13 = objc_alloc_init(a1);
  v14 = [(NSString *)v10->_imgName copy];
  v15 = *(v13 + 2);
  *(v13 + 2) = v14;

  objc_storeStrong(v13 + 19, texture);
  objc_storeStrong(v13 + 22, v10->_subTextureName);
  objc_storeStrong(v13 + 21, v10->_originalAtlasName);
  *(v13 + 4) = x;
  *(v13 + 5) = y;
  *(v13 + 6) = width;
  *(v13 + 7) = height;
  *(v13 + 11) = v10->_isPath;
  objc_storeStrong(v13 + 26, v10->_rootAtlas);
  v16 = v10->_textureCache;
  if (v16 || ([SKTexture lookupTextureCacheForName:*(v13 + 2)], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_storeStrong(v13 + 23, v16);
  }

  else
  {
    [*(v13 + 23) setHasAlpha:{-[SKTextureCache hasAlpha](v10->_textureCache, "hasAlpha")}];
    *(v13 + 96) = v10->_disableAlpha;
    [(SKTextureCache *)v10->_textureCache pixelSize];
    [*(v13 + 23) setPixelSize:?];
    [(SKTextureCache *)v10->_textureCache size];
    [*(v13 + 23) setSize:?];
    [*(v13 + 23) setState:{-[SKTextureCache state](v10->_textureCache, "state")}];
    v16 = 0;
  }

  return v13;
}

+ (SKTexture)textureVectorNoiseWithSmoothness:(CGFloat)smoothness size:(CGSize)size
{
  v5 = 0;
  v21 = round(size.width);
  v6 = fmax(v21, 0.0);
  if (v6 != 0.0)
  {
    v7 = round(size.height);
    v8 = fmax(v7, 0.0);
    if (v8 != 0.0)
    {
      v5 = objc_alloc_init(a1);
      [v5[23] setPixelData:{malloc_type_malloc(vcvtd_n_u64_f64(v6 * v8, 2uLL), 0x100004077774924uLL)}];
      v9 = [v5[23] pixelData];
      __exp10(smoothness * -2.0 + 3.0);
      if (v7 > 0.0)
      {
        v10 = 0;
        v11 = 0.0;
        do
        {
          if (v21 > 0.0)
          {
            v12 = 0.0;
            v13 = 1;
            do
            {
              srdnoise3();
              v14 = (v9 + vcvtd_n_s64_f64(v12 + v11 * v6, 2uLL));
              *v14 = (((0.0 * 0.10206) + 0.5) * 255.0);
              v14[1] = (((0.0 * 0.10206) + 0.5) * 255.0);
              v14[2] = (((0.0 * 0.10206) + 0.5) * 255.0);
              v14[3] = (((v15 * 0.5) + 0.5) * 255.0);
              v12 = v13++;
            }

            while (v6 > v12);
          }

          v11 = ++v10;
        }

        while (v8 > v10);
      }

      v16 = v8;
      if (v6)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      v19 = 0;
      if (!v17)
      {
        v18 = vceqz_s32(vand_s8(__PAIR64__(v6, v16), vadd_s32(__PAIR64__(v6, v16), -1)));
        if (v18.i8[4] & 1) != 0 && (v18.i8[0])
        {
          v19 = 1;
        }
      }

      [v5[23] setIsPOT:v19];
      [v5[23] setHasAlpha:1];
      [v5[23] setPixelSize:{v6, v8}];
      [v5[23] setSize:{v6, v8}];
      *(v5 + 12) = 1;
      [v5[23] setState:1];
    }
  }

  return v5;
}

+ (SKTexture)textureNoiseWithSmoothness:(CGFloat)smoothness size:(CGSize)size grayscale:(BOOL)grayscale
{
  v6 = 0;
  v29 = round(size.width);
  v7 = fmax(v29, 0.0);
  if (v7 != 0.0)
  {
    v8 = round(size.height);
    v9 = fmax(v8, 0.0);
    if (v9 != 0.0)
    {
      v6 = objc_alloc_init(a1);
      [v6[23] setPixelData:{malloc_type_malloc(vcvtd_n_u64_f64(v7 * v9, 2uLL), 0x100004077774924uLL)}];
      v11 = [v6[23] pixelData];
      __exp10(smoothness * -2.0 + 3.0);
      if (v8 > 0.0)
      {
        v12 = 0;
        v13 = 0.0;
        v33 = vdupq_n_s32(0x437F0000u);
        v28 = v9;
        do
        {
          if (v29 > 0.0)
          {
            v14 = 0.0;
            v15 = 1;
            do
            {
              snoise2();
              v17.i32[0] = v16;
              if (grayscale)
              {
                v18 = v16;
                v19 = v16;
              }

              else
              {
                v32 = v16;
                snoise2();
                v31 = v20;
                snoise2();
                v30 = v21;
                snoise2();
                v19 = v31;
                v17.i32[0] = v32;
                v18 = v30;
              }

              v17.i32[1] = v19;
              v17.i64[1] = __PAIR64__(v16, v18);
              v22.i64[0] = 0x3F0000003F000000;
              v22.i64[1] = 0x3F0000003F000000;
              *v22.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmlaq_f32(v22, v22, v17), v33)));
              *(v11 + vcvtd_n_s64_f64(v14 + v13 * v7, 2uLL)) = vuzp1_s8(*v22.f32, *v22.f32).u32[0];
              v14 = v15++;
            }

            while (v7 > v14);
          }

          v13 = ++v12;
          v9 = v28;
        }

        while (v28 > v12);
      }

      v23 = v9;
      if (v7)
      {
        v24 = v23 == 0;
      }

      else
      {
        v24 = 1;
      }

      v26 = 0;
      if (!v24)
      {
        v25 = vceqz_s32(vand_s8(__PAIR64__(v7, v23), vadd_s32(__PAIR64__(v7, v23), -1)));
        if (v25.i8[4] & 1) != 0 && (v25.i8[0])
        {
          v26 = 1;
        }
      }

      [v6[23] setIsPOT:v26];
      [v6[23] setHasAlpha:1];
      [v6[23] setPixelSize:{v7, v9}];
      [v6[23] setSize:{v7, v9}];
      *(v6 + 12) = 1;
      [v6[23] setState:1];
    }
  }

  return v6;
}

+ (SKTexture)textureWithCGImage:(CGImage *)a3 pointSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = objc_alloc_init(a1);
  v7[12] = 1;
  [v7 loadImageDataFromCGImage:a3 pointsSize:{width, height}];

  return v7;
}

+ (SKTexture)textureWithImage:(UIImage *)image
{
  v4 = image;
  v5 = [(UIImage *)v4 CGImage];
  [(UIImage *)v4 size];
  v6 = [a1 textureWithCGImage:v5 pointSize:?];

  return v6;
}

+ (SKTexture)textureWithData:(NSData *)pixelData size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = pixelData;
  v6 = 0;
  if (v5 && width > 0.0 && height > 0.0)
  {
    v6 = objc_alloc_init(a1);
    v7.f64[0] = height;
    v7.f64[1] = width;
    v8 = vcvtq_u64_f64(vrndpq_f64(v7));
    *v8.i8 = vmovn_s64(v8);
    v9 = v8.i32[0];
    v16 = v8;
    v10 = v8.i32[1];
    v11 = (4 * v8.i32[0] * v8.i32[1]);
    [v6[23] setPixelData:{malloc_type_malloc(v11, 0x100004077774924uLL)}];
    memcpy([v6[23] pixelData], -[NSData bytes](v5, "bytes"), v11);
    if (v10)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = 0;
    if (!v12)
    {
      v13 = vceqz_s32(vand_s8(*v16.i8, vadd_s32(*v16.i8, -1)));
      if (v13.i8[4] & 1) != 0 && (v13.i8[0])
      {
        v14 = 1;
      }
    }

    [v6[23] setIsPOT:{v14, *&v16}];
    [v6[23] setHasAlpha:1];
    [v6[23] setPixelSize:{width, height}];
    [v6[23] setSize:{width, height}];
    *(v6 + 12) = 1;
    [v6[23] setState:1];
  }

  return v6;
}

+ (SKTexture)textureWithData:(NSData *)pixelData size:(CGSize)size flipped:(BOOL)flipped
{
  height = size.height;
  width = size.width;
  v7 = pixelData;
  v8 = 0;
  if (v7 && width > 0.0 && height > 0.0)
  {
    if (flipped)
    {
      v8 = objc_alloc_init(a1);
      v9.f64[0] = height;
      v9.f64[1] = width;
      v10 = vcvtq_u64_f64(vrndpq_f64(v9));
      *v10.i8 = vmovn_s64(v10);
      v11 = v10.i32[0];
      v22 = v10;
      v12 = v10.i32[1];
      [v8[23] setPixelData:{malloc_type_malloc((4 * v10.i32[0] * v10.i32[1]), 0x100004077774924uLL)}];
      v13 = [(NSData *)v7 bytes];
      v14 = [v8[23] pixelData];
      if (v11)
      {
        v15 = v14;
        v16 = (4 * v12);
        v17 = (v13 + (v16 * (v11 + 0x3FFFFFFF)));
        v18 = v11;
        do
        {
          memcpy(v15, v17, (4 * v12));
          v15 += v16;
          v17 -= v16;
          --v18;
        }

        while (v18);
      }

      v20 = 0;
      if (v12)
      {
        if (v11)
        {
          v19 = vceqz_s32(vand_s8(*v22.i8, vadd_s32(*v22.i8, -1)));
          if (v19.i8[4] & 1) != 0 && (v19.i8[0])
          {
            v20 = 1;
          }
        }
      }

      [v8[23] setIsPOT:{v20, *&v22}];
      [v8[23] setHasAlpha:1];
      [v8[23] setPixelSize:{width, height}];
      [v8[23] setSize:{width, height}];
      *(v8 + 12) = 1;
      [v8[23] setState:1];
    }

    else
    {
      v8 = [a1 textureWithData:v7 size:{width, height}];
    }
  }

  return v8;
}

+ (SKTexture)textureWithData:(NSData *)pixelData size:(CGSize)size rowLength:(unsigned int)rowLength alignment:(unsigned int)alignment
{
  height = size.height;
  width = size.width;
  v9 = pixelData;
  v10 = 0;
  if (v9 && width > 0.0 && height > 0.0)
  {
    v10 = objc_alloc_init(a1);
    v11.f64[0] = height;
    v11.f64[1] = width;
    v12 = vcvtq_u64_f64(vrndpq_f64(v11));
    *v12.i8 = vmovn_s64(v12);
    v13 = v12.i32[0];
    v20 = v12;
    v14 = v12.i32[1];
    v15 = (4 * v12.i32[0] * v12.i32[1]);
    [v10[23] setPixelData:{malloc_type_malloc(v15, 0x100004077774924uLL)}];
    memcpy([v10[23] pixelData], -[NSData bytes](v9, "bytes"), v15);
    if (v14)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    v18 = 0;
    if (!v16)
    {
      v17 = vceqz_s32(vand_s8(*v20.i8, vadd_s32(*v20.i8, -1)));
      if (v17.i8[4] & 1) != 0 && (v17.i8[0])
      {
        v18 = 1;
      }
    }

    [v10[23] setIsPOT:{v18, *&v20}];
    [v10[23] setHasAlpha:1];
    [v10[23] setPixelSize:{width, height}];
    [v10[23] setSize:{width, height}];
    *(v10 + 12) = 1;
    *(v10 + 34) = alignment;
    *(v10 + 35) = rowLength;
    [v10[23] setState:1];
  }

  return v10;
}

- (CGRect)textureRect
{
  x = self->_textRect.origin.x;
  y = self->_textRect.origin.y;
  width = self->_textRect.size.width;
  height = self->_textRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  [(SKTexture *)self _ensureImageData];
  [(SKTextureCache *)self->_textureCache size];
  v4 = v3;
  v6 = v5;
  [(SKTexture *)self textureRect];
  v8 = v7;
  v10 = v9;
  v11 = [(SKTexture *)self isRotated];
  v12 = v4 * v8;
  [(SKTexture *)self cropScale];
  v14 = v13;
  v16 = v15;
  v17 = v6 * v10;
  [(SKTexture *)self cropScale];
  v20 = v17 / v19;
  if (!v11)
  {
    v20 = v12 / v14;
  }

  v21 = v17 / v18;
  if (v11)
  {
    v21 = v12 / v16;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (SKTexture)textureByApplyingCIFilter:(CIFilter *)filter
{
  v4 = filter;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = self;
  [(SKTexture *)v6 _ensureImageData];
  v7 = [(CIFilter *)v4 copy];
  [(SKTextureCache *)v6->_textureCache pixelSize];
  v9 = v8;
  [(SKTextureCache *)v6->_textureCache pixelSize];
  if (v4)
  {
    v11 = v10;
    v12 = MEMORY[0x277CBF758];
    v13 = [MEMORY[0x277CBF730] colorWithRed:1.0 green:1.0 blue:1.0];
    v14 = [v12 imageWithColor:v13];

    v15 = [v14 imageByCroppingToRect:{0.0, 0.0, v9, v11}];

    [v7 setValue:v15 forKey:@"inputImage"];
    v16 = [v7 valueForKey:@"outputImage"];
    [v16 extent];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A8];
    v20 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v21 = vcvtpd_u64_f64(v18);
  v24 = 0;
  if (v21)
  {
    v22 = vcvtpd_u64_f64(v20);
    v23 = vceqz_s32(vand_s8(__PAIR64__(v21, v22), vadd_s32(__PAIR64__(v21, v22), -1)));
    if (v23.i8[4] & 1) != 0 && v22 && (v23.i8[0])
    {
      v24 = 1;
    }
  }

  [v5[23] setIsPOT:v24];
  objc_storeStrong(v5 + 18, v7);
  objc_storeStrong(v5 + 19, self);
  [v5[23] setState:1];
  [v5[23] setPixelSize:{v18, v20}];
  [(SKTextureCache *)v6->_textureCache size];
  v26 = v25;
  [(SKTextureCache *)v6->_textureCache pixelSize];
  v28 = v27;
  [v5[23] pixelSize];
  v30 = v29;
  [(SKTextureCache *)v6->_textureCache size];
  v32 = v31;
  [(SKTextureCache *)v6->_textureCache pixelSize];
  v34 = v33;
  [v5[23] pixelSize];
  [v5[23] setSize:{v26 / v28 * v30, v32 / v34 * v35}];

  return v5;
}

- (id)description
{
  if (self->_isData)
  {
    v3 = @"<data>";
    goto LABEL_8;
  }

  subTextureName = self->_subTextureName;
  if (subTextureName)
  {
    v5 = subTextureName;
LABEL_7:
    v3 = v5;
    goto LABEL_8;
  }

  imgName = self->_imgName;
  if (imgName)
  {
    v5 = [(NSString *)imgName lastPathComponent];
    goto LABEL_7;
  }

  filter = self->_filter;
  if (filter)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(CIFilter *)filter name];
    v16 = [(SKTexture *)self->_originalTexture imageNameOrPath];
    v17 = [v16 lastPathComponent];
    v18 = [v14 stringWithFormat:@"<%@(%@)>", v15, v17];

    v3 = v18;
  }

  else
  {
    v3 = 0;
  }

LABEL_8:
  v7 = MEMORY[0x277CCACA8];
  [(SKTexture *)self pixelSize];
  v9 = v8;
  [(SKTexture *)self pixelSize];
  v11 = [v7 stringWithFormat:@"<SKTexture> '%@' (%d x %d)", v3, v9, v10];

  return v11;
}

- (void)_ensureImageData
{
  textureCache = self->_textureCache;
  if (!textureCache || [(SKTextureCache *)textureCache state]!= 1)
  {

    [(SKTexture *)self loadImageData];
  }
}

- (void)setWrapMode:(int)a3
{
  v3 = *&a3;
  [(SKTexture *)self _ensureImageData];
  if ([(SKTextureCache *)self->_textureCache wrapMode]!= v3)
  {
    textureCache = self->_textureCache;

    [(SKTextureCache *)textureCache setWrapMode:v3];
  }
}

- (int)wrapMode
{
  [(SKTexture *)self _ensureImageData];
  textureCache = self->_textureCache;

  return [(SKTextureCache *)textureCache wrapMode];
}

- (void)setFilteringMode:(SKTextureFilteringMode)filteringMode
{
  [(SKTexture *)self _ensureImageData];
  if ([(SKTextureCache *)self->_textureCache filteringMode]!= filteringMode)
  {
    textureCache = self->_textureCache;

    [(SKTextureCache *)textureCache setFilteringMode:filteringMode];
  }
}

- (SKTextureFilteringMode)filteringMode
{
  [(SKTexture *)self _ensureImageData];
  textureCache = self->_textureCache;

  return [(SKTextureCache *)textureCache filteringMode];
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  self->_textureCache = 0;

  imgName = self->_imgName;
  self->_imgName = 0;

  v5.receiver = self;
  v5.super_class = SKTexture;
  [(SKTexture *)&v5 dealloc];
}

+ (id)_textureWithImageNamed:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:v4 ofType:0];
  v8 = v5[2];
  v5[2] = v7;

  *(v5 + 11) = 1;

  return v5;
}

- (CGPoint)cropScale
{
  x = self->_cropScale.x;
  y = self->_cropScale.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cropOffset
{
  x = self->_cropOffset.x;
  y = self->_cropOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)alphaMapSize
{
  width = self->_alphaMapSize.width;
  height = self->_alphaMapSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SKTexture)initWithBackingTetxure:(shared_ptr<jet_texture>)a3
{
  ptr = a3.__ptr_;
  v5 = *a3.__ptr_;
  v6 = *(a3.__ptr_ + 1);
  v13 = *a3.__ptr_;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *a3.__ptr_;
  }

  v7 = (**v5)(v5, a2);
  v8 = (*(**ptr + 8))(*ptr);
  v8.n128_f32[0] = v7;
  *&v10 = v9;
  v11 = [(SKTexture *)self initWithBackingTetxure:&v13 logicalWidth:v8.n128_f64[0] height:v10];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v11;
}

- (SKTexture)initWithBackingTetxure:(shared_ptr<jet_texture>)a3 logicalWidth:(float)a4 height:(float)a5
{
  ptr = a3.__ptr_;
  v8 = [(SKTexture *)self init:a3.__ptr_];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = (***ptr)();
    v12 = (*(**ptr + 8))();
    v13 = v12;
    v15 = 0;
    if (v11)
    {
      v14 = vceqz_s32(vand_s8(__PAIR64__(v11, v12), vadd_s32(__PAIR64__(v11, v12), -1)));
      if (v14.i8[4] & 1) != 0 && v12 && (v14.i8[0])
      {
        v15 = 1;
      }
    }

    [(SKTextureCache *)v10->_textureCache setIsPOT:v15];
    imgName = v10->_imgName;
    v10->_imgName = 0;

    [(SKTextureCache *)v10->_textureCache setPixelSize:v11, v13];
    [(SKTextureCache *)v10->_textureCache setSize:a4, a5];
    [(SKTextureCache *)v10->_textureCache setState:1];
    textureCache = v10->_textureCache;
    v18 = *(ptr + 1);
    v20 = *ptr;
    v21 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(SKTextureCache *)textureCache setBackingTexture:&v20];
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  return v9;
}

- (shared_ptr<jet_texture>)_backingTexture
{
  v4 = v2;
  textureCache = self->_textureCache;
  if (!textureCache || [(SKTextureCache *)textureCache state]!= 1)
  {
    [(SKTexture *)self loadImageData];
  }

  v6 = self->_textureCache;
  if (v6)
  {
    [(SKTextureCache *)v6 backingTexture];
    if (v25)
    {
      v8 = v26;
      *v4 = v25;
      v4[1] = v8;
      v4 = &v25;
      goto LABEL_16;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  [(SKTextureCache *)self->_textureCache pixelSize];
  v10 = v9;
  [(SKTextureCache *)self->_textureCache pixelSize];
  v12 = v11;
  v13 = self->_textureCache;
  if (!v13)
  {
    goto LABEL_32;
  }

  [(SKTextureCache *)v13 backingTexture];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (!v23)
  {
LABEL_32:
    if ([(SKTextureCache *)self->_textureCache pixelData])
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __38__SKTexture_Internal___backingTexture__block_invoke;
      v20[3] = &unk_278310138;
      v21 = vcvtpd_u64_f64(v10);
      v22 = vcvtpd_u64_f64(v12);
      v20[4] = self;
      SKCPerformResourceOperation(v20);
      free([(SKTextureCache *)self->_textureCache pixelData]);
      [(SKTextureCache *)self->_textureCache setPixelData:0];
    }

    else
    {
      originalTexture = self->_originalTexture;
      if (originalTexture && self->_filter)
      {
        [(SKTexture *)originalTexture _backingTexture];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3321888768;
        v18[2] = __38__SKTexture_Internal___backingTexture__block_invoke_2;
        v18[3] = &unk_282E173F0;
        v18[5] = v23;
        v19 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18[4] = self;
        SKCPerformResourceOperation(v18);
        v17 = self->_originalTexture;
        self->_originalTexture = 0;

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }
    }
  }

  v14 = self->_textureCache;
  if (v14)
  {
    [(SKTextureCache *)v14 backingTexture];
    goto LABEL_17;
  }

LABEL_16:
  *v4 = 0;
  v4[1] = 0;
LABEL_17:
  v15 = v26;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v15;
  return result;
}

void __38__SKTexture_Internal___backingTexture__block_invoke(uint64_t a1)
{
  kdebug_trace();
  [*(*(a1 + 32) + 184) textureFormat];
  [*(*(a1 + 32) + 184) pixelData];
  texture_2d = jet_context::create_texture_2d();
  std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v3, texture_2d);
}

void __38__SKTexture_Internal___backingTexture__block_invoke_2(uint64_t a1, void *a2)
{
  (*(**a2 + 48))(*a2, *(a1 + 40));
  [*(*(a1 + 32) + 144) setValue:objc_claimAutoreleasedReturnValue() forKey:@"inputImage"];
  v4 = [*(*(a1 + 32) + 144) valueForKey:@"outputImage"];
  v5 = (*(**a2 + 40))(*a2, v4);
  std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v6, v5);
}

- (CGSize)pixelSize
{
  [(SKTexture *)self _ensureImageData];
  [(SKTextureCache *)self->_textureCache pixelSize];
  v4 = v3;
  v6 = v5;
  [(SKTexture *)self textureRect];
  v8 = v7;
  v10 = v9;
  v11 = [(SKTexture *)self isRotated];
  v12 = v4 * v8;
  [(SKTexture *)self cropScale];
  v14 = v13;
  v16 = v15;
  v17 = v6 * v10;
  [(SKTexture *)self cropScale];
  v19 = v17 / v18;
  v21 = v17 / v20;
  if (v11)
  {
    v21 = v12 / v16;
  }

  else
  {
    v19 = v12 / v14;
  }

  v22 = fabs(v19);
  v23 = fabs(v21);
  result.height = v23;
  result.width = v22;
  return result;
}

+ (void)_reloadTextureCacheForImageNamed:(id)a3
{
  v3 = [_textureTable objectForKey:a3];
  if (v3)
  {
    [v3 _reset];
  }
}

+ (id)_cachedTextureNames
{
  v2 = [_textureTable keyEnumerator];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_textureTable, "count")}];
  v4 = 0;
  while (1)
  {
    v5 = [v2 nextObject];

    if (!v5)
    {
      break;
    }

    v4 = v5;
    [v3 addObject:v5];
  }

  return v3;
}

- (id)_copyImageData
{
  if (self->_originalTexture)
  {
    self = self->_originalTexture;
  }

  v2 = [(SKTexture *)self _createCGImage];
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:v2];
  v4 = UIImagePNGRepresentation(v3);
  CGImageRelease(v2);

  return v4;
}

+ (id)compressedTextureWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  if (v5[11] == 559044176)
  {
    v6 = objc_alloc_init(a1);
    v7 = v5[5];
    [v6[23] setPixelData:{malloc_type_malloc(v7, 0x100004077774924uLL)}];
    memcpy([v6[23] pixelData], (objc_msgSend(v4, "bytes") + 52), v7);
    v8 = v5[1];
    LODWORD(v7) = v5[2];
    [v6[23] setHasAlpha:v5[10] != 0];
    [v6[23] setPixelSize:{v7, v8}];
    [v6[23] setSize:{v7, v8}];
    *(v6 + 12) = 1;
    [v6[23] setState:1];
    free([v6[23] pixelData]);
  }

  return 0;
}

+ (id)compressedTextureWithData:(id)a3 size:(CGSize)a4 bitsPerPixel:(unsigned int)a5 hasAlpha:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  if (v11 && width > 0.0 && height > 0.0 && (a5 == 4 || a5 == 2))
  {
    v12 = objc_alloc_init(a1);
    v13 = ceil(width);
    v14 = ceil(height);
    v15 = 3.0;
    if (v6)
    {
      v15 = 4.0;
    }

    v16 = (v15 * (v13 * v14 * a5)) >> 3;
    [v12[23] setPixelData:{malloc_type_malloc(v16, 0x100004077774924uLL)}];
    memcpy([v12[23] pixelData], objc_msgSend(v11, "bytes"), v16);
    [v12[23] setHasAlpha:v6];
    [v12[23] setPixelSize:{v13, v14}];
    [v12[23] setSize:{v13, v14}];
    *(v12 + 12) = 1;
    [v12[23] setState:1];
    free([v12[23] pixelData]);
  }

  return 0;
}

- (id)_generateNormalMap:(double)a3 contrast:(double)a4 multiPass:(unint64_t)a5
{
  v9 = [(SKTexture *)self _createCGImage];
  v10 = v9;
  if (v9)
  {
    Width = CGImageGetWidth(v9);
    Height = CGImageGetHeight(v10);
    v13 = Height;
    v14 = Height;
    v15 = malloc_type_malloc((4 * Width * Height), 0x100004077774924uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v17 = CGBitmapContextCreate(v15, Width, v13, 8uLL, (4 * Width), DeviceRGB, 0x4001u);
    CGColorSpaceRelease(DeviceRGB);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    v21.size.height = v14;
    CGContextClearRect(v17, v21);
    CGContextTranslateCTM(v17, 0.0, v14);
    CGContextScaleCTM(v17, 1.0, -1.0);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = Width;
    v22.size.height = v14;
    CGContextDrawImage(v17, v22, v10);
    CGContextRelease(v17);
    CGImageRelease(v10);
    if (SKGenerateNormalMapWithMultiSampling(Width, v13, v15, a5, a3, a4))
    {
      v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:4 * Width * v14];
      v10 = [SKTexture textureWithData:v18 size:Width, v14];
      *(v10 + 97) = self->_isRotated;
    }

    else
    {
      free(v15);
      v10 = 0;
    }
  }

  return v10;
}

+ (SKTexture)textureWithImagePath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithImagePath:v4];

  return v5;
}

+ (id)_textureByTransferingData:(char *)a3 size:(CGSize)a4
{
  v4 = 0;
  if (a3)
  {
    width = a4.width;
    if (a4.width > 0.0)
    {
      height = a4.height;
      if (a4.height > 0.0)
      {
        v4 = objc_alloc_init(a1);
        [v4[23] setPixelData:a3];
        [v4[23] setHasAlpha:1];
        v8 = ceil(width);
        v9 = ceil(height);
        [v4[23] setPixelSize:{v8, v9}];
        [v4[23] setSize:{v8, v9}];
        *(v4 + 12) = 1;
        [v4[23] setState:1];
      }
    }
  }

  return v4;
}

+ (id)_textureByTransferingData:(char *)a3 size:(CGSize)a4 rowLength:(unsigned int)a5 alignment:(unsigned int)a6
{
  v6 = 0;
  if (a3)
  {
    width = a4.width;
    if (a4.width > 0.0)
    {
      height = a4.height;
      if (a4.height > 0.0)
      {
        v6 = objc_alloc_init(a1);
        [v6[23] setPixelData:a3];
        v12 = ceil(width);
        v13 = ceil(height);
        v14 = v13;
        if (v12)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        v17 = 0;
        if (!v15)
        {
          v16 = vceqz_s32(vand_s8(__PAIR64__(v12, v14), vadd_s32(__PAIR64__(v12, v14), -1)));
          if (v16.i8[4] & 1) != 0 && (v16.i8[0])
          {
            v17 = 1;
          }
        }

        [v6[23] setIsPOT:v17];
        [v6[23] setHasAlpha:1];
        [v6[23] setPixelSize:{v12, v13}];
        [v6[23] setSize:{v12, v13}];
        *(v6 + 12) = 1;
        [v6[23] setState:1];
        *(v6 + 34) = a6;
        *(v6 + 35) = a5;
      }
    }
  }

  return v6;
}

+ (id)_textureWithGLTextureId:(unsigned int)a3 size:(CGSize)a4
{
  v4 = [[a1 alloc] _initWithGLTextureId:*&a3 size:{a4.width, a4.height}];

  return v4;
}

- (id)_initWithGLTextureId:(unsigned int)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [(SKTexture *)self init];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v8;
    v10 = vcvtpd_u64_f64(width);
    v11 = vcvtpd_u64_f64(height);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = 0;
    if (!v12)
    {
      v13 = vceqz_s32(vand_s8(__PAIR64__(v10, v11), vadd_s32(__PAIR64__(v10, v11), -1)));
      if (v13.i8[4] & 1) != 0 && (v13.i8[0])
      {
        v14 = 1;
      }
    }

    [(SKTextureCache *)v8->_textureCache setIsPOT:v14];
    imgName = v9->_imgName;
    v9->_imgName = 0;

    v9->_isData = 1;
    [(SKTextureCache *)v9->_textureCache setPixelData:0];
    [(SKTextureCache *)v9->_textureCache setPixelSize:width, height];
    [(SKTextureCache *)v9->_textureCache setSize:width, height];
    [(SKTextureCache *)v9->_textureCache setState:1];
  }

  return v7;
}

- (int)glTextureId
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(SKTexture *)self _backingTexture];
  if (v6)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3321888768;
    v4[2] = __33__SKTexture_Private__glTextureId__block_invoke;
    v4[3] = &unk_282E17428;
    v4[4] = &v8;
    v4[5] = v6;
    v5 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SKCPerformResourceOperation(v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v2 = *(v9 + 6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

void __33__SKTexture_Private__glTextureId__block_invoke(uint64_t a1, void *a2)
{
  if (!(*(**a2 + 136))())
  {
    v4 = *a2;
    if (*a2 && (v4 = __dynamic_cast(v4, MEMORY[0x277D218E8], MEMORY[0x277D218F8], 0)) != 0)
    {
      v5 = a2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = (*(*v4 + 392))(v4, *(a1 + 40));
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

+ (SKTexture)textureWithIOSurfaceID:(unsigned int)a3 width:(unsigned int)a4 height:(unsigned int)a5 format:(unsigned int)a6
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4012000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = "";
  v23 = 0;
  v24 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SKTexture_Private__textureWithIOSurfaceID_width_height_format___block_invoke;
  v12[3] = &unk_278310160;
  v12[4] = &v17;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  SKCPerformResourceOperation(v12);
  if (v18[6])
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = v18[7];
    v10 = v18[6];
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = [v6 initWithBackingTetxure:&v10];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v17, 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return v8;
}

+ (SKTexture)textureWithMetalTexture:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4012000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = "";
  v20 = 0;
  v21 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SKTexture_Private__textureWithMetalTexture___block_invoke;
  v11[3] = &unk_278310188;
  v13 = &v14;
  v4 = v3;
  v12 = v4;
  SKCPerformResourceOperation(v11);
  if (v15[6])
  {
    v5 = objc_alloc(objc_opt_class());
    v6 = v15[7];
    v9 = v15[6];
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = [v5 initWithBackingTetxure:&v9];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v7;
}

uint64_t __46__SKTexture_Private__textureWithMetalTexture___block_invoke(uint64_t a1, void *a2)
{
  result = (*(**a2 + 136))();
  if (result == 1)
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = __dynamic_cast(v5, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
      if (v5)
      {
        v6 = a2[1];
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }
      }
    }

    v7 = (*(*v5 + 408))(v5, *(a1 + 32));
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v8, v7);
  }

  return result;
}

- (id)metalTexture
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__374;
  v12 = __Block_byref_object_dispose__375;
  v13 = 0;
  [(SKTexture *)self _backingTexture];
  if (v6)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3321888768;
    v4[2] = __34__SKTexture_Private__metalTexture__block_invoke;
    v4[3] = &unk_282E17428;
    v4[4] = &v8;
    v4[5] = v6;
    v5 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SKCPerformResourceOperation(v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v2 = v9[5];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Block_object_dispose(&v8, 8);

  return v2;
}

void __34__SKTexture_Private__metalTexture__block_invoke(uint64_t a1, void *a2)
{
  if ((*(**a2 + 136))() == 1)
  {
    v4 = *a2;
    if (*a2 && (v4 = __dynamic_cast(v4, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0)) != 0)
    {
      v5 = a2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = (*(*v4 + 432))(v4, *(a1 + 40));
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

- (int)_convert_jet_texture_format_to_ci_format:(unsigned int)a3
{
  if (a3 - 1 > 0xD)
  {
    v3 = MEMORY[0x277CBF9C8];
  }

  else
  {
    v3 = qword_2783101C8[a3 - 1];
  }

  return *v3;
}

- (CGImage)_newTextureFromGLCache
{
  [(SKTexture *)self _ensureImageData];
  [(SKTexture *)self _backingTexture];
  v3 = (**v90)();
  v4 = (*(*v90 + 8))(v90);
  if (v4 * v3)
  {
    bytes_per_element = jet_texture::get_bytes_per_element(v90);
    v6 = malloc_type_malloc(bytes_per_element * v4 * v3, 0x100004077774924uLL);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __44__SKTexture_Private___newTextureFromGLCache__block_invoke;
    v89[3] = &__block_descriptor_48_e69_v24__0_shared_ptr_jet_context____jet_context_____shared_weak_count__8l;
    v89[4] = &v90;
    v89[5] = v6;
    SKCPerformResourceOperation(v89);
    x = self->_textRect.origin.x;
    y = self->_textRect.origin.y;
    v9 = (y * v4 + 0.5);
    v10 = ((x + self->_textRect.size.width) * v3 + 0.5);
    v82 = (x * v3 + 0.5);
    v83 = ((y + self->_textRect.size.height) * v4 + 0.5);
    if (self->_isRotated)
    {
      v11 = v83 - v9;
    }

    else
    {
      v11 = v10 - v82;
    }

    if (self->_isRotated)
    {
      v12 = v10 - v82;
    }

    else
    {
      v12 = v83 - v9;
    }

    v67 = v12;
    v68 = v11;
    v13 = jet_texture::get_bytes_per_element(v90);
    v88 = malloc_type_malloc((v10 - v82) * (v83 - v9) * v13, 0x100004077774924uLL);
    v14 = jet_texture::get_bytes_per_element(v90);
    v15 = v14;
    v66 = (v10 - v82) * (v83 - v9);
    v69 = self;
    v16 = v6;
    if (self->_isFlipped)
    {
      if (self->_isRotated)
      {
        if (v83 > v9)
        {
          v17 = v68 * v14;
          v18 = v68 * v14 * (v67 - 1);
          v19 = v14 * (v82 + v9 * v3);
          v70 = v3 * v14;
          do
          {
            v84 = v9;
            v74 = v19;
            v78 = v18;
            v20 = v18;
            for (i = v82; i < v10; v19 += v15)
            {
              for (j = 0; j < jet_texture::get_bytes_per_element(v90); ++j)
              {
                v88[v20 + j] = v16[v19 + j];
              }

              ++i;
              v20 -= v17;
            }

            v9 = v84 + 1;
            v18 = v78 + v15;
            v19 = v74 + v70;
          }

          while (v84 + 1 != v83);
        }
      }

      else if (v83 > v9)
      {
        v30 = 0;
        v31 = v14 * (v82 + v9 * v3);
        v72 = v3 * v14;
        v76 = v68 * v14;
        do
        {
          v86 = v9;
          v32 = v31;
          v80 = v30;
          for (k = v82; k < v10; v32 += v15)
          {
            for (m = 0; m < jet_texture::get_bytes_per_element(v90); ++m)
            {
              v88[v30 + m] = v16[v32 + m];
            }

            ++k;
            v30 += v15;
          }

          ++v9;
          v30 = v80 + v76;
          v31 += v72;
        }

        while (v86 + 1 != v83);
      }
    }

    else if (self->_isRotated)
    {
      if (v83 > v9)
      {
        v24 = v14 * (v68 * v67 - 1);
        v25 = v68 * v14;
        v26 = v14 * (v82 + v9 * v3);
        v71 = v3 * v14;
        do
        {
          v85 = v9;
          v75 = v26;
          v79 = v24;
          v27 = v26;
          for (n = v82; n < v10; v27 += v15)
          {
            for (ii = 0; ii < jet_texture::get_bytes_per_element(v90); ++ii)
            {
              v88[v24 + ii] = v16[v27 + ii];
            }

            ++n;
            v24 -= v25;
          }

          ++v9;
          v24 = v79 - v15;
          v26 = v75 + v71;
        }

        while (v85 + 1 != v83);
      }
    }

    else if (v83 > v9)
    {
      v35 = v68 * v14 * (~v9 + v83);
      v36 = v14 * (v82 + v9 * v3);
      v73 = v3 * v14;
      v77 = v68 * v14;
      do
      {
        v87 = v9;
        v37 = v36;
        v81 = v35;
        for (jj = v82; jj < v10; v37 += v15)
        {
          for (kk = 0; kk < jet_texture::get_bytes_per_element(v90); ++kk)
          {
            v88[v35 + kk] = v16[v37 + kk];
          }

          ++jj;
          v35 += v15;
        }

        v9 = v87 + 1;
        v35 = v81 - v77;
        v36 += v73;
      }

      while (v87 + 1 != v83);
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v41 = [MEMORY[0x277CBEA90] dataWithBytes:v88 length:jet_texture::get_bytes_per_element(v90) * v66];
    v42 = MEMORY[0x277CBF758];
    v43 = jet_texture::get_bytes_per_element(v90);
    v44 = [v42 imageWithBitmapData:v41 bytesPerRow:v43 * v68 size:-[SKTexture _convert_jet_texture_format_to_ci_format:](v69 format:"_convert_jet_texture_format_to_ci_format:" colorSpace:{(*(*v90 + 32))(v90)), DeviceRGB, v68, v67}];
    v45 = [MEMORY[0x277CBF740] context];
    [v44 extent];
    Image = [v45 createCGImage:v44 fromRect:?];
    CGColorSpaceRelease(DeviceRGB);
    free(v16);
    free(v88);
    if (Image)
    {
      Width = CGImageGetWidth(Image);
      Height = CGImageGetHeight(Image);
      BitsPerComponent = CGImageGetBitsPerComponent(Image);
      BitsPerPixel = CGImageGetBitsPerPixel(Image);
      BytesPerRow = CGImageGetBytesPerRow(Image);
      [(SKTexture *)v69 pixelSize];
      v53 = Width;
      v54 = Height;
      v55 = BitsPerPixel;
      v56 = v51 <= Width && v52 <= v54;
      if (!v56 || BytesPerRow != (Width * BitsPerPixel * 0.125))
      {
        v58 = v51;
        v59 = roundf(v58);
        v60 = v52;
        v61 = roundf(v60);
        v62 = malloc_type_malloc((v59 * v61 * v55 * 0.125), 0x100004077774924uLL);
        v63 = CGColorSpaceCreateDeviceRGB();
        v64 = CGBitmapContextCreate(v62, v59, v61, BitsPerComponent, (v55 * v59 * 0.125), v63, 0x4001u);
        CGColorSpaceRelease(v63);
        v92.origin.x = 0.0;
        v92.origin.y = 0.0;
        v92.size.width = v59;
        v92.size.height = v61;
        CGContextClearRect(v64, v92);
        v93.origin.x = v69->_cropOffset.x * v53 + (v59 - v53) * 0.5;
        v93.origin.y = v69->_cropOffset.y * v54 + (v61 - v54) * 0.5;
        v93.size.width = v53;
        v93.size.height = v54;
        CGContextDrawImage(v64, v93, Image);
        CGImageRelease(Image);
        Image = CGBitmapContextCreateImage(v64);
        CGContextRelease(v64);
        free(v62);
      }
    }
  }

  else
  {
    Image = 0;
  }

  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  return Image;
}

- (void)_savePngFromGLCache:(id)a3
{
  v7 = a3;
  v4 = [(SKTexture *)self _createCGImage];
  v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v4];
  v6 = UIImagePNGRepresentation(v5);
  [v6 writeToFile:v7 atomically:1];
  CGImageRelease(v4);
}

@end