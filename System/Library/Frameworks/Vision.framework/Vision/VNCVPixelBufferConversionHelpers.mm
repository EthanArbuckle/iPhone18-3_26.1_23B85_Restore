@interface VNCVPixelBufferConversionHelpers
+ (BOOL)isCVPixelBuffer:(__CVBuffer *)a3 equalToCVPixelBuffer:(__CVBuffer *)a4;
+ (__CVBuffer)createCVPixelBufferRefFromDictionaryRepresentation:(id)a3;
+ (id)createDictionaryRepresentationOfCVPixelBuffer:(__CVBuffer *)a3;
+ (id)dictionaryRepresentationClassesSet;
+ (unint64_t)computeHashForCVPixelBuffer:(__CVBuffer *)a3;
@end

@implementation VNCVPixelBufferConversionHelpers

+ (unint64_t)computeHashForCVPixelBuffer:(__CVBuffer *)a3
{
  IsPlanar = CVPixelBufferIsPlanar(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = [CVPixelBufferGetAttributes() hash];
  v9 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldNotPropagate);
  v10 = [(__CFDictionary *)v9 hash]^ __ROR8__(v8 ^ __ROR8__((Width << 26) ^ (Height << 13) ^ PixelFormatType, 51), 51);

  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    v12 = PlaneCount ^ __ROR8__(v10, 51);
    CVPixelBufferLockBaseAddress(a3, 0);
    if (PlaneCount >= 1)
    {
      v13 = 0;
      v14 = PlaneCount & 0x7FFFFFFF;
      do
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, v13);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, v13);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, v13);
        v12 = VNHashMemory(BaseAddressOfPlane, BytesPerRowOfPlane * HeightOfPlane) ^ __ROR8__(v12, 51);
        ++v13;
      }

      while (v14 != v13);
    }
  }

  else
  {
    CVPixelBufferLockBaseAddress(a3, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v19 = CVPixelBufferGetHeight(a3);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    v12 = VNHashMemory(BaseAddress, BytesPerRow * v19) ^ __ROR8__(v10, 51);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  return v12;
}

+ (BOOL)isCVPixelBuffer:(__CVBuffer *)a3 equalToCVPixelBuffer:(__CVBuffer *)a4
{
  if ((!a3 || a4) && (a3 || !a4))
  {
    if (a4 == a3)
    {
      v12 = 1;
      return v12 & 1;
    }

    Height = CVPixelBufferGetHeight(a3);
    if (Height == CVPixelBufferGetHeight(a4))
    {
      v7 = CVPixelBufferGetHeight(a3);
      if (v7 == CVPixelBufferGetHeight(a4))
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
        if (PixelFormatType == CVPixelBufferGetPixelFormatType(a4))
        {
          IsPlanar = CVPixelBufferIsPlanar(a3);
          if (IsPlanar == CVPixelBufferIsPlanar(a4))
          {
            v33 = CVPixelBufferGetAttributes();
            v32 = CVPixelBufferGetAttributes();
            if (([v33 isEqual:?] & 1) == 0)
            {
              v12 = 0;
LABEL_42:

              return v12 & 1;
            }

            v31 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldNotPropagate);
            v30 = CVBufferCopyAttachments(a4, kCVAttachmentMode_ShouldNotPropagate);
            if (([(__CFDictionary *)v31 isEqual:?]& 1) != 0)
            {
              if (IsPlanar)
              {
                PlaneCount = CVPixelBufferGetPlaneCount(a3);
                if (PlaneCount == CVPixelBufferGetPlaneCount(a4))
                {
                  if (PlaneCount < 1)
                  {
                    v12 = 1;
                    goto LABEL_41;
                  }

                  v11 = 0;
                  v29 = PlaneCount & 0x7FFFFFFF;
                  v12 = 1;
                  while (1)
                  {
                    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, v11);
                    v14 = CVPixelBufferGetBytesPerRowOfPlane(a4, v11);
                    if (BytesPerRowOfPlane != v14)
                    {
                      break;
                    }

                    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, v11);
                    if (HeightOfPlane != CVPixelBufferGetHeightOfPlane(a4, v11))
                    {
                      break;
                    }

                    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, v11);
                    if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(a4, v11))
                    {
                      break;
                    }

                    if (WidthOfPlane && HeightOfPlane)
                    {
                      CVPixelBufferLockBaseAddress(a3, 0);
                      CVPixelBufferLockBaseAddress(a4, 0);
                      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, v11);
                      v18 = CVPixelBufferGetBaseAddressOfPlane(a4, v11);
                      if (HeightOfPlane >= 1)
                      {
                        v19 = v18;
                        v20 = (BytesPerRowOfPlane / WidthOfPlane * WidthOfPlane);
                        do
                        {
                          v12 &= memcmp(BaseAddressOfPlane, v19, v20) == 0;
                          v19 += v14;
                          BaseAddressOfPlane += BytesPerRowOfPlane;
                          --HeightOfPlane;
                        }

                        while (HeightOfPlane);
                      }

                      CVPixelBufferUnlockBaseAddress(a3, 0);
                      CVPixelBufferUnlockBaseAddress(a4, 0);
                    }

                    if (++v11 == v29)
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }

              else
              {
                BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
                v23 = CVPixelBufferGetBytesPerRow(a4);
                if (BytesPerRow == v23)
                {
                  v24 = CVPixelBufferGetHeight(a3);
                  if (v24 == CVPixelBufferGetHeight(a4))
                  {
                    Width = CVPixelBufferGetWidth(a3);
                    if (Width == CVPixelBufferGetWidth(a4))
                    {
                      v12 = 1;
                      if (Width && v24)
                      {
                        CVPixelBufferLockBaseAddress(a3, 0);
                        CVPixelBufferLockBaseAddress(a4, 0);
                        BaseAddress = CVPixelBufferGetBaseAddress(a3);
                        v27 = CVPixelBufferGetBaseAddress(a4);
                        if (v24 >= 1)
                        {
                          v28 = v27;
                          do
                          {
                            v12 &= memcmp(BaseAddress, v28, (BytesPerRow / Width * Width)) == 0;
                            v28 += v23;
                            BaseAddress += BytesPerRow;
                            --v24;
                          }

                          while (v24);
                        }

                        CVPixelBufferUnlockBaseAddress(a3, 0);
                        CVPixelBufferUnlockBaseAddress(a4, 0);
                      }

                      goto LABEL_41;
                    }
                  }
                }
              }
            }

            v12 = 0;
LABEL_41:

            goto LABEL_42;
          }
        }
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

