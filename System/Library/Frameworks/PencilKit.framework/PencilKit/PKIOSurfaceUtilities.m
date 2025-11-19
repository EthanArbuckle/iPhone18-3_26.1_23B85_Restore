@interface PKIOSurfaceUtilities
+ (uint64_t)makeCGImageFromIOSurfaceFramebuffer:(int)a3 opaque:;
@end

@implementation PKIOSurfaceUtilities

+ (uint64_t)makeCGImageFromIOSurfaceFramebuffer:(int)a3 opaque:
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    v5 = v4[7];
    v6 = v4[5] == 115;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  PixelFormat = IOSurfaceGetPixelFormat(v5);
  if (PixelFormat <= 1647534391)
  {
    if (PixelFormat != 1111970369)
    {
      v8 = 1380411457;
      goto LABEL_8;
    }

LABEL_9:
    if (v6)
    {
      v24 = *MEMORY[0x1E696D2B8];
      v9 = [MEMORY[0x1E696AD98] numberWithInt:5];
      *&v25[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v10 = 0;
    }

    v11 = CGImageCreateFromIOSurface();

    return v11;
  }

  if (PixelFormat == 1999843442)
  {
    goto LABEL_9;
  }

  v8 = 1647534392;
LABEL_8:
  if (PixelFormat == v8)
  {
    goto LABEL_9;
  }

  v11 = 0;
  if (!IOSurfaceLock(v5, 1u, 0))
  {
    CFRetain(v5);
    IOSurfaceIncrementUseCount(v5);
    BaseAddress = IOSurfaceGetBaseAddress(v5);
    BytesPerRow = IOSurfaceGetBytesPerRow(v5);
    Width = IOSurfaceGetWidth(v5);
    Height = IOSurfaceGetHeight(v5);
    AllocSize = IOSurfaceGetAllocSize(v5);
    v18 = CGDataProviderCreateWithData(v5, BaseAddress, AllocSize, _releaseIOService);
    if (v18)
    {
      v19 = v18;
      DeviceRGB = CGColorSpaceCopyFromIOSurface();
      if (!DeviceRGB)
      {
        v21 = IOSurfaceCopyValue(v5, *MEMORY[0x1E696CEE0]);
        if (v21)
        {
          v22 = v21;
          DeviceRGB = CGColorSpaceCreateWithPropertyList(v21);
          CFRelease(v22);
        }

        else
        {
          v31 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          memset(v25, 0, sizeof(v25));
          v24 = 132;
          DeviceRGB = 0;
          if (!IOSurfaceGetBulkAttachments() && BYTE11(v26) == 12)
          {
            DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
          }
        }

        if (!DeviceRGB)
        {
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
        }
      }

      if (a3)
      {
        v23 = 8198;
      }

      else
      {
        v23 = 8194;
      }

      v11 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, DeviceRGB, v23, v19, 0, 1, kCGRenderingIntentDefault);
      CGImageSetProperty();
      CGColorSpaceRelease(DeviceRGB);
      CGDataProviderRelease(v19);
    }

    else
    {
      IOSurfaceUnlock(v5, 1u, 0);
      IOSurfaceDecrementUseCount(v5);
      CFRelease(v5);
      return 0;
    }
  }

  return v11;
}

@end