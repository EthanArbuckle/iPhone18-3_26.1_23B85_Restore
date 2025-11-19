__IOSurface *CreateSurfaceWrapped(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a1 && a2 && a3)
  {
    if (is_biplanar(a3))
    {
      return 0;
    }

    v11 = bytes_per_element(a3);
    v12 = min_bytes_per_row(a3, a1);
    v5 = 0;
    if (v11)
    {
      v13 = v12;
      if (v12 - 1 < a4)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          return 0;
        }

        v15 = Mutable;
        v16 = *MEMORY[0x1E696CEB8];
        valuePtr = a5;
        v17 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionarySetValue(v15, v16, v17);
        CFRelease(v17);
        v18 = *MEMORY[0x1E696CE30];
        valuePtr = v13 + (a2 - 1) * a4;
        v19 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionarySetValue(v15, v18, v19);
        CFRelease(v19);
        v20 = *MEMORY[0x1E696CE58];
        valuePtr = a4;
        v21 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionarySetValue(v15, v20, v21);
        CFRelease(v21);
        v22 = *MEMORY[0x1E696D130];
        valuePtr = a1;
        v23 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionarySetValue(v15, v22, v23);
        CFRelease(v23);
        v24 = *MEMORY[0x1E696CF58];
        valuePtr = a2;
        v25 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        CFDictionarySetValue(v15, v24, v25);
        CFRelease(v25);
        v26 = *MEMORY[0x1E696CFC0];
        LODWORD(valuePtr) = a3;
        v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v15, v26, v27);
        CFRelease(v27);
        v28 = *MEMORY[0x1E696CE50];
        LODWORD(valuePtr) = v11;
        v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v15, v28, v29);
        CFRelease(v29);
        if (((equivalent_uncompressed_format(a3) - 1919365990) & 0xFFFFFFFD) == 0)
        {
          goto LABEL_23;
        }

        v30 = 2;
        if (a3 <= 846624120)
        {
          if (a3 == 828584240 || a3 == 845361456)
          {
            v30 = 3;
            goto LABEL_22;
          }

          v31 = 846624102;
        }

        else
        {
          if (a3 <= 2037741157)
          {
            if (a3 != 846624121)
            {
              v31 = 1983000886;
              goto LABEL_19;
            }

LABEL_22:
            v32 = *MEMORY[0x1E696CF10];
            LODWORD(valuePtr) = v30;
            v33 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFDictionarySetValue(v15, v32, v33);
            CFRelease(v33);
LABEL_23:
            v5 = IOSurfaceCreate(v15);
            if (CI_NAME_SURFACES())
            {
              IOSurfaceSetValue(v5, *MEMORY[0x1E696CF98], @"CoreImage");
            }

            CFRelease(v15);
            return v5;
          }

          if (a3 == 2037741158)
          {
            goto LABEL_22;
          }

          v31 = 2037741171;
        }

LABEL_19:
        if (a3 != v31)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }
  }

  return v5;
}

uint64_t SurfaceSetVolatile(IOSurfaceRef buffer, unsigned int a2)
{
  if (CI_TRASH_SURFACES_ON_SETVOLATILE_didCheck != -1)
  {
    SurfaceSetVolatile_cold_1();
  }

  if (CI_TRASH_SURFACES_ON_SETVOLATILE_v)
  {
    SurfaceApplyPlaneBlock(buffer, &__block_literal_global_39);
  }

  if (a2 >= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = a2;
  }

  oldState = 0;
  return IOSurfaceSetPurgeable(buffer, (v4 << 8) | 1, &oldState);
}

uint64_t SurfaceSetVolatileEmpty(IOSurfaceRef buffer)
{
  if (CI_TRASH_SURFACES_ON_SETVOLATILE_didCheck != -1)
  {
    SurfaceSetVolatile_cold_1();
  }

  if (CI_TRASH_SURFACES_ON_SETVOLATILE_v)
  {
    SurfaceApplyPlaneBlock(buffer, &__block_literal_global_39);
  }

  oldState = 0;
  return IOSurfaceSetPurgeable(buffer, 2u, &oldState);
}

BOOL SurfaceSetNonVolatile(__IOSurface *a1)
{
  oldState = 0;
  if (IOSurfaceSetPurgeable(a1, 0, &oldState))
  {
    return 1;
  }

  if (CI_TRASH_SURFACES_ON_SETVOLATILE_didCheck != -1)
  {
    SurfaceSetNonVolatile_cold_1();
  }

  return !CI_TRASH_SURFACES_ON_SETVOLATILE_v && oldState != 2;
}

BOOL SurfaceIsVolatile(__IOSurface *a1)
{
  oldState = 0;
  if (IOSurfaceSetPurgeable(a1, 3u, &oldState))
  {
    v1 = 1;
  }

  else
  {
    v1 = oldState == 0;
  }

  return !v1;
}

BOOL SurfaceIsRowBytesAligned(__IOSurface *a1, unint64_t a2)
{
  PlaneCount = IOSurfaceGetPlaneCount(a1);
  v5 = 1;
  do
  {
    v6 = IOSurfaceGetBytesPerRowOfPlane(a1, v5 - 1) % a2;
    if (PlaneCount <= v5)
    {
      break;
    }

    ++v5;
  }

  while (!v6);
  return v6 == 0;
}

CGColorSpaceRef CreateColorSpaceFromInfo(const void *a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  v4 = 0;
  v66 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (CFEqual(a1, *MEMORY[0x1E6965DB8]))
    {
      v9 = 1;
    }

    else if (CFEqual(a1, *MEMORY[0x1E6965DA0]))
    {
      v9 = 5;
    }

    else if (CFEqual(a1, *MEMORY[0x1E6965DD8]))
    {
      v9 = 6;
    }

    else if (CFEqual(a1, *MEMORY[0x1E6965DC0]))
    {
      v9 = 22;
    }

    else if (CFEqual(a1, *MEMORY[0x1E6965DB0]))
    {
      v9 = 9;
    }

    else if (CFEqual(a1, *MEMORY[0x1E6965D98]))
    {
      v9 = 11;
    }

    else if (CFEqual(a1, *MEMORY[0x1E6965DD0]))
    {
      v9 = 12;
    }

    else
    {
      v9 = 2;
    }

    if (CFEqual(a2, *MEMORY[0x1E6965F50]))
    {
      v10 = 1;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F68]))
    {
      v10 = 7;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F40]))
    {
      v10 = 14;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F80]))
    {
      v10 = 0;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F78]))
    {
      v10 = 17;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F60]))
    {
      v10 = 8;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F88]))
    {
      v10 = 13;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F70]))
    {
      v10 = 16;
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965F48]))
    {
      v10 = 18;
    }

    else
    {
      v10 = 2;
    }

    if (a3)
    {
      if (CFEqual(a3, *MEMORY[0x1E6965FD0]))
      {
        v11 = 1;
      }

      else if (CFEqual(a3, *MEMORY[0x1E6965FC8]))
      {
        v11 = 6;
      }

      else if (CFEqual(a3, *MEMORY[0x1E6965FF0]))
      {
        v11 = 7;
      }

      else if (CFEqual(a3, *MEMORY[0x1E6965FA0]))
      {
        v11 = 11;
      }

      else if (CFEqual(a3, *MEMORY[0x1E6965FE8]))
      {
        v11 = 12;
      }

      else if (CFEqual(a3, *MEMORY[0x1E6965FB0]))
      {
        v11 = 9;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 2;
    }

    *&valuePtr = 1.0;
    if (a4)
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v12 = *&valuePtr;
    }

    else
    {
      v12 = 1.0;
    }

    if (v9 == 12 && v10 == 1)
    {
      v13 = MEMORY[0x1E695F0B8];
      return CGColorSpaceCreateWithName(*v13);
    }

    if (v9 == 1 && v10 == 13)
    {
      v13 = MEMORY[0x1E695F1C0];
      return CGColorSpaceCreateWithName(*v13);
    }

    if (v9 == 1 && v10 == 8)
    {
      v13 = MEMORY[0x1E695F1B0];
      return CGColorSpaceCreateWithName(*v13);
    }

    v57 = 0;
    v56 = v12;
    v54 = 0x3FF0000000000000;
    v55 = 0;
    v53 = 0;
    if (v9 == 1)
    {
      v15 = &CreateColorSpaceFromInfoValues_primaries_ITU_R709_2_Info;
      goto LABEL_68;
    }

    if (v9 <= 8)
    {
      if (v9 == 5)
      {
        v15 = &CreateColorSpaceFromInfoValues_primaries_EBU_3213_Info;
        goto LABEL_68;
      }

      if (v9 == 6)
      {
        v15 = &CreateColorSpaceFromInfoValues_primaries_SMPTE_C_Info;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v9)
      {
        case 9:
          v15 = &CreateColorSpaceFromInfoValues_primaries_ITU_R_2020_Info;
          goto LABEL_68;
        case 0xB:
          v15 = &CreateColorSpaceFromInfoValues_primaries_DCI_P3_Info;
          goto LABEL_68;
        case 0x16:
          v15 = &CreateColorSpaceFromInfoValues_primaries_GenericRGB_Info;
          goto LABEL_68;
      }
    }

    if (v9 == 12)
    {
      v15 = &CreateColorSpaceFromInfoValues_primaries_P3_D65_Info;
    }

    else
    {
      v15 = &CreateColorSpaceFromInfoValues_primaries_GenericRGB_Info;
    }

LABEL_68:
    v16 = &CreateColorSpaceFromInfoValues_transferFunction_ITU_R2020_Info;
    v17 = &qword_19CF2BB50;
    v18 = &qword_19CF2BB58;
    v19 = &qword_19CF2BB60;
    v20 = &qword_19CF2BB68;
    if (v10 == 1)
    {
      v10 = 1;
    }

    else if (v10 > 0xF || ((1 << v10) & 0xC080) == 0)
    {
      if (v10 == 8)
      {
        v16 = &CreateColorSpaceFromInfoValues_transferFunction_Linear_Info;
        v17 = &qword_19CF2BB78;
        v18 = &qword_19CF2BB80;
        v19 = &qword_19CF2BB88;
        v20 = &qword_19CF2BB90;
        v10 = 8;
      }

      else if (v10 == 13)
      {
        v16 = &CreateColorSpaceFromInfoValues_transferFunction_sRGB_Info;
        v17 = &qword_19CF2BBA0;
        v18 = &qword_19CF2BBA8;
        v19 = &qword_19CF2BBB0;
        v20 = &qword_19CF2BBB8;
        v10 = 13;
      }

      else
      {
        if (v10)
        {
          v16 = &CreateColorSpaceFromInfoValues_transferFunction_GenericRGB_Info;
        }

        else
        {
          v16 = &v57;
        }

        if (v10)
        {
          v20 = &unk_19CF2BB40;
        }

        else
        {
          v20 = &v53;
        }

        if (v10)
        {
          v19 = &unk_19CF2BB38;
        }

        else
        {
          v19 = &v54;
        }

        if (v10)
        {
          v18 = &unk_19CF2BB30;
        }

        else
        {
          v18 = &v55;
        }

        if (v10)
        {
          v17 = &unk_19CF2BB28;
        }

        else
        {
          v17 = &v56;
        }

        if (v10)
        {
          v10 = v10;
        }

        else
        {
          v10 = 2;
        }
      }
    }

    v21 = *v17;
    _ZF = *v16 == 0;
    v63 = xmmword_1E75C44A8;
    v64 = *&off_1E75C44B8;
    if (_ZF)
    {
      v23 = v21;
    }

    else
    {
      v23 = 1.0 / v21;
    }

    v65 = xmmword_1E75C44C8;
    *keys = xmmword_1E75C4468;
    v60 = *&off_1E75C4478;
    v61 = xmmword_1E75C4488;
    v62 = *&off_1E75C4498;
    values[0] = CFRetain(@"displayRGB");
    if (v9 == 1 && v11 == 1 && v10 == 1)
    {
      v24 = @"HDTV";
    }

    else if (v11 == 6 && v9 == 6 && v10 == 1)
    {
      v24 = @"Composite NTSC";
    }

    else if (v11 == 6 && v9 == 5 && v10 == 1)
    {
      v24 = @"Composite PAL";
    }

    else if (v9 == 6 && v11 == 7 && v10 == 7)
    {
      v24 = @"HDTV Interim Color Implementation";
    }

    else if (v9 == 11 && v11 == 11 && v10 == 14)
    {
      v24 = @"Digital Cinema P3";
    }

    else
    {
      if (v9 != 12 || v11 != 12 || v10 != 14)
      {
        v25 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"QuickTime 'nclc' Video (%d,%d,%d)", v9, v10, v11);
        goto LABEL_136;
      }

      v24 = @"D65 P3";
    }

    v25 = CFRetain(v24);
LABEL_136:
    values[1] = v25;
    *bytes = v23;
    v26 = 13;
    values[2] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v23;
    values[3] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v23;
    values[4] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[4];
    values[5] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[5];
    values[6] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = *v15;
    values[7] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[1];
    values[8] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[2];
    values[9] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[3];
    values[10] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[6];
    values[11] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    *bytes = v15[7];
    values[12] = CFNumberCreate(0, kCFNumberDoubleType, bytes);
    values[13] = CFStringCreateWithCString(0, "Copyright 2007 Apple Inc.", 0);
    v27 = CFDictionaryCreate(0, keys, values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      CFRelease(values[v26]);
      v28 = v26-- + 1;
    }

    while (v28 > 1);
    if (!v27)
    {
      return 0;
    }

    Profile = ColorSyncMakeProfile();
    if (Profile)
    {
      v30 = Profile;
      MutableCopy = ColorSyncProfileCreateMutableCopy(Profile);
      CFRelease(v30);
      if (MutableCopy)
      {
        v32 = ColorSyncProfileCopyHeader(MutableCopy);
        if (v32)
        {
          v33 = v32;
          v34 = CFDataCreateMutableCopy(0, 128, v32);
          CFRelease(v33);
          if (v34)
          {
            CFDataSetLength(v34, 128);
            MutableBytePtr = CFDataGetMutableBytePtr(v34);
            if (!MutableBytePtr)
            {
              v4 = 0;
              goto LABEL_153;
            }

            v36 = MutableBytePtr;
            if (*v16 == 3)
            {
              bytes[5] = 0;
              *&bytes[6] = 0;
              v50 = 768;
              strcpy(bytes, "para");
              *&v37.f64[0] = *v17;
              v38.f64[0] = *v20 + 1.0;
              __asm { FMOV            V4.2D, #1.0 }

              v37.f64[1] = v38.f64[0];
              v43 = vdivq_f64(_Q4, v37);
              *&_Q4.f64[0] = *v20;
              *&v38.f64[1] = *v19;
              v44 = vdivq_f64(_Q4, v38);
              v45 = vdupq_n_s64(0x40DFFFC000000000uLL);
              __asm { FMOV            V4.2D, #0.5 }

              v47 = vrev32q_s8(vuzp1q_s32(vcvtq_u64_f64(vmlaq_f64(_Q4, v45, v43)), vcvtq_u64_f64(vmlaq_f64(_Q4, v45, v44))));
              v44.f64[0] = *v19 * *v18 * 32767.0 + 0.5;
              v51 = v47;
              v52 = bswap32(v44.f64[0]);
              v4 = CFDataCreateWithBytesNoCopy(0, bytes, 32, *MEMORY[0x1E695E498]);
              if (!v4)
              {
LABEL_153:
                CFRelease(MutableCopy);
                CFRelease(v34);
                goto LABEL_151;
              }

              ColorSyncProfileSetTag(MutableCopy, @"rTRC", v4);
              ColorSyncProfileSetTag(MutableCopy, @"gTRC", v4);
              ColorSyncProfileSetTag(MutableCopy, @"bTRC", v4);
              CFRelease(v4);
              *(v36 + 2) = 0x4000000;
            }

            *(v36 + 3) = 0x10001000407D5;
            *(v36 + 8) = 65537;
            ColorSyncProfileSetHeader(MutableCopy, v34);
            v4 = CGColorSpaceCreateWithPlatformColorSpace(MutableCopy);
            goto LABEL_153;
          }
        }

        CFRelease(MutableCopy);
      }
    }

    v4 = 0;
LABEL_151:
    CFRelease(v27);
  }

  return v4;
}

CGColorSpaceRef CopySurfaceColorSpace(__IOSurface *a1)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v3 = PixelFormat;
  v4 = equivalent_uncompressed_format(PixelFormat);
  v5 = 0;
  if (v4 <= 1279340599)
  {
    if (((v4 - 1278226488) > 0x30 || ((1 << (v4 - 56)) & 0x1400000000001) == 0) && ((v4 - 1278226736) > 6 || ((1 << (v4 - 48)) & 0x45) == 0))
    {
LABEL_19:
      v5 = 1;
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v4 <= 1279342647)
  {
    if ((v4 - 1279340600) <= 0x30 && ((1 << (v4 - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_20;
    }

    v6 = 1279340854;
LABEL_18:
    if (v4 == v6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v4 <= 1717856626)
  {
    if (v4 == 1279342648)
    {
      goto LABEL_20;
    }

    v6 = 1717855600;
    goto LABEL_18;
  }

  if (v4 != 1717856627 && v4 != 1751410032)
  {
    v6 = 1751411059;
    goto LABEL_18;
  }

LABEL_20:
  if (v3 > 1751410031)
  {
    if (v3 == 1751411059)
    {
      goto LABEL_26;
    }

    v7 = 1751410032;
  }

  else
  {
    if (v3 == 1717855600)
    {
      goto LABEL_26;
    }

    v7 = 1717856627;
  }

  if (v3 != v7)
  {
    v10 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEE0]);
    if (v10)
    {
      v11 = v10;
      v12 = CGColorSpaceCreateWithPropertyList(v10);
      CFRelease(v11);
      return v12;
    }

    if (v5)
    {
      if (!IOSurfaceGetBulkAttachments())
      {
        result = CVCreateColorSpaceFromIOSurfaceBulkAttachments();
        if (result)
        {
          return result;
        }
      }

      v13 = MEMORY[0x1E695F1C0];
    }

    else
    {
      IOSurfaceGetBulkAttachments();
      v13 = MEMORY[0x1E695F128];
    }

    return CGColorSpaceCreateWithName(*v13);
  }

LABEL_26:
  v8 = *MEMORY[0x1E695F0F8];

  return CGColorSpaceCreateWithName(v8);
}

double GetSurfaceCleanAperture()
{
  v0 = *MEMORY[0x1E695F050];
  IOSurfaceGetBulkAttachments();
  return v0;
}

CGImage *SurfaceWriteToFile(void *a1, CGColorSpace *a2, char *a3)
{
  result = SurfaceCreateCGImage(a1, a2, 1);
  if (result)
  {
    v5 = result;
    v6 = _writeCGImageToFile(result, a3);
    CGImageRelease(v5);
    return v6;
  }

  return result;
}

BOOL _writeCGImageToFile(CGImage *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFURLCreateFromFileSystemRepresentation(0, __s, v4, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = strstr(__s, ".jpg");
  v8 = strstr(__s, ".png");
  v9 = @"public.png";
  if (!v8)
  {
    v9 = @"public.tiff";
  }

  if (v7)
  {
    v10 = @"public.jpeg";
  }

  else
  {
    v10 = v9;
  }

  v11 = CGImageDestinationCreateWithURL(v6, v10, 1uLL, 0);
  if (v11)
  {
    v12 = v11;
    CGImageDestinationAddImage(v11, a1, 0);
    v13 = CGImageDestinationFinalize(v12);
    CFRelease(v12);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v6);
  return v13;
}

CGImage *SurfaceRegionWriteToFile(void *a1, CGColorSpace *a2, char *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  result = SurfaceCreateCGImage(a1, a2, 1);
  if (result)
  {
    v13 = result;
    v16.origin.x = a4;
    v16.origin.y = a5;
    v16.size.width = a6;
    v16.size.height = a7;
    v14 = CGImageCreateWithImageInRect(result, v16);
    v15 = _writeCGImageToFile(v14, a3);
    CGImageRelease(v14);
    CGImageRelease(v13);
    return v15;
  }

  return result;
}

BOOL SurfaceCroppedWriteRawToFile(__IOSurface *a1, char *__filename, double a3, double a4)
{
  v7 = fopen(__filename, "wb");
  if (v7)
  {
    v8 = v7;
    PlaneCount = IOSurfaceGetPlaneCount(a1);
    if (PlaneCount)
    {
      v9 = 0;
      v10 = a3;
      v11 = a4;
      while (1)
      {
        WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, v9);
        HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, v9);
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, v9);
        BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(a1, v9);
        v16 = WidthOfPlane >= v10 ? v10 : WidthOfPlane;
        v17 = HeightOfPlane >= v11 ? v11 : HeightOfPlane;
        v18 = IOSurfaceLockPlane();
        v19 = v18 == 0;
        if (v18)
        {
          goto LABEL_26;
        }

        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, v9);
        if (v17)
        {
          v21 = BaseAddressOfPlane;
          v22 = BytesPerElementOfPlane * v16;
          while (fwrite(v21, 1uLL, v22, v8) == v22)
          {
            v21 += BytesPerRowOfPlane;
            if (!--v17)
            {
              goto LABEL_15;
            }
          }

          IOSurfaceUnlockPlane();
          goto LABEL_25;
        }

LABEL_15:
        IOSurfaceUnlockPlane();
        ++v9;
        v11 = a4;
        v10 = a3;
        if (v9 == PlaneCount)
        {
          goto LABEL_26;
        }
      }
    }

    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    BytesPerElement = IOSurfaceGetBytesPerElement(a1);
    if (Width >= a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = Width;
    }

    if (Height >= a4)
    {
      Height = a4;
    }

    if (!IOSurfaceLock(a1, 1u, 0))
    {
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      if (!Height)
      {
LABEL_32:
        v19 = 1;
        IOSurfaceUnlock(a1, 1u, 0);
        goto LABEL_26;
      }

      v30 = BaseAddress;
      v31 = BytesPerElement * v27;
      while (fwrite(v30, 1uLL, v31, v8) == v31)
      {
        v30 += BytesPerRow;
        if (!--Height)
        {
          goto LABEL_32;
        }
      }

      IOSurfaceUnlock(a1, 1u, 0);
    }

LABEL_25:
    v19 = 0;
LABEL_26:
    fclose(v8);
    return v19;
  }

  return 0;
}

BOOL SurfaceCroppedWriteBmtlToFile(__IOSurface *a1, const char *a2, double a3, double a4)
{
  if (IOSurfaceGetPlaneCount(a1))
  {
    return 0;
  }

  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v12 = Width >= a3 ? a3 : Width;
  v13 = Height >= a4 ? a4 : Height;
  if (!v12 || v13 == 0)
  {
    return 0;
  }

  v15 = PixelFormat;
  v16 = 0;
  if (PixelFormat > 843264309)
  {
    if (PixelFormat <= 1380401728)
    {
      switch(PixelFormat)
      {
        case 843264310:
          v17 = 60;
          break;
        case 1111970369:
          v17 = 80;
          break;
        case 1278226488:
          v17 = 1;
          break;
        default:
          return v16;
      }
    }

    else if (PixelFormat > 1380411456)
    {
      if (PixelFormat == 1380411457)
      {
        v17 = 115;
      }

      else
      {
        if (PixelFormat != 1815491698)
        {
          return v16;
        }

        v17 = 110;
      }
    }

    else if (PixelFormat == 1380401729)
    {
      v17 = 70;
    }

    else
    {
      if (PixelFormat != 1380410945)
      {
        return v16;
      }

      v17 = 125;
    }
  }

  else if (PixelFormat <= 826487093)
  {
    switch(PixelFormat)
    {
      case 826486840:
        v17 = 10;
        break;
      case 826486886:
        v17 = 55;
        break;
      case 826486888:
        v17 = 25;
        break;
      default:
        return v16;
    }
  }

  else if (PixelFormat > 843264101)
  {
    if (PixelFormat == 843264102)
    {
      v17 = 105;
    }

    else
    {
      if (PixelFormat != 843264104)
      {
        return v16;
      }

      v17 = 65;
    }
  }

  else if (PixelFormat == 826487094)
  {
    v17 = 20;
  }

  else
  {
    if (PixelFormat != 843264056)
    {
      return v16;
    }

    v17 = 30;
  }

  v18 = fopen(a2, "wb");
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v22 = 1280593218;
  v23 = xmmword_19CF2B940;
  v24 = v12;
  v25 = v13;
  v26 = 0x100000001;
  v27 = v17;
  v28 = BytesPerRow;
  v29 = v15;
  if (fwrite(&v22, 1uLL, 0x30uLL, v18) == 48 && !IOSurfaceLock(a1, 1u, 0))
  {
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    if (BaseAddress)
    {
      v16 = fwrite(BaseAddress, BytesPerRow, Height, v19) == Height;
    }

    else
    {
      v16 = 0;
    }

    IOSurfaceUnlock(a1, 1u, 0);
  }

  else
  {
    v16 = 0;
  }

  fclose(v19);
  return v16;
}

