@interface CAEDRMetadata
+ (BOOL)isAvailable;
+ (CAEDRMetadata)HDR10MetadataWithDisplayInfo:(NSData *)displayData contentInfo:(NSData *)contentData opticalOutputScale:(float)scale;
+ (CAEDRMetadata)HDR10MetadataWithMinLuminance:(float)minNits maxLuminance:(float)maxNits opticalOutputScale:(float)scale;
+ (CAEDRMetadata)HLGMetadata;
+ (CAEDRMetadata)HLGMetadataWithAmbientViewingEnvironment:(NSData *)data;
+ (void)setMetadata:(id)metadata onSurface:(__IOSurface *)surface;
- (BOOL)isEqual:(id)equal;
- (CAEDRMetadata)initWithBT2100HLG;
- (CAEDRMetadata)initWithCoder:(id)coder;
- (CAEDRMetadata)initWithMasteringDisplayMinNits:(float)nits maxNits:(float)maxNits opticalOutputScale:(float)scale;
- (CAEDRMetadata)initWithSEIAmbientViewingEnvironment:(id)environment;
- (CAEDRMetadata)initWithSEIMasteringDisplayData:(id)data contentLightLevelData:(id)levelData opticalOutputScale:(float)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAEDRMetadata

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  priv = self->_priv;
  v6 = *(priv + 40);
  v7 = *(equal + 1);
  v8 = *(v7 + 40);
  if ((v6 & 1) == 0 && (v8 & 1) == 0)
  {
    v12 = *priv == *v7 && *(priv + 1) == *(v7 + 8) && *(priv + 2) == *(v7 + 16);
    if (v12 && *(priv + 6) == *(v7 + 24))
    {
      return *(priv + 11) == *(v7 + 44);
    }

    return 0;
  }

  if (v6 != v8)
  {
    return 0;
  }

  v9 = *(priv + 4);
  if (!(v9 | *(v7 + 32)))
  {
    return 1;
  }

  return [v9 isEqual:?];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {

    free(self->_priv);
    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CAEDRMetadata;
  [(CAEDRMetadata *)&v4 dealloc];
}

- (CAEDRMetadata)initWithBT2100HLG
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAEDRMetadata;
  v2 = [(CAEDRMetadata *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C86E0577uLL);
    v2->_priv = v3;
    if (v3)
    {
      *(v3 + 40) = 1;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (CAEDRMetadata)initWithSEIAmbientViewingEnvironment:(id)environment
{
  v11 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CAEDRMetadata;
  v4 = [(CAEDRMetadata *)&v9 init];
  if (v4)
  {
    priv = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C86E0577uLL);
    v4->_priv = priv;
    if (priv)
    {
      if (environment)
      {
        if ([environment length] <= 7)
        {

          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v6 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "SEI ambient viewing environment info must be 8 bytes", buf, 2u);
          }

          return 0;
        }

        v7 = [environment copy];
        priv = v4->_priv;
        *(priv + 4) = v7;
      }

      *(priv + 40) = 1;
      return v4;
    }

    return 0;
  }

  return v4;
}

- (CAEDRMetadata)initWithMasteringDisplayMinNits:(float)nits maxNits:(float)maxNits opticalOutputScale:(float)scale
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAEDRMetadata;
  v6 = [(CAEDRMetadata *)&v11 init];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C86E0577uLL);
    v6->_priv = v7;
    if (v7)
    {
      *(v7 + 2) = vcvt_u32_f32(vmul_f32(__PAIR64__(LODWORD(nits), LODWORD(maxNits)), vdup_n_s32(0x461C4000u)));
      *(v7 + 11) = scale;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (CAEDRMetadata)initWithSEIMasteringDisplayData:(id)data contentLightLevelData:(id)levelData opticalOutputScale:(float)scale
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CAEDRMetadata;
  v8 = [(CAEDRMetadata *)&v27 init];
  if (v8)
  {
    priv = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C86E0577uLL);
    v8->_priv = priv;
    if (!priv)
    {

      return 0;
    }

    if (data)
    {
      if ([data length] <= 0x17)
      {

        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v10 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 0;
        v11 = "SEI mastering display color volume info must be 24 bytes";
        goto LABEL_45;
      }

      bytes = [data bytes];
      v13 = bswap32(*bytes) >> 16;
      if (v13 >= 0xC350)
      {
        LOWORD(v13) = -15536;
      }

      priv = v8->_priv;
      *priv = v13;
      v14 = bswap32(bytes[1]) >> 16;
      if (v14 >= 0xC350)
      {
        LOWORD(v14) = -15536;
      }

      *(priv + 1) = v14;
      v15 = bswap32(bytes[2]) >> 16;
      if (v15 >= 0xC350)
      {
        LOWORD(v15) = -15536;
      }

      *(priv + 2) = v15;
      v16 = bswap32(bytes[3]) >> 16;
      if (v16 >= 0xC350)
      {
        LOWORD(v16) = -15536;
      }

      *(priv + 3) = v16;
      v17 = bswap32(bytes[4]) >> 16;
      if (v17 >= 0xC350)
      {
        LOWORD(v17) = -15536;
      }

      *(priv + 4) = v17;
      v18 = bswap32(bytes[5]) >> 16;
      if (v18 >= 0xC350)
      {
        LOWORD(v18) = -15536;
      }

      *(priv + 5) = v18;
      v19 = bswap32(bytes[6]) >> 16;
      if (v19 >= 0xC350)
      {
        LOWORD(v19) = -15536;
      }

      *(priv + 6) = v19;
      v20 = bswap32(bytes[7]) >> 16;
      if (v20 >= 0xC350)
      {
        LOWORD(v20) = -15536;
      }

      *(priv + 7) = v20;
      v21 = bswap32(*(bytes + 4));
      if (v21 >= 0x5F5E100)
      {
        v21 = 100000000;
      }

      *(priv + 4) = v21;
      v22 = bswap32(*(bytes + 5));
      if (v22 >= 0x5F5E100)
      {
        v22 = 100000000;
      }

      *(priv + 5) = v22;
    }

    if (levelData)
    {
      if ([levelData length] <= 3)
      {

        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v10 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 0;
        v11 = "SEI content light level info must be 4 bytes";
LABEL_45:
        _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
        return 0;
      }

      bytes2 = [levelData bytes];
      v24 = bswap32(*bytes2) >> 16;
      if (v24 >= 0x2710)
      {
        LOWORD(v24) = 10000;
      }

      priv = v8->_priv;
      *(priv + 12) = v24;
      v25 = bswap32(bytes2[1]) >> 16;
      if (v25 >= 0x2710)
      {
        LOWORD(v25) = 10000;
      }

      *(priv + 13) = v25;
    }

    *(priv + 11) = scale;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = malloc_type_malloc(0x30uLL, 0x1080040C86E0577uLL);
    v4[1] = v5;
    priv = self->_priv;
    v8 = *(priv + 1);
    v7 = *(priv + 2);
    *v5 = *priv;
    v5[1] = v8;
    v5[2] = v7;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (coder)
  {
    priv = self->_priv;
    if (priv)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:priv length:48];
      if (v5)
      {

        [coder encodeObject:v5 forKey:@"CA_EDR_Metadata"];
      }
    }
  }
}

