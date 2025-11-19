@interface ADEspressoImageDescriptor
+ (id)descriptorWithName:(id)a3 imageDescriptor:(id)a4 isInput:(BOOL)a5;
+ (id)inputDescriptorWithName:(id)a3 pixelFormat:(unsigned int)a4;
+ (id)outputDescriptorWithName:(id)a3 pixelFormat:(unsigned int)a4;
- (BOOL)conformedByPixelBuffer:(__CVBuffer *)a3 forLayout:(unint64_t)a4;
@end

@implementation ADEspressoImageDescriptor

- (BOOL)conformedByPixelBuffer:(__CVBuffer *)a3 forLayout:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(ADImageDescriptor *)self->_imageDescriptor conformedByPixelBuffer:a3 forLayout:a4];
  if (!v5)
  {
    return v5;
  }

  if (!CVPixelBufferGetIOSurface(a3))
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        return v5;
      }

      LOWORD(v17) = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "PixelBuffer is not backed by IOSurface, so cannot be used as an Espresso buffer";
      v12 = 2;
LABEL_19:
      _os_log_impl(&dword_240463000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, v12);
    }

LABEL_20:
    LOBYTE(v5) = 0;
    return v5;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  if (!PlaneCount)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    if ((BytesPerRow & 0x3F) == 0)
    {
LABEL_15:
      LOBYTE(v5) = 1;
      return v5;
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v14 = BytesPerRow;
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        return v5;
      }

      v17 = 134217984;
      v18 = v14;
      v10 = MEMORY[0x277D86220];
      v11 = "PixelBuffer has %zu bytes per row, which is not aligned to 64-bytes";
      v12 = 12;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v7 = PlaneCount;
  v8 = 0;
  while (1)
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, v8);
    if ((BytesPerRowOfPlane & 0x3F) != 0)
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_15;
    }
  }

  if (ADDebugUtilsADVerboseLogsEnabled != 1)
  {
    goto LABEL_20;
  }

  v15 = BytesPerRowOfPlane;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v17 = 134218240;
    v18 = v15;
    v19 = 2048;
    v20 = v8;
    v10 = MEMORY[0x277D86220];
    v11 = "PixelBuffer has %zu bytes per row in plane %zu, which is not aligned to 64-bytes";
    v12 = 22;
    goto LABEL_19;
  }

  return v5;
}

+ (id)descriptorWithName:(id)a3 imageDescriptor:(id)a4 isInput:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8)
  {
    if (v9)
    {
      v12 = objc_opt_new();
      v11 = v12;
      if (v12)
      {
        objc_storeStrong((v12 + 16), a3);
        *(v11 + 8) = a5;
        objc_storeStrong((v11 + 24), a4);
      }
    }
  }

  return v11;
}

+ (id)outputDescriptorWithName:(id)a3 pixelFormat:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [ADImageDescriptor descriptorForSupportedSizes:0 pixelFormat:v4];
  v7 = [ADEspressoImageDescriptor descriptorWithName:v5 imageDescriptor:v6 isInput:0];

  return v7;
}

+ (id)inputDescriptorWithName:(id)a3 pixelFormat:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [ADImageDescriptor descriptorForSupportedSizes:0 pixelFormat:v4];
  v7 = [ADEspressoImageDescriptor descriptorWithName:v5 imageDescriptor:v6 isInput:1];

  return v7;
}

@end