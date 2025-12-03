@interface VNCVPixelBufferConversionHelpers
+ (BOOL)isCVPixelBuffer:(__CVBuffer *)buffer equalToCVPixelBuffer:(__CVBuffer *)pixelBuffer;
+ (__CVBuffer)createCVPixelBufferRefFromDictionaryRepresentation:(id)representation;
+ (id)createDictionaryRepresentationOfCVPixelBuffer:(__CVBuffer *)buffer;
+ (id)dictionaryRepresentationClassesSet;
+ (unint64_t)computeHashForCVPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation VNCVPixelBufferConversionHelpers

+ (unint64_t)computeHashForCVPixelBuffer:(__CVBuffer *)buffer
{
  IsPlanar = CVPixelBufferIsPlanar(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v8 = [CVPixelBufferGetAttributes() hash];
  v9 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldNotPropagate);
  v10 = [(__CFDictionary *)v9 hash]^ __ROR8__(v8 ^ __ROR8__((Width << 26) ^ (Height << 13) ^ PixelFormatType, 51), 51);

  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(buffer);
    v12 = PlaneCount ^ __ROR8__(v10, 51);
    CVPixelBufferLockBaseAddress(buffer, 0);
    if (PlaneCount >= 1)
    {
      v13 = 0;
      v14 = PlaneCount & 0x7FFFFFFF;
      do
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, v13);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, v13);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, v13);
        v12 = VNHashMemory(BaseAddressOfPlane, BytesPerRowOfPlane * HeightOfPlane) ^ __ROR8__(v12, 51);
        ++v13;
      }

      while (v14 != v13);
    }
  }

  else
  {
    CVPixelBufferLockBaseAddress(buffer, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    v19 = CVPixelBufferGetHeight(buffer);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    v12 = VNHashMemory(BaseAddress, BytesPerRow * v19) ^ __ROR8__(v10, 51);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 0);
  return v12;
}