- (CAEDRMetadata)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAEDRMetadata;
  v4 = [(CAEDRMetadata *)&v8 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CA_EDR_Metadata"];
    if ([v5 length] == 48)
    {
      v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C86E0577uLL);
      v4->_priv = v6;
      [v5 getBytes:v6 length:48];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

+ (void)setMetadata:(id)metadata onSurface:(__IOSurface *)surface
{
  if (!surface)
  {
    return;
  }

  if (!metadata)
  {
    IOSurfaceRemoveValue(surface, @"isHLG");
LABEL_9:
    IOSurfaceRemoveValue(surface, *MEMORY[0x1E6965CD8]);
    goto LABEL_10;
  }

  if (*(*(metadata + 1) + 40) == 1)
  {
    IOSurfaceSetValue(surface, @"isHLG", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    IOSurfaceRemoveValue(surface, @"isHLG");
  }

  v6 = *(*(metadata + 1) + 32);
  if (!v6)
  {
    goto LABEL_9;
  }

  IOSurfaceSetValue(surface, *MEMORY[0x1E6965CD8], v6);
LABEL_10:
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  if (CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0) == 1380411457)
  {
    if (metadata && (v9 = *(metadata + 1), (*(v9 + 40) & 1) == 0))
    {
      LODWORD(v8) = *(v9 + 44);
      IOSurfaceSetValue(surface, @"SDRBrightnessInNits", [MEMORY[0x1E696AD98] numberWithFloat:v8]);
    }

    else
    {
      IOSurfaceRemoveValue(surface, @"SDRBrightnessInNits");
    }
  }

  IOSurfaceSetBulkAttachments2();
}

+ (BOOL)isAvailable
{
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability)
  {
    v2 = 1;
  }

  else
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    v2 = CADeviceIsVirtualized::is_virtualized;
  }

  return v2 & 1;
}

+ (CAEDRMetadata)HLGMetadata
{
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if ((CADeviceHasHardwareAcceleratedHDR::has_capability & 1) == 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if (CADeviceIsVirtualized::is_virtualized != 1)
    {
      return 0;
    }
  }

  initWithBT2100HLG = [[CAEDRMetadata alloc] initWithBT2100HLG];

  return initWithBT2100HLG;
}

+ (CAEDRMetadata)HLGMetadataWithAmbientViewingEnvironment:(NSData *)data
{
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if ((CADeviceHasHardwareAcceleratedHDR::has_capability & 1) == 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if (CADeviceIsVirtualized::is_virtualized != 1)
    {
      return 0;
    }
  }

  v4 = [[CAEDRMetadata alloc] initWithSEIAmbientViewingEnvironment:data];

  return v4;
}

+ (CAEDRMetadata)HDR10MetadataWithMinLuminance:(float)minNits maxLuminance:(float)maxNits opticalOutputScale:(float)scale
{
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if ((CADeviceHasHardwareAcceleratedHDR::has_capability & 1) == 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if (CADeviceIsVirtualized::is_virtualized != 1)
    {
      return 0;
    }
  }

  v8 = [CAEDRMetadata alloc];
  *&v9 = minNits;
  *&v10 = maxNits;
  *&v11 = scale;
  v12 = [(CAEDRMetadata *)v8 initWithMasteringDisplayMinNits:v9 maxNits:v10 opticalOutputScale:v11];

  return v12;
}

+ (CAEDRMetadata)HDR10MetadataWithDisplayInfo:(NSData *)displayData contentInfo:(NSData *)contentData opticalOutputScale:(float)scale
{
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if ((CADeviceHasHardwareAcceleratedHDR::has_capability & 1) == 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if (CADeviceIsVirtualized::is_virtualized != 1)
    {
      return 0;
    }
  }

  v8 = [CAEDRMetadata alloc];
  *&v9 = scale;
  v10 = [(CAEDRMetadata *)v8 initWithSEIMasteringDisplayData:displayData contentLightLevelData:contentData opticalOutputScale:v9];

  return v10;
}

@end