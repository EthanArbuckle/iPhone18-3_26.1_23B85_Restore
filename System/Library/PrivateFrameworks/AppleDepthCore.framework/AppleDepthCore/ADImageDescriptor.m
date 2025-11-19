@interface ADImageDescriptor
+ (id)descriptorForSupportedSizes:(id)a3 pixelFormat:(unsigned int)a4;
+ (id)descriptorWithDefaultSize:(CGSize)a3 pixelFormat:(unsigned int)a4;
- (ADImageDescriptor)initWithSupportedSizes:(id)a3 pixelFormat:(unsigned int)a4;
- (ADImageDimensions)dimensions;
- (BOOL)conformedByPixelBuffer:(__CVBuffer *)a3 forLayout:(unint64_t)a4;
- (BOOL)supportsLayout:(unint64_t)a3;
- (CGSize)sizeForLayout:(unint64_t)a3;
- (id)cloneWithDifferentFormat:(unsigned int)a3;
- (id)customStridesForLayout:(unint64_t)a3;
- (unint64_t)layoutForSize:(CGSize)a3;
@end

@implementation ADImageDescriptor

- (BOOL)conformedByPixelBuffer:(__CVBuffer *)a3 forLayout:(unint64_t)a4
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  [(ADImageDescriptor *)self sizeForLayout:a4];
  v8 = v7;
  v10 = v9;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != self->_pixelFormat)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v18 = PixelFormatType;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        PixelBufferUtils::pixelFormatAsString(v18, buf);
        v19 = SBYTE1(v45);
        v20 = *buf;
        PixelBufferUtils::pixelFormatAsString(self->_pixelFormat, __p);
        v21 = buf;
        if (v19 < 0)
        {
          v21 = v20;
        }

        if (v37 >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = *__p;
        }

        *v46 = 136315394;
        v47 = v21;
        v48 = 2080;
        v49 = v22;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PixelBuffer with pixel format '%s' does not conform to descriptor with pixel format '%s'", v46, 0x16u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(*__p);
        }

        if (SBYTE1(v45) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    return 0;
  }

  Width = CVPixelBufferGetWidth(a3);
  v13 = Width;
  v14 = Width;
  Height = CVPixelBufferGetHeight(a3);
  if (v8 != v14 || v10 != Height)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v17 = Height;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v13;
        v40 = 1024;
        v41 = v17;
        v42 = 1024;
        v43 = v8;
        v44 = 1024;
        v45 = v10;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PixelBuffer with size %dx%d does not conform to descriptor with size %dx%d", buf, 0x1Au);
      }
    }

    return 0;
  }

  v25 = [(ADImageDescriptor *)self customStridesForLayout:a4];
  if (v25)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    v27 = PlaneCount;
    if (PlaneCount >= 0x20)
    {
      __assert_rtn("[ADImageDescriptor conformedByPixelBuffer:forLayout:]", "ADDescriptors.mm", 199, "planeCount < sizeof(bpps)/sizeof(bpps[0])");
    }

    if (PlaneCount)
    {
      v28 = 0;
      do
      {
        *&buf[8 * v28] = CVPixelBufferGetBytesPerRowOfPlane(a3, v28);
        ++v28;
      }

      while (v27 != v28);
    }

    else
    {
      *buf = CVPixelBufferGetBytesPerRow(a3);
      v27 = 1;
    }

    if (v27 == [v25 count])
    {
      v29 = 0;
      while (1)
      {
        v30 = *&buf[8 * v29];
        v31 = [v25 objectAtIndexedSubscript:v29];
        v32 = [v31 unsignedLongLongValue];

        if (v30 != v32)
        {
          break;
        }

        if (v27 == ++v29)
        {
          goto LABEL_34;
        }
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v25 objectAtIndexedSubscript:v29];
        *__p = 134218496;
        *&__p[4] = v30;
        v35 = 2048;
        v36 = v29;
        v37 = 2048;
        v38 = [v33 unsignedLongValue];
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PixelBuffer with %zu bytes-per-row for plane %zu does not conform to descriptor with bytes-per-row %lu", __p, 0x20u);
      }
    }

    else if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134218240;
      *&__p[4] = v27;
      v35 = 2048;
      v36 = [v25 count];
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PixelBuffer with %zu planes does not conform to descriptor with %lu custom strides", __p, 0x16u);
    }

    v23 = 0;
  }

  else
  {
LABEL_34:
    v23 = 1;
  }

  return v23;
}