+ (BOOL)isCVPixelBuffer:(__CVBuffer *)buffer equalToCVPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if ((!buffer || pixelBuffer) && (buffer || !pixelBuffer))
  {
    if (pixelBuffer == buffer)
    {
      v12 = 1;
      return v12 & 1;
    }

    Height = CVPixelBufferGetHeight(buffer);
    if (Height == CVPixelBufferGetHeight(pixelBuffer))
    {
      v7 = CVPixelBufferGetHeight(buffer);
      if (v7 == CVPixelBufferGetHeight(pixelBuffer))
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
        if (PixelFormatType == CVPixelBufferGetPixelFormatType(pixelBuffer))
        {
          IsPlanar = CVPixelBufferIsPlanar(buffer);
          if (IsPlanar == CVPixelBufferIsPlanar(pixelBuffer))
          {
            v33 = CVPixelBufferGetAttributes();
            v32 = CVPixelBufferGetAttributes();
            if (([v33 isEqual:?] & 1) == 0)
            {
              v12 = 0;
LABEL_42:

              return v12 & 1;
            }

            v31 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldNotPropagate);
            v30 = CVBufferCopyAttachments(pixelBuffer, kCVAttachmentMode_ShouldNotPropagate);
            if (([(__CFDictionary *)v31 isEqual:?]& 1) != 0)
            {
              if (IsPlanar)
              {
                PlaneCount = CVPixelBufferGetPlaneCount(buffer);
                if (PlaneCount == CVPixelBufferGetPlaneCount(pixelBuffer))
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
                    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, v11);
                    v14 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v11);
                    if (BytesPerRowOfPlane != v14)
                    {
                      break;
                    }

                    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, v11);
                    if (HeightOfPlane != CVPixelBufferGetHeightOfPlane(pixelBuffer, v11))
                    {
                      break;
                    }

                    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, v11);
                    if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(pixelBuffer, v11))
                    {
                      break;
                    }

                    if (WidthOfPlane && HeightOfPlane)
                    {
                      CVPixelBufferLockBaseAddress(buffer, 0);
                      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
                      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, v11);
                      v18 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v11);
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

                      CVPixelBufferUnlockBaseAddress(buffer, 0);
                      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
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
                BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
                v23 = CVPixelBufferGetBytesPerRow(pixelBuffer);
                if (BytesPerRow == v23)
                {
                  v24 = CVPixelBufferGetHeight(buffer);
                  if (v24 == CVPixelBufferGetHeight(pixelBuffer))
                  {
                    Width = CVPixelBufferGetWidth(buffer);
                    if (Width == CVPixelBufferGetWidth(pixelBuffer))
                    {
                      v12 = 1;
                      if (Width && v24)
                      {
                        CVPixelBufferLockBaseAddress(buffer, 0);
                        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
                        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
                        v27 = CVPixelBufferGetBaseAddress(pixelBuffer);
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

                        CVPixelBufferUnlockBaseAddress(buffer, 0);
                        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
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

+ (__CVBuffer)createCVPixelBufferRefFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v36 = representationCopy;
  v4 = [representationCopy objectForKey:@"vnpbo_width"];
  intValue = [v4 intValue];

  v6 = [representationCopy objectForKey:@"vnpbo_height"];
  intValue2 = [v6 intValue];

  v8 = [representationCopy objectForKey:@"vnpbo_pixelFormat"];
  intValue3 = [v8 intValue];

  v10 = [representationCopy objectForKey:@"vnpbo_attribs"];
  v11 = [representationCopy objectForKey:@"vnpbo_attach"];
  v12 = intValue;
  v13 = intValue2;
  buffer = 0;
  if (VNCVPixelBufferCreateUsingIOSurface(v12, intValue2, intValue3, v10, &buffer))
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
          v17 = [representationCopy objectForKey:v16];

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bpr", i];
          v19 = [representationCopy objectForKey:v18];
          LODWORD(v20) = [v19 intValue];

          HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, i);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, i);
          bytes = [v17 bytes];
          v25 = v20;
          if (BytesPerRowOfPlane == v20)
          {
            memcpy(BaseAddressOfPlane, bytes, HeightOfPlane * v20);
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
              memcpy(BaseAddressOfPlane, bytes, v20);
              bytes += v25;
              BaseAddressOfPlane += BytesPerRowOfPlane;
            }
          }

          representationCopy = v36;
        }
      }

      CVPixelBufferUnlockBaseAddress(buffer, 0);
    }

    else
    {
      v26 = [representationCopy objectForKey:@"vnpbo_bytes"];
      v27 = [representationCopy objectForKey:@"vnpbo_bpr"];
      intValue4 = [v27 intValue];

      CVPixelBufferLockBaseAddress(buffer, 0);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      bytes2 = [v26 bytes];
      if (BytesPerRow == intValue4)
      {
        memcpy(BaseAddress, bytes2, intValue4 * intValue2);
      }

      else
      {
        if (intValue4 >= BytesPerRow)
        {
          v32 = BytesPerRow;
        }

        else
        {
          v32 = intValue4;
        }

        if (intValue2)
        {
          do
          {
            memcpy(BaseAddress, bytes2, v32);
            bytes2 += intValue4;
            BaseAddress += BytesPerRow;
            --v13;
          }

          while (v13);
        }
      }

      CVPixelBufferUnlockBaseAddress(buffer, 0);

      representationCopy = v36;
    }

    v14 = buffer;
    v11 = v34;
  }

  return v14;
}

+ (id)createDictionaryRepresentationOfCVPixelBuffer:(__CVBuffer *)buffer
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v24 = CVPixelBufferGetAttributes();
  v23 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldNotPropagate);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:Width];
  [v4 setObject:v8 forKey:@"vnpbo_width"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:Height];
  [v4 setObject:v9 forKey:@"vnpbo_height"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:PixelFormatType];
  [v4 setObject:v10 forKey:@"vnpbo_pixelFormat"];

  [v4 setObject:v24 forKey:@"vnpbo_attribs"];
  [v4 setObject:v23 forKey:@"vnpbo_attach"];
  if (CVPixelBufferIsPlanar(buffer))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(buffer);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, i);
        CVPixelBufferLockBaseAddress(buffer, 0);
        v15 = [MEMORY[0x1E695DEF0] dataWithBytes:CVPixelBufferGetBaseAddressOfPlane(buffer length:{i), HeightOfPlane * BytesPerRowOfPlane}];
        v16 = [MEMORY[0x1E696AD98] numberWithInt:BytesPerRowOfPlane];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bpr", i];
        [v4 setObject:v16 forKey:v17];

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%zu", @"vnpbo_bytes", i];
        [v4 setObject:v15 forKey:v18];

        CVPixelBufferUnlockBaseAddress(buffer, 0);
      }
    }
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    CVPixelBufferLockBaseAddress(buffer, 0);
    bytesPerRow = [MEMORY[0x1E695DEF0] dataWithBytes:CVPixelBufferGetBaseAddress(buffer) length:Height * BytesPerRow];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:BytesPerRow];
    [v4 setObject:v21 forKey:@"vnpbo_bpr"];

    [v4 setObject:bytesPerRow forKey:@"vnpbo_bytes"];
    CVPixelBufferUnlockBaseAddress(buffer, 0);
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