CGImageRef SurfaceCreateCGImage(void *a1, CGColorSpace *a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v6 = CFGetTypeID(a1);
  TypeID = IOSurfaceGetTypeID();
  v8 = CFGetTypeID(v5);
  v9 = CVPixelBufferGetTypeID();
  if (v6 != TypeID && v8 != v9)
  {
    return 0;
  }

  if (v8 == v9)
  {
    IOSurface = CVPixelBufferGetIOSurface(v5);
    if (!IOSurface && v6 != TypeID)
    {
      IOSurface = 0;
      goto LABEL_16;
    }
  }

  else
  {
    IOSurface = v5;
    v5 = 0;
    if (v6 != TypeID)
    {
LABEL_16:
      PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
      Width = CVPixelBufferGetWidth(v5);
      Height = CVPixelBufferGetHeight(v5);
      v10 = 0;
      if (!Width)
      {
        return v10;
      }

      v16 = Height;
      if (!Height)
      {
        return v10;
      }

      v18 = *MEMORY[0x1E695E4D0] == 0;
      BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
      PlaneCount = CVPixelBufferGetPlaneCount(v5);
      v20 = 0;
      v21 = v5;
      goto LABEL_19;
    }
  }

  PixelFormatType = IOSurfaceGetPixelFormat(IOSurface);
  Width = IOSurfaceGetWidth(IOSurface);
  v15 = IOSurfaceGetHeight(IOSurface);
  v10 = 0;
  if (!Width)
  {
    return v10;
  }

  v16 = v15;
  if (!v15)
  {
    return v10;
  }

  v17 = IOSurfaceCopyValue(IOSurface, @"IOSurfaceAlphaIsOpaque");
  v18 = v17 == *MEMORY[0x1E695E4D0];
  if (v17)
  {
    CFRelease(v17);
  }

  BytesPerRow = IOSurfaceGetBytesPerRow(IOSurface);
  PlaneCount = IOSurfaceGetPlaneCount(IOSurface);
  v20 = 1;
  v21 = IOSurface;
LABEL_19:
  if (PlaneCount == 2)
  {
    v80 = 3 * Width;
    Mutable = CFDataCreateMutable(0, v16 * 3 * Width);
    if (!Mutable)
    {
      return 0;
    }

    v24 = Mutable;
    CFDataSetLength(Mutable, v16 * 3 * Width);
    MutableBytePtr = CFDataGetMutableBytePtr(v24);
    if (v20)
    {
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 0);
      v76 = IOSurfaceGetBytesPerRowOfPlane(IOSurface, 1uLL);
      WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, 1uLL);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(IOSurface, 1uLL);
    }

    else
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v5, 0);
      v76 = CVPixelBufferGetBytesPerRowOfPlane(v5, 0);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, 0);
      HeightOfPlane = CVPixelBufferGetWidthOfPlane(v5, 1uLL);
    }

    v73 = HeightOfPlane;
    if ((PixelFormatType & 0xFD000000) == 0x2D000000 || PixelFormatType >> 24 == 124 || PixelFormatType >> 24 == 38)
    {
      v33 = 709;
      v34 = 118;
      if ((PixelFormatType & 0xFFFFFFu) - 3700272 > 4 || ((1 << (PixelFormatType - 48)) & 0x15) == 0)
      {
        v35 = PixelFormatType & 0xFFFFFF | 0x20000000;
        if (((v35 - 544765488) > 4 || ((1 << (PixelFormatType - 48)) & 0x15) == 0) && v35 != 544830835)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v33 = 709;
      v34 = 118;
      if (PixelFormatType <= 1937126451)
      {
        if (PixelFormatType <= 1882468911)
        {
          if (PixelFormatType > 875704949)
          {
            if (PixelFormatType == 875704950)
            {
              goto LABEL_54;
            }

            v49 = 875836534;
          }

          else
          {
            if (PixelFormatType == 846624121)
            {
              goto LABEL_54;
            }

            v49 = 875704438;
          }
        }

        else if (PixelFormatType <= 1882469427)
        {
          if (PixelFormatType == 1882468912)
          {
            goto LABEL_54;
          }

          v49 = 1882468914;
        }

        else
        {
          if (PixelFormatType == 1882469428 || PixelFormatType == 1937125936)
          {
            goto LABEL_54;
          }

          v49 = 1937125938;
        }
      }

      else if (PixelFormatType > 2016686639)
      {
        if (PixelFormatType <= 2016687155)
        {
          if (PixelFormatType == 2016686640)
          {
            goto LABEL_54;
          }

          v49 = 2016686642;
        }

        else
        {
          if (PixelFormatType == 2016687156 || PixelFormatType == 2033463352)
          {
            goto LABEL_54;
          }

          v49 = 2037741171;
        }
      }

      else if (PixelFormatType <= 1953903153)
      {
        if (PixelFormatType == 1937126452)
        {
          goto LABEL_54;
        }

        v49 = 1953903152;
      }

      else
      {
        if (PixelFormatType == 1953903154 || PixelFormatType == 1953903668)
        {
          goto LABEL_54;
        }

        v49 = 1983000886;
      }

      if (PixelFormatType != v49)
      {
LABEL_46:
        v33 = 601;
        v34 = 102;
      }
    }

LABEL_54:
    v75 = v33;
    if (v20)
    {
      if (IOSurfaceLockPlane() || IOSurfaceLockPlane() || (BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(IOSurface, 0)) == 0 || (v39 = BaseAddressOfPlane, (v40 = IOSurfaceGetBaseAddressOfPlane(IOSurface, 1uLL)) == 0))
      {
LABEL_61:
        CFRelease(v24);
        return 0;
      }
    }

    else
    {
      if (CVPixelBufferLockBaseAddress(v5, 1uLL))
      {
        goto LABEL_61;
      }

      v47 = CVPixelBufferGetBaseAddressOfPlane(v5, 0);
      if (!v47)
      {
        goto LABEL_61;
      }

      v39 = v47;
      v40 = CVPixelBufferGetBaseAddressOfPlane(v5, 1uLL);
      if (!v40)
      {
        goto LABEL_61;
      }
    }

    if (PixelFormatType > 1937125937)
    {
      if (PixelFormatType > 1953903667)
      {
        if (PixelFormatType <= 2016687155)
        {
          if (PixelFormatType != 1953903668)
          {
            if (PixelFormatType != 2016686640)
            {
              v62 = 2016686642;
              goto LABEL_282;
            }

LABEL_284:
            Convert_420x_to_RGB(v34, v75, Width, v16, WidthOfPlane, v73, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
            goto LABEL_298;
          }
        }

        else
        {
          if (PixelFormatType > 2019963441)
          {
            if (PixelFormatType != 2019963442)
            {
              v48 = 2019963956;
LABEL_287:
              if (PixelFormatType == v48)
              {
                goto LABEL_288;
              }

              goto LABEL_294;
            }

LABEL_289:
            Convert_422x_to_RGB(v34, v75, Width, v16, WidthOfPlane, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
            goto LABEL_298;
          }

          if (PixelFormatType != 2016687156)
          {
            v70 = 2019963440;
            goto LABEL_278;
          }
        }
      }

      else
      {
        if (PixelFormatType > 1952854577)
        {
          if (PixelFormatType <= 1953903151)
          {
            if (PixelFormatType != 1952854578)
            {
              v48 = 1952855092;
              goto LABEL_287;
            }

            goto LABEL_289;
          }

          if (PixelFormatType != 1953903152)
          {
            v62 = 1953903154;
LABEL_282:
            if (PixelFormatType == v62)
            {
              goto LABEL_289;
            }

LABEL_294:
            if ((PixelFormatType & 0xFFFFFFEF) == 0x34323266)
            {
              Convert_422_to_RGB(v34, v75, Width, v16, WidthOfPlane, v80, BytesPerRowOfPlane, v76, v41, MutableBytePtr, v39, v40);
            }

            else
            {
              if ((PixelFormatType & 0xFFFFFFEF) != 0x34323066)
              {
                v72 = 0;
                if (v20)
                {
                  goto LABEL_299;
                }

                goto LABEL_301;
              }

              Convert_420_to_RGB(v34, v75, Width, v16, WidthOfPlane, v73, v80, BytesPerRowOfPlane, v41, v76, MutableBytePtr, v39, v40);
            }

LABEL_298:
            v72 = 1;
            if (v20)
            {
LABEL_299:
              IOSurfaceUnlockPlane();
              IOSurfaceUnlockPlane();
LABEL_302:
              if (v72)
              {
                DirectProvider = CGDataProviderCreateWithCFData(v24);
              }

              else
              {
                DirectProvider = 0;
              }

              CFRelease(v24);
              v26 = 0;
              v37 = 0;
              v53 = 8;
              v54 = 24;
              v30 = 3 * Width;
              goto LABEL_231;
            }

LABEL_301:
            CVPixelBufferUnlockBaseAddress(v5, 1uLL);
            goto LABEL_302;
          }

          goto LABEL_284;
        }

        if (PixelFormatType == 1937125938)
        {
          goto LABEL_289;
        }

        if (PixelFormatType != 1937126452)
        {
          v70 = 1952854576;
          goto LABEL_278;
        }
      }

      goto LABEL_288;
    }

    if (PixelFormatType <= 1885745711)
    {
      if (PixelFormatType <= 1882468911)
      {
        switch(PixelFormatType)
        {
          case 1751527984:
            Convert_420h_to_RGB(v75, Width, v16, WidthOfPlane, v73, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
            goto LABEL_298;
          case 1751527986:
            Convert_422h_to_RGB(v75, Width, v16, WidthOfPlane, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
            goto LABEL_298;
          case 1751528500:
            Convert_444h_to_RGB(v75, Width, v16, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
            goto LABEL_298;
        }

        goto LABEL_294;
      }

      if (PixelFormatType != 1882468912)
      {
        if (PixelFormatType != 1882468914)
        {
          v71 = 1882469428;
          goto LABEL_268;
        }

LABEL_290:
        Convert_422p_to_RGB(v34, v75, Width, v16, WidthOfPlane, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
        goto LABEL_298;
      }
    }

    else
    {
      if (PixelFormatType > 1936077359)
      {
        if (PixelFormatType <= 1936077875)
        {
          if (PixelFormatType != 1936077360)
          {
            v62 = 1936077362;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (PixelFormatType != 1936077876)
        {
          v70 = 1937125936;
LABEL_278:
          if (PixelFormatType != v70)
          {
            goto LABEL_294;
          }

          goto LABEL_284;
        }

LABEL_288:
        Convert_444x_to_RGB(v34, v75, Width, v16, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
        goto LABEL_298;
      }

      if (PixelFormatType != 1885745712)
      {
        if (PixelFormatType != 1885745714)
        {
          v71 = 1885746228;
LABEL_268:
          if (PixelFormatType == v71)
          {
            Convert_444p_to_RGB(v34, v75, Width, v16, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
            goto LABEL_298;
          }

          goto LABEL_294;
        }

        goto LABEL_290;
      }
    }

    Convert_420p_to_RGB(v34, v75, Width, v16, WidthOfPlane, v73, v80, BytesPerRowOfPlane, v76, MutableBytePtr, v39, v40);
    goto LABEL_298;
  }

  v10 = 0;
  if (PixelFormatType > 1279340599)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType > 1667838823)
        {
          if (PixelFormatType <= 1717855599)
          {
            if (PixelFormatType != 1667838824)
            {
              if (PixelFormatType != 1667839078)
              {
                return v10;
              }

              v26 = 0;
              v27 = !v18;
              v28 = 8450;
              v29 = 8454;
              goto LABEL_129;
            }

            v26 = 0;
            v37 = 4352;
            goto LABEL_205;
          }

          if (PixelFormatType == 1717855600)
          {
            goto LABEL_161;
          }

          v52 = 1717856627;
LABEL_160:
          if (PixelFormatType != v52)
          {
            return v10;
          }

LABEL_161:
          v37 = 8448;
          v26 = 1;
          v54 = 32;
          v53 = 32;
LABEL_230:
          v30 = BytesPerRow;
          DirectProvider = CreateDirectProvider(v21, v16 * BytesPerRow, getBytesAtPositionCallback_other_);
          goto LABEL_231;
        }

        switch(PixelFormatType)
        {
          case 1380411457:
            v26 = 0;
            v63 = !v18;
            v64 = 4353;
            v65 = 4357;
            break;
          case 1664496754:
            v26 = 0;
            v63 = !v18;
            v64 = 4098;
            v65 = 4102;
            break;
          case 1667838822:
            v26 = 0;
            v37 = 8448;
            v53 = 32;
            v54 = 96;
            goto LABEL_230;
          default:
            return v10;
        }

        goto LABEL_225;
      }

      if (PixelFormatType <= 1279340853)
      {
        if (PixelFormatType == 1279340600)
        {
          if (v18)
          {
            v37 = 5;
          }

          else
          {
            v37 = 1;
          }

          v26 = 1;
          v53 = 8;
          v54 = 16;
          goto LABEL_230;
        }

        if (PixelFormatType == 1279340646)
        {
          if (v18)
          {
            v37 = 8453;
          }

          else
          {
            v37 = 8449;
          }

          v26 = 1;
          v53 = 32;
          goto LABEL_229;
        }

        if (PixelFormatType != 1279340648)
        {
          return v10;
        }

        v44 = !v18;
        v45 = 4353;
        v46 = 4357;
        goto LABEL_200;
      }

      if (PixelFormatType == 1279340854)
      {
        v44 = !v18;
        v45 = 4097;
        v46 = 4101;
LABEL_200:
        if (v44)
        {
          v37 = v45;
        }

        else
        {
          v37 = v46;
        }

        v26 = 1;
        v53 = 16;
        goto LABEL_223;
      }

      if (PixelFormatType != 1380401729)
      {
        if (PixelFormatType != 1380410945)
        {
          return v10;
        }

        v26 = 0;
        v27 = !v18;
        v28 = 8449;
        v29 = 8453;
LABEL_129:
        if (v27)
        {
          v37 = v28;
        }

        else
        {
          v37 = v29;
        }

        v53 = 32;
        v54 = 128;
        goto LABEL_230;
      }

      v26 = 0;
      if (v18)
      {
        v37 = 5;
      }

      else
      {
        v37 = 1;
      }

LABEL_222:
      v53 = 8;
LABEL_223:
      v54 = 32;
      goto LABEL_230;
    }

    if (PixelFormatType > 1919365991)
    {
      if (PixelFormatType > 1999908960)
      {
        if (PixelFormatType <= 2037741157)
        {
          if (PixelFormatType != 1999908961)
          {
            if (PixelFormatType != 2033463352)
            {
              return v10;
            }

            v30 = BytesPerRow;
            DirectProvider = CreateDirectProvider(v21, v16 * BytesPerRow, getBytesAtPositionCallback_AYCbCr8);
            v26 = 0;
            v37 = 3;
            goto LABEL_213;
          }

          v30 = BytesPerRow;
          v55 = v16 * BytesPerRow;
          v56 = getBytesAtPositionCallback_w40a;
          goto LABEL_189;
        }

        if (PixelFormatType == 2037741158)
        {
          v30 = 2 * BytesPerRow;
          v31 = v16 * 2 * BytesPerRow;
          v32 = getBytesAtPositionCallback_YCbYCrFull;
        }

        else
        {
          if (PixelFormatType != 2037741171)
          {
            return v10;
          }

          v30 = 2 * BytesPerRow;
          v31 = v16 * 2 * BytesPerRow;
          v32 = getBytesAtPositionCallback_YCbYCr;
        }

        goto LABEL_211;
      }

      if (PixelFormatType != 1919365992)
      {
        if (PixelFormatType != 1983000886)
        {
          if (PixelFormatType != 1999843442)
          {
            return v10;
          }

          v30 = 2 * BytesPerRow;
          v55 = v16 * 2 * BytesPerRow;
          v56 = getBytesAtPositionCallback_w30r;
LABEL_189:
          DirectProvider = CreateDirectProvider(v21, v55, v56);
          v26 = 0;
          v37 = 4353;
          goto LABEL_190;
        }

        v30 = BytesPerRow;
        v31 = v16 * BytesPerRow;
        v32 = getBytesAtPositionCallback_CbYCrY16;
        goto LABEL_211;
      }

LABEL_136:
      v81 = v21;
      if (PixelFormatType == 1919365992)
      {
        v54 = 48;
      }

      else
      {
        v54 = 96;
      }

      v30 = (v54 >> 3) * Width;
      v57 = CFDataCreateMutable(0, v30 * v16);
      if (!v57)
      {
        return 0;
      }

      if (PixelFormatType == 1919365992)
      {
        v53 = 16;
      }

      else
      {
        v53 = 32;
      }

      if (PixelFormatType == 1919365992)
      {
        v37 = 4352;
      }

      else
      {
        v37 = 8448;
      }

      v58 = v57;
      CFDataSetLength(v57, v30 * v16);
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 0x40000000;
      v82[2] = __SurfaceCreateCGImage_block_invoke;
      v82[3] = &__block_descriptor_tmp_5;
      v83 = PixelFormatType == 1919365992;
      v82[4] = v58;
      v82[5] = v30 / (v54 >> 3) * v16;
      PlaneReadOnlyBlock(v81, v82);
      DirectProvider = CGDataProviderCreateWithCFData(v58);
      CFRelease(v58);
      v26 = 0;
      goto LABEL_231;
    }

    if (PixelFormatType > 1815361649)
    {
      if (PixelFormatType == 1815361650)
      {
        v26 = 0;
        v37 = 4096;
LABEL_205:
        v53 = 16;
        v54 = 48;
        goto LABEL_230;
      }

      if (PixelFormatType == 1815491698)
      {
        v26 = 0;
        v63 = !v18;
        v64 = 4097;
        v65 = 4101;
LABEL_225:
        if (v63)
        {
          v37 = v64;
        }

        else
        {
          v37 = v65;
        }

        v53 = 16;
LABEL_229:
        v54 = 64;
        goto LABEL_230;
      }

      if (PixelFormatType != 1919365990)
      {
        return v10;
      }

      goto LABEL_136;
    }

    if (PixelFormatType != 1751410032 && PixelFormatType != 1751411059)
    {
      if (PixelFormatType != 1815162994)
      {
        return v10;
      }

      if (v18)
      {
        v37 = 4357;
      }

      else
      {
        v37 = 4355;
      }

      v30 = 2 * BytesPerRow;
      DirectProvider = CreateDirectProvider(v21, v16 * 2 * BytesPerRow, getBytesAtPositionCallback_l10r);
      v26 = 0;
      goto LABEL_190;
    }

    goto LABEL_178;
  }

  if (PixelFormatType > 843264303)
  {
    if (PixelFormatType > 1111970368)
    {
      if (PixelFormatType > 1278226535)
      {
        if ((PixelFormatType - 1278226736) <= 6 && ((1 << (PixelFormatType - 48)) & 0x45) != 0)
        {
          v37 = 4096;
LABEL_179:
          v26 = 1;
          v54 = 16;
          v53 = 16;
          goto LABEL_230;
        }

        if (PixelFormatType != 1278226536)
        {
          return v10;
        }

LABEL_178:
        v37 = 4352;
        goto LABEL_179;
      }

      if (PixelFormatType != 1111970369)
      {
        if (PixelFormatType == 1278226488)
        {
          v37 = 0;
          v26 = 1;
          v54 = 8;
          v53 = 8;
          goto LABEL_230;
        }

        v52 = 1278226534;
        goto LABEL_160;
      }

      v26 = 0;
      v59 = !v18;
      v60 = 8194;
      v61 = 8198;
      goto LABEL_183;
    }

    if (PixelFormatType > 846624101)
    {
      if (PixelFormatType <= 1093677111)
      {
        if (PixelFormatType == 846624102)
        {
          v30 = 2 * BytesPerRow;
          v31 = v16 * 2 * BytesPerRow;
          v32 = getBytesAtPositionCallback_CbYCrYFull;
        }

        else
        {
          if (PixelFormatType != 846624121)
          {
            return v10;
          }

          v30 = 2 * BytesPerRow;
          v31 = v16 * 2 * BytesPerRow;
          v32 = getBytesAtPositionCallback_CbYCrY;
        }

        goto LABEL_211;
      }

      if (PixelFormatType == 1093677112)
      {
        v30 = 4 * BytesPerRow;
        DirectProvider = CreateDirectProvider(v21, v16 * 4 * BytesPerRow, getBytesAtPositionCallback_A008);
        v26 = 0;
        v37 = 1;
LABEL_213:
        v53 = 8;
        v54 = 32;
        goto LABEL_231;
      }

      if (PixelFormatType != 1094862674)
      {
        return v10;
      }

      v26 = 0;
      v59 = !v18;
      v60 = 8193;
      v61 = 8197;
LABEL_183:
      if (v59)
      {
        v37 = v60;
      }

      else
      {
        v37 = v61;
      }

      goto LABEL_222;
    }

    if ((PixelFormatType - 843264304) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0)
    {
      return v10;
    }

    v30 = 2 * BytesPerRow;
    v42 = v16 * 2 * BytesPerRow;
    v43 = getBytesAtPositionCallback_2C16;
    goto LABEL_108;
  }

  if (PixelFormatType <= 826487087)
  {
    if (PixelFormatType <= 826486839)
    {
      if (PixelFormatType == 24)
      {
        v26 = 0;
        v37 = 0;
        v53 = 8;
        v54 = 24;
        goto LABEL_230;
      }

      if (PixelFormatType != 32)
      {
        return v10;
      }

      v26 = 0;
      v59 = !v18;
      v60 = 2;
      v61 = 6;
      goto LABEL_183;
    }

    if (PixelFormatType == 826486840)
    {
      v30 = 4 * BytesPerRow;
      v31 = v16 * 4 * BytesPerRow;
      if (a3)
      {
        v68 = getBytesAtPositionCallback_1C08;
      }

      else
      {
        v68 = getBytesAtPositionCallback_1C08_lut;
      }

      goto LABEL_212;
    }

    if (PixelFormatType != 826486886)
    {
      if (PixelFormatType != 826486888)
      {
        return v10;
      }

      v30 = 4 * BytesPerRow;
      v50 = v16 * 4 * BytesPerRow;
      if (a3)
      {
        v51 = getBytesAtPositionCallback_1C0h_lut;
      }

      else
      {
        v51 = getBytesAtPositionCallback_1C0h;
      }

      goto LABEL_116;
    }

    v30 = 4 * BytesPerRow;
    v66 = v16 * 4 * BytesPerRow;
    v67 = getBytesAtPositionCallback_1C0f;
  }

  else
  {
    if (PixelFormatType <= 843264055)
    {
      if ((PixelFormatType - 826487088) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0)
      {
        return v10;
      }

      v30 = 4 * BytesPerRow;
      v42 = v16 * 4 * BytesPerRow;
      v43 = getBytesAtPositionCallback_1C16;
LABEL_108:
      DirectProvider = CreateDirectProvider(v21, v42, v43);
      v26 = 0;
      v37 = 4101;
LABEL_190:
      v53 = 16;
      v54 = 64;
      goto LABEL_231;
    }

    if (PixelFormatType == 843264056)
    {
      v30 = 2 * BytesPerRow;
      v31 = v16 * 2 * BytesPerRow;
      v32 = getBytesAtPositionCallback_2C08;
LABEL_211:
      v68 = v32;
LABEL_212:
      DirectProvider = CreateDirectProvider(v21, v31, v68);
      v26 = 0;
      v37 = 5;
      goto LABEL_213;
    }

    if (PixelFormatType != 843264102)
    {
      if (PixelFormatType != 843264104)
      {
        return v10;
      }

      v30 = 2 * BytesPerRow;
      v50 = v16 * 2 * BytesPerRow;
      v51 = getBytesAtPositionCallback_2C0h;
LABEL_116:
      DirectProvider = CreateDirectProvider(v21, v50, v51);
      v26 = 0;
      v37 = 4357;
      goto LABEL_190;
    }

    v30 = 2 * BytesPerRow;
    v66 = v16 * 2 * BytesPerRow;
    v67 = getBytesAtPositionCallback_2C0f;
  }

  DirectProvider = CreateDirectProvider(v21, v66, v67);
  v26 = 0;
  v37 = 8453;
  v53 = 32;
  v54 = 128;
LABEL_231:
  if (!a2)
  {
    a2 = CopySurfaceColorSpace(IOSurface);
    if (!a2)
    {
      if (v26)
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
      }

      else
      {
        DeviceGray = CGColorSpaceCreateDeviceRGB();
      }

      a2 = DeviceGray;
    }
  }

  if (DirectProvider)
  {
    v10 = CGImageCreate(Width, v16, v53, v54, v30, a2, v37, DirectProvider, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(DirectProvider);
  }

  else
  {
    v10 = 0;
  }

  CGColorSpaceRelease(a2);
  return v10;
}

void Convert_420h_to_RGB(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    v13 = 0;
    v56 = a5 - 1;
    v14 = a4 - 1;
    do
    {
      v16 = v13;
      v17 = v13 / 2;
      v59 = v13;
      v18 = 2 * (v13 & 1) + v13 / 2 - 1;
      if (v56 >= v16 / 2)
      {
        v19 = v17;
      }

      else
      {
        v19 = v56;
      }

      if (v56 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v56;
      }

      if (a2)
      {
        v21 = 0;
        v22 = 0;
        v23 = a11 + (v19 & ~(v19 >> 31)) * a8;
        v24 = a11 + (v20 & ~(v20 >> 31)) * a8;
        v25 = (a9 + v59 * a6);
        do
        {
          if (v14 >= v22 / 2)
          {
            v26 = v22 / 2;
          }

          else
          {
            v26 = v14;
          }

          if (v26 >= 0)
          {
            v27 = 2 * v26;
          }

          else
          {
            v27 = 0;
          }

          if (v14 >= (v21 & 2) + v22 / 2 - 1)
          {
            v28 = (v21 & 2) + v22 / 2 - 1;
          }

          else
          {
            v28 = v14;
          }

          if (v28 >= 0)
          {
            v29 = 2 * v28;
          }

          else
          {
            v29 = 0;
          }

          v60[0] = *(a10 + 2 * v22);
          _H0 = *(v23 + 2 * v27);
          __asm { FCVT            S0, H0 }

          _H1 = *(v23 + 2 * v29);
          __asm { FCVT            S1, H1 }

          v38 = (_S1 * 3.0) + (_S0 * 9.0);
          LOWORD(_S1) = *(v24 + 2 * v27);
          __asm { FCVT            S1, H1 }

          v40 = v38 + (_S1 * 3.0);
          LOWORD(_S1) = *(v24 + 2 * v29);
          __asm { FCVT            S1, H1 }

          _S0 = (v40 + _S1) * 0.0625;
          __asm { FCVT            H0, S0 }

          v60[1] = LOWORD(_S0);
          v43 = v27 | 1;
          LOWORD(_S0) = *(v23 + 2 * v43);
          __asm { FCVT            S0, H0 }

          v45 = v29 | 1;
          _H2 = *(v23 + 2 * v45);
          __asm { FCVT            S2, H2 }

          v48 = (_S2 * 3.0) + (_S0 * 9.0);
          LOWORD(_S2) = *(v24 + 2 * v43);
          __asm { FCVT            S2, H2 }

          _H3 = *(v24 + 2 * v45);
          v51 = v48 + (_S2 * 3.0);
          __asm { FCVT            S2, H3 }

          _S0 = (v51 + _S2) * 0.0625;
          __asm { FCVT            H0, S0 }

          v60[2] = LOWORD(_S0);
          Convert_one_YCCh_to_RGB(a1, v25, v60);
          ++v22;
          v25 += 3;
          v21 += 2;
        }

        while (a2 != v22);
      }

      v13 = v59 + 1;
      a10 += a7;
    }

    while (v59 + 1 != a3);
  }
}

void Convert_422h_to_RGB(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
    v13 = 0;
    v15 = a4 - 1;
    do
    {
      if (a2)
      {
        v16 = 0;
        v17 = 0;
        v18 = a10 + v13 * a7;
        v19 = (a8 + v13 * a5);
        do
        {
          if (v15 >= v17 / 2)
          {
            v20 = v17 / 2;
          }

          else
          {
            v20 = v15;
          }

          if (v20 >= 0)
          {
            v21 = 2 * v20;
          }

          else
          {
            v21 = 0;
          }

          if (v15 >= (v16 & 2) + v17 / 2 - 1)
          {
            v22 = (v16 & 2) + v17 / 2 - 1;
          }

          else
          {
            v22 = v15;
          }

          if (v22 >= 0)
          {
            v23 = 2 * v22;
          }

          else
          {
            v23 = 0;
          }

          v40[0] = *(a9 + 2 * v17);
          _H0 = *(v18 + 2 * v21);
          _H1 = *(v18 + 2 * v23);
          __asm
          {
            FCVT            S0, H0
            FCVT            S1, H1
          }

          _S0 = (_S1 + (_S0 * 3.0)) * 0.25;
          __asm { FCVT            H0, S0 }

          v40[1] = LOWORD(_S0);
          LOWORD(_S0) = *(v18 + 2 * (v21 | 1));
          LOWORD(_S1) = *(v18 + 2 * (v23 | 1));
          __asm
          {
            FCVT            S0, H0
            FCVT            S1, H1
          }

          _S0 = (_S1 + (_S0 * 3.0)) * 0.25;
          __asm { FCVT            H0, S0 }

          v40[2] = LOWORD(_S0);
          Convert_one_YCCh_to_RGB(a1, v19, v40);
          ++v17;
          v19 += 3;
          v16 += 2;
        }

        while (a2 != v17);
      }

      ++v13;
      a9 += a6;
    }

    while (v13 != a3);
  }
}

void Convert_444h_to_RGB(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9)
{
  if (a3)
  {
    v13 = 0;
    v14 = a9 + 2;
    do
    {
      if (a2)
      {
        v15 = (a7 + v13 * a4);
        v16 = v14;
        v17 = a8;
        v18 = a2;
        do
        {
          v19 = *v17++;
          v24 = v19;
          v25 = *(v16 - 2);
          Convert_one_YCCh_to_RGB(a1, v15, &v24);
          v15 += 3;
          v16 += 4;
          --v18;
        }

        while (v18);
      }

      ++v13;
      a8 = (a8 + a5);
      v14 += a6;
    }

    while (v13 != a3);
  }
}

void Convert_420p_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a4)
  {
    v15 = 0;
    v33 = a6 - 1;
    v16 = a5 - 1;
    do
    {
      v17 = v15 >> 1;
      v18 = 2 * (v15 & 1) + (v15 >> 1) - 1;
      v35 = v15;
      if (v33 < v15 >> 1)
      {
        v17 = v33;
      }

      if (v33 < v18)
      {
        v18 = v33;
      }

      if (a3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = a12 + v17 * a9;
        v23 = a12 + v18 * a9;
        v24 = (a10 + v15 * a7);
        do
        {
          v25 = v21 >> 1;
          if (v16 < v21 >> 1)
          {
            v25 = v16;
          }

          if (v16 >= (v19 & 2) + (v21 >> 1) - 1)
          {
            v26 = (v19 & 2) + (v21 >> 1) - 1;
          }

          else
          {
            v26 = v16;
          }

          v27 = 2 * v25 / 3;
          v28 = *(v22 + 4 * v27);
          v36[0] = (*(a11 + v35 * a8 + 4 * (v21 / 3)) >> (v20 - 30 * (v21 / 3))) << 6;
          v36[1] = ((((*(v23 + 4 * (2 * v26 / 3uLL)) >> (10 * (2 * v26 % 3uLL))) & 0x3FF) << 6) + 576 * ((v28 >> (10 * (2 * v25 % 3))) & 0x3FF) + 3 * ((((*(v23 + 4 * v27) >> (10 * (2 * v25 % 3))) & 0x3FF) << 6) + (((*(v22 + 4 * (2 * v26 / 3uLL)) >> (10 * (2 * v26 % 3uLL))) & 0x3FF) << 6))) >> 4;
          v29 = (2 * v25) | 1;
          v30 = (2 * v26) | 1;
          v36[2] = ((((*(v23 + 4 * (v30 / 3)) >> (10 * (v30 % 3))) & 0x3FF) << 6) + 576 * ((*(v22 + 4 * (v29 / 3)) >> (10 * (v29 % 3))) & 0x3FF) + 3 * ((((*(v23 + 4 * (v29 / 3)) >> (10 * (v29 % 3))) & 0x3FF) << 6) + (((*(v22 + 4 * (v30 / 3)) >> (10 * (v30 % 3))) & 0x3FFu) << 6))) >> 4;
          Convert_one_YCC_10bit_to_RGB(a1, a2, v24, v36);
          ++v21;
          v24 += 3;
          v20 += 10;
          v19 += 2;
        }

        while (a3 != v21);
      }

      v15 = v35 + 1;
    }

    while (v35 + 1 != a4);
  }
}

void Convert_422p_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4)
  {
    v26 = 0;
    v14 = a5 - 1;
    do
    {
      if (a3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = a11 + v26 * a8;
        v19 = (a9 + v26 * a6);
        do
        {
          v20 = v17 >> 1;
          v21 = (v15 & 2) + (v17 >> 1) - 1;
          if (v14 < v17 >> 1)
          {
            v20 = v14;
          }

          if (v14 < v21)
          {
            v21 = v14;
          }

          v27[0] = (*(a10 + v26 * a7 + 4 * (v17 / 3)) >> (v16 - 30 * (v17 / 3))) << 6;
          v27[1] = (192 * ((*(v18 + 4 * (2 * v20 / 3)) >> (10 * (2 * v20 % 3))) & 0x3FF) + (((*(v18 + 4 * (2 * v21 / 3)) >> (10 * (2 * v21 % 3))) & 0x3FFu) << 6)) >> 2;
          v27[2] = (192 * ((*(v18 + 4 * (((2 * v20) | 1) / 3)) >> (10 * (((2 * v20) | 1) % 3))) & 0x3FF) + (((*(v18 + 4 * (((2 * v21) | 1) / 3)) >> (10 * (((2 * v21) | 1) % 3))) & 0x3FFu) << 6)) >> 2;
          Convert_one_YCC_10bit_to_RGB(a1, a2, v19, v27);
          ++v17;
          v19 += 3;
          v16 += 10;
          v15 += 2;
        }

        while (a3 != v17);
      }

      ++v26;
    }

    while (v26 != a4);
  }
}