- (unint64_t)layoutForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [ADLayoutUtils layoutForSize:?];
  if (![(ADImageDescriptor *)self supportsLayout:v6])
  {
    [(ADImageDescriptor *)self sizeForLayout:255];
    v7 = width / height;
    v10 = v8 / v9;
    *&v9 = v10;
    *&v10 = v7;
    if ([ADLayoutUtils aspectRatio:v10 matchesAspectRatio:v9])
    {
      return 255;
    }

    else
    {
      return 254;
    }
  }

  return v6;
}

- (id)customStridesForLayout:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  sizeForLayout = self->_sizeForLayout;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)sizeForLayout objectForKey:v5];

  if (v6)
  {
    v7 = [v6 customStrides];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = [ADLayoutUtils layoutAsString:a3];
      v10 = 138543362;
      v11 = v9;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported layout: %{public}@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (CGSize)sizeForLayout:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  sizeForLayout = self->_sizeForLayout;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)sizeForLayout objectForKey:v5];

  if (v6)
  {
    [v6 size];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = [ADLayoutUtils layoutAsString:a3];
      v14 = 138543362;
      v15 = v13;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported layout: %{public}@", &v14, 0xCu);
    }
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)supportsLayout:(unint64_t)a3
{
  if (a3 == 254)
  {
    return 0;
  }

  sizeForLayout = self->_sizeForLayout;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)sizeForLayout objectForKey:v5];
  v3 = v6 != 0;

  return v3;
}

- (ADImageDescriptor)initWithSupportedSizes:(id)a3 pixelFormat:(unsigned int)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = ADImageDescriptor;
  v6 = [(ADImageDescriptor *)&v22 init];
  if (v6)
  {
    v7 = objc_opt_new();
    sizeForLayout = v6->_sizeForLayout;
    v6->_sizeForLayout = v7;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = v6->_sizeForLayout;
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "layout")}];
          [(NSMutableDictionary *)v14 setObject:v13 forKey:v15];
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v6->_pixelFormat = a4;
  }

  return v6;
}

- (id)cloneWithDifferentFormat:(unsigned int)a3
{
  v5 = objc_opt_new();
  *(v5 + 16) = a3;
  objc_storeStrong((v5 + 8), self->_sizeForLayout);

  return v5;
}

- (ADImageDimensions)dimensions
{
  if ([(NSMutableDictionary *)self->_sizeForLayout count]== 1)
  {
    v3 = [(NSMutableDictionary *)self->_sizeForLayout allValues];
    v4 = [v3 objectAtIndexedSubscript:0];
    [v4 size];
    v6 = v5;
    v8 = v7;

    v9 = [ADImageDimensions imageDimensionsWithWidth:v6 height:v8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image descriptor contains several sizes. Please use -[sizeForLayout:] instead.", v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)descriptorWithDefaultSize:(CGSize)a3 pixelFormat:(unsigned int)a4
{
  v4 = *&a4;
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [ADImageSupportedSize createWithSize:255 andLayout:a3.width, a3.height];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [ADImageDescriptor descriptorForSupportedSizes:v6 pixelFormat:v4];

  return v7;
}

+ (id)descriptorForSupportedSizes:(id)a3 pixelFormat:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [[ADImageDescriptor alloc] initWithSupportedSizes:v5 pixelFormat:v4];

  return v6;
}

@end