+ (__CVBuffer)createCVPixelBufferRefFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v36 = v3;
  v4 = [v3 objectForKey:@"vnpbo_width"];
  v5 = [v4 intValue];

  v6 = [v3 objectForKey:@"vnpbo_height"];
  v7 = [v6 intValue];

  v8 = [v3 objectForKey:@"vnpbo_pixelFormat"];
  v9 = [v8 intValue];

  v10 = [v3 objectForKey:@"vnpbo_attribs"];
  v11 = [v3 objectForKey:@"vnpbo_attach"];
  v12 = v5;
  v13 = v7;
  buffer = 0;
  if (VNCVPixelBufferCreateUsingIOSurface(v12, v7, v9, v10, &buffer))
  {
    v14 = 0;
  }

  else
  {
    if (v11)
    {
      CVBufferSetAttachments(buffer, v11, kCVAttachmentMode_ShouldNotPropagate);
    }

    v34 = v11;
    if (CVPixelBufferIsPlanar(buffer))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(buffer);
      CVPixelBufferLockBaseAddress(buffer, 0);
      if (PlaneCount)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bytes", i];
          v17 = [v3 objectForKey:v16];

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bpr", i];
          v19 = [v3 objectForKey:v18];
          LODWORD(v20) = [v19 intValue];

          HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, i);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, i);
          v24 = [v17 bytes];
          v25 = v20;
          if (BytesPerRowOfPlane == v20)
          {
            memcpy(BaseAddressOfPlane, v24, HeightOfPlane * v20);
          }

          else
          {
            if (v20 >= BytesPerRowOfPlane)
            {
              v20 = BytesPerRowOfPlane;
            }

            else
            {
              v20 = v20;
            }

            for (; HeightOfPlane; --HeightOfPlane)
            {
              memcpy(BaseAddressOfPlane, v24, v20);
              v24 += v25;
              BaseAddressOfPlane += BytesPerRowOfPlane;
            }
          }

          v3 = v36;
        }
      }

      CVPixelBufferUnlockBaseAddress(buffer, 0);
    }

    else
    {
      v26 = [v3 objectForKey:@"vnpbo_bytes"];
      v27 = [v3 objectForKey:@"vnpbo_bpr"];
      v28 = [v27 intValue];

      CVPixelBufferLockBaseAddress(buffer, 0);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      v31 = [v26 bytes];
      if (BytesPerRow == v28)
      {
        memcpy(BaseAddress, v31, v28 * v7);
      }

      else
      {
        if (v28 >= BytesPerRow)
        {
          v32 = BytesPerRow;
        }

        else
        {
          v32 = v28;
        }

        if (v7)
        {
          do
          {
            memcpy(BaseAddress, v31, v32);
            v31 += v28;
            BaseAddress += BytesPerRow;
            --v13;
          }

          while (v13);
        }
      }

      CVPixelBufferUnlockBaseAddress(buffer, 0);

      v3 = v36;
    }

    v14 = buffer;
    v11 = v34;
  }

  return v14;
}