void Convert_444p_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      if (a3)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = a10 + i * a7;
        v17 = (a8 + i * a5);
        do
        {
          v24[0] = (*(a9 + i * a6 + 4 * (v15 / 3)) >> (v14 - 30 * (v15 / 3))) << 6;
          v24[1] = (*(v16 + 4 * (v13 / 3)) >> (10 * (v13 % 3))) << 6;
          v24[2] = (*(v16 + 4 * ((v13 + 1) / 3)) >> (10 * ((v13 + 1) % 3))) << 6;
          Convert_one_YCC_10bit_to_RGB(a1, a2, v17, v24);
          ++v15;
          v17 += 3;
          v14 += 10;
          v13 += 2;
        }

        while (a3 != v15);
      }
    }
  }
}

void Convert_420x_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a4)
  {
    v15 = 0;
    v33 = a6 - 1;
    v17 = a5 - 1;
    do
    {
      v18 = v15;
      v19 = v15 / 2;
      v36 = v15;
      v20 = 2 * (v15 & 1) + v15 / 2 - 1;
      if (v33 >= v18 / 2)
      {
        v21 = v19;
      }

      else
      {
        v21 = v33;
      }

      if (v33 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v33;
      }

      if (a3)
      {
        v23 = 0;
        v24 = 0;
        v25 = a12 + (v21 & ~(v21 >> 31)) * a9;
        v26 = a12 + (v22 & ~(v22 >> 31)) * a9;
        v27 = (a10 + v36 * a7);
        do
        {
          if (v17 >= v24 / 2)
          {
            v28 = v24 / 2;
          }

          else
          {
            v28 = v17;
          }

          if (v28 >= 0)
          {
            v29 = 2 * v28;
          }

          else
          {
            v29 = 0;
          }

          if (v17 >= (v23 & 2) + v24 / 2 - 1)
          {
            v30 = (v23 & 2) + v24 / 2 - 1;
          }

          else
          {
            v30 = v17;
          }

          v31 = 2 * v30;
          if (v30 < 0)
          {
            v31 = 0;
          }

          v37[0] = *(a11 + 2 * v24);
          v37[1] = (9 * *(v25 + 2 * v29) + *(v26 + 2 * v31) + 3 * (*(v26 + 2 * v29) + *(v25 + 2 * v31)) + 8) >> 4;
          v37[2] = (9 * *(v25 + 2 * (v29 | 1)) + *(v26 + 2 * (v31 | 1)) + 3 * (*(v26 + 2 * (v29 | 1)) + *(v25 + 2 * (v31 | 1))) + 8) >> 4;
          Convert_one_YCC_10bit_to_RGB(a1, a2, v27, v37);
          ++v24;
          v27 += 3;
          v23 += 2;
        }

        while (a3 != v24);
      }

      v15 = v36 + 1;
      a11 += a8;
    }

    while (v36 + 1 != a4);
  }
}

void Convert_422x_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4)
  {
    v14 = 0;
    v15 = a5 - 1;
    do
    {
      if (a3)
      {
        v17 = 0;
        v18 = 0;
        v19 = a11 + v14 * a8;
        v20 = (a9 + v14 * a6);
        do
        {
          if (v15 >= v18 / 2)
          {
            v21 = v18 / 2;
          }

          else
          {
            v21 = v15;
          }

          if (v21 >= 0)
          {
            v22 = 2 * v21;
          }

          else
          {
            v22 = 0;
          }

          if (v15 >= (v17 & 2) + v18 / 2 - 1)
          {
            v23 = (v17 & 2) + v18 / 2 - 1;
          }

          else
          {
            v23 = v15;
          }

          if (v23 >= 0)
          {
            v24 = 2 * v23;
          }

          else
          {
            v24 = 0;
          }

          v29[0] = *(a10 + 2 * v18);
          v29[1] = (*(v19 + 2 * v24) + 3 * *(v19 + 2 * v22) + 2) >> 2;
          v29[2] = (*(v19 + 2 * (v24 | 1)) + 3 * *(v19 + 2 * (v22 | 1)) + 2) >> 2;
          Convert_one_YCC_10bit_to_RGB(a1, a2, v20, v29);
          ++v18;
          v20 += 3;
          v17 += 2;
        }

        while (a3 != v18);
      }

      ++v14;
      a10 += a7;
    }

    while (v14 != a4);
  }
}

void Convert_444x_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10)
{
  if (a4)
  {
    v13 = 0;
    v15 = a10 + 2;
    do
    {
      if (a3)
      {
        v16 = (a8 + v13 * a5);
        v17 = v15;
        v18 = a9;
        v19 = a3;
        do
        {
          v20 = *v18++;
          v26 = v20;
          v27 = *(v17 - 2);
          Convert_one_YCC_10bit_to_RGB(a1, a2, v16, &v26);
          v16 += 3;
          v17 += 4;
          --v19;
        }

        while (v19);
      }

      ++v13;
      a9 = (a9 + a6);
      v15 += a7;
    }

    while (v13 != a4);
  }
}

void Convert_420_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4)
  {
    v16 = 0;
    v34 = a6 - 1;
    v18 = a5 - 1;
    do
    {
      v19 = v16;
      v20 = v16 / 2;
      v37 = v16;
      v21 = 2 * (v16 & 1) + v16 / 2 - 1;
      if (v34 >= v19 / 2)
      {
        v22 = v20;
      }

      else
      {
        v22 = v34;
      }

      if (v34 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v34;
      }

      if (a3)
      {
        v24 = 0;
        v25 = 0;
        v26 = a13 + (v22 & ~(v22 >> 31)) * a10;
        v27 = a13 + (v23 & ~(v23 >> 31)) * a10;
        v28 = (a11 + v37 * a7);
        do
        {
          if (v18 >= v25 / 2)
          {
            v29 = v25 / 2;
          }

          else
          {
            v29 = v18;
          }

          if (v29 >= 0)
          {
            v30 = (2 * v29);
          }

          else
          {
            v30 = 0;
          }

          if (v18 >= (v24 & 2) + v25 / 2 - 1)
          {
            v31 = (v24 & 2) + v25 / 2 - 1;
          }

          else
          {
            v31 = v18;
          }

          LODWORD(v32) = 2 * v31;
          if (v31 >= 0)
          {
            v32 = v32;
          }

          else
          {
            v32 = 0;
          }

          v38[0] = *(a12 + v25);
          v38[1] = (9 * *(v26 + v30) + *(v27 + v32) + 3 * (*(v27 + v30) + *(v26 + v32)) + 8) >> 4;
          v38[2] = (9 * *(v26 + (v30 | 1)) + *(v27 + (v32 | 1)) + 3 * (*(v27 + (v30 | 1)) + *(v26 + (v32 | 1))) + 8) >> 4;
          a9 = Convert_one_YCC_to_RGB(a1, a2, v28, v38, a9);
          ++v25;
          v28 += 3;
          v24 += 2;
        }

        while (a3 != v25);
      }

      v16 = v37 + 1;
      a12 += a8;
    }

    while (v37 + 1 != a4);
  }
}

void Convert_422_to_RGB(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a4)
  {
    v15 = 0;
    v16 = a5 - 1;
    do
    {
      if (a3)
      {
        v18 = 0;
        v19 = 0;
        v20 = a12 + v15 * a8;
        v21 = (a10 + v15 * a6);
        do
        {
          if (v16 >= v19 / 2)
          {
            v22 = v19 / 2;
          }

          else
          {
            v22 = v16;
          }

          if (v22 >= 0)
          {
            v23 = (2 * v22);
          }

          else
          {
            v23 = 0;
          }

          if (v16 >= (v18 & 2) + v19 / 2 - 1)
          {
            v24 = (v18 & 2) + v19 / 2 - 1;
          }

          else
          {
            v24 = v16;
          }

          LODWORD(v25) = 2 * v24;
          if (v24 >= 0)
          {
            v25 = v25;
          }

          else
          {
            v25 = 0;
          }

          v32[0] = *(a11 + v19);
          v26 = (v20 + v23);
          v27 = (v20 + v25);
          v32[1] = (*v27 + 3 * *v26 + 2) >> 2;
          v32[2] = (v27[1] + 3 * v26[1] + 2) >> 2;
          a9 = Convert_one_YCC_to_RGB(a1, a2, v21, v32, a9);
          ++v19;
          v21 += 3;
          v18 += 2;
        }

        while (a3 != v19);
      }

      ++v15;
      a11 += a7;
    }

    while (v15 != a4);
  }
}

CFTypeID PlaneReadOnlyBlock(void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CVPixelBufferGetTypeID())
  {

    return PixelBufferApplyPlaneReadOnlyBlock(a1, a2);
  }

  else
  {
    v6 = CFGetTypeID(a1);
    result = IOSurfaceGetTypeID();
    if (v6 == result)
    {

      return SurfaceApplyPlaneReadOnlyBlock(a1, a2);
    }
  }

  return result;
}

float __SurfaceCreateCGImage_block_invoke(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v9 = *(a1 + 40);
  if (v6 == 1)
  {
    if (v9)
    {
      v10 = &MutableBytePtr[2 * a3];
      do
      {
        v11 = *a2;
        a2 = (a2 + 2);
        LOWORD(result) = v11;
        *v10 = v11;
        v10 += 6;
        --v9;
      }

      while (v9);
    }
  }

  else if (v9)
  {
    v12 = &MutableBytePtr[4 * a3];
    do
    {
      v13 = *a2++;
      result = v13;
      *v12 = v13;
      v12 += 3;
      --v9;
    }

    while (v9);
  }

  return result;
}

CGDataProviderRef CreateDirectProvider(CGDataProviderRef result, off_t a2, size_t (__cdecl *a3)(void *, void *, off_t, size_t))
{
  if (result)
  {
    v4 = result;
    memset(&callbacks, 0, 24);
    callbacks.getBytesAtPosition = a3;
    callbacks.releaseInfo = providerReleaseCFInfoCallback;
    CFRetain(result);
    return CGDataProviderCreateDirect(v4, a2, &callbacks);
  }

  return result;
}

unint64_t getBytesAtPositionCallback_YCbYCr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_YCbYCr_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_YCbYCr_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_YCbYCr_block_invoke;
  v6[3] = &__block_descriptor_tmp_5_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_CbYCrY(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_CbYCrY_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_CbYCrY_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_CbYCrY_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_CbYCrY16(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_CbYCrY16_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_CbYCrY16_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_CbYCrY16_block_invoke;
  v6[3] = &__block_descriptor_tmp_7_5;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_YCbYCrFull(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_YCbYCrFull_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_YCbYCrFull_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_YCbYCrFull_block_invoke;
  v6[3] = &__block_descriptor_tmp_8_1;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_CbYCrYFull(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_CbYCrYFull_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_CbYCrYFull_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_CbYCrYFull_block_invoke;
  v6[3] = &__block_descriptor_tmp_9;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_AYCbCr8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_AYCbCr8_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_AYCbCr8_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_AYCbCr8_block_invoke;
  v6[3] = &__block_descriptor_tmp_10;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_2C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_2C08_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_2C08_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_2C08_block_invoke;
  v6[3] = &__block_descriptor_tmp_11_2;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_2C16(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_2C16_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_2C16_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_2C16_block_invoke;
  v6[3] = &__block_descriptor_tmp_12_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_2C0h(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_2C0h_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_2C0h_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_2C0h_block_invoke;
  v6[3] = &__block_descriptor_tmp_13_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_2C0f(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_2C0f_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_2C0f_cold_1();
  }

  if ((a3 & 0xF) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_2C0f_block_invoke;
  v6[3] = &__block_descriptor_tmp_14_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFF0;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF0;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_1C08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_1C08_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_1C08_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_1C08_block_invoke;
  v6[3] = &__block_descriptor_tmp_15_2;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_1C08_lut(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_1C08_lut_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_1C08_lut_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_1C08_lut_block_invoke;
  v6[3] = &__block_descriptor_tmp_16;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_1C16(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_1C16_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_1C16_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_1C16_block_invoke;
  v6[3] = &__block_descriptor_tmp_17;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_1C0h_lut(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_1C0h_lut_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_1C0h_lut_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6 = a4 & 0xFFFFFFFFFFFFFFF8;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 2139095039;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0x800000;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __getBytesAtPositionCallback_1C0h_lut_block_invoke;
  v11[3] = &unk_1E75C46A0;
  v11[4] = &v16;
  v11[5] = &v12;
  PlaneReadOnlyBlock(a1, v11);
  v8 = v13;
  if (*(v17 + 6) >= v13[6])
  {
    *(v17 + 6) = 0;
    v8[6] = 1.0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __getBytesAtPositionCallback_1C0h_lut_block_invoke_2;
  v10[3] = &unk_1E75C46C8;
  v10[6] = a3;
  v10[7] = a2;
  v10[8] = v6;
  v10[4] = &v16;
  v10[5] = &v12;
  PlaneReadOnlyBlock(a1, v10);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

unint64_t getBytesAtPositionCallback_1C0h(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_1C0h_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_1C0h_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_1C0h_block_invoke;
  v6[3] = &__block_descriptor_tmp_20;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_1C0f(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_1C0f_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_1C0f_cold_1();
  }

  if ((a3 & 0xF) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_1C0f_block_invoke;
  v6[3] = &__block_descriptor_tmp_21_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFF0;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF0;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_w30r(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_w30r_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_w30r_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_w30r_block_invoke;
  v6[3] = &__block_descriptor_tmp_22;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_w40a(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_w40a_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_w40a_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_w40a_block_invoke;
  v6[3] = &__block_descriptor_tmp_23_1;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_l10r(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_l10r_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_l10r_cold_1();
  }

  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_l10r_block_invoke;
  v6[3] = &__block_descriptor_tmp_24_0;
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFF8;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

unint64_t getBytesAtPositionCallback_A008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    getBytesAtPositionCallback_A008_cold_2();
  }

  if (!a2)
  {
    getBytesAtPositionCallback_A008_cold_1();
  }

  if ((a3 & 3) != 0)
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __getBytesAtPositionCallback_A008_block_invoke;
  v6[3] = &__block_descriptor_tmp_25;
  v4 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v6[4] = a3;
  v6[5] = a2;
  v6[6] = a4 & 0xFFFFFFFFFFFFFFFCLL;
  PlaneReadOnlyBlock(a1, v6);
  return v4;
}

uint64_t getBytesAtPositionCallback_other_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a1 && a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __getBytesAtPositionCallback_other__block_invoke;
    v7[3] = &__block_descriptor_tmp_26;
    v7[4] = a3;
    v7[5] = a2;
    v7[6] = a4;
    PlaneReadOnlyBlock(a1, v7);
    return a4;
  }

  return v5;
}

float Convert_one_YCCh_to_RGB(int a1, _BYTE *a2, __int16 *a3)
{
  _H0 = *a3;
  __asm { FCVT            S1, H0 }

  _H0 = a3[1];
  __asm { FCVT            S2, H0 }

  _H0 = a3[2];
  __asm { FCVT            S3, H0 }

  if (a1 == 601)
  {
    v13 = _S1 + (_S3 * 1.402);
    v14 = (_S1 + (_S2 * -0.34414)) + (_S3 * -0.71414);
    v15 = 1.772;
  }

  else
  {
    v13 = _S1 + (_S3 * 1.5748);
    v14 = (_S1 + (_S2 * -0.18732)) + (_S3 * -0.46812);
    v15 = 1.8556;
  }

  *a2 = llroundf(fmaxf(fminf(v13 * 255.0, 255.0), 0.0));
  a2[1] = llroundf(fmaxf(fminf(v14 * 255.0, 255.0), 0.0));
  result = fmaxf(fminf((_S1 + (_S2 * v15)) * 255.0, 255.0), 0.0);
  a2[2] = llroundf(result);
  return result;
}

float Convert_one_YCC_10bit_to_RGB(int a1, int a2, _BYTE *a3, unsigned __int16 *a4)
{
  v4 = *a4 >> 6;
  v5 = v4;
  v6 = ((a4[1] >> 6) - 512);
  v7 = ((a4[2] >> 6) - 512);
  v8 = v4 - 64;
  if (a1 == 118)
  {
    v5 = v8;
  }

  v9 = 1.1678;
  v10 = 1.0;
  if (a1 == 102)
  {
    v9 = 1.0;
  }

  else
  {
    v10 = 1.1417;
  }

  v11 = ((v10 * flt_19CF2BBC0[a2 == 601]) * v7) + (v5 * v9);
  v12 = ((v10 * flt_19CF2BBC8[a2 == 601]) * v6) + (v5 * v9);
  v13 = ((v10 * flt_19CF2BBD8[a2 == 601]) * v6) + (v5 * v9);
  v14 = v11 * 0.249266862;
  v15 = (v12 + ((v10 * flt_19CF2BBD0[a2 == 601]) * v7)) * 0.249266862;
  v16 = v13 * 0.249266862;
  *a3 = llroundf(fmaxf(fminf(v14, 255.0), 0.0));
  a3[1] = llroundf(fmaxf(fminf(v15, 255.0), 0.0));
  result = fmaxf(fminf(v16, 255.0), 0.0);
  a3[2] = llroundf(result);
  return result;
}

float Convert_one_YCC_to_RGB(int a1, int a2, _BYTE *a3, _BYTE *a4, float a5)
{
  LOBYTE(a5) = *a4;
  v5 = LODWORD(a5);
  LOBYTE(a5) = a4[1];
  v6 = LODWORD(a5);
  LOBYTE(a5) = a4[2];
  v7 = LODWORD(a5);
  if (a2 != 601)
  {
    if (a1 == 102)
    {
      v8 = v6 + -128.0;
      v13 = v7 + -128.0;
      v10 = ((v7 + -128.0) * 1.581) + v5;
      v11 = (v5 + (v8 * -0.18806)) + (v13 * -0.46997);
      v12 = 1.8629;
      goto LABEL_6;
    }

    v15 = v5 + -16.0;
    v16 = v6 + -128.0;
    v19 = v7 + -128.0;
    v10 = ((v7 + -128.0) * 1.7927) + (v15 * 1.1644);
    v11 = ((v16 * -0.21325) + (v15 * 1.1644)) + (v19 * -0.53291);
    v18 = 2.1124;
LABEL_9:
    v14 = (v16 * v18) + (v15 * 1.1644);
    goto LABEL_10;
  }

  if (a1 != 102)
  {
    v15 = v5 + -16.0;
    v16 = v6 + -128.0;
    v17 = v7 + -128.0;
    v10 = ((v7 + -128.0) * 1.596) + (v15 * 1.1644);
    v11 = ((v16 * -0.39176) + (v15 * 1.1644)) + (v17 * -0.81297);
    v18 = 2.0172;
    goto LABEL_9;
  }

  v8 = v6 + -128.0;
  v9 = v7 + -128.0;
  v10 = ((v7 + -128.0) * 1.4075) + v5;
  v11 = (v5 + (v8 * -0.34549)) + (v9 * -0.71695);
  v12 = 1.779;
LABEL_6:
  v14 = (v8 * v12) + v5;
LABEL_10:
  *a3 = llroundf(fmaxf(fminf(v10, 255.0), 0.0));
  a3[1] = llroundf(fmaxf(fminf(v11, 255.0), 0.0));
  result = fmaxf(fminf(v14, 255.0), 0.0);
  a3[2] = llroundf(result);
  return result;
}

void providerReleaseCFInfoCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *__getBytesAtPositionCallback_2C08_block_invoke(void *result, uint64_t a2)
{
  if (result[6])
  {
    v2 = 0;
    v3 = result[5];
    v4 = (a2 + result[4] / 2);
    do
    {
      v5 = v3 + v2;
      *v5 = *v4;
      *(v5 + 1) = v4[1];
      *(v5 + 2) = -256;
      v2 += 4;
      v4 += 2;
    }

    while (v2 < result[6]);
  }

  return result;
}

void *__getBytesAtPositionCallback_2C16_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = (a2 + 2 * (result[4] / 4));
    do
    {
      v6 = v4 + v3;
      *v6 = *v5;
      *(v6 + 2) = v5[1];
      *(v6 + 4) = -65536;
      v3 += 8;
      v5 += 2;
    }

    while (v3 < v2);
  }

  return result;
}

__int16 __getBytesAtPositionCallback_2C0h_block_invoke@<H0>(void *a1@<X0>, uint64_t a2@<X1>)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    v4 = a1[5];
    v5 = (a2 + 2 * (a1[4] / 4));
    do
    {
      v6 = v4 + v3;
      *v6 = *v5;
      result = v5[1];
      *(v6 + 2) = result;
      *(v6 + 4) = 1006632960;
      v3 += 8;
      v5 += 2;
    }

    while (v3 < v2);
  }

  return result;
}

void *__getBytesAtPositionCallback_2C0f_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = (a2 + 4 * (result[4] / 8));
    do
    {
      v6 = v4 + v3;
      *v6 = *v5;
      *(v6 + 4) = v5[1];
      *(v6 + 8) = 0x3F80000000000000;
      v3 += 16;
      v5 += 2;
    }

    while (v3 < v2);
  }

  return result;
}

void *__getBytesAtPositionCallback_1C08_block_invoke(void *result, uint64_t a2)
{
  if (result[6])
  {
    v2 = 0;
    v3 = result[5];
    v4 = (a2 + result[4] / 4);
    do
    {
      v5 = v3 + v2;
      v6 = *v4++;
      *v5 = v6;
      *(v5 + 1) = 0;
      *(v5 + 3) = -1;
      v2 += 4;
    }

    while (v2 < result[6]);
  }

  return result;
}

void *__getBytesAtPositionCallback_1C08_lut_block_invoke(void *result, uint64_t a2)
{
  if (result[6])
  {
    v2 = 0;
    v3 = result[5];
    v4 = (a2 + result[4] / 4);
    do
    {
      v6 = *v4++;
      v5 = v6;
      _H3 = parulaColorMap[4 * v6];
      __asm { FCVT            S3, H3 }

      v13 = (_S3 * 255.0) + 0.5;
      if (v13 <= 255.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 255.0;
      }

      if (v13 >= 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = (v3 + v2);
      *(v3 + v2) = v15;
      _H3 = parulaColorMap[(4 * v5) | 1];
      __asm { FCVT            S3, H3 }

      v19 = (_S3 * 255.0) + 0.5;
      if (v19 <= 255.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 255.0;
      }

      if (v19 >= 0.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0.0;
      }

      v16[1] = v21;
      _H3 = parulaColorMap[(4 * v5) | 2];
      __asm { FCVT            S3, H3 }

      v24 = (_S3 * 255.0) + 0.5;
      if (v24 <= 255.0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 255.0;
      }

      if (v24 >= 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0.0;
      }

      v16[2] = v26;
      v16[3] = -1;
      v2 += 4;
    }

    while (v2 < result[6]);
  }

  return result;
}

void *__getBytesAtPositionCallback_1C16_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = (a2 + 2 * (result[4] / 8));
    do
    {
      v6 = *v5++;
      v7 = v4 + v3;
      *v7 = v6;
      *(v7 + 2) = 0;
      *(v7 + 6) = -1;
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t __getBytesAtPositionCallback_1C0h_lut_block_invoke(uint64_t result, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v7 = a4;
      for (j = a2; v7; --v7)
      {
        v9 = *j++;
        _H0 = v9;
        __asm { FCVT            S0, H0 }

        *(*(*(result + 32) + 8) + 24) = fminf(*(*(*(result + 32) + 8) + 24), _S0);
        *(*(*(result + 40) + 8) + 24) = fminf(*(*(*(result + 40) + 8) + 24), _S0);
      }

      a2 = (a2 + a6);
    }
  }

  return result;
}

void *__getBytesAtPositionCallback_1C0h_lut_block_invoke_2(void *result, uint64_t a2)
{
  v2 = result[8];
  if (v2)
  {
    v3 = 0;
    v4 = result[7];
    v5 = (a2 + 2 * (result[6] / 8));
    do
    {
      v6 = *v5++;
      _H4 = v6;
      __asm { FCVT            S4, H4 }

      v13 = *(*(result[4] + 8) + 24);
      v14 = (((_S4 - v13) / (*(*(result[5] + 8) + 24) - v13)) * 255.0) + 0.5;
      if (v14 <= 255.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 255.0;
      }

      if (v14 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = (v4 + v3);
      *v17 = parulaColorMap[4 * v16];
      v17[1] = parulaColorMap[(4 * v16) | 1];
      v17[2] = parulaColorMap[(4 * v16) | 2];
      v17[3] = COERCE_UNSIGNED_INT(1.0);
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

void *__getBytesAtPositionCallback_1C0h_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = (a2 + 2 * (result[4] / 8));
    do
    {
      v6 = *v5++;
      v7 = v4 + v3;
      *v7 = v6;
      *(v7 + 2) = 0;
      *(v7 + 6) = COERCE_UNSIGNED_INT(1.0);
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

float __getBytesAtPositionCallback_1C0f_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    v4 = a1[5];
    v5 = (a2 + 4 * (a1[4] / 16));
    do
    {
      v6 = *v5++;
      result = v6;
      v8 = (v4 + v3);
      *v8 = v6;
      v8[1] = 0.0;
      v8[2] = 0.0;
      v8[3] = 1.0;
      v3 += 16;
    }

    while (v3 < v2);
  }

  return result;
}

void *__getBytesAtPositionCallback_w30r_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = (a2 + 4 * (result[4] / 8));
    do
    {
      v6 = *v5++;
      v7 = (v4 + v3);
      _S2 = (((v6 >> 20) & 0x3FF) - 384) / 510.0;
      __asm { FCVT            H2, S2 }

      _S3 = (((v6 >> 10) & 0x3FF) - 384) / 510.0;
      *v7 = LOWORD(_S2);
      __asm { FCVT            H2, S3 }

      v7[1] = LOWORD(_S2);
      _S2 = ((v6 & 0x3FF) - 384) / 510.0;
      __asm { FCVT            H2, S2 }

      v7[2] = LOWORD(_S2);
      v7[3] = COERCE_UNSIGNED_INT(1.0);
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

void *__getBytesAtPositionCallback_w40a_block_invoke(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = result[5];
    v5 = a2 + ((result[4] + (result[4] < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v6 = (v4 + v3);
      v7 = *(v5 + v3);
      _S3 = (((v7 >> 38) & 0x3FF) - 384) / 510.0;
      __asm { FCVT            H3, S3 }

      _S4 = ((v7 >> 22) - 384) / 510.0;
      *v6 = LOWORD(_S3);
      __asm { FCVT            H3, S4 }

      _S4 = ((v7 >> 6) - 384) / 510.0;
      __asm { FCVT            H4, S4 }

      v6[1] = LOWORD(_S3);
      _S3 = ((v7 >> 54) - 384) / 510.0;
      __asm
      {
        FCVT            H3, S3
        FCVT            S3, H3
      }

      v6[2] = LOWORD(_S4);
      _S3 = fminf(fmaxf(_S3, 0.0), 1.0);
      __asm { FCVT            H3, S3 }

      v6[3] = LOWORD(_S3);
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

void *__getBytesAtPositionCallback_l10r_block_invoke(void *result, uint64_t a2, double a3, double a4, double a5, float32x4_t a6)
{
  v6 = result[6];
  if (v6)
  {
    v7 = 0;
    v8 = result[5];
    v9 = (a2 + 4 * (result[4] / 8));
    v10.i64[0] = 0x300000003;
    v10.i64[1] = 0x300000003;
    do
    {
      v11 = *v9++;
      *a6.f32 = vshl_u32(vdup_n_s32(v11), 0xFFFFFFF6FFFFFFECLL);
      a6.i32[2] = v11;
      v12 = vcvtq_f32_u32(vandq_s8(a6, v10));
      v12.i32[3] = v12.i32[0];
      a6 = vdivq_f32(v12, xmmword_19CF226C0);
      *(v8 + v7) = vcvt_f16_f32(a6);
      v7 += 8;
    }

    while (v7 < v6);
  }

  return result;
}

double InvertMatrix(double *a1, double *a2)
{
  result = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = -(*a1 * v7);
  v12 = v5 * -(v8 * v6) + *a1 * v6 * v10 + v5 * v4 * v9 + -(v4 * v3) * v10 + v3 * v7 * v8 + v11 * v9;
  if (v12 != 0.0)
  {
    *a2 = (v6 * v10 - v9 * v7) / v12;
    a2[1] = (v9 * v5 - v3 * v10) / v12;
    a2[2] = (v3 * v7 - v6 * v5) / v12;
    a2[3] = (v10 * -v4 + v8 * v7) / v12;
    a2[4] = (v5 * -v8 + result * v10) / v12;
    a2[5] = (v11 + v4 * v5) / v12;
    a2[6] = (v4 * v9 - v8 * v6) / v12;
    a2[7] = (v9 * -result + v8 * v3) / v12;
    result = (result * v6 - v4 * v3) / v12;
    a2[8] = result;
  }

  return result;
}

double GetAdaptationMatrix(double *a1, double *a2, double *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[2];
  v6 = v4 * 0.0;
  v7 = *a1 + v4 * 0.0 + v5 * 0.0;
  v8 = v4 + *a1 * 0.0 + v5 * 0.0;
  v9 = v5 + v6 + *a1 * 0.0;
  v10 = a2[1];
  v11 = a2[2];
  v12 = v10 * 0.0;
  v13 = *a2 + v10 * 0.0 + v11 * 0.0;
  v14 = v10 + *a2 * 0.0 + v11 * 0.0;
  v15 = v11 + v12 + *a2 * 0.0;
  v19 = 0;
  v22 = 0;
  v21 = 0u;
  v18 = 0u;
  v17 = v13 / v7;
  v20 = v14 / v8;
  v23 = v15 / v9;
  MatrixMatrix(GetAdaptationMatrix_identity_mtx, &v17, a3);

  return MatrixMatrix(a3, GetAdaptationMatrix_identity_mtx, a3);
}

void phosphors_to_rgbxyz_matrix(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v10 = ((a4 - a6) * a3 - (a2 - a6) * a5 + (a2 - a4) * a7) * a9;
  if (fabs(v10) >= 0.0001)
  {
    v14 = ((a4 - a6) * a9 - (a8 - a6) * a5 + (a8 - a4) * a7) * a3 / v10;
    v15 = -(a5 * ((a2 - a6) * a9 - (a8 - a6) * a3 + (a8 - a2) * a7)) / v10;
    v16 = ((a2 - a4) * a9 - (a8 - a4) * a3 + (a8 - a2) * a5) * a7 / v10;
    v17 = v14 * a2 / a3;
    v18 = ((1.0 - a2) / a3 + -1.0) * v14;
    v19 = v15 * a4 / a5;
    v20 = ((1.0 - a4) / a5 + -1.0) * v15;
    v29 = ((1.0 - a6) / a7 + -1.0) * v16;
    v35[0] = a8 / a9;
    v35[1] = 1.0;
    v35[2] = (1.0 - a8 - a9) / a9;
    v34 = 0.0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = v16 * a6 / a7;
    GetAdaptationMatrix(v35, d50, &v30);
    v13 = v14 * *(&v30 + 1) + v17 * *&v30 + v18 * *&v31;
    v22 = v14 * *&v32 + v17 * *(&v31 + 1) + v18 * *(&v32 + 1);
    v23 = v34;
    v24 = v14 * *(&v33 + 1) + v17 * *&v33 + v18 * v34;
    v12 = v15 * *(&v30 + 1) + v19 * *&v30 + v20 * *&v31;
    v25 = v15 * *&v32 + v19 * *(&v31 + 1) + v20 * *(&v32 + 1);
    v26 = v15 * *(&v33 + 1) + v19 * *&v33 + v20 * v34;
    v27 = v16 * *&v32 + v21 * *(&v31 + 1) + v29 * *(&v32 + 1);
    v28 = v16 * *(&v33 + 1) + v21 * *&v33;
    a1[2] = v16 * *(&v30 + 1) + v21 * *&v30 + v29 * *&v31;
    a1[3] = v22;
    a1[4] = v25;
    a1[5] = v27;
    a1[6] = v24;
    a1[7] = v26;
    a1[8] = v28 + v29 * v23;
  }

  else
  {
    v11 = vdupq_n_s64(0x7FF8000000000000uLL);
    a1[8] = NAN;
    *(a1 + 2) = v11;
    *(a1 + 3) = v11;
    *(a1 + 1) = v11;
    v12 = NAN;
    v13 = NAN;
  }

  *a1 = v13;
  a1[1] = v12;
}

double tempTint_to_XYZ(uint64_t a1, double a2, double a3)
{
  v6 = 0.0;
  v7 = 0.0;
  CI_TempTint_to_xy(&v7, &v6, a2, a3);
  result = v6;
  if (v6 >= 1.0e-20)
  {
    v5 = v7;
    *a1 = v7 / v6;
    *(a1 + 8) = 0x3FF0000000000000;
    result = (1.0 - v5) / result + -1.0;
    *(a1 + 16) = result;
  }

  return result;
}

double CI_TempTint_to_xy(double *a1, double *a2, double a3, double a4)
{
  v4 = &qword_19CF2C540;
  v5 = 29;
  v6 = 1000000.0 / a3;
  do
  {
    v7 = *v4;
    v4 += 4;
    v8 = v7;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v6 >= v8);
  v9 = a4 * -0.000333333333;
  v10 = (v8 - v6) / (v8 - *(v4 - 8));
  v11 = *(v4 - 3) * (1.0 - v10) + *(v4 - 7) * v10;
  v12 = *(v4 - 5);
  v13 = (1.0 - v10) * *(v4 - 2) + *(v4 - 6) * v10;
  v14 = *(v4 - 1);
  v15 = sqrt(v12 * v12 + 1.0);
  v16 = sqrt(v14 * v14 + 1.0);
  v17 = (1.0 - v10) * (1.0 / v16) + 1.0 / v15 * v10;
  v18 = (1.0 - v10) * (v14 / v16) + v12 / v15 * v10;
  v19 = sqrt(v18 * v18 + v17 * v17);
  v20 = v11 + v17 / v19 * v9;
  v21 = v13 + v18 / v19 * v9;
  v22 = v20 * 1.5;
  v23 = v20 + v21 * -4.0 + 2.0;
  *a1 = v22 / v23;
  result = v21 / v23;
  *a2 = result;
  return result;
}

double tempTint_to_matrix(uint64_t a1, double a2, double a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  memset(v11, 0, 24);
  tempTint_to_XYZ(v11, a2, a3);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  GetAdaptationMatrix(v11, d50, v9);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  phosphors_to_rgbxyz_matrix(v7, 0.63, 0.34, 0.295, 0.605, 0.155, 0.077, 0.3127, 0.329);
  InvertMatrix(v7, v5);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x3FF0000000000000;
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  MatrixMatrix(a1, v7, a1);
  MatrixMatrix(a1, v9, a1);
  return MatrixMatrix(a1, v5, a1);
}

double CI_GenericRGBLinear_to_TempTint(float *a1, double *a2, double *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v18 = 0.0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  phosphors_to_rgbxyz_matrix(&v14, 0.63, 0.34, 0.295, 0.605, 0.155, 0.077, 0.3127, 0.329);
  result = *(&v14 + 1) * v6 + v5 * *&v14 + v7 * *&v15;
  v9 = *&v16 * v6 + v5 * *(&v15 + 1) + v7 * *(&v16 + 1);
  v10 = *(&v17 + 1) * v6 + v5 * *&v17 + v7 * v18;
  if (result >= 1.0e-20 || v9 >= 1.0e-20 || v10 >= 1.0e-20)
  {
    v11 = result + v9 + v10;
    v12 = result / v11;
    v13 = v9 / v11;

    return CI_xy_to_TempTint(a2, a3, v12, v13);
  }

  else
  {
    *a3 = NAN;
    *a2 = NAN;
  }

  return result;
}

double CI_xy_to_TempTint(double *a1, double *a2, double a3, double a4)
{
  v4 = 1.5 - a3 + a4 * 6.0;
  v5 = (a3 + a3) / v4;
  v6 = a4 * 3.0 / v4;
  v7 = 0.0;
  v8 = &kTempTable;
  v9 = 29;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v11;
    v13 = v10;
    v14 = v7;
    v15 = v8[7];
    v16 = sqrt(v15 * v15 + 1.0);
    v7 = 1.0 / v16;
    v10 = v15 / v16;
    v18 = v8[5];
    v17 = v8[6];
    v19 = (v6 - v17) * v7;
    v11 = v19 - (v5 - v18) * v10;
    v20 = v9 - 1;
    v8 += 4;
    if (!v9)
    {
      break;
    }

    --v9;
  }

  while (v11 > 0.0);
  v21 = 0.0;
  if (v20 != 28)
  {
    if (v11 <= 0.0)
    {
      v21 = v19 - (v5 - v18) * v10;
    }

    v21 = -v21 / (v12 - v21);
  }

  *a1 = 1000000.0 / ((1.0 - v21) * *v8 + *(v8 - 4) * v21);
  v22 = v14 * v21 + v7 * (1.0 - v21);
  v23 = v13 * v21 + v10 * (1.0 - v21);
  v24 = sqrt(v23 * v23 + v22 * v22);
  result = (v23 / v24 * (v6 - (v17 * (1.0 - v21) + *(v8 - 2) * v21)) + (v5 - (v18 * (1.0 - v21) + *(v8 - 3) * v21)) * (v22 / v24)) * -3000.0;
  *a2 = result;
  return result;
}

uint64_t wrapGetContextAPI(void *a1)
{
  if (a1)
  {
    return [a1 API];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t wrapGetFormatInfo(int a1, int a2)
{
  result = 0x190600001906;
  switch(a2)
  {
    case 1:
      v4 = a1 == 3;
      v5 = 0x80E100001908;
      v6 = 0x80E100008058;
      goto LABEL_14;
    case 2:
      return 0x190800001908;
    case 3:
      return 0x19080000805BLL;
    case 4:
      v8 = a1 == 3;
      v9 = 0x190800001908;
      v7 = 0x19080000881ALL;
      goto LABEL_27;
    case 5:
      return 0x190800008814;
    case 6:
      v10 = a1 == 3;
      v11 = 0x80E100008C43;
      goto LABEL_40;
    case 7:
      v10 = a1 == 3;
      v12 = 35907;
      goto LABEL_39;
    case 8:
      return 0x93F2000093F2;
    case 9:
      return result;
    case 10:
      return 0x190900001909;
    case 11:
      return 0x190A0000190ALL;
    case 12:
      v4 = a1 == 3;
      v5 = 0x190300001903;
      v6 = 0x190300008229;
LABEL_14:
      if (v4)
      {
        return v6;
      }

      else
      {
        return v5;
      }

    case 14:
      v7 = 0x19030000822DLL;
      v8 = a1 == 3;
      v9 = 0x190300001903;
LABEL_27:
      if (v8)
      {
        result = v7;
      }

      else
      {
        result = v9;
      }

      break;
    case 15:
      if (a1 == 3)
      {
        result = 0x19030000822ELL;
      }

      else
      {
        result = 0x190300001903;
      }

      break;
    case 16:
      if (a1 == 3)
      {
        result = 0x82270000822BLL;
      }

      else
      {
        result = 0x822700008227;
      }

      break;
    case 18:
      if (a1 == 3)
      {
        result = 0x82270000822FLL;
      }

      else
      {
        result = 0x822700008227;
      }

      break;
    case 19:
      if (a1 == 3)
      {
        result = 0x822700008230;
      }

      else
      {
        result = 0x822700008227;
      }

      break;
    case 24:
      result = 0x8A1F00001907;
      break;
    case 25:
      result = 0x8A1F00001907;
      break;
    case 26:
      result = 0x93FB00001907;
      break;
    case 28:
      v10 = a1 == 3;
      v12 = 32857;
LABEL_39:
      v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x190800000000;
LABEL_40:
      if (v10)
      {
        result = v11;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void *wrapEAGLContextCreate(int a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *MEMORY[0x1E695E4D0];
  [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
  [v4 setObject:v5 forKey:*MEMORY[0x1E6977FF8]];
  [v4 setObject:v5 forKey:*MEMORY[0x1E6978008]];
  v6 = [a2 sharegroup];
  if (v6)
  {
    [v4 setObject:v6 forKey:*MEMORY[0x1E6978000]];
  }

  v7 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:a1 properties:v4];

  [v7 setDebugLabel:@"CI Internal Context"];
  return v7;
}

void *wrapEAGLContextSetParameter(void *result, uint64_t a2, int a3)
{
  v3 = a3;
  if (result)
  {
    return [result setParameter:a2 to:&v3];
  }

  return result;
}

void *wrapEAGLContextSetBackgroundEnabled(void *result, int a2)
{
  if (result)
  {
    v2 = a2;
    return [result setParameter:321 to:&v2];
  }

  return result;
}

void *wrapEAGLContextRetain(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  return a1;
}

void wrapEAGLContextRelease(id a1)
{
  if (a1)
  {
  }
}

uint64_t wrapEAGLContextTexImageIOSurface(void *a1, GLenum a2, uint64_t a3, uint64_t a4, GLint a5, signed int a6, signed int a7, __IOSurface *a8, unsigned int a9)
{
  if (!a1)
  {
    return 0;
  }

  v10 = a7;
  v13 = a4;
  v14 = a3;
  BYTE4(v37) = 0;
  LODWORD(v37) = a9;
  if (([a1 texImageIOSurface:a8 target:a2 internalFormat:a5 width:a3 height:a4 format:a6 type:a7 plane:v37 invert:?] & 1) == 0)
  {
    v41 = a6;
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a8, a9);
    BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(a8, a9);
    ElementWidthOfPlane = IOSurfaceGetElementWidthOfPlane(a8, a9);
    if (IOSurfaceGetElementHeightOfPlane(a8, a9) == 1 && ElementWidthOfPlane - 3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v40 = a2;
      v21 = v14 % ElementWidthOfPlane ? v14 + 1 : v14;
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a8, a9);
      if (BaseAddressOfPlane)
      {
        __src = BaseAddressOfPlane;
        v39 = v13;
        v23 = BytesPerElementOfPlane / ElementWidthOfPlane * v21;
        v24 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (BytesPerRowOfPlane == v24)
        {
          v25 = 0;
          goto LABEL_20;
        }

        v26 = v39;
        v27 = malloc_type_malloc(v24 * v39, 0x421921BAuLL);
        if (v27)
        {
          v25 = v27;
          if (v39)
          {
            v43 = v10;
            v28 = 0;
            v29 = __src;
            do
            {
              memcpy(&v25[v24 * v28++], v29, v23);
              v29 += BytesPerRowOfPlane;
              --v26;
            }

            while (v26);
            v10 = v43;
          }

LABEL_20:
          v30 = [MEMORY[0x1E6977FE8] currentContext];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          v17 = [MEMORY[0x1E6977FE8] setCurrentContext:a1];
          v44[1] = 3221225472;
          v44[0] = MEMORY[0x1E69E9820];
          v45 = __wrapEAGLContextTexImageIOSurface_block_invoke;
          v46 = &__block_descriptor_40_e5_v8__0l;
          v47 = v31;
          if (v17)
          {
            if (a5 == 35906)
            {
              v33 = 35906;
            }

            else
            {
              v33 = v41;
            }

            pixels = __src;
            if (v25)
            {
              pixels = v25;
            }

            glTexImage2D(v40, 0, a5, v14, v39, 0, v33, v10, pixels);
          }

          else
          {
            v36 = ci_logger_render();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              wrapEAGLContextTexImageIOSurface_cold_1(a1, v36);
              if (!v25)
              {
                goto LABEL_34;
              }

              goto LABEL_33;
            }
          }

          if (!v25)
          {
LABEL_34:
            v45(v44);
            return v17;
          }

LABEL_33:
          free(v25);
          goto LABEL_34;
        }
      }
    }

    return 0;
  }

  return 1;
}

void __wrapEAGLContextTexImageIOSurface_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 32)];
  v2 = *(a1 + 32);
  if (v2)
  {
  }
}

uint64_t wrapIsA9_or_higher()
{
  if (wrapIsA9_or_higher_didCheck != -1)
  {
    wrapIsA9_or_higher_cold_1();
  }

  return wrapIsA9_or_higher_is_A9_gpu;
}

uint64_t __wrapIsA9_or_higher_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:3];
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E6977FE8] currentContext];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    v5 = [MEMORY[0x1E6977FE8] setCurrentContext:v1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v8 = __wrapIsA9_or_higher_block_invoke_2;
    v9 = &__block_descriptor_40_e5_v8__0l;
    v10 = v3;
    if (v5)
    {
      params = 0;
      glGetIntegerv(0xD33u, &params);
      wrapIsA9_or_higher_is_A9_gpu = params >= 0x4000;
    }

    return (v8)(v7);
  }

  return result;
}

void __wrapIsA9_or_higher_block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 32)];
  v2 = *(a1 + 32);
  if (v2)
  {
  }
}

uint64_t wrapGetMacroContext@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  bzero(a2, 0x2C8uLL);
  result = [a1 getMacroContextPrivate];
  if (result)
  {
    a2[1] = result;
    a2[2] = _ActiveTexture;
    a2[3] = _AttachShader;
    a2[4] = _Begin;
    a2[5] = _BindAttribLocation;
    a2[6] = _BindBuffer;
    a2[7] = _BindFramebuffer;
    a2[8] = _BindRenderbuffer;
    a2[9] = _BindTexture;
    a2[10] = _BlendColor;
    a2[11] = _BlendEquationSeparate;
    a2[12] = _BlendFunc;
    a2[13] = _BlendFuncSeparate;
    a2[14] = _CheckFramebufferStatus;
    a2[15] = _ClearColor;
    a2[16] = _ClientWaitSync;
    a2[17] = _CompileShader;
    a2[18] = _CopyTexImage2D;
    a2[19] = _CopyTexSubImage2D;
    a2[20] = _CreateProgram;
    a2[21] = _CreateShader;
    a2[22] = _DeleteFramebuffers;
    a2[23] = _DeleteProgram;
    a2[24] = _DeleteRenderbuffers;
    a2[25] = _DeleteShader;
    a2[26] = _DeleteSync;
    a2[27] = _DeleteTextures;
    a2[28] = _DepthMask;
    a2[29] = _Disable;
    a2[30] = _DisableVertexAttribArray;
    a2[31] = _DrawArrays;
    a2[32] = _DrawBuffers;
    a2[33] = _Enable;
    a2[34] = _EnableVertexAttribArray;
    a2[35] = _End;
    a2[36] = _FenceSync;
    a2[37] = _Finish;
    a2[38] = _Flush;
    a2[39] = _FinishRenderAPPLE;
    a2[40] = _FlushRenderAPPLE;
    a2[41] = _FramebufferRenderbuffer;
    a2[42] = _FramebufferTexture2D;
    a2[43] = _GenFramebuffers;
    a2[44] = _GenRenderbuffers;
    a2[45] = _GenTextures;
    a2[46] = _GetBooleanv;
    a2[47] = _GetDoublev;
    a2[48] = _GetError;
    a2[49] = _GetFramebufferAttachmentParameteriv;
    a2[50] = _GetIntegerv;
    a2[51] = _GetProgramInfoLog;
    a2[52] = _GetProgramiv;
    a2[53] = _GetRenderbufferParameteriv;
    a2[54] = _GetShaderInfoLog;
    a2[55] = _GetShaderiv;
    a2[56] = _GetString;
    a2[57] = _GetTexImage;
    a2[58] = _GetTexLevelParameteriv;
    a2[59] = _GetUniformLocation;
    a2[60] = _GetVertexAttribPointerv;
    a2[61] = _GetVertexAttribiv;
    a2[62] = _InsertEventMarkerEXT;
    a2[63] = _IsEnabled;
    a2[64] = _IsFramebuffer;
    a2[65] = _IsTexture;
    a2[66] = _LinkProgram;
    a2[67] = _MultiTexCoord2f;
    a2[68] = _PixelStorei;
    a2[69] = _ReadPixels;
    a2[70] = _RenderbufferStorage;
    a2[71] = _Scissor;
    a2[72] = _ShaderSource;
    a2[73] = _TexImage2D;
    a2[74] = _TexParameterfv;
    a2[75] = _TexParameteri;
    a2[76] = _Uniform1f;
    a2[77] = _Uniform1i;
    a2[78] = _Uniform2f;
    a2[79] = _Uniform3f;
    a2[80] = _Uniform4f;
    a2[81] = _UniformMatrix2fv;
    a2[82] = _UniformMatrix3fv;
    a2[83] = _UniformMatrix4fv;
    a2[84] = _UseProgram;
    a2[85] = _ValidateProgram;
    a2[86] = _Vertex2f;
    a2[87] = _VertexAttribPointer;
    a2[88] = _Viewport;
    *a2 = 1;
  }

  return result;
}

double CI::Bitmap::Bitmap(CI::Bitmap *this)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 1u);
  *this = &unk_1F1033998;
  *(this + 2) = &unk_1F10339D0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  return result;
}

CFDataRef CI::createCFData(uint64_t this)
{
  if (!CI_IOSURFACE_WRAPPING(2u))
  {
    if ((atomic_load_explicit(&qword_1ED7C4538, memory_order_acquire) & 1) == 0)
    {
      CI::createCFData();
    }

    v2 = _MergedGlobals_5 - 1 + this;
    if ((_MergedGlobals_5 & (_MergedGlobals_5 - 1)) != 0)
    {
      this = v2 / _MergedGlobals_5 * _MergedGlobals_5;
    }

    else
    {
      this = v2 & -_MergedGlobals_5;
    }
  }

  v3 = mmap(0, this, 3, 4098, 1140850688, 0);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v8.version = xmmword_1F10339E8;
  *&v8.retain = unk_1F10339F8;
  *&v8.copyDescription = xmmword_1F1033A08;
  *&v8.reallocate = unk_1F1033A18;
  v8.preferredSize = qword_1F1033A28;
  v8.info = this;
  v5 = CFAllocatorCreate(0, &v8);
  v6 = CFDataCreateWithBytesNoCopy(0, v4, this, v5);
  CFRelease(v5);
  return v6;
}

uint64_t CI::Bitmap::Bitmap(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, CGColorSpace *a6, uint64_t a7)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 1u);
  *a1 = &unk_1F1033998;
  *(a1 + 16) = &unk_1F10339D0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 104) = a4;
  *(a1 + 24) = a5;
  *(a1 + 96) = a7;
  *(a1 + 112) = CI::format_component_count(a4);
  *(a1 + 120) = CI::format_bytes_per_pixel(*(a1 + 104));
  *(a1 + 128) = CI::format_bits_per_component(*(a1 + 104));
  *(a1 + 137) = CI::format_is_half_float(*(a1 + 104));
  *(a1 + 136) = CI::format_is_float(*(a1 + 104));
  *(a1 + 32) = CGColorSpaceRetain(a6);
  CFData = CI::createCFData(*(a1 + 88) * *(a1 + 96));
  *(a1 + 40) = CFData;
  *(a1 + 56) = 1;
  *(a1 + 72) = CFDataGetBytePtr(CFData);
  *(a1 + 48) = 0;
  return a1;
}

uint64_t CI::Bitmap::Bitmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CGColorSpace *a7)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 1u);
  *a1 = &unk_1F1033998;
  *(a1 + 16) = &unk_1F10339D0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = a5;
  *(a1 + 104) = a6;
  *(a1 + 112) = CI::format_component_count(a6);
  *(a1 + 120) = CI::format_bytes_per_pixel(*(a1 + 104));
  *(a1 + 128) = CI::format_bits_per_component(*(a1 + 104));
  *(a1 + 137) = CI::format_is_half_float(*(a1 + 104));
  *(a1 + 136) = CI::format_is_float(*(a1 + 104));
  *(a1 + 24) = 1;
  v10 = CGColorSpaceRetain(a7);
  *(a1 + 56) = 0;
  *(a1 + 72) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = v10;
  return a1;
}

CI::Bitmap *CI::Bitmap::Bitmap(CI::Bitmap *this, CGImage *a2)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 1u);
  *this = &unk_1F1033998;
  *(this + 2) = &unk_1F10339D0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  CI::Bitmap::init(this, a2);
  return this;
}

const __CFData *CI::Bitmap::init(CI::Bitmap *this, CGImageRef image)
{
  *(this + 10) = CGImageGetWidth(image);
  *(this + 11) = CGImageGetHeight(image);
  *(this + 12) = CGImageGetBytesPerRow(image);
  v5 = CI::format_from_CGImage(image, v4);
  *(this + 26) = v5;
  *(this + 14) = CI::format_component_count(v5);
  *(this + 15) = CI::format_bytes_per_pixel(*(this + 26));
  *(this + 16) = CI::format_bits_per_component(*(this + 26));
  *(this + 137) = CI::format_is_half_float(*(this + 26));
  *(this + 136) = CI::format_is_float(*(this + 26));
  *(this + 24) = 1;
  CI::alpha_mode_from_CGImage(image, v6);
  ColorSpace = CGImageGetColorSpace(image);
  *(this + 4) = CGColorSpaceRetain(ColorSpace);
  DataProvider = CGImageGetDataProvider(image);
  v9 = CGDataProviderRetainBytePtr();
  if (v9)
  {
    *(this + 9) = v9;
    BytePtr = CGDataProviderRetain(DataProvider);
    v11 = 48;
  }

  else
  {
    result = CGDataProviderCopyData(DataProvider);
    if (!result)
    {
      return result;
    }

    *(this + 5) = result;
    BytePtr = CFDataGetBytePtr(result);
    v11 = 72;
  }

  *(this + v11) = BytePtr;
  return 1;
}

CFTypeRef CI::Bitmap::initWithIOSurface(uint64_t a1, IOSurfaceRef buffer, uint64_t a3, int a4, int a5)
{
  v9 = a5;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, a5);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, v9);
  v13 = *a3;
  v12 = *(a3 + 4);
  v15 = *(a3 + 8);
  v14 = *(a3 + 16);
  v16 = 0x7FFFFFFFLL;
  if (v13 == 0x7FFFFFFF && v12 == 0x7FFFFFFF && v15 == 0 && v14 == 0)
  {
    HeightOfPlane = 0;
    WidthOfPlane = 0;
    v31 = 0x7FFFFFFF;
  }

  else if (v13 == -2147483647 && v12 == -2147483647 && v15 == 0xFFFFFFFFLL && v14 == 0xFFFFFFFFLL)
  {
    v16 = 0;
    v31 = 0;
  }

  else
  {
    v23 = v13 & ~(v13 >> 31);
    v24 = v13 + v15;
    if (WidthOfPlane < v24)
    {
      v24 = WidthOfPlane;
    }

    v25 = v12 & ~(v12 >> 31);
    v26 = v12 + v14;
    if (HeightOfPlane < v26)
    {
      v26 = HeightOfPlane;
    }

    v27 = v24 - v23;
    v28 = v26 < v25;
    if (v26 >= v25)
    {
      v29 = v26 - v25;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v27 = 0;
      v25 = 0x7FFFFFFFLL;
      v30 = 0x7FFFFFFF;
    }

    else
    {
      v30 = v23;
    }

    if (v24 >= v23)
    {
      HeightOfPlane = v29;
    }

    else
    {
      HeightOfPlane = 0;
    }

    if (v24 >= v23)
    {
      WidthOfPlane = v27;
    }

    else
    {
      WidthOfPlane = 0;
    }

    if (v24 >= v23)
    {
      v16 = v25;
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }

    if (v24 >= v23)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }
  }

  *(a1 + 80) = WidthOfPlane;
  *(a1 + 88) = HeightOfPlane;
  *(a1 + 104) = a4;
  *(a1 + 96) = IOSurfaceGetBytesPerRowOfPlane(buffer, v9);
  *(a1 + 112) = CI::format_component_count(*(a1 + 104));
  *(a1 + 120) = CI::format_bytes_per_pixel(*(a1 + 104));
  *(a1 + 128) = CI::format_bits_per_component(*(a1 + 104));
  *(a1 + 137) = CI::format_is_half_float(*(a1 + 104));
  *(a1 + 136) = CI::format_is_float(*(a1 + 104));
  *(a1 + 32) = 0;
  v32 = IOSurfaceGetBaseAddressOfPlane(buffer, v9) + *(a1 + 96) * v16;
  *(a1 + 72) = &v32[(CI::format_bytes_per_pixel(*(a1 + 104)) * v31)];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = CFRetain(buffer);
  *(a1 + 64) = result;
  return result;
}

uint64_t CI::Bitmap::Bitmap(uint64_t a1, IOSurfaceRef buffer, uint64_t a3, int a4)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 1u);
  *a1 = &unk_1F1033998;
  *(a1 + 16) = &unk_1F10339D0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (IOSurfaceGetPlaneCount(buffer) < 2)
  {
    CI::Bitmap::initWithIOSurface(a1, buffer, a3, a4, 0);
  }

  else
  {
    v8 = ci_logger_render();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CI::Bitmap::Bitmap(v8);
    }
  }

  return a1;
}

CI::Bitmap *CI::Bitmap::Bitmap(CI::Bitmap *this, __IOSurface *a2, int a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 1u);
  *this = &unk_1F1033998;
  *(this + 2) = &unk_1F10339D0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v6 = CI::format_from_IOSurface(a2, a2);
  if ((CI::format_is_ycc_biplanar(v6) & 1) != 0 || CI::format_is_rgb_biplanar(v6))
  {
    v12 = 0;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(a2, a3);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(a2, a3);
    v7 = CI::format_of_plane(v6, a3);
    v8 = this;
    v9 = a2;
    v10 = a3;
  }

  else
  {
    v12 = 0;
    WidthOfPlane = IOSurfaceGetWidth(a2);
    HeightOfPlane = IOSurfaceGetHeight(a2);
    v8 = this;
    v9 = a2;
    v7 = v6;
    v10 = 0;
  }

  CI::Bitmap::initWithIOSurface(v8, v9, &v12, v7, v10);
  return this;
}

void CI::Bitmap::~Bitmap(CI::Bitmap *this)
{
  *this = &unk_1F1033998;
  *(this + 2) = &unk_1F10339D0;
  v2 = *(this + 4);
  if (v2)
  {
    CGColorSpaceRelease(v2);
    *(this + 4) = 0;
  }

  *(this + 9) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
    *(this + 5) = 0;
  }

  if (*(this + 6))
  {
    CGDataProviderReleaseBytePtr();
    CGDataProviderRelease(*(this + 6));
    *(this + 6) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
    *(this + 8) = 0;
  }

  *(this + 5) = xmmword_19CF2C900;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 2) = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 0xFFFFFFFF);
}

{
  CI::Bitmap::~Bitmap(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::Bitmap::~Bitmap(CI::Bitmap *this)
{
  CI::Bitmap::~Bitmap((this - 16));
}

{
  CI::Bitmap::~Bitmap((this - 16));

  JUMPOUT(0x19EAF5590);
}

CGImageRef CI::Bitmap::create_CGImage(CI::Bitmap *this)
{
  v2 = CI::format_CGBitmapInfo(*(this + 26), *(this + 24));
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(this + 5);
  v5 = v4 ? CGDataProviderCreateWithCFData(v4) : CGDataProviderCreateWithCopyOfData();
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *(this + 4);
  DeviceRGB = v7;
  if (!v7)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v9 = *(this + 10);
  v10 = *(this + 11);
  v11 = CI::format_bits_per_component(*(this + 26));
  v12 = CI::format_bits_per_pixel(*(this + 26));
  v13 = CGImageCreate(v9, v10, v11, v12, *(this + 12), DeviceRGB, v3, v6, 0, 1, kCGRenderingIntentDefault);
  CGDataProviderRelease(v6);
  if (!v7)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  return v13;
}

void *CI::InstanceCounted<(CI::Type)63>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)63>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033A40;
  atomic_fetch_add(&dword_1ED7C47BC[61], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::Buffer::copy_to(CI::Buffer *this, unsigned __int8 *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4.length = CFDataGetLength(*(this + 3));
    v4.location = 0;

    CFDataGetBytes(v2, v4, a2);
  }
}

CFStringRef CI::Buffer::description(CI::Buffer *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    Length = CFDataGetLength(*(this + 3));
  }

  else
  {
    Length = 0;
  }

  return CFStringCreateWithFormat(0, 0, @"<CI::Buffer %p>[%zu bytes]", v1, Length);
}

uint64_t CI::Buffer::print(CI::Buffer *this, __sFILE *a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    Length = CFDataGetLength(v4);
    v6 = Length;
    if (Length > 0x20)
    {
      fprintf(a2, "[len:%zu ", Length);
      XXH64_reset(v11, 0);
      CI::XXHashHelper::add(v11, *(this + 3));
      v10 = XXH64_digest(v11);
      return fprintf(a2, "digest:%016llX]", v10);
    }

    v4 = *(this + 3);
  }

  else
  {
    v6 = 0;
  }

  BytePtr = CFDataGetBytePtr(v4);
  for (result = fwrite("0x", 2uLL, 1uLL, a2); v6; --v6)
  {
    v9 = *BytePtr++;
    result = fprintf(a2, "%02X", v9);
  }

  return result;
}

void CI::Buffer::~Buffer(CI::Buffer *this)
{
  CI::Buffer::~Buffer(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1033A68;
  *(this + 2) = &unk_1F1033AA0;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 2) = &unk_1F10322E8;
  atomic_fetch_add(&dword_1ED7C47BC[63], 0xFFFFFFFF);
}

void non-virtual thunk toCI::Buffer::~Buffer(CI::Buffer *this)
{
  CI::Buffer::~Buffer((this - 16));
}

{
  CI::Buffer::~Buffer((this - 16));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::originating_process_is_in_background(CI *this)
{
  if (CI_FORCE_IS_BACKGROUND() == 89)
  {
    return 1;
  }

  if (CI_FORCE_IS_BACKGROUND() != 78)
  {
    proc_pidoriginatorinfo();
  }

  return 0;
}

float32x2_t *CI::Color::Color(float32x2_t *this, CGColorRef color)
{
  *this = &unk_1F103C4D0;
  this[1].i32[0] = 1;
  this[2] = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 1u);
  *this = &unk_1F1033AC8;
  this[2] = &unk_1F1033B10;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  if (color)
  {
    ColorSpace = CGColorGetColorSpace(color);
    Model = CGColorSpaceGetModel(ColorSpace);
    Components = CGColorGetComponents(color);
    if (Model == kCGColorSpaceModelRGB)
    {
      this[3] = vcvt_f32_f64(*Components);
      v9 = Components[1].f64[0];
      this[4].f32[0] = v9;
      v8 = 3;
      goto LABEL_6;
    }

    if (Model == kCGColorSpaceModelMonochrome)
    {
      v7 = Components->f64[0];
      this[3].f32[1] = v7;
      this[4].f32[0] = v7;
      this[3].f32[0] = v7;
      v8 = 1;
LABEL_6:
      v10 = Components->f64[v8];
      this[4].f32[1] = v10;
      this[5] = CGColorSpaceRetain(ColorSpace);
    }
  }

  return this;
}

uint64_t CI::Color::Color(uint64_t this, float a2, float a3, float a4, float a5)
{
  *this = &unk_1F103C4D0;
  *(this + 8) = 1;
  *(this + 16) = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 1u);
  *this = &unk_1F1033AC8;
  *(this + 16) = &unk_1F1033B10;
  *(this + 24) = a2;
  *(this + 28) = a3;
  *(this + 32) = a4;
  *(this + 36) = a5;
  *(this + 40) = 0;
  return this;
}

void CI::Color::~Color(CI::Color *this)
{
  *this = &unk_1F1033AC8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = &unk_1F1033B10;
  CGColorSpaceRelease(*(this + 5));
  *(this + 5) = 0;
  *(this + 2) = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 0xFFFFFFFF);
}

{
  *this = &unk_1F1033AC8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = &unk_1F1033B10;
  CGColorSpaceRelease(*(this + 5));
  *(this + 5) = 0;
  *(this + 2) = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 0xFFFFFFFF);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::Color::~Color(CI::Color *this)
{
  *(this - 2) = &unk_1F1033AC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F1033B10;
  CGColorSpaceRelease(*(this + 3));
  *(this + 3) = 0;
  *this = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 0xFFFFFFFF);
}

{
  CI::Color::~Color((this - 16));
}

void CI::Color::vector_in_workingspace(CI::Color *this, CGColorSpace **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *(this + 24);
  v9 = *(this + 8);
  if (!CI_NO_CM())
  {
    v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v6 = v4;
    if (*(this + 5))
    {
      v7 = *(this + 5);
    }

    else
    {
      v7 = v4;
    }

    CI::match_color(&v8, v7, a2[3], v5);
    CGColorSpaceRelease(v6);
  }

  operator new();
}

uint64_t CI::Color::print(CI::Color *this, __sFILE *a2)
{
  fprintf(a2, "[%g %g %g %g ", *(this + 6), *(this + 7), *(this + 8), *(this + 9));
  CI::fprintf_cs(a2, *(this + 5), 1);

  return fputc(93, a2);
}

BOOL CI::Color::isExtended(CI::Color *this)
{
  v1 = *(this + 6);
  if (v1 < 0.0)
  {
    return 1;
  }

  v2 = *(this + 7);
  if (v2 < 0.0)
  {
    return 1;
  }

  v3 = *(this + 8);
  if (v3 < 0.0)
  {
    return 1;
  }

  if (fmaxf(v3, fmaxf(fmaxf(v1, v2), 0.0)) > *(this + 9))
  {
    return 1;
  }

  return v1 > 1.0;
}

void *CI::InstanceCounted<(CI::Type)67>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)67>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033B38;
  atomic_fetch_add(&dword_1ED7C47BC[65], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void ___ZN2CI16GLTextureManagerC2EPNS_9GLContextE_block_invoke(uint64_t a1, CFTypeRef a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ci_signpost_log_render();
  v6 = *(a1 + 40);
  if (((v6 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v5;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v6 << 32, "release_surface_block", &unk_19CFBCBAE, buf, 2u);
      v6 = *(a1 + 40);
    }
  }

  TimerBase::TimerBase(v57, v6, 0, "release_surface_block", 32);
  v8 = *(v4 + 176);
  v9 = *(v8 + 8);
  while (v9 != v8)
  {
    v11 = v9 + 8;
    v9 = *(v9 + 8);
    v10 = *(v11 + 8);
    v56 = v10;
    if ((v10[3] & 1) == 0 && *v10 == a2)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *buf = 0u;
      v24 = 0u;
      GetMacroContext(*(v4 + 184), buf);
      if ((buf[0] & 1) == 0)
      {
        v12 = ci_logger_render();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v4 + 184);
          *v59 = 134349056;
          v60 = v13;
          _os_log_error_impl(&dword_19CC36000, v12, OS_LOG_TYPE_ERROR, "Unable to get macro state for the GLContext: %{public}p.\n", v59, 0xCu);
        }
      }

      (*(&v36 + 1))(*&buf[8], 1, v56 + 8);
      CFRelease(*v56);
      *v56 = 0;
      std::list<CI::attached_surface_t *>::remove(*(v4 + 176), &v56);
      free(v56);
      v8 = *(v4 + 176);
    }
  }

  v14 = *(v4 + 136);
  v15 = *(v14 + 8);
  if (v15 != v14)
  {
    do
    {
      v16 = v15 + 8;
      v15 = *(v15 + 8);
      v56 = *(v16 + 8);
      if ((**v56)(v56) == a2)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        *buf = 0u;
        v24 = 0u;
        GetMacroContext(*(v4 + 184), buf);
        if ((buf[0] & 1) == 0)
        {
          v17 = ci_logger_render();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = *(v4 + 184);
            *v59 = 134349056;
            v60 = v19;
            _os_log_error_impl(&dword_19CC36000, v17, OS_LOG_TYPE_ERROR, "Unable to get macro state for the GLContext: %{public}p.\n", v59, 0xCu);
          }
        }

        (*(*v56 + 3))(v59);
        v55(*&buf[8]);
        (*(&v36 + 1))(*&buf[8], 1, v59);
        std::list<CI::attached_surface_t *>::remove(*(v4 + 136), &v56);
        v18 = (**v56)();
        CFRelease(v18);
        if (v56)
        {
          (*(*v56 + 6))(v56);
        }
      }
    }

    while (v15 != *(v4 + 136));
  }

  v20 = ci_signpost_log_render();
  v21 = v58;
  if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v20;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_END, v21, "release_surface_block", &unk_19CFBCBAE, buf, 2u);
    }
  }

  TimerBase::~TimerBase(v57);
}

uint64_t std::list<CI::attached_surface_t *>::remove(uint64_t a1, void *a2)
{
  v9[0] = v9;
  v9[1] = v9;
  v10 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v7 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        while (v6 != a1)
        {
          if (v6[2] != v5)
          {
            std::list<CI::attached_surface_t *>::splice(v9, v9, a1, v2, v6);
            v6 = v6[1];
            goto LABEL_9;
          }

          v6 = v6[1];
        }

        std::list<CI::attached_surface_t *>::splice(v9, v9, a1, v2, v6);
      }

LABEL_9:
      v2 = v6;
    }

    while (v6 != a1);
    v7 = v10;
  }

  std::__list_imp<CI::attached_surface_t *>::clear(v9);
  return v7;
}

void CI::GLTextureManager::~GLTextureManager(CI::GLTextureManager *this)
{
  *this = &unk_1F1033B60;
  v2 = *(this + 12);
  block = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = ___ZN2CI16GLTextureManager19purge_intermediatesEm_block_invoke;
  v11 = &__block_descriptor_tmp_8_2;
  v12 = this;
  v13 = 0;
  dispatch_async(v2, &block);
  dispatch_sync(*(this + 12), &__block_literal_global_82);
  CI::TextureManager::remove_all(this);
  if (CI_RECYCLE_OPENGL_TEXTURES() && CI_IOSURFACE_INTERMEDIATES())
  {
    RemoveReleaseSurfaceBlock(*(this + 13));
  }

  v3 = *(this + 13);
  block = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = ___ZN2CI16GLTextureManager23purge_attached_surfacesEm_block_invoke;
  v11 = &__block_descriptor_tmp_14_1;
  v12 = this;
  v13 = 0;
  dispatch_sync(v3, &block);
  v4 = *(this + 22);
  if (v4)
  {
    std::__list_imp<CI::attached_surface_t *>::clear(*(this + 22));
    MEMORY[0x19EAF5590](v4, 0x1020C4062D53EE8);
  }

  v5 = *(this + 23);
  v6 = *(this + 13);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN2CI16GLTextureManagerD2Ev_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_3_2;
  v7[4] = v5;
  dispatch_async(v6, v7);
  CI::TextureManager::~TextureManager(this);
}

