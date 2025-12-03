@interface BSUIMappedSurfaceImage
+ (BOOL)writeSurfaceImage:(int)image toFileDescriptor:;
+ (id)mappedSurfaceImageFromPath:(int)path loadEagerly:;
@end

@implementation BSUIMappedSurfaceImage

+ (BOOL)writeSurfaceImage:(int)image toFileDescriptor:
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = a2;
  objc_opt_self();
  ioSurface = [v41 ioSurface];
  v5 = ioSurface;
  if (ioSurface)
  {
    IOSurfaceLock(ioSurface, 1u, 0);
    PlaneCount = IOSurfaceGetPlaneCount(v5);
    BaseAddress = IOSurfaceGetBaseAddress(v5);
    v7 = 0;
    if (BaseAddress)
    {
      v39 = BaseAddress;
      if (!HIDWORD(PlaneCount))
      {
        AllocSize = IOSurfaceGetAllocSize(v5);
        if (__writeDataToFileDescriptor(image, v39, AllocSize))
        {
          v9 = IOSurfaceCopyAllValues(v5);
          v10 = v9;
          if (!v9)
          {
            Length = 0;
            goto LABEL_18;
          }

          if (CFDictionaryGetCount(v9) >= 1 && (Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v10, kCFPropertyListBinaryFormat_v1_0, 0, 0), (v12 = Data) != 0))
          {
            Length = CFDataGetLength(Data);
            if (HIDWORD(Length))
            {
              v14 = 0;
            }

            else
            {
              BytePtr = CFDataGetBytePtr(v12);
              v14 = __writeDataToFileDescriptor(image, BytePtr, Length);
            }

            CFRelease(v12);
          }

          else
          {
            Length = 0;
            v14 = 1;
          }

          CFRelease(v10);
          if (v14)
          {
LABEL_18:
            Width = IOSurfaceGetWidth(v5);
            v37 = AllocSize;
            if (Width != IOSurfaceGetWidthOfPlane(v5, 0))
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSUIMappedSurfaceImage writeSurfaceImage:toFileDescriptor:]"];
              [currentHandler handleFailureInFunction:v34 file:@"BSUIMappedSurfaceImage.m" lineNumber:99 description:@"width of surface not the same as width of first plane"];
            }

            Height = IOSurfaceGetHeight(v5);
            if (Height != IOSurfaceGetHeightOfPlane(v5, 0))
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSUIMappedSurfaceImage writeSurfaceImage:toFileDescriptor:]"];
              [currentHandler2 handleFailureInFunction:v36 file:@"BSUIMappedSurfaceImage.m" lineNumber:100 description:@"height of surface not the same as height of first plane"];
            }

            v18 = 0;
            while (1)
            {
              WidthOfPlane = IOSurfaceGetWidthOfPlane(v5, v18);
              HeightOfPlane = IOSurfaceGetHeightOfPlane(v5, v18);
              BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(v5, v18);
              BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v5, v18);
              BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v5, v18);
              v7 = 0;
              if (HIDWORD(WidthOfPlane) || HIDWORD(HeightOfPlane) || HIDWORD(BytesPerElementOfPlane) || HIDWORD(BytesPerRowOfPlane) || (BaseAddressOfPlane - v39) >> 32)
              {
                goto LABEL_46;
              }

              v24 = 0;
              *buf = WidthOfPlane;
              v43 = __PAIR64__(BytesPerElementOfPlane, HeightOfPlane);
              LODWORD(v44) = BytesPerRowOfPlane;
              HIDWORD(v44) = BaseAddressOfPlane - v39;
              do
              {
                v25 = write(image, &buf[v24], 20 - v24);
                if (v25 < 0)
                {
                  break;
                }

                v24 += v25 & ~(v25 >> 63);
              }

              while (v24 <= 0x13);
              if ((v25 & 0x8000000000000000) == 0 && ++v18 < PlaneCount)
              {
                continue;
              }

              if ((v25 & 0x8000000000000000) == 0)
              {
                *buf = IOSurfaceGetPixelFormat(v5);
                v43 = __PAIR64__(Length, PlaneCount);
                [v41 scale];
                v44 = bswap64(v26);
                v27 = 0;
                imageOrientation = [v41 imageOrientation];
                v46 = -1413377484;
                do
                {
                  v28 = write(image, &buf[v27], 28 - v27);
                  v29 = v28;
                  if (v28 < 0)
                  {
                    break;
                  }

                  v27 += v28 & ~(v28 >> 63);
                }

                while (v27 <= 0x1B);
                if ((v28 & 0x8000000000000000) == 0)
                {
                  if (PlaneCount <= 1)
                  {
                    v30 = 1;
                  }

                  else
                  {
                    v30 = PlaneCount;
                  }

                  v31 = lseek(image, 0, 2);
                  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    __assert_rtn("+[BSUIMappedSurfaceImage writeSurfaceImage:toFileDescriptor:]", "BSUIMappedSurfaceImage.m", 140, "end < LONG_MAX");
                  }

                  v7 = v31 == v37 + 20 * v30 + Length + 28 && v29 >= 0;
                  goto LABEL_46;
                }
              }

              break;
            }
          }
        }

        v7 = 0;
      }
    }

