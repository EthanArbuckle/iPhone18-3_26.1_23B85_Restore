@interface BSCGImageFromIOSurfaceBuilder
- (CGImage)buildCGImage;
- (id)setOpaque:(BOOL)a3;
- (void)dealloc;
@end

@implementation BSCGImageFromIOSurfaceBuilder

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
    self->_image = 0;
  }

  v4.receiver = self;
  v4.super_class = BSCGImageFromIOSurfaceBuilder;
  [(BSCGImageFromIOSurfaceBuilder *)&v4 dealloc];
}

- (id)setOpaque:(BOOL)a3
{
  if (*(self + 25) != a3)
  {
    *(self + 25) = a3;
    *(self + 24) = 1;
  }

  return self;
}

- (CGImage)buildCGImage
{
  v32[5] = *MEMORY[0x1E69E9840];
  isDirty = self->_isDirty;
  image = self->_image;
  if (isDirty)
  {
    if (image)
    {
      CFRelease(image);
      self->_image = 0;
    }
  }

  else if (image)
  {
    goto LABEL_27;
  }

  self->_isDirty = 0;
  surface = self->_surface;
  if (surface)
  {
    v6 = surface;
    [(IOSurface *)v6 lockWithOptions:1 seed:0];
    v7 = [(IOSurface *)v6 pixelFormat];
    if (v7 == 1999843442 || v7 == 1647534392)
    {
      v32[0] = *MEMORY[0x1E696D2B8];
      *&v30[0] = &unk_1F03B75D8;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v32 count:1];
      v9 = CGImageCreateFromIOSurface();
      [(IOSurface *)v6 unlockWithOptions:1 seed:0];
    }

    else
    {
      v10 = [(IOSurface *)v6 baseAddress];
      v11 = [(IOSurface *)v6 bytesPerRow];
      v12 = [(IOSurface *)v6 width];
      v13 = [(IOSurface *)v6 height];
      v14 = [(IOSurface *)v6 allocationSize];
      CFRetain(v6);
      v15 = CGDataProviderCreateWithData(v6, v10, v14, unlockIOSurface);
      [(IOSurface *)v6 incrementUseCount];
      isOpaque = self->_isOpaque;
      v17 = v6;
      v18 = IOSurfaceCopyValue(v17, *MEMORY[0x1E696CEE0]);
      v19 = v18;
      if (v18)
      {
        DeviceRGB = CGColorSpaceCreateWithPropertyList(v18);
        CFRelease(v19);
      }

      else
      {
        v31 = 0;
        memset(v30, 0, sizeof(v30));
        DeviceRGB = 0;
        if (!IOSurfaceGetBulkAttachments())
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v21 = _MergedGlobals_4;
          v29 = _MergedGlobals_4;
          if (!_MergedGlobals_4)
          {
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __getCVCreateColorSpaceFromIOSurfaceBulkAttachmentsSymbolLoc_block_invoke;
            v32[3] = &unk_1E72CABA8;
            v32[4] = &v26;
            __getCVCreateColorSpaceFromIOSurfaceBulkAttachmentsSymbolLoc_block_invoke(v32);
            v21 = v27[3];
          }

          _Block_object_dispose(&v26, 8);
          if (!v21)
          {
            v24 = [MEMORY[0x1E696AAA8] currentHandler];
            v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGColorSpaceRef softlinkCVCreateColorSpaceFromIOSurfaceBulkAttachments(const IOSurfaceColorAndSpatialKeys *)"];
            [v24 handleFailureInFunction:v25 file:@"IOSurface+BaseBoard.m" lineNumber:26 description:{@"%s", dlerror()}];

            __break(1u);
          }

          DeviceRGB = v21(v30);
        }
      }

      if (!DeviceRGB)
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      if (isOpaque)
      {
        v22 = 8198;
      }

      else
      {
        v22 = 8194;
      }

      v9 = CGImageCreate(v12, v13, 8uLL, 0x20uLL, v11, DeviceRGB, v22, v15, 0, 1, kCGRenderingIntentDefault);
      CGImageSetProperty();
      if (DeviceRGB)
      {
        CGColorSpaceRelease(DeviceRGB);
      }

      CGDataProviderRelease(v15);
    }
  }

  else
  {
    v9 = 0;
  }

  self->_image = v9;
  image = v9;
LABEL_27:

  return CFRetain(image);
}

@end