+ (id)createDictionaryRepresentationOfCVPixelBuffer:(__CVBuffer *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v24 = CVPixelBufferGetAttributes();
  v23 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldNotPropagate);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:Width];
  [v4 setObject:v8 forKey:@"vnpbo_width"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:Height];
  [v4 setObject:v9 forKey:@"vnpbo_height"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:PixelFormatType];
  [v4 setObject:v10 forKey:@"vnpbo_pixelFormat"];

  [v4 setObject:v24 forKey:@"vnpbo_attribs"];
  [v4 setObject:v23 forKey:@"vnpbo_attach"];
  if (CVPixelBufferIsPlanar(a3))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, i);
        CVPixelBufferLockBaseAddress(a3, 0);
        v15 = [MEMORY[0x1E695DEF0] dataWithBytes:CVPixelBufferGetBaseAddressOfPlane(a3 length:{i), HeightOfPlane * BytesPerRowOfPlane}];
        v16 = [MEMORY[0x1E696AD98] numberWithInt:BytesPerRowOfPlane];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bpr", i];
        [v4 setObject:v16 forKey:v17];

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bytes", i];
        [v4 setObject:v15 forKey:v18];

        CVPixelBufferUnlockBaseAddress(a3, 0);
      }
    }
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    CVPixelBufferLockBaseAddress(a3, 0);
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:CVPixelBufferGetBaseAddress(a3) length:Height * BytesPerRow];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:BytesPerRow];
    [v4 setObject:v21 forKey:@"vnpbo_bpr"];

    [v4 setObject:v20 forKey:@"vnpbo_bytes"];
    CVPixelBufferUnlockBaseAddress(a3, 0);
  }

  return v4;
}

+ (id)dictionaryRepresentationClassesSet
{
  if (+[VNCVPixelBufferConversionHelpers dictionaryRepresentationClassesSet]::onceToken != -1)
  {
    dispatch_once(&+[VNCVPixelBufferConversionHelpers dictionaryRepresentationClassesSet]::onceToken, &__block_literal_global_18205);
  }

  v3 = +[VNCVPixelBufferConversionHelpers dictionaryRepresentationClassesSet]::classesSet;

  return v3;
}

uint64_t __70__VNCVPixelBufferConversionHelpers_dictionaryRepresentationClassesSet__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  +[VNCVPixelBufferConversionHelpers dictionaryRepresentationClassesSet]::classesSet = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end