LABEL_46:
    IOSurfaceUnlock(v5, 1u, 0);
    goto LABEL_47;
  }

  v15 = BSLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v43 = "+[BSUIMappedSurfaceImage writeSurfaceImage:toFileDescriptor:]";
    _os_log_error_impl(&dword_1A2D36000, v15, OS_LOG_TYPE_ERROR, " %s : can not persist image that is not backed by an IOSurface", buf, 0xCu);
  }

  v7 = 0;
LABEL_47:

  return v7;
}

+ (id)mappedSurfaceImageFromPath:(int)path loadEagerly:
{
  v74[8] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_self();
  MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
  v7 = MappedDataFromPath;
  if (!MappedDataFromPath)
  {
    v15 = 0;
    goto LABEL_22;
  }

  BytePtr = CFDataGetBytePtr(MappedDataFromPath);
  v9 = CFDataGetLength(v7);
  if (path)
  {
    madvise(BytePtr, v9, 3);
  }

  if (!BytePtr || v9 < 0x30)
  {
    v14 = BSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
      _os_log_error_impl(&dword_1A2D36000, v14, OS_LOG_TYPE_ERROR, " %s : file too small to describe a surface", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v10 = &BytePtr[v9];
  if (*&BytePtr[v9 - 4] != -1413377484)
  {
    v14 = BSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
      _os_log_error_impl(&dword_1A2D36000, v14, OS_LOG_TYPE_ERROR, " %s : format of file not recognized", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v11 = *(v10 - 6);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v10 - 6);
  }

  v13 = 20 * v12 + 28;
  if (v9 >= v13 + *(v10 - 5))
  {
    length = *(v10 - 5);
    v50 = *(v10 - 7);
    v48 = *(v10 - 2);
    v49 = *(v10 - 2);
    v17 = v9 - v13;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __65__BSUIMappedSurfaceImage_mappedSurfaceImageFromPath_loadEagerly___block_invoke;
    v58[3] = &__block_descriptor_48_e40_v20__0___BSUISurfacePlaneInfo_IIIII_8I16l;
    v58[4] = BytePtr;
    v58[5] = v17;
    v56 = MEMORY[0x1A58E5D00](v58);
    (v56)[2](v56, &v59, 0);
    v18 = v17 - length;
    if (v18 < (HIDWORD(v59) * HIDWORD(v60)))
    {
      v19 = BSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
        v64 = 1024;
        LODWORD(v65[0]) = HIDWORD(v60);
        WORD2(v65[0]) = 1024;
        *(v65 + 6) = HIDWORD(v59);
        _os_log_error_impl(&dword_1A2D36000, v19, OS_LOG_TYPE_ERROR, " %s : file too small to describe surface with bytesPerRow=%u and height=%u", buf, 0x18u);
      }

      goto LABEL_51;
    }

    v47 = v18;
    if (v11)
    {
      v43 = HIDWORD(v59);
      v45 = v59;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __65__BSUIMappedSurfaceImage_mappedSurfaceImageFromPath_loadEagerly___block_invoke_13;
      v57[3] = &__block_descriptor_40_e51___NSDictionary_16__0___BSUISurfacePlaneInfo_IIIII_8l;
      v57[4] = v18;
      v20 = MEMORY[0x1A58E5D00](v57);
      v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
      v21 = (*(v20 + 2))(v20, &v59);
      [v54 bs_safeAddObject:v21];

      if (v11 != 1)
      {
        v22 = 1;
        do
        {
          (v56)[2](v56, &v59, v22);
          v23 = (*(v20 + 2))(v20, &v59);
          [v54 bs_safeAddObject:v23];

          v22 = (v22 + 1);
        }

        while (v11 != v22);
      }

      if ([v54 count]== v11)
      {
        v66[0] = *MEMORY[0x1E696CFC0];
        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v50];
        v66[1] = *MEMORY[0x1E696CEB8];
        v51 = v67;
        v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:BytePtr];
        v66[2] = *MEMORY[0x1E696CE30];
        v42 = v68;
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v47];
        v69 = v24;
        v66[3] = *MEMORY[0x1E696D130];
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v45];
        v70 = v25;
        v66[4] = *MEMORY[0x1E696CF58];
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v43];
        v66[5] = *MEMORY[0x1E696D0A8];
        v71 = v26;
        v72 = v54;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:v66 count:6];

        v28 = IOSurfaceCreate(v27);
        if (!v28)
        {
          v29 = BSLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
            v64 = 2114;
            v65[0] = v27;
            _os_log_error_impl(&dword_1A2D36000, v29, OS_LOG_TYPE_ERROR, " %s : failed to create surface with properties -> %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v28 = 0;
      }

      v34 = v54;
    }

    else
    {
      v73[0] = *MEMORY[0x1E696CFC0];
      v74[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v50];
      v73[1] = *MEMORY[0x1E696CEB8];
      v52 = v74[0];
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:BytePtr];
      v74[1] = v55;
      v73[2] = *MEMORY[0x1E696CE30];
      v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
      v74[2] = v46;
      v73[3] = *MEMORY[0x1E696CFA8];
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v61];
      v74[3] = v44;
      v73[4] = *MEMORY[0x1E696D130];
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v59];
      v74[4] = v30;
      v73[5] = *MEMORY[0x1E696CF58];
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v59)];
      v74[5] = v31;
      v73[6] = *MEMORY[0x1E696CE50];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v60];
      v74[6] = v32;
      v73[7] = *MEMORY[0x1E696CE58];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v60)];
      v74[7] = v33;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:8];

      v28 = IOSurfaceCreate(v20);
      if (v28)
      {
        goto LABEL_45;
      }

      v34 = BSLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
        v64 = 2114;
        v65[0] = v20;
        _os_log_error_impl(&dword_1A2D36000, v34, OS_LOG_TYPE_ERROR, " %s : failed to create surface with properties -> %{public}@", buf, 0x16u);
      }
    }

LABEL_45:
    if (v28)
    {
      if (length)
      {
        v35 = *MEMORY[0x1E695E480];
        v36 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], &BytePtr[v47], length, *MEMORY[0x1E695E498]);
        if (v36)
        {
          v37 = CFPropertyListCreateWithData(v35, v36, 0, 0, 0);
          v38 = v37;
          if (v37)
          {
            v39 = CFGetTypeID(v37);
            if (v39 == CFDictionaryGetTypeID())
            {
              IOSurfaceSetValues(v28, v38);
            }

            else
            {
              v40 = BSLogCommon();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
                v64 = 2114;
                v65[0] = v38;
                _os_log_error_impl(&dword_1A2D36000, v40, OS_LOG_TYPE_ERROR, " %s : surfaceValues field contained an invalid type - skipping : surfaceValues=%{public}@", buf, 0x16u);
              }
            }

            CFRelease(v38);
          }

          CFRelease(v36);
        }
      }

      v41 = [[v5 alloc] _initWithIOSurface:v28 scale:v49 orientation:COERCE_DOUBLE(bswap64(v48))];
      v15 = v41;
      if (v41)
      {
        objc_storeStrong((v41 + 144), v7);
      }

      CFRelease(v28);
      goto LABEL_60;
    }

LABEL_51:
    v15 = 0;
LABEL_60:

    goto LABEL_21;
  }

  v14 = BSLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]";
    v64 = 1024;
    LODWORD(v65[0]) = v11;
    _os_log_error_impl(&dword_1A2D36000, v14, OS_LOG_TYPE_ERROR, " %s : file too small to describe a surface with %u planes", buf, 0x12u);
  }

LABEL_20:

  v15 = 0;
LABEL_21:
  CFRelease(v7);
LABEL_22:

  return v15;
}

__n128 __65__BSUIMappedSurfaceImage_mappedSurfaceImageFromPath_loadEagerly___block_invoke(uint64_t a1, __n128 *a2, unsigned int a3)
{
  v3 = (*(a1 + 32) + *(a1 + 40) + 20 * a3);
  result = *v3;
  a2[1].n128_u32[0] = v3[1].n128_u32[0];
  *a2 = result;
  return result;
}

id __65__BSUIMappedSurfaceImage_mappedSurfaceImageFromPath_loadEagerly___block_invoke_13(uint64_t a1, unsigned int *a2)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = a2[1] * a2[3];
  if (*(a1 + 32) >= a2[4] + v3)
  {
    v23[0] = *MEMORY[0x1E696D0C8];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a2];
    v24[0] = v4;
    v23[1] = *MEMORY[0x1E696D090];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2[1]];
    v24[1] = v6;
    v23[2] = *MEMORY[0x1E696CFE0];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2[2]];
    v24[2] = v7;
    v23[3] = *MEMORY[0x1E696CFE8];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2[3]];
    v24[3] = v8;
    v23[4] = *MEMORY[0x1E696D0B0];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2[4]];
    v24[4] = v9;
    v23[5] = *MEMORY[0x1E696D0B8];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v3];
    v24[5] = v10;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];
  }

  else
  {
    v4 = BSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = a2[3];
      v12 = a2[4];
      v14 = a2[1];
      v15 = 136315906;
      v16 = "+[BSUIMappedSurfaceImage mappedSurfaceImageFromPath:loadEagerly:]_block_invoke";
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = v13;
      v21 = 1024;
      v22 = v14;
      _os_log_error_impl(&dword_1A2D36000, v4, OS_LOG_TYPE_ERROR, " %s : file too small to describe plane with offset=%u bytesPerRow=%u and height=%u", &v15, 0x1Eu);
    }

    v5 = 0;
  }

  return v5;
}

@end