{
  CI::GLTextureManager::~GLTextureManager(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::GLTextureManager::create_intermediate(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v32 = *(a5 + 8);
  if (*(a5 + 8))
  {
    v7 = *(a5 + 16) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v30 = *a2;
  v31 = 0;
  if ((a2[1] & 2) != 0)
  {
    LOBYTE(v31) = 1;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3802000000;
  v27[3] = __Block_byref_object_copy__20;
  v27[4] = __Block_byref_object_dispose__20;
  v28 = 0;
  v29 = 0;
  API = CIEAGLContextGetAPI(*(*(a1 + 168) + 392));
  v28 = CI::gl_format_info_for_format(&v30, API);
  v29 = v15;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v16 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke;
  block[3] = &unk_1E75C4830;
  block[6] = a1;
  block[7] = a3;
  v19 = v32;
  block[4] = &v23;
  block[5] = v27;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  dispatch_sync(v16, block);
  v8 = v24[3];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
  return v8;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

uint64_t CI::gl_format_info_for_format(uint64_t a1, int a2)
{
  result = 0;
  v4 = *a1;
  if (*a1 > 1797)
  {
    if (v4 > 2304)
    {
      if (v4 <= 2310)
      {
        if (v4 < 2308 || v4 == 2309)
        {
          v6 = 15;
        }

        else
        {
          v6 = 19;
        }

        return CIGLGetFormatInfo(a2, v6);
      }

      if (v4 > 2566)
      {
        if (v4 <= 3332)
        {
          if (v4 == 2567)
          {
            v6 = 8;
            return CIGLGetFormatInfo(a2, v6);
          }

          if (v4 != 3331)
          {
            return result;
          }

          goto LABEL_59;
        }

        if (v4 == 3333)
        {
LABEL_59:
          v6 = 13;
          return CIGLGetFormatInfo(a2, v6);
        }

        if (v4 != 3334)
        {
          return result;
        }

LABEL_58:
        v6 = 17;
        return CIGLGetFormatInfo(a2, v6);
      }

      if (v4 == 2311)
      {
        v6 = 23;
      }

      else
      {
        if (v4 != 2312 && v4 != 2316)
        {
          return result;
        }

        v6 = 5;
      }
    }

    else
    {
      if (v4 <= 2051)
      {
        if (v4 <= 1803)
        {
          if (v4 == 1798)
          {
            goto LABEL_58;
          }

          if (v4 == 1799)
          {
            v6 = 21;
            return CIGLGetFormatInfo(a2, v6);
          }

          if (v4 != 1800)
          {
            return result;
          }

          goto LABEL_44;
        }

        if ((v4 - 2049) >= 3)
        {
          if (v4 != 1804)
          {
            return result;
          }

LABEL_44:
          v6 = 3;
          return CIGLGetFormatInfo(a2, v6);
        }

        goto LABEL_36;
      }

      if (v4 > 2054)
      {
        if (v4 == 2055)
        {
          v6 = 22;
        }

        else
        {
          if (v4 != 2056 && v4 != 2060)
          {
            return result;
          }

          v6 = 4;
        }
      }

      else
      {
        if (v4 == 2053)
        {
LABEL_36:
          v6 = 14;
          return CIGLGetFormatInfo(a2, v6);
        }

        v6 = 18;
      }
    }

    return CIGLGetFormatInfo(a2, v6);
  }

  if (v4 > 531)
  {
    if (v4 <= 784)
    {
      if (v4 <= 772)
      {
        if (v4 == 532)
        {
LABEL_63:
          v6 = 24;
          return CIGLGetFormatInfo(a2, v6);
        }

        if (v4 == 533)
        {
LABEL_62:
          v6 = 25;
          return CIGLGetFormatInfo(a2, v6);
        }

        if (v4 != 771)
        {
          return result;
        }

        goto LABEL_59;
      }

      if (v4 != 773)
      {
        if (v4 != 774)
        {
          if (v4 != 784)
          {
            return result;
          }

          v6 = 27;
          return CIGLGetFormatInfo(a2, v6);
        }

        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (v4 <= 1795)
    {
      if ((v4 - 1793) >= 3)
      {
        if (v4 != 785)
        {
          return result;
        }

        v6 = 28;
        return CIGLGetFormatInfo(a2, v6);
      }

      goto LABEL_59;
    }

    if (v4 != 1796)
    {
      if (v4 != 1797)
      {
        return result;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v5 = v4 - 257;
  v6 = 9;
  switch(v5)
  {
    case 0:
    case 1:
      return CIGLGetFormatInfo(a2, v6);
    case 2:
      v6 = 10;
      return CIGLGetFormatInfo(a2, v6);
    case 3:
      v6 = 11;
      return CIGLGetFormatInfo(a2, v6);
    case 4:
      v6 = 12;
      return CIGLGetFormatInfo(a2, v6);
    case 5:
      v6 = 16;
      return CIGLGetFormatInfo(a2, v6);
    case 6:
      v6 = 20;
      return CIGLGetFormatInfo(a2, v6);
    case 7:
    case 11:
      if (*(a1 + 4))
      {
        v6 = 7;
      }

      else
      {
        v6 = 2;
      }

      return CIGLGetFormatInfo(a2, v6);
    case 9:
    case 13:
      if (*(a1 + 4))
      {
        v6 = 6;
      }

      else
      {
        v6 = 1;
      }

      return CIGLGetFormatInfo(a2, v6);
    case 17:
      v6 = 26;
      return CIGLGetFormatInfo(a2, v6);
    case 19:
      goto LABEL_63;
    case 20:
      goto LABEL_62;
    default:
      return result;
  }

  return result;
}

void ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  GetMacroContext(v2[23], v28);
  if ((v28[0] & 1) == 0)
  {
    v3 = ci_logger_render();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v58.width = *(a1 + 64);
  v58.height = *(a1 + 72);
  *(*(*(a1 + 32) + 8) + 24) = CI::TextureManager::_find_match_for_surface(v2, *(a1 + 56), v58);
  v4 = *(a1 + 32);
  v5 = *(*(v4 + 8) + 24);
  if (v5)
  {
    v6 = v57;
    v7 = *(&v28[0] + 1);
    (*(*v5 + 24))(v27);
    v6(v7, LODWORD(v27[0]));
    v4 = *(a1 + 32);
    v8 = *(*(v4 + 8) + 24);
    v26 = 0;
    if (v8)
    {
      (*(*v8 + 24))(v27);
      v4 = *(a1 + 32);
      if (LODWORD(v27[0]))
      {
        v9 = *(&v29 + 1);
        v10 = *(&v28[0] + 1);
        (*(**(*(v4 + 8) + 24) + 24))(v27);
        v9(v10, 3553, LODWORD(v27[0]));
        (v54)(*(&v28[0] + 1), 3553, 0, 4099, &v26);
        (*(&v29 + 1))(*(&v28[0] + 1), 3553, 0);
        v4 = *(a1 + 32);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  v11 = *(*(v4 + 8) + 24);
  if (!v11 || *(v11 + 64) || !CI_RECYCLE_OPENGL_TEXTURES() || v26 != *(*(*(a1 + 40) + 8) + 40))
  {
    operator new();
  }

  v16 = *(a1 + 80);
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *v16;
  if (v19 == -2147483647)
  {
    if (HIDWORD(v17) == -2147483647 && *&v18 == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
    {
      v20 = MEMORY[0x1E695F040];
      goto LABEL_28;
    }

LABEL_29:
    v23.i64[0] = v17;
    v23.i64[1] = SHIDWORD(v17);
    v22 = vcvtq_f64_s64(v23);
    v21 = vcvtq_f64_u64(v18);
    goto LABEL_30;
  }

  if (v19 != 0x7FFFFFFF || HIDWORD(v17) != 0x7FFFFFFF || *&v18 != 0)
  {
    goto LABEL_29;
  }

  v20 = MEMORY[0x1E695F050];
LABEL_28:
  v22 = *v20;
  v21 = v20[1];
LABEL_30:
  v24 = *(*(*(a1 + 32) + 8) + 24);
  v24[2] = v22;
  v24[3] = v21;
  v25 = (*(*(*(a1 + 32) + 8) + 24) + 64);
  *v25 += *(a1 + 88);
  *(*(*(*(a1 + 32) + 8) + 24) + 72) = *(a1 + 96);
  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12 && (**v12)(v12) && *(a1 + 88) >= 2uLL)
  {
    v13 = 1;
    do
    {
      v14 = *(*(*(a1 + 32) + 8) + 24);
      v15 = (**v14)(v14);
      RetainSurfaceFromCache(v15);
      ++v13;
    }

    while (v13 < *(a1 + 88));
  }
}

uint64_t CI::GLTextureManager::create_intermediate(void *a1, int *a2, uint64_t a3, CGFloat *a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v52.origin.x = *a4;
  v52.origin.y = v15;
  v52.size.width = v16;
  v52.size.height = v17;
  if (CGRectIsNull(v52))
  {
    return 0;
  }

  v53.origin.x = v14;
  v53.origin.y = v15;
  v53.size.width = v16;
  v53.size.height = v17;
  if (CGRectIsInfinite(v53))
  {
    *&v51[16] = 0xFFFFFFFFLL;
    v50 = *(&IRectInfinite + 8);
    *v51 = IRectInfinite;
  }

  else
  {
    v54.origin.x = v14;
    v54.origin.y = v15;
    v54.size.width = v16;
    v54.size.height = v17;
    v55 = CGRectInset(v54, 0.000001, 0.000001);
    v56 = CGRectIntegral(v55);
    *v51 = v56.origin.x;
    *&v51[4] = v56.origin.y;
    *&v51[8] = v56.size.width;
    *&v51[16] = v56.size.height;
    v50 = *&v51[8];
    if (v56.size.width)
    {
      v19 = v56.size.height == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v48 = *a2;
  v49 = 0;
  if ((a2[1] & 2) != 0)
  {
    LOBYTE(v49) = 1;
  }

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3802000000;
  v45[3] = __Block_byref_object_copy__20;
  v45[4] = __Block_byref_object_dispose__20;
  v46 = 0;
  v47 = 0;
  API = CIEAGLContextGetAPI(*(a1[21] + 392));
  v46 = CI::gl_format_info_for_format(&v48, API);
  v47 = v21;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v22 = a1[13];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorENS_17NodeContentDigestERK6CGRectmmb_block_invoke;
  v25[3] = &unk_1E75C4858;
  v25[8] = a1;
  v25[9] = a3;
  v25[10] = a2;
  v32 = a7;
  v25[4] = v45;
  v25[5] = &v37;
  v27 = *&v51[16];
  v26 = *v51;
  v28 = v50;
  v25[6] = &v33;
  v25[7] = &v41;
  v29 = a5;
  v30 = a4;
  v31 = a6;
  dispatch_sync(v22, v25);
  v23 = v38[3];
  if (v23)
  {
    v18 = (*(*a1 + 64))(a1, a2, v23, 0, v51, a6, *(v34 + 24));
  }

  else
  {
    v18 = v42[3];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(v45, 8);
  return v18;
}

void ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorENS_17NodeContentDigestERK6CGRectmmb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  memset(v22, 0, 512);
  GetMacroContext(*(v2 + 184), v22);
  if ((v22[0] & 1) == 0)
  {
    v3 = ci_logger_render();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  if (CI_IOSURFACE_INTERMEDIATES())
  {
    v4 = CFStringCreateWithFormat(0, 0, @"%llX(%04x,%04x,%04x)", *(a1 + 72), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 44), *(*(*(a1 + 32) + 8) + 48));
    v5 = CI::PixelFormatType_from_format(**(a1 + 80));
    if (*(a1 + 152) == 1)
    {
      v20 = *(a1 + 88);
      v21 = *(a1 + 104);
      LODWORD(v18) = 0;
      v6 = *(v2 + 168);
      v7 = v6[47];
      *(&v18 + 1) = 0;
      v19 = v7;
      v8 = (*(*v6 + 280))();
      *(*(*(a1 + 40) + 8) + 24) = GetValidSurfaceFromCache(&v20, v5, &v18, v8, 0, *(*(a1 + 80) + 12), v4);
    }

    else
    {
      theArray = CFArrayCreateMutable(0, *(*(v2 + 136) + 16), 0);
      if (CI_RECYCLE_OPENGL_TEXTURES())
      {
        v10 = *(v2 + 136);
        for (i = *(v10 + 8); i != v10; i = *(i + 8))
        {
          v12 = *(i + 16);
          if (!(*(*v12 + 16))(v12) && *((*(*v12 + 32))(v12) + 16) == *(a1 + 112) && *((*(*v12 + 32))(v12) + 24) == *(a1 + 120))
          {
            v13 = (**v12)(v12);
            CFArrayAppendValue(theArray, v13);
          }
        }
      }

      v14 = *(a1 + 128);
      v20 = *(a1 + 88);
      v21 = *(a1 + 104);
      LODWORD(v18) = 0;
      v15 = *(v2 + 168);
      v16 = v15[47];
      *(&v18 + 1) = 0;
      v19 = v16;
      v17 = (*(*v15 + 280))();
      *(*(*(a1 + 40) + 8) + 24) = GetSurfaceFromCache(&v20, v14, v14, v5, &v18, v17, 0, *(*(a1 + 80) + 12), v4, *(*(a1 + 48) + 8) + 24, theArray);
      CFRelease(theArray);
    }

    CFRelease(v4);
  }

  else if ((*(a1 + 152) & 1) == 0)
  {
    operator new();
  }
}

void CI::GLTextureManager::purge_intermediates(CI::GLTextureManager *this, uint64_t a2)
{
  v2 = *(this + 12);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI16GLTextureManager19purge_intermediatesEm_block_invoke;
  v3[3] = &__block_descriptor_tmp_8_2;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2CI16GLTextureManager19purge_intermediatesEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CI_RECYCLE_OPENGL_TEXTURES() && CI_IOSURFACE_INTERMEDIATES())
  {
    v3 = *(v2 + 13);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN2CI16GLTextureManager19purge_intermediatesEm_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_7_6;
    v4 = *(a1 + 40);
    v5[4] = v2;
    v5[5] = v4;
    dispatch_sync(v3, v5);
  }

  CI::TextureManager::purge_intermediates(v2);
}

void *___ZN2CI16GLTextureManager19purge_intermediatesEm_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v4 = *(v2 + 8);
  while (v4 != v2)
  {
    if (v3 <= *(a1 + 40) || (v6 = v4[2], (*(*v6 + 16))(v6)))
    {
      v4 = v4[1];
    }

    else
    {
      v11 = *(v6 + 8);
      (**v1)(v1, &v11);
      v11 = 0uLL;
      CFRelease(*(v6 + 24));
      (*(*v6 + 48))(v6);
      --v3;
      for (i = v4[1]; ; i = i[1])
      {
        if (i == v2)
        {
          std::list<CI::attached_surface_t *>::splice(v10, v10, v2, v4, i);
          v4 = i;
          goto LABEL_5;
        }

        if (v3 <= *(a1 + 40))
        {
          break;
        }

        v8 = i[2];
        if ((*(*v8 + 16))(v8))
        {
          break;
        }

        v11 = *(v8 + 8);
        (**v1)(v1, &v11);
        v11 = 0uLL;
        CFRelease(*(v8 + 24));
        (*(*v8 + 48))(v8);
        --v3;
      }

      std::list<CI::attached_surface_t *>::splice(v10, v10, v2, v4, i);
      v4 = i[1];
    }

LABEL_5:
    ;
  }

  return std::__list_imp<CI::attached_surface_t *>::clear(v10);
}

uint64_t CI::GLTextureManager::_release_intermediate(uint64_t a1, uint64_t a2)
{
  if (!CI_RECYCLE_OPENGL_TEXTURES() || (result = CI_IOSURFACE_INTERMEDIATES(), !result))
  {

    return CI::TextureManager::_release_intermediate(a1, a2);
  }

  return result;
}

void CI::GLTextureManager::release_texture(uint64_t a1, int *a2)
{
  if (*a2)
  {
    v3 = *(*(a1 + 168) + 416);
    v4 = CI_IOSURFACE_INTERMEDIATES();
    if (v4)
    {
      v5 = *a2;
      v6 = CI::Context::render_completion_queue(v4);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZNK2CI16GLTextureManager15release_textureENS_7TextureE_block_invoke;
      block[3] = &__block_descriptor_tmp_9_0;
      block[4] = v3;
      v35 = v5;
      dispatch_async(v6, block);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      memset(v14, 0, sizeof(v14));
      GetMacroContext(v3, v14);
      if ((v14[0] & 1) == 0)
      {
        v7 = ci_logger_render();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          CI::GLTextureManager::release_texture(v3, v7, v8, v9, v10, v11, v12, v13);
        }
      }

      (*(&v15 + 1))(*(&v14[0] + 1), 1, a2);
    }
  }
}

uint64_t ___ZNK2CI16GLTextureManager15release_textureENS_7TextureE_block_invoke(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  GetMacroContext(*(a1 + 32), v4);
  if ((v4[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v24(*(&v4[0] + 1), *(a1 + 40));
  return (*(&v5 + 1))(*(&v4[0] + 1), 1, a1 + 40);
}

uint64_t CI::GLTextureManager::upload_texture(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  GetMacroContext(*(*(a1 + 168) + 392), v23);
  if ((v23[0] & 1) == 0)
  {
    v15 = ci_logger_render();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      CI::GLTextureManager::upload_texture();
    }
  }

  v22 = 0;
  (v45)(*(&v23[0] + 1), 32873, &v22);
  v21 = 0;
  (*(&v42 + 1))(*(&v23[0] + 1), 1, &v21);
  (*(&v24 + 1))(*(&v23[0] + 1), 3553, v21);
  API = CIEAGLContextGetAPI(*(*(a1 + 168) + 392));
  v17 = CI::gl_format_info_for_format(a8, API);
  v52(*(&v23[0] + 1), 3553, 0, v17, a5, a6, 0, HIDWORD(v17), v18, a4);
  (*(&v24 + 1))(*(&v23[0] + 1), 3553, v22);
  v19 = malloc_type_malloc(0x20uLL, 0x10C20400159326AuLL);
  *v19 = v21;
  v19[1] = 3553;
  *(v19 + 1) = 0;
  v19[4] = a3;
  v19[5] = 1;
  *(v19 + 24) = 0;
  CI::TextureManager::append_to_lru(a1, a2, v19);
  return v21;
}

uint64_t CI::GLTextureManager::texture_for_CGImage(void **a1, CGImage *a2, uint64_t a3)
{
  v6 = ((*a1)[1])(a1);
  if (!v6)
  {
    Width = CGImageGetWidth(a2);
    Height = CGImageGetHeight(a2);
    BytesPerRow = CGImageGetBytesPerRow(a2);
    BitsPerPixel = CGImageGetBitsPerPixel(a2);
    if (Width > (*(*a1[21] + 448))() || Height > (*(*a1[21] + 448))(a1[21]))
    {
      x_log("Cannot handle a (%lu x %lu) sized texture with the given GLES context!\n", Width, Height);
      return 0;
    }

    DataProvider = CGImageGetDataProvider(a2);
    v14 = CGDataProviderRetainBytePtr();
    if (v14)
    {
      v16 = v14;
      v27 = 0;
    }

    else
    {
      v19 = CGDataProviderCopyData(DataProvider);
      if (!v19)
      {
        return 0;
      }

      v20 = v19;
      if (CFDataGetLength(v19) < 1 || (BytePtr = CFDataGetBytePtr(v20)) == 0)
      {
        v7 = 0;
LABEL_24:
        CFRelease(v20);
        return v7;
      }

      v16 = BytePtr;
      v27 = v20;
    }

    v17 = (BitsPerPixel >> 3) * Width;
    v18 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (BytesPerRow == v18)
    {
      v7 = CI::GLTextureManager::upload_texture(a1, a2, 1, v16, Width, Height, v15, a3);
    }

    else
    {
      __dst = malloc_type_malloc(v18 * Height, 0xADF1010uLL);
      if (__dst)
      {
        v25 = a3;
        if (Height)
        {
          v23 = Height;
          v24 = __dst;
          do
          {
            memcpy(v24, v16, v17);
            v16 += BytesPerRow;
            v24 += v18;
            --v23;
          }

          while (v23);
        }

        v7 = CI::GLTextureManager::upload_texture(a1, a2, 1, __dst, Width, Height, v22, v25);
        free(__dst);
      }

      else
      {
        v7 = 0;
      }
    }

    v20 = v27;
    if (!v27)
    {
      CGDataProviderReleaseBytePtr();
      return v7;
    }

    goto LABEL_24;
  }

  return *v6;
}

uint64_t CI::GLTextureManager::find_attached_surface(CI::GLTextureManager *this, __IOSurface *a2, int a3, int a4, int a5)
{
  v5 = *(this + 22);
  for (i = *(v5 + 8); i != v5; i = *(i + 8))
  {
    v7 = *(i + 16);
    v9 = v7;
    if (*v7 == a2 && *(v7 + 12) == a3 && *(v7 + 20) == a5 && (!a3 || *(v7 + 16) == a4))
    {
      std::list<CI::attached_surface_t *>::remove(v5, &v9);
      operator new();
    }
  }

  return 0;
}

uint64_t ___ZN2CI16GLTextureManager16attach_IOSurfaceEP11__IOSurfacebiRKNS_17TextureDescriptorEiiibb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = (v2 + 168);
  GetMacroContext(*(*(v2 + 21) + 392), &v25);
  if ((v25 & 1) == 0)
  {
    v4 = ci_logger_render();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CI::GLTextureManager::upload_texture();
    }
  }

  attached_surface = CI::GLTextureManager::find_attached_surface(v2, *(a1 + 40), *(a1 + 72), *(a1 + 56), **(a1 + 48));
  (v26)(*(&v25 + 1), (*(a1 + 60) + 33984));
  if (!attached_surface)
  {
    v7 = malloc_type_malloc(0x20uLL, 0x102004016E47894uLL);
    v24 = 0;
    (*(&v47 + 1))(*(&v25 + 1), 1, &v24);
    (*(&v29 + 1))(*(&v25 + 1), 3553, v24);
    v57(*(&v25 + 1), 3553, 10240, *(a1 + 64));
    v57(*(&v25 + 1), 3553, 10241, *(a1 + 64));
    v57(*(&v25 + 1), 3553, 10242, *(a1 + 68));
    v57(*(&v25 + 1), 3553, 10243, *(a1 + 68));
    Width = IOSurfaceGetWidth(*(a1 + 40));
    Height = IOSurfaceGetHeight(*(a1 + 40));
    v9 = *(a1 + 48);
    API = CIEAGLContextGetAPI(*(*v3 + 392));
    v11 = CI::gl_format_info_for_format(v9, API);
    v13 = HIDWORD(v11);
    v14 = "GLTextureManager::attach_IOSurface unsupported format %s!\n";
    if (HIDWORD(v11))
    {
      v15 = v11;
      if (v11)
      {
        v16 = v12;
        if (v12)
        {
          if (*(a1 + 72) == 1)
          {
            Width = IOSurfaceGetWidthOfPlane(*(a1 + 40), *(a1 + 56));
            HeightOfPlane = IOSurfaceGetHeightOfPlane(*(a1 + 40), *(a1 + 56));
          }

          else
          {
            HeightOfPlane = Height;
          }

          v17 = *(*v3 + 392);
          v18 = *(a1 + 40);
          v19 = *(a1 + 56);
          (v53)(*(&v25 + 1), 7936);
          if (CIEAGLContextTexImageIOSurface(v17, 0xDE1u, Width, HeightOfPlane, v15, v13, v16, v18, v19))
          {
LABEL_15:
            CFRetain(*(a1 + 40));
            *v7 = *(a1 + 40);
            v7[2] = v24;
            *(v7 + 12) = *(a1 + 72);
            v21 = **(a1 + 48);
            v7[4] = *(a1 + 56);
            v7[5] = v21;
            *(v7 + 24) = *(a1 + 74);
            operator new();
          }

          v14 = "CIEAGLContextTexImageIOSurface failed for %s!\n";
        }
      }
    }

    v20 = CI::name_for_format(**(a1 + 48));
    x_log(v14, v20);
    goto LABEL_15;
  }

  result = (*(&v29 + 1))(*(&v25 + 1), 3553, *(attached_surface + 8));
  *(attached_surface + 24) |= *(a1 + 74);
  return result;
}

void *___ZN2CI16GLTextureManager23purge_attached_surfacesEm_block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 176);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result[5];
    v10[0] = v10;
    v10[1] = v10;
    v10[2] = 0;
    for (i = *(v2 + 8); i != v2; i = *(i + 8))
    {
      if ((*(*(i + 16) + 24) & 1) == 0)
      {
        operator new();
      }
    }

    if (v3 >= v4)
    {
      v6 = v3 - v4;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = *(v1 + 176);
      for (j = *(v7 + 8); j != v7; j = *(j + 8))
      {
        if (*(*(j + 16) + 24) == 1 && v6 != 0)
        {
          operator new();
        }
      }
    }

    return std::__list_imp<CI::attached_surface_t *>::clear(v10);
  }

  return result;
}

void CI::GLMainProgram::GLMainProgram(uint64_t a1, const CI::Context *a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v9 = CI::MainProgram::MainProgram(a1, a4, a5, a6, a7);
  v9[13] = &unk_1F1033F98;
  atomic_fetch_add(&dword_1ED7C47BC[77], 1u);
  *v9 = &unk_1F1033BF0;
  v9[13] = &unk_1F1033C58;
  v9[17] = 0;
  v9[18] = 0;
  *(a1 + 136) = CIEAGLContextRetain(*(a2 + 49));
  *(a1 + 48) = (*(*a2 + 280))(a2);
  *(a1 + 144) = *(a2 + 108);
  v10 = CI::MainProgram::vector_arguments_size(a1, a2);
  if ((*(*a2 + 488))(a2) < v10)
  {
    API = CIEAGLContextGetAPI(*(a1 + 136));
    v12 = CI::MainProgram::vector_arguments_size(a1, a2);
    v13 = (*(*a2 + 488))(a2);
    x_log("Program exceeds GLES%d uniform size limit. (%d > %zu)\n", API, v12, v13);
  }

  *(a1 + 112) = CI::MainProgram::num_arguments(a1);
  operator new[]();
}

void CI::GLMainProgram::~GLMainProgram(CI::GLMainProgram *this)
{
  *this = &unk_1F1033BF0;
  *(this + 13) = &unk_1F1033C58;
  if (*(this + 37))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    memset(v5, 0, sizeof(v5));
    GetMacroContext(*(this + 17), v5);
    if ((v5[0] & 1) == 0)
    {
      v2 = ci_logger_render();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    (*(&v6 + 1))(*(&v5[0] + 1), *(this + 37));
  }

  CIEAGLContextRelease(*(this + 17));
  v3 = *(this + 15);
  if (v3)
  {
    MEMORY[0x19EAF5570](v3, 0x1000C8052888210);
  }

  v4 = *(this + 16);
  if (v4)
  {
    MEMORY[0x19EAF5570](v4, 0x1000C8052888210);
  }

  *(this + 13) = &unk_1F1033F98;
  atomic_fetch_add(&dword_1ED7C47BC[77], 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(this);
}

{
  CI::GLMainProgram::~GLMainProgram(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::GLMainProgram::~GLMainProgram(CI::GLMainProgram *this)
{
  CI::GLMainProgram::~GLMainProgram((this - 104));
}

{
  CI::GLMainProgram::~GLMainProgram((this - 104));

  JUMPOUT(0x19EAF5590);
}

void CI::GLMainProgram::compile(uint64_t a1, int a2)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_compile();
    v5 = a2 | (*(a1 + 48) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "compile_gl", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::TimerBase(v58, *(a1 + 48), a2, "compile_gl", 28);
  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *buf = 0u;
  v26 = 0u;
  GetMacroContext(*(a1 + 136), buf);
  if ((buf[0] & 1) == 0)
  {
    v8 = ci_logger_render();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v9 = *(a1 + 144);
  v10 = CI::GLContext::compile_shader(*(a1 + 48), a2, *(a1 + 136), *(a1 + 64), 35632);
  v11 = (v35)(*&buf[8]);
  (*(&v26 + 1))(*&buf[8], v11, v9);
  (*(&v26 + 1))(*&buf[8], v11, v10);
  (*(&v27 + 1))(*&buf[8], v11, 0, "position");
  (*(&v27 + 1))(*&buf[8], v11, 1, "texcoord");
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v12 = ci_signpost_log_compile();
    v13 = a2 | (*(a1 + 48) << 32);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v12;
      if (os_signpost_enabled(v12))
      {
        *v23 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v13, "link_shader", &unk_19CFBCBAE, v23, 2u);
      }
    }
  }

  TimerBase::TimerBase(v23, *(a1 + 48), a2, "link_shader", 0);
  v57(*&buf[8], v11);
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v15 = ci_signpost_log_compile();
    v16 = v24;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v15;
      if (os_signpost_enabled(v15))
      {
        *v60 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v17, OS_SIGNPOST_INTERVAL_END, v16, "link_shader", &unk_19CFBCBAE, v60, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v23);
  if (*(a1 + 112))
  {
    v18 = 0;
    do
    {
      v19 = (*(*a1 + 48))(a1, v18);
      *(*(a1 + 120) + 4 * v18++) = (*(&v54 + 1))(*&buf[8], v11, v19);
    }

    while (*(a1 + 112) > v18);
  }

  *(a1 + 148) = v11;
  (*(&v37 + 1))(*&buf[8], v10);
  atomic_store(COERCE_UNSIGNED_INT64((std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_) / 1000000000.0), (a1 + 24));
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v20 = ci_signpost_log_compile();
    v21 = v59;
    if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v20;
      if (os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_END, v21, "compile_gl", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v58);
}

uint64_t CI::GLContext::compile_shader(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v10 = ci_signpost_log_render();
    if ((a2 | (a1 << 32)) - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v10))
      {
        LOWORD(v24[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, a2 | (a1 << 32), "compile_shader", &unk_19CFBCBAE, v24, 2u);
      }
    }
  }

  TimerBase::TimerBase(v50, a1, a2, "compile_shader", 20);
  if (a4)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    GetMacroContext(a3, v24);
    if ((v24[0] & 1) == 0)
    {
      v12 = ci_logger_render();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CI::GLTextureManager::release_texture(a3, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v19 = (*(&v27 + 1))(*(&v24[0] + 1), a5);
    v49(*(&v24[0] + 1), v19, 1, &v52, 0);
    (*(&v25 + 1))(*(&v24[0] + 1), v19);
  }

  else
  {
    v19 = 0;
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v20 = ci_signpost_log_render();
    v21 = v51;
    if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v20;
      if (os_signpost_enabled(v20))
      {
        LOWORD(v24[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_END, v21, "compile_shader", &unk_19CFBCBAE, v24, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v50);
  return v19;
}

void CI::GLContext::init(CI::GLContext *this)
{
  *(this + 226) = 1;
  *(this + 908) = 0;
  operator new();
}

void CI::GLContext::GLContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dyld_program_sdk_at_least())
  {
    v15 = 2056;
  }

  else
  {
    v15 = 264;
  }

  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  CI::Context::Context(a1, a3, a4, v16, a6, a7, a8, 0);
}

{
  CI::GLContext::GLContext(a1, a2, a3, a4, a5, a6, a7, a8);
}

void CI::GLContext::~GLContext(CI::GLContext *this)
{
  *this = &unk_1F1033C80;
  *(this + 48) = &unk_1F1033F08;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  GetMacroContext(*(this + 49), v11);
  if ((v11[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  if (*(this + 108))
  {
    (*(&v13 + 1))(v11[1]);
    *(this + 108) = 0;
  }

  if (*(this + 222))
  {
    (*(&v12 + 1))(v11[1]);
  }

  (v13)(v11[1], 1, this + 756);
  (v12)(v11[1], 1, this + 752);
  v3 = *(this + 53);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = (v20)(v11[1]);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v5 = *(this + 49);
  v10[3] = *(this + 50);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = v5;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = *(this + 52);
  v6 = CI::Context::render_completion_queue(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI9GLContextD2Ev_block_invoke;
  block[3] = &unk_1E75C4920;
  block[4] = v8;
  block[5] = v9;
  block[6] = v10;
  dispatch_async(v6, block);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  *(this + 48) = &unk_1F1033FC0;
  atomic_fetch_add(&dword_1ED7C47BC[82], 0xFFFFFFFF);
  CI::Context::~Context(this);
}

{
  CI::GLContext::~GLContext(this);

  JUMPOUT(0x19EAF5590);
}

void ___ZN2CI9GLContextD2Ev_block_invoke(void *a1)
{
  CIEAGLContextRelease(*(*(a1[4] + 8) + 24));
  CIEAGLContextRelease(*(*(a1[5] + 8) + 24));
  v2 = *(*(a1[6] + 8) + 24);
  if (v2)
  {

    CIEAGLContextRelease(v2);
  }
}

void non-virtual thunk toCI::GLContext::~GLContext(CI::GLContext *this)
{
  CI::GLContext::~GLContext((this - 384));
}

{
  CI::GLContext::~GLContext((this - 384));

  JUMPOUT(0x19EAF5590);
}

char *CI::GLContext::update_limits(void **this)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  GetMacroContext(this[49], v38);
  if ((v38[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v3 = (v42)(*(&v38[0] + 1), 7939);
  v4 = (v42)(*(&v38[0] + 1), 35358);
  this[112] = (v42)(*(&v38[0] + 1), 7937);
  (v39)(*(&v38[0] + 1), 3379, this + 104);
  v5 = *(this + 208);
  if (v5 >= CI_MAX_TEXTURE_SIZE())
  {
    v6 = CI_MAX_TEXTURE_SIZE();
  }

  else
  {
    v6 = *(this + 208);
  }

  *(this + 208) = v6;
  (v39)(*(&v38[0] + 1), 3386, this + 836);
  (v39)(*(&v38[0] + 1), 34921, this + 105);
  this[109] = 0;
  (v39)(*(&v38[0] + 1), 36347, this + 844);
  (v39)(*(&v38[0] + 1), 36349, this + 106);
  (v39)(*(&v38[0] + 1), 36348, this + 852);
  (v39)(*(&v38[0] + 1), 35661, this + 107);
  (v39)(*(&v38[0] + 1), 34930, this + 860);
  (v39)(*(&v38[0] + 1), 34024, this + 108);
  if (CI::search_extension_list(v3, "GL_APPLE_client_storage", v7))
  {
    v9 = 1;
  }

  else
  {
    v9 = CI::search_extension_list(v4, "GL_APPLE_client_storage", v8);
  }

  v10 = this[110] & 0xFE | v9;
  *(this + 880) = v10;
  if ((CI::search_extension_list(v3, "GL_APPLE_texture_ycbcr_basic_formats", v8) & 1) != 0 || CI::search_extension_list(v4, "GL_APPLE_texture_ycbcr_basic_formats", v11))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v10 & 0xFD;
  v14 = v12 | v10 & 0xFD;
  *(this + 880) = v12 | v13;
  if ((CI::search_extension_list(v3, "GL_APPLE_texture_ycbcr_extended_formats", v11) & 1) != 0 || CI::search_extension_list(v4, "GL_APPLE_texture_ycbcr_extended_formats", v15))
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14 & 0xFB;
  v18 = v16 | v14 & 0xFB;
  *(this + 880) = v16 | v17;
  if ((CI::search_extension_list(v3, "GL_EXT_color_buffer_half_float", v15) & 1) != 0 || CI::search_extension_list(v4, "GL_EXT_color_buffer_half_float", v19))
  {
    v20 = 8;
  }

  else
  {
    v20 = 0;
  }

  v21 = v18 & 0xF7;
  v22 = v20 | v18 & 0xF7;
  *(this + 880) = v20 | v21;
  if ((CI::search_extension_list(v3, "GL_EXT_shader_texture_lod", v19) & 1) != 0 || CI::search_extension_list(v4, "GL_EXT_shader_texture_lod", v23))
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 & 0xEF;
  v26 = v24 | v22 & 0xEF;
  *(this + 880) = v24 | v25;
  if ((CI::search_extension_list(v3, "GL_OES_texture_half_float", v23) & 1) != 0 || CI::search_extension_list(v4, "GL_OES_texture_half_float", v27))
  {
    v28 = 32;
  }

  else
  {
    v28 = 0;
  }

  v29 = v26 & 0xDF;
  v30 = v28 | v26 & 0xDF;
  *(this + 880) = v28 | v29;
  if ((CI::search_extension_list(v3, "GL_OES_texture_float", v27) & 1) != 0 || CI::search_extension_list(v4, "GL_OES_texture_float", v31))
  {
    v32 = 64;
  }

  else
  {
    v32 = 0;
  }

  v33 = v30 & 0xBF;
  v34 = v32 | v30 & 0xBF;
  *(this + 880) = v32 | v33;
  result = CI::search_extension_list(v3, "GL_APPLE_texture_xr", v31);
  if ((result & 1) != 0 || (result = CI::search_extension_list(v4, "GL_APPLE_texture_xr", v36), result))
  {
    v37 = 0x80;
  }

  else
  {
    v37 = 0;
  }

  *(this + 880) = v37 | v34 & 0x7F;
  return result;
}

const char *CI::GLContext::name(CI::GLContext *this)
{
  v1 = *(this + 102) - 1;
  if (v1 > 2)
  {
    return "opengl";
  }

  else
  {
    return off_1E75C4A38[v1];
  }
}

uint64_t CI::GLContext::setPriority(uint64_t result, int a2)
{
  if ((a2 - 1) <= 2)
  {
    *(result + 904) = dword_19CF2C948[a2 - 1];
  }

  return result;
}

uint64_t CI::GLContext::priority(CI::GLContext *this)
{
  v1 = *(this + 226);
  if (v1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_19CF2C954[v1];
  }
}

uint64_t CI::GLContext::check_user_destination(CI::GLContext *this)
{
  *(this + 761) = 1;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  GetMacroContext(*(this + 50), v7);
  if ((v7[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  (v23)(*(&v7[0] + 1));
  v6 = 0;
  (v29)(*(&v7[0] + 1), 36006, &v6);
  *(this + 191) = v6;
  result = v36(*(&v7[0] + 1));
  if (result && (result = (v11)(*(&v7[0] + 1), 36160), result == 36053))
  {
    v4 = 0;
    v5 = 0;
    if (v6)
    {
      (*(&v28 + 1))(*(&v7[0] + 1), 36160, 36064, 36048, &v5);
      (*(&v28 + 1))(*(&v7[0] + 1), 36160, 36064, 36049, &v4);
      if (v5 == 5890)
      {
        (*(&v8 + 1))(*(&v7[0] + 1), 3553, v4);
        (v33)(*(&v7[0] + 1), 3553, 0, 4099, this + 768);
        (v33)(*(&v7[0] + 1), 3553, 0, 4096, this + 772);
        (v33)(*(&v7[0] + 1), 3553, 0, 4097, this + 776);
      }

      else if (v5 == 36161)
      {
        (*(&v30 + 1))(*(&v7[0] + 1), 36161, 36164, this + 768);
        (*(&v30 + 1))(*(&v7[0] + 1), 36161, 36162, this + 772);
        (*(&v30 + 1))(*(&v7[0] + 1), 36161, 36163, this + 776);
      }
    }

    result = (v29)(*(&v7[0] + 1), 3042, this + 804);
    if (*(this + 201))
    {
      (v29)(*(&v7[0] + 1), 32969, this + 808);
      (v29)(*(&v7[0] + 1), 32968, this + 812);
      (v29)(*(&v7[0] + 1), 32777, this + 816);
      (v29)(*(&v7[0] + 1), 32971, this + 820);
      (v29)(*(&v7[0] + 1), 32970, this + 824);
      return (v29)(*(&v7[0] + 1), 34877, this + 828);
    }
  }

  else
  {
    *(this + 761) = 0;
  }

  return result;
}

uint64_t CI::GLContext::flush_render(void **this)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  GetMacroContext(this[49], v3);
  if ((v3[0] & 1) == 0)
  {
    v1 = ci_logger_render();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  (v4)(*(&v3[0] + 1));
  return 1;
}

uint64_t CI::GLContext::waitForCompletion(void **this)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  GetMacroContext(this[49], v3);
  if ((v3[0] & 1) == 0)
  {
    v1 = ci_logger_render();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  return (*(&v4 + 1))(*(&v3[0] + 1));
}

void CI::GLContext::finish_render(void **a1, uint64_t a2)
{
  v4 = ci_signpost_log_render();
  v5 = (*(*a1 + 35))(a1) << 32;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v11[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "finish_render", &unk_19CFBCBAE, v11, 2u);
  }

  v6 = (*(*a1 + 35))(a1);
  TimerBase::TimerBase(v25, v6, 0, "finish_render", 16);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  GetMacroContext(a1[49], v11);
  if ((v11[0] & 1) == 0)
  {
    v7 = ci_logger_render();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  (v12)(*(&v11[0] + 1));
  (*(a2 + 16))(a2);
  v8 = ci_signpost_log_render();
  v9 = v26;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v8;
    if (os_signpost_enabled(v8))
    {
      LOWORD(v11[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_END, v9, "finish_render", &unk_19CFBCBAE, v11, 2u);
    }
  }

  TimerBase::~TimerBase(v25);
}

void CI::GLContext::after_render(CI::TextureManager **this)
{
  v2 = ci_signpost_log_render();
  v3 = (*(*this + 35))(this) << 32;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "after_render", &unk_19CFBCBAE, v13, 2u);
  }

  v4 = (*(*this + 35))(this);
  TimerBase::TimerBase(v13, v4, 0, "after_render", 8);
  CI::TextureManager::remove_all(this[53]);
  v5 = this[53];
  if (CI_RECYCLE_OPENGL_TEXTURES())
  {
    v6 = CI_INTERMEDIATE_CACHE_SIZE();
  }

  else
  {
    v6 = 0;
  }

  (*(*v5 + 80))(v5, v6);
  v7 = CI_INPUT_CACHE_SIZE();
  v8 = this[53];
  v9 = *(v8 + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI16GLTextureManager23purge_attached_surfacesEm_block_invoke;
  block[3] = &__block_descriptor_tmp_14_1;
  block[4] = v8;
  block[5] = v7;
  dispatch_sync(v9, block);
  v10 = ci_signpost_log_render();
  v11 = v14;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v10;
    if (os_signpost_enabled(v10))
    {
      LOWORD(block[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v12, OS_SIGNPOST_INTERVAL_END, v11, "after_render", &unk_19CFBCBAE, block, 2u);
    }
  }

  TimerBase::~TimerBase(v13);
}

uint64_t CI::GLContext::set_viewport(CI::GLContext *this, CGRect a2)
{
  v11 = CGRectIntegral(a2);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  result = CGRectEqualToRect(v11, *(this + 440));
  if ((result & 1) == 0)
  {
    memset(v9, 0, 512);
    GetMacroContext(*(this + 49), v9);
    if ((v9[0] & 1) == 0)
    {
      v8 = ci_logger_render();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    *(this + 55) = x;
    *(this + 56) = y;
    *(this + 57) = width;
    *(this + 58) = height;
    return v10(*(&v9[0] + 1), x, y, width, height);
  }

  return result;
}

uint64_t CI::GLContext::set_framebuffer(uint64_t this, uint64_t a2)
{
  if (*(this + 472) != a2)
  {
    v37 = v2;
    v38 = v3;
    v5 = this;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    memset(v7, 0, sizeof(v7));
    GetMacroContext(*(this + 392), v7);
    if ((v7[0] & 1) == 0)
    {
      v6 = ci_logger_render();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    this = (*(&v8 + 1))(*(&v7[0] + 1), 36160, a2);
    *(v5 + 472) = a2;
  }

  return this;
}

uint64_t CI::GLContext::set_program(uint64_t this, uint64_t a2)
{
  if (*(this + 476) != a2)
  {
    v9 = v2;
    v10 = v3;
    v5 = this;
    memset(v7, 0, 512);
    GetMacroContext(*(this + 392), v7);
    if ((v7[0] & 1) == 0)
    {
      v6 = ci_logger_render();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    this = v8(*(&v7[0] + 1), a2);
    *(v5 + 476) = a2;
  }

  return this;
}

uint64_t CI::GLContext::set_blend(uint64_t this, int a2)
{
  if (*(this + 480) != a2)
  {
    v9 = v2;
    v10 = v3;
    v5 = this;
    memset(v8, 0, 512);
    GetMacroContext(*(this + 392), v8);
    if ((v8[0] & 1) == 0)
    {
      v6 = ci_logger_render();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    v7 = 232;
    if (a2)
    {
      v7 = 264;
    }

    this = (*(v8 + v7))(*(&v8[0] + 1), 3042);
    *(v5 + 480) = a2;
  }

  return this;
}

void CI::GLContext::set_blend(void **this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CI::GLContext::set_blend(this, a2);
  if (a2)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    GetMacroContext(this[49], v17);
    if ((v17[0] & 1) == 0)
    {
      v16 = ci_logger_render();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    if (*(this + 121) != a3 || *(this + 124) != a4 || *(this + 122) != a5 || *(this + 125) != a6)
    {
      (*(&v19 + 1))(*(&v17[0] + 1), a3, a5, a4, a6);
      *(this + 121) = a3;
      *(this + 124) = a4;
      *(this + 122) = a5;
      *(this + 125) = a6;
    }

    if (*(this + 123) != a7 || *(this + 126) != a8)
    {
      (*(&v18 + 1))(*(&v17[0] + 1), a7, a8);
      *(this + 123) = a7;
      *(this + 126) = a8;
    }
  }
}

uint64_t CI::GLContext::max_output_image_size(CI::GLContext *this)
{
  v1 = *(this + 216);
  if (v1 >= *(this + 209))
  {
    return *(this + 209);
  }

  return v1;
}

unint64_t CI::GLContext::surface_rowbytes_alignment_for_input(uint64_t a1, int a2)
{
  if (is_gpu_A9_or_higher())
  {
    v3 = 16;
  }

  else
  {
    v3 = 4;
  }

  if (v3 < CI::format_bytes_per_pixel(a2))
  {
    return CI::format_bytes_per_pixel(a2);
  }

  return v3;
}

unint64_t CI::GLContext::surface_rowbytes_alignment_for_output(uint64_t a1, int a2)
{
  if (is_gpu_A9_or_higher())
  {
    v3 = 16;
  }

  else
  {
    v3 = 4;
  }

  if (v3 < CI::format_bytes_per_pixel(a2))
  {
    return CI::format_bytes_per_pixel(a2);
  }

  return v3;
}

uint64_t CI::GLContext::insert_event_marker(void **this, const char *a2)
{
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  GetMacroContext(this[49], v6);
  if ((v6[0] & 1) == 0)
  {
    v3 = ci_logger_render();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v4 = strlen(a2);
  return (v7)(*(&v6[0] + 1), v4, a2);
}

void CI::GLContext::subdivideQuad(void **a1, int a2, double *a3, float *a4, float *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (CI::CI_SUBDIVIDE_QUADS(void)::didCheck != -1)
  {
    CI::GLContext::subdivideQuad();
  }

  if (*&CI::CI_SUBDIVIDE_QUADS(void)::v == 0.0)
  {
    v10 = 256.0;
  }

  else
  {
    v10 = *&CI::CI_SUBDIVIDE_QUADS(void)::v;
  }

  v11 = vcvtpd_u64_f64(a3[1] / v10);
  if (v11)
  {
    v12 = 0;
    v14 = a5[1];
    v13 = a5[2];
    v15 = a5[5];
    v17 = a4[1];
    v16 = a4[2];
    v18 = a4[5];
    v19 = vcvtpd_u64_f64(*a3 / v10);
    v20 = ((v13 - *a5) / v19);
    v21 = ((v16 - *a4) / v19);
    v22 = ((v18 - v17) / v11);
    v50 = v18;
    v48 = v15;
    v49 = v18 - v22;
    v46 = ((v15 - v14) / v11);
    v47 = v15 - v46;
    v45 = v22;
    v53 = v14;
    v54 = v17;
    v51 = v14 + v46;
    v52 = v17 + v22;
    v23 = *a4;
    v24 = *a5;
    v59 = v16;
    v57 = v13;
    v58 = v16 - v21;
    v56 = v13 - v20;
    v25 = 0.0;
    do
    {
      v27 = v53;
      v26 = v54;
      v28 = v51;
      v29 = v52;
      if (v12)
      {
        v30 = v12 + 1;
        v27 = v47;
        v28 = v48;
        v26 = v49;
        v29 = v50;
        if (v12 + 1 != v11)
        {
          v26 = v54 + v45 * v25;
          v29 = v54 + v45 * v30;
          v27 = v53 + v46 * v25;
          v28 = v53 + v46 * v30;
        }
      }

      v55 = v25;
      if (v19)
      {
        v31 = 0;
        v32 = v27;
        v33 = v28;
        v34 = v26;
        v35 = v29;
        do
        {
          if (v31)
          {
            v36 = v31 + 1;
            if (v31 + 1 == v19)
            {
              v37 = v56;
              v38 = v57;
              v39 = v58;
              v40 = v59;
            }

            else
            {
              v39 = v23 + v21 * v31;
              v40 = v23 + v21 * v36;
              v37 = v24 + v20 * v31;
              v38 = v24 + v20 * v36;
            }
          }

          else
          {
            v36 = 1;
            v37 = v24;
            v38 = v24 + v20;
            v40 = v23 + v21;
            v39 = v23;
          }

          v41 = v37;
          *v61 = v41;
          *&v61[1] = v32;
          v42 = v38;
          *&v61[2] = v42;
          *&v61[3] = v32;
          *&v61[4] = v41;
          *&v61[5] = v33;
          *&v61[6] = v42;
          *&v61[7] = v33;
          v43 = v39;
          *v60 = v43;
          *&v60[1] = v34;
          v44 = v40;
          *&v60[2] = v44;
          *&v60[3] = v34;
          *&v60[4] = v43;
          *&v60[5] = v35;
          *&v60[6] = v44;
          *&v60[7] = v35;
          CI::GLContext::quad(a1, a2, v60, v61);
          CI::GLContext::flush_render(a1);
          v31 = v36;
        }

        while (v36 != v19);
      }

      v25 = v55 + 1.0;
      ++v12;
    }

    while (v12 != v11);
  }
}

void CI::GLContext::quad(void **a1, int a2, uint64_t a3, uint64_t a4)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v8 = ci_signpost_log_render();
    v9 = a2 | ((*(*a1 + 35))(a1) << 32);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "quad", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v10 = (*(*a1 + 35))(a1);
  TimerBase::TimerBase(v50, v10, a2, "quad", 12);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *buf = 0u;
  v18 = 0u;
  GetMacroContext(a1[49], buf);
  if ((buf[0] & 1) == 0)
  {
    v11 = ci_logger_render();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v16 = 0;
  (*(&v47 + 1))(*&buf[8], 0, 34338, &v16 + 4);
  (*(&v47 + 1))(*&buf[8], 1, 34338, &v16);
  (v20)(*&buf[8], 34962, 0);
  v49(*&buf[8], 0, 2, 5126, 0, 0, a3);
  (v34)(*&buf[8], 0);
  v49(*&buf[8], 1, 2, 5126, 0, 0, a4);
  (v34)(*&buf[8], 1);
  if (!CI_NO_RENDER())
  {
    if (CI_LIMIT_RENDER())
    {
      v12 = 0;
    }

    else
    {
      v12 = 5;
    }

    (*(&v32 + 1))(*&buf[8], v12, 0, 4);
  }

  if (!v16)
  {
    (v32)(*&buf[8], 1);
  }

  if (!HIDWORD(v16))
  {
    (v32)(*&buf[8], 0);
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v13 = ci_signpost_log_render();
    v14 = v51;
    if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v13;
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v15, OS_SIGNPOST_INTERVAL_END, v14, "quad", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v50);
}

void CI::GLContext::quad(void **a1, int a2, int a3, float64x2_t *a4, CMatrix *a5)
{
  v96 = *MEMORY[0x1E69E9840];
  f64 = a4[1].f64;
  v10 = *a4;
  v11 = vcvt_f32_f64(vaddq_f64(*a4, a4[1]));
  v92[0] = v11.f32[0];
  v12 = v10.f64[1];
  v92[1] = v12;
  v13 = v10.f64[0];
  v92[2] = v13;
  v92[3] = v12;
  v93 = v11;
  v94 = v13;
  v95 = v11.f32[1];
  if (a5)
  {
    v60 = v11.f32[0];
    CMatrix::CMatrix(v62, a5);
    CMatrix::CMatrix(v83, 1u, 4u, 0.0, v14, v15, 0, 0, 0x3FF0000000000000);
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v16;
    *CMatrixRow::operator[](v82, 0) = v60;
    v17 = v12;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v18;
    *CMatrixRow::operator[](v82, 1u) = v17;
    CMatrix::operator*(v83, v62, v82);
    CMatrix::operator=(v83, v82);
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v19;
    v20 = *CMatrixRow::operator[](v82, 0);
    v84 = v20;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v21;
    v22 = *CMatrixRow::operator[](v82, 1u);
    v85 = v22;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v23;
    *CMatrixRow::operator[](v82, 0) = v13;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v24;
    *CMatrixRow::operator[](v82, 1u) = v17;
    CMatrix::operator*(v83, v62, v82);
    CMatrix::operator=(v83, v82);
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v25;
    v26 = *CMatrixRow::operator[](v82, 0);
    v86 = v26;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v27;
    v28 = *CMatrixRow::operator[](v82, 1u);
    v87 = v28;
    v29 = v93.f32[0];
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v30;
    *CMatrixRow::operator[](v82, 0) = v29;
    v31 = v93.f32[1];
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v32;
    *CMatrixRow::operator[](v82, 1u) = v31;
    CMatrix::operator*(v83, v62, v82);
    CMatrix::operator=(v83, v82);
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v33;
    v34 = *CMatrixRow::operator[](v82, 0);
    v88 = v34;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v35;
    v36 = *CMatrixRow::operator[](v82, 1u);
    v89 = v36;
    v37 = v94;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v38;
    *CMatrixRow::operator[](v82, 0) = v37;
    v39 = v95;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v40;
    *CMatrixRow::operator[](v82, 1u) = v39;
    CMatrix::operator*(v83, v62, v82);
    CMatrix::operator=(v83, v82);
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v41;
    v42 = *CMatrixRow::operator[](v82, 0);
    v90 = v42;
    *v82 = CMatrix::operator[](v83, 0);
    *&v82[2] = v43;
    v44 = *CMatrixRow::operator[](v82, 1u);
  }

  else
  {
    v44 = 1.0;
    v84 = 1.0;
    if (a3)
    {
      v44 = -1.0;
    }

    v85 = -v44;
    v86 = -1.0;
    v87 = -v44;
    v88 = 1.0;
    v89 = v44;
    v90 = -1.0;
  }

  v91 = v44;
  if (CI::CI_SUBDIVIDE_QUADS(void)::didCheck != -1)
  {
    CI::GLContext::quad();
  }

  if (*&CI::CI_SUBDIVIDE_QUADS(void)::v <= 0.0 || *f64 <= *&CI::CI_SUBDIVIDE_QUADS(void)::v && a4[1].f64[1] <= *&CI::CI_SUBDIVIDE_QUADS(void)::v)
  {
    CI::GLContext::quad(a1, a2, &v84, v92);
  }

  else if (a5)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(v62, 0, sizeof(v62));
    GetMacroContext(a1[49], v62);
    if ((v62[0] & 1) == 0)
    {
      v45 = ci_logger_render();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    v61 = 0;
    (v72)(*(&v62[0] + 1), 3089, &v61);
    (v74)(*(&v62[0] + 1), 3088, v82);
    if (v61)
    {
      *v83 = *v82;
    }

    else
    {
      (v74)(*(&v62[0] + 1), 2978, v83);
    }

    (*(&v65 + 1))(*(&v62[0] + 1), 3089);
    v47 = v83[0];
    v48 = v83[2];
    v49 = v83[1];
    v50 = v83[3];
    if (CI::CI_SUBDIVIDE_QUADS(void)::didCheck != -1)
    {
      v59 = v83[2];
      CI::GLContext::quad();
      v48 = v59;
    }

    v51 = v48 + v47;
    v46.n128_u64[0] = CI::CI_SUBDIVIDE_QUADS(void)::v;
    if (*&CI::CI_SUBDIVIDE_QUADS(void)::v == 0.0)
    {
      v52 = 256.0;
    }

    else
    {
      v52 = *&CI::CI_SUBDIVIDE_QUADS(void)::v;
    }

    v53 = v83[0];
    if (v83[0] < v51)
    {
      v54 = v50 + v49;
      do
      {
        v55 = v83[1];
        if (v83[1] < v54)
        {
          v56 = (v51 - v53);
          if (v52 < v56)
          {
            v56 = v52;
          }

          v57 = v56;
          do
          {
            v58 = (v54 - v55);
            if (v52 < v58)
            {
              v58 = v52;
            }

            v81(*(&v62[0] + 1), v53, v55, v57, v58);
            CI::GLContext::quad(a1, a2, &v84, v92);
            CI::GLContext::flush_render(a1);
            v55 = (v52 + v55);
          }

          while (v54 > v55);
        }

        v46.n128_f64[0] = v52 + v53;
        v53 = v46.n128_f64[0];
      }

      while (v51 > v53);
    }

    if (!v61)
    {
      (*(&v63 + 1))(*(&v62[0] + 1), 3089, v46);
    }

    (v81)(*(&v62[0] + 1), v82[0], v82[1], v82[2], v82[3], v46);
  }

  else
  {
    CI::GLContext::subdivideQuad(a1, a2, f64, &v84, v92);
  }
}

uint64_t CI::GLContext::set_texture_destination(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  *(a1 + 762) = 0;
  *(a1 + 780) = 1;
  *(a1 + 784) = 0;
  *(a1 + 512) = *a3;
  *(a1 + 528) = *(a1 + 752);
  *(a1 + 532) = *a2;
  *(a1 + 540) = 5890;
  *(a1 + 544) = a2[1];
  return 1;
}

size_t CI::GLContext::set_surface_destination(uint64_t a1, __IOSurface *a2, uint64_t a3, double *a4, int *a5)
{
  *(a1 + 762) = 0;
  *(a1 + 780) = 1;
  *(a1 + 784) = a2;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  GetMacroContext(*(a1 + 392), v30);
  if ((v30[0] & 1) == 0)
  {
    v9 = ci_logger_render();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  (*(&v49 + 1))(*(&v30[0] + 1), 1, a1 + 792);
  (*(&v31 + 1))(*(&v30[0] + 1), 3553, *(a1 + 792));
  v10 = a4[1];
  v11 = *a4;
  v12 = v10;
  API = CIEAGLContextGetAPI(*(a1 + 392));
  v14 = CI::gl_format_info_for_format(a5, API);
  v16 = "GLContext::set_surface_destination unsupported format %s!\n";
  if (!HIDWORD(v14) || !v14 || !v15)
  {
    goto LABEL_9;
  }

  if ((CIEAGLContextTexImageIOSurface(*(a1 + 392), 0xDE1u, v11, v12, v14, SHIDWORD(v14), v15, a2, 0) & 1) == 0)
  {
    v16 = "CIEAGLContextTexImageIOSurface failed for %s!\n";
LABEL_9:
    v17 = CI::name_for_format(*a5);
    x_log(v16, v17);
  }

  *(a1 + 512) = v11;
  *(a1 + 520) = v12;
  *(a1 + 528) = *(a1 + 752);
  *(a1 + 532) = *(a1 + 792);
  *(a1 + 540) = 0xDE100001702;
  result = IOSurfaceGetPlaneCount(a2);
  if (result == 2)
  {
    v20 = *a5;
    if (*a5 == 261 || v20 == 2053 || v20 == 1797)
    {
      v21 = CI::format_from_IOSurface(a2, v19);
      CI::format_is_ycc_biplanar(v21);
      if (*a5 == 1797)
      {
        v22 = 1798;
      }

      else
      {
        v22 = 2054;
      }

      if (*a5 == 261)
      {
        v23 = 262;
      }

      else
      {
        v23 = v22;
      }

      v28 = v23;
      v29 = 0;
      v24 = CIEAGLContextGetAPI(*(a1 + 392));
      v25 = CI::gl_format_info_for_format(&v28, v24);
      v27 = v26;
      (*(&v49 + 1))(*(&v30[0] + 1), 1, a1 + 796);
      (*(&v31 + 1))(*(&v30[0] + 1), 3553, *(a1 + 796));
      result = v59(*(&v30[0] + 1), 3553, 0, v25, v11, v12, 0, HIDWORD(v25), v27, 0);
      *(a1 + 536) = *(a1 + 796);
    }
  }

  return result;
}

uint64_t CI::GLContext::set_bitmap_destination(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  *(a1 + 762) = 0;
  *(a1 + 780) = 0;
  v7 = a3[1];
  v8 = *a3;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  GetMacroContext(*(a1 + 392), v20);
  if ((v20[0] & 1) == 0)
  {
    v9 = ci_logger_render();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v10 = v7;
  v11 = *(a1 + 864);
  if (v11 < v8 || v11 < v10)
  {
    return x_log("Destination buffer size too large (%d x %d); cannot be larger than %d x %d.\n", v8, v7, *(a1 + 864), v11);
  }

  v12 = *a4;
  if (*a4 <= 2052)
  {
    if (v12 != 2051)
    {
      if (v12 != 2052)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_17:
    if ((*(a1 + 880) & 8) != 0)
    {
      v13 = 33325;
      goto LABEL_32;
    }

LABEL_18:
    if (CI::format_bytes_per_pixel(v12) == 1 && CI::format_bits_per_component(*a4) == 8)
    {
      v13 = 33321;
    }

    else if (CI::format_bytes_per_pixel(*a4) == 2 && CI::format_bits_per_component(*a4) == 8)
    {
      v13 = 33323;
    }

    else
    {
      API = CIEAGLContextGetAPI(*(a1 + 392));
      v16 = CI::gl_format_info_for_format(a4, API);
      if (*(a4 + 4))
      {
        v17 = 35907;
      }

      else
      {
        v17 = 32856;
      }

      if (*a4 == 264)
      {
        v13 = v17;
      }

      else
      {
        v13 = v16;
      }
    }

    goto LABEL_32;
  }

  if (v12 == 2053)
  {
    goto LABEL_17;
  }

  if (v12 == 2054)
  {
LABEL_15:
    if ((*(a1 + 880) & 8) != 0)
    {
      v13 = 33327;
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if (v12 != 2056 || (*(a1 + 880) & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = 34842;
LABEL_32:
  v18 = 0;
  v19 = 0;
  CI::format_get_clear_color(*(a2 + 104), &v19 + 1, &v19, &v18 + 1, &v18);
  (*(&v21 + 1))(*(&v20[0] + 1), *(&v19 + 1), *&v19, *(&v18 + 1), *&v18);
  result = v46(*(&v20[0] + 1), 36161, v13, v8, v7);
  *(a1 + 512) = v8;
  *(a1 + 520) = v10;
  *(a1 + 528) = *(a1 + 752);
  *(a1 + 540) = 36161;
  return result;
}

char *CI::search_extension_list(char *this, const char *a2, const char *a3)
{
  if (this)
  {
    v4 = this;
    this = strstr(this, a2);
    if (this)
    {
      if (this <= v4 || *(this - 1) == 32)
      {
        return ((this[strlen(a2)] & 0xDF) == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

uint64_t CI::GLContext::unbind_render_target(uint64_t this)
{
  v1 = this;
  if (*(this + 540) == 5890 && *(this + 792))
  {
    v2 = (this + 792);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    GetMacroContext(*(this + 392), v4);
    if ((v4[0] & 1) == 0)
    {
      v3 = ci_logger_render();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    this = (*(&v5 + 1))(*(&v4[0] + 1), 3, v1 + 792);
    *(v1 + 800) = 0;
    *v2 = 0;
  }

  if (*(v1 + 400))
  {
    if (*(v1 + 762) == 1)
    {
      return CI::GLContext::set_framebuffer(v1, 0);
    }
  }

  return this;
}

uint64_t CI::GLContext::set_user_destination(CI::GLContext *this)
{
  v1 = *(this + 760);
  if (v1 == 1)
  {
    *(this + 762) = 1;
    *(this + 780) = 0;
    CI::GLContext::check_user_destination(this);
    v3 = *(this + 772);
    v4.i64[0] = v3;
    v4.i64[1] = SHIDWORD(v3);
    *(this + 32) = vcvtq_f64_s64(v4);
    *(this + 132) = *(this + 191);
    *(this + 133) = -1;
    *(this + 135) = 36161;
  }

  return v1;
}

uint64_t CI::GLContext::user_destination_format(CI::GLContext *this)
{
  if (*(this + 760) != 1)
  {
    return 0;
  }

  v1 = *(this + 192);
  if (v1 <= 35445)
  {
    if (v1 == 34836)
    {
      return 2312;
    }

    if (v1 == 34842)
    {
      return 2056;
    }
  }

  else if ((v1 - 35446) < 2 || v1 == 37874 || v1 == 37881)
  {
    return 2567;
  }

  return 264;
}

uint64_t CI::GLContext::insert_fence(void **this)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  GetMacroContext(this[49], v3);
  if ((v3[0] & 1) == 0)
  {
    v1 = ci_logger_render();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  return (v4)(*(&v3[0] + 1), 37143, 0);
}

uint64_t CI::GLContext::bind_render_target(void **this)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  GetMacroContext(this[49], v4);
  if ((v4[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  result = CI::GLContext::set_framebuffer(this, *(this + 132));
  if ((*(this + 133) & 0x80000000) == 0)
  {
    if (*(this + 135) == 36161)
    {
      return (*(&v9 + 1))(*(&v4[0] + 1), 36160, 36064, 36161);
    }

    else
    {
      result = (v10)(*(&v4[0] + 1), 36160, 36064, 3553);
      if (*(this + 199))
      {
        (v10)(*(&v4[0] + 1), 36160, 36065, 3553, *(this + 134), 0);
        v21[0] = 0x8CE100008CE0;
        return (v5)(*(&v4[0] + 1), 2, v21);
      }
    }
  }

  return result;
}

void CI::GLContext::render_root_node(uint64_t a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, uint64_t a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *this;
  v11 = CI::parentROI::roi(this);
  v107.origin.x = v11;
  v107.origin.y = v12;
  v94 = v14;
  v95 = v13;
  v107.size.width = v13;
  v107.size.height = v14;
  if (!v10)
  {
    return;
  }

  v15 = v11;
  v16 = v12;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v17 = ci_signpost_log_render();
    v18 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 68289026;
      *&buf[4] = 256;
      *&buf[8] = 2082;
      *&buf[10] = CI::Context::programName(v10, v19);
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v20 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(v105, v20, *(v10 + 36), "render_node", 0);
  v144.origin.x = v15;
  v144.origin.y = v16;
  v144.size.height = v94;
  v144.size.width = v95;
  CI::TileTask::addROIForNode(a2, v10, v144);
  if (*(a1 + 760) != 1 || *(a1 + 762) != 1 || *(a1 + 761) == 1)
  {
    v21 = *(v10 + 48);
    if ((*(*v21 + 16))(v21) >= 47 && (*(*v21 + 16))(v21) <= 49)
    {
      if (*(a1 + 780) == 1 && *(a1 + 784))
      {
        CI::GLContext::flush_render(a1);
        v22 = CI::Context::render_processor_node(a1, a2, this, *(a1 + 784), 0);
        v23 = CI::Context::render_completion_queue(v22);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke;
        block[3] = &unk_1E75C4948;
        block[4] = a5;
        dispatch_async(v23, block);
      }

      goto LABEL_46;
    }

    CI::GLContext::bind_render_target(a1);
    v145.size.width = *(a1 + 512);
    v145.size.height = *(a1 + 520);
    v145.origin.x = 0.0;
    v145.origin.y = 0.0;
    CI::GLContext::set_viewport(a1, v145);
    if ((*(a1 + 762) & 1) != 0 || *(a1 + 780) == 1)
    {
      if (*(a1 + 400))
      {
        CI::GLContext::set_blend(a1, *(a1 + 804) != 0, *(a1 + 808), *(a1 + 820), *(a1 + 812), *(a1 + 824), *(a1 + 816), *(a1 + 828));
        goto LABEL_21;
      }

      v24 = (*(*a1 + 296))(a1);
      v25 = a1;
    }

    else
    {
      v25 = a1;
      v24 = 0;
    }

    CI::GLContext::set_blend(v25, v24);
LABEL_21:
    CMatrix::CMatrix(v103, 4u, 4u);
    v26 = 2.0 / *(a1 + 512);
    *buf = CMatrix::operator[](v103, 0);
    *&buf[8] = v27;
    *CMatrixRow::operator[](buf, 0) = v26;
    v28 = 2.0 / *(a1 + 520);
    *buf = CMatrix::operator[](v103, 1u);
    *&buf[8] = v29;
    *CMatrixRow::operator[](buf, 1u) = v28;
    *buf = CMatrix::operator[](v103, 3u);
    *&buf[8] = v30;
    *CMatrixRow::operator[](buf, 1u) = 0xBFF0000000000000;
    *v100 = CMatrix::operator[](v103, 3u);
    v101 = v31;
    *CMatrixRow::operator[](v100, 0) = 0xBFF0000000000000;
    *buf = CMatrix::operator[](v103, 3u);
    *&buf[8] = v32;
    *CMatrixRow::operator[](buf, 3u) = 0x3FF0000000000000;
    *v100 = CMatrix::operator[](v103, 3u);
    v101 = v33;
    *CMatrixRow::operator[](v100, 2u) = 0x3FF0000000000000;
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v34 = ci_signpost_log_render();
      v35 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v35, "render_node_mainProgram", &unk_19CFBCBAE, buf, 2u);
      }
    }

    v36 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(buf, v36, *(v10 + 36), "render_node_mainProgram", 0);
    v37 = CI::ProgramNode::mainProgram(v10);
    if ((*(*v37 + 16))(v37) != 79)
    {
      v37 = 0;
    }

    if (CI_VERBOSE_SIGNPOSTS())
    {
      v38 = ci_signpost_log_render();
      v39 = *&buf[8];
      if ((*&buf[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = v38;
        if (os_signpost_enabled(v38))
        {
          *v100 = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v40, OS_SIGNPOST_INTERVAL_END, v39, "render_node_mainProgram", &unk_19CFBCBAE, v100, 2u);
        }
      }
    }

    TimerBase::~TimerBase(buf);
    v41 = v37[37];
    if (v41 || ((*(*v37 + 80))(v37, *(v10 + 36)), v41 = v37[37], v41))
    {
      CI::GLContext::set_program(a1, v41);
      CI::GLContext::bind_arguments(a1, v10, &v107, a2);
      CI::GLContext::quad(a1, *(v10 + 36), 0, &v107, v103);
    }

    if (*(a1 + 796))
    {
      v92 = a4;
      v93 = a5;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v128 = 0u;
      v127 = 0u;
      v126 = 0u;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v121 = 0u;
      v120 = 0u;
      v119 = 0u;
      v118 = 0u;
      v117 = 0u;
      v116 = 0u;
      v115 = 0u;
      v114 = 0u;
      v113 = 0u;
      v111 = 0u;
      v112 = 0u;
      memset(buf, 0, sizeof(buf));
      GetMacroContext(*(a1 + 392), buf);
      if ((buf[0] & 1) == 0)
      {
        v42 = ci_logger_render();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
        }
      }

      WidthOfPlane = IOSurfaceGetWidthOfPlane(*(a1 + 784), 1uLL);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(*(a1 + 784), 1uLL);
      v46 = CI::format_from_IOSurface(*(a1 + 784), v45);
      v47 = CI::format_of_plane_old(v46, 1);
      v48 = *(a1 + 544);
      (*(&v131 + 1))(*&buf[8], 1, a1 + 800);
      (*(&v113 + 1))(*&buf[8], v48, *(a1 + 800));
      *v100 = v47;
      *&v100[4] = 0;
      API = CIEAGLContextGetAPI(*(a1 + 392));
      v50 = CI::gl_format_info_for_format(v100, API);
      CIEAGLContextTexImageIOSurface(*(a1 + 392), v48, WidthOfPlane, HeightOfPlane, v50, SHIDWORD(v50), v51, *(a1 + 784), 1u);
      CI::GLContext::set_framebuffer(a1, *(a1 + 528));
      v102 = 36064;
      (v130)(*&buf[8], 36160, 36064, v48, *(a1 + 800), 0);
      (v125)(*&buf[8], 1, &v102);
      v146.size.width = WidthOfPlane;
      v146.size.height = HeightOfPlane;
      v146.origin.x = 0.0;
      v146.origin.y = 0.0;
      CI::GLContext::set_viewport(a1, v146);
      CI::GLContext::set_blend(a1, 0);
      if (!*(a1 + 888))
      {
        v52 = (v119)(*&buf[8]);
        v53 = (*(*a1 + 280))(a1);
        v54 = CI::GLContext::compile_shader(v53, *(v10 + 36), *(a1 + 392), "attribute highp vec4 position;\nattribute highp vec4 texcoord;\nvarying highp vec2 p0;\nvoid main()\n{\n  gl_Position = position;\n  p0 = texcoord.xy;\n}\n", 35633);
        (*&buf[24])(*&buf[8], v52, v54);
        v55 = (*(*a1 + 280))(a1);
        v56 = CI::GLContext::compile_shader(v55, *(v10 + 36), *(a1 + 392), "varying highp vec2 p0;\nuniform sampler2D s0;\nvoid main()\n{\n  gl_FragColor = texture2D(s0, p0);\n}\n", 35632);
        (*&buf[24])(*&buf[8], v52, v56);
        (*(&v111 + 1))(*&buf[8], v52, 0, "position");
        (*(&v111 + 1))(*&buf[8], v52, 1, "texcoord");
        v141(*&buf[8], v52);
        (*(&v121 + 1))(*&buf[8], v54);
        (*(&v121 + 1))(*&buf[8], v56);
        *(a1 + 888) = v52;
        *(a1 + 892) = (*(&v138 + 1))(*&buf[8], v52, "s0");
      }

      (*(*a1 + 72))(a1, *(a1 + 796), v48, 1, 1, 0);
      CI::GLContext::set_program(a1, *(a1 + 888));
      v142(*&buf[8], *(a1 + 892), 0);
      v57.f64[0] = v95;
      v58 = v15 + v95;
      v59 = v16;
      *v108 = v58;
      *&v108[1] = v59;
      v60 = v15;
      *&v108[2] = v60;
      *&v108[3] = v59;
      v61 = v16 + v94;
      *&v108[4] = v58;
      *&v108[5] = v61;
      *&v108[6] = v60;
      *&v108[7] = v61;
      v57.f64[1] = v94;
      __asm { FMOV            V0.2D, #0.5 }

      v67 = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v57, _Q0))));
      v68 = vcvt_f32_f64(vdivq_f64(v57, vaddq_f64(v67, v67)));
      is_ycc_444 = CI::format_is_ycc_444(v46);
      is_ycc_422 = CI::format_is_ycc_422(v46);
      v73 = 0;
      v74.i32[0] = is_ycc_444;
      v74.i32[1] = is_ycc_422 | is_ycc_444;
      __asm { FMOV            V9.2S, #1.0 }

      v76 = vbsl_s8(vcltz_s32(vshl_n_s32(v74, 0x1FuLL)), _D9, v68);
      __asm { FMOV            V11.2S, #-1.0 }

      a4 = v92;
      a5 = v93;
      do
      {
        v78 = &v108[v73];
        v79 = *&v108[v73];
        v80 = *&v108[v73 + 1];
        CMatrix::CMatrix(v100, 1u, 4u, v79, v71, v72, *&v80, 0, 0x3FF0000000000000);
        CMatrix::operator*(v100, v103, &v98);
        CMatrix::operator=(v100, &v98);
        v98 = CMatrix::operator[](v100, 0);
        v99 = v81;
        v96 = *CMatrixRow::operator[](&v98, 0);
        v98 = CMatrix::operator[](v100, 0);
        v99 = v82;
        v83 = CMatrixRow::operator[](&v98, 1u);
        v84.f64[0] = v96;
        v84.f64[1] = *v83;
        *&v109[v73 * 4] = vmla_f32(_D11, v76, vadd_f32(vcvt_f32_f64(v84), _D9));
        *v84.f64 = v79 / *(a1 + 512);
        v85 = v80 / *(a1 + 520);
        *v78 = *v84.f64;
        v78[1] = v85;
        v73 += 2;
      }

      while (v73 != 8);
      CI::GLContext::quad(a1, *(v10 + 36), v109, v108);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    *&buf[24] = *(a1 + 416);
    inserted = CI::GLContext::insert_fence(a1);
    CI::GLContext::finish_render(a1, a4);
    if (a2)
    {
      v87 = CI::Object::ref(a2);
    }

    v88 = CI::Context::render_completion_queue(v87);
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 0x40000000;
    v97[2] = ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38;
    v97[3] = &unk_1E75C4970;
    v97[6] = inserted;
    v97[7] = a2;
    v97[4] = a5;
    v97[5] = buf;
    dispatch_async(v88, v97);
    _Block_object_dispose(buf, 8);
  }

LABEL_46:
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v89 = ci_signpost_log_render();
    v90 = v106;
    if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v91 = v89;
      if (os_signpost_enabled(v89))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v91, OS_SIGNPOST_INTERVAL_END, v90, "render_node", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v105);
}