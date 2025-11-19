@interface VNCVPixelBufferHelper
+ (BOOL)lockPixelBuffer:(CVPixelBufferLockFlags)a3 lockFlags:(void *)a4 error:;
+ (BOOL)unlockPixelBuffer:(CVPixelBufferLockFlags)a3 lockFlags:(void *)a4 error:;
+ (BOOL)zeroOutPixelBuffer:(void *)a3 error:;
+ (CVPixelBufferRef)createPixelBufferUsingIOSurfaceWithWidth:(size_t)a3 height:(uint64_t)a4 pixelFormatType:(void *)a5 error:;
+ (id)copyCVPixelBufferContent:(__CVBuffer *)a3 target:(void *)a4 error:;
+ (uint64_t)_validatePixelBuffer:(void *)a3 error:;
+ (uint64_t)copyCVPixelBufferContentFromFP16ToFP32:(__CVBuffer *)a3 target:(void *)a4 error:;
+ (uint64_t)renderRawDataBufferWithWidth:(uint64_t)a1 height:(uint64_t)a2 pixelFormatType:(uint64_t)a3 rowBytes:(uint64_t)a4 dataBytes:(int *)a5 intoCVPixelBuffer:(__CVBuffer *)a6 error:(void *)a7;
@end

@implementation VNCVPixelBufferHelper

+ (CVPixelBufferRef)createPixelBufferUsingIOSurfaceWithWidth:(size_t)a3 height:(uint64_t)a4 pixelFormatType:(void *)a5 error:
{
  objc_opt_self();
  objc_opt_self();
  texture = 0;
  v9 = VNCVPixelBufferCreateUsingIOSurface(a2, a3, a4, 0, &texture);
  if (v9)
  {
    if (a5)
    {
      v10 = [VNError errorForCVReturnCode:v9 width:a2 height:a3 pixelFormat:a4 localizedDescription:@"Failed to create CVPixelBuffer"];
      v11 = v10;
      result = 0;
      *a5 = v10;
      return result;
    }
  }

  else
  {
    v13 = [VNCVPixelBufferHelper _validatePixelBuffer:a5 error:?];
    result = texture;
    if (v13)
    {
      return result;
    }

    CVPixelBufferRelease(texture);
  }

  return 0;
}

+ (uint64_t)_validatePixelBuffer:(void *)a3 error:
{
  objc_opt_self();
  if (!a2)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Pixel buffer is null", v5, v6, v7, v8, v9, v10, v28);
    if (!a3)
    {
      return 0;
    }

    v25 = @"Pixel buffer is null";
LABEL_11:
    v26 = [VNError errorForInternalErrorWithLocalizedDescription:v25];
    v27 = v26;
    result = 0;
    *a3 = v26;
    return result;
  }

  IOSurface = CVPixelBufferGetIOSurface(a2);
  if (!IOSurface)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Pixel buffer is missing an IOSurface", v12, v13, v14, v15, v16, v17, v28);
    if (!a3)
    {
      return 0;
    }

    v25 = @"Pixel buffer is missing an IOSurface";
    goto LABEL_11;
  }

  if (IOSurfaceGetBaseAddress(IOSurface))
  {
    return 1;
  }

  VNValidatedLog(4, @"VNCVPixelBufferHelper: IOSurface is not valid", v18, v19, v20, v21, v22, v23, v28);
  if (a3)
  {
    v25 = @"IOSurface is not valid";
    goto LABEL_11;
  }

  return 0;
}

+ (uint64_t)renderRawDataBufferWithWidth:(uint64_t)a1 height:(uint64_t)a2 pixelFormatType:(uint64_t)a3 rowBytes:(uint64_t)a4 dataBytes:(int *)a5 intoCVPixelBuffer:(__CVBuffer *)a6 error:(void *)a7
{
  objc_opt_self();
  Width = CVPixelBufferGetWidth(a6);
  Height = CVPixelBufferGetHeight(a6);
  if (Width != a2 || Height != a3)
  {
    if (a7)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inference buffer image with dimensions %ld x %ld cannot be rendered into a pixel buffer with dimensions %ld x %ld", a2, a3, Width, Height];
      *a7 = [VNError errorForInvalidOperationWithLocalizedDescription:v17];
    }

    return 0;
  }

  v15 = CVPixelBufferLockBaseAddress(a6, 0);
  if (!v15)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a6);
    BaseAddress = CVPixelBufferGetBaseAddress(a6);
    if (a4 == 1278226534)
    {
      if (4 * a2 <= BytesPerRow)
      {
        for (i = a3 * a2; i; --i)
        {
          v31 = *a5++;
          *BaseAddress++ = v31;
        }

        goto LABEL_23;
      }

      if (a7)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inference buffer image with row bytes size of %ld cannot be rendered into a pixel buffer with %lu bytes per row", 4 * a2, BytesPerRow];
        v29 = [VNError errorForInvalidOperationWithLocalizedDescription:v28];
LABEL_19:
        *a7 = v29;
      }
    }

    else
    {
      if (a4 == 1278226536)
      {
        for (j = a3 * a2; j; --j)
        {
          v21 = *a5;
          a5 = (a5 + 2);
          _H0 = v21;
          __asm { FCVT            S0, H0 }

          *BaseAddress++ = _S0;
        }

LABEL_23:
        v16 = 1;
        goto LABEL_24;
      }

      if (a7)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format type (%u)", a4];
        v29 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v28];
        goto LABEL_19;
      }
    }

    v16 = 0;
LABEL_24:
    CVPixelBufferUnlockBaseAddress(a6, 0);
    return v16;
  }

  if (!a7)
  {
    return 0;
  }

  [VNError errorForCVReturnCode:v15 localizedDescription:@"could not lock pixel buffer"];
  *a7 = v16 = 0;
  return v16;
}

+ (BOOL)lockPixelBuffer:(CVPixelBufferLockFlags)a3 lockFlags:(void *)a4 error:
{
  objc_opt_self();
  v13 = CVPixelBufferLockBaseAddress(a2, a3);
  if (v13)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Failed to lock pixel buffer (%p): %d", v7, v8, v9, v10, v11, v12, a2);
    if (a4)
    {
      *a4 = [VNError errorForCVReturnCode:v13 localizedDescription:@"Failed to lock pixel buffer"];
    }
  }

  return v13 == 0;
}

+ (BOOL)unlockPixelBuffer:(CVPixelBufferLockFlags)a3 lockFlags:(void *)a4 error:
{
  objc_opt_self();
  v13 = CVPixelBufferUnlockBaseAddress(a2, a3);
  if (v13)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Failed to unlock buffer (%p): %d", v7, v8, v9, v10, v11, v12, a2);
    if (a4)
    {
      *a4 = [VNError errorForCVReturnCode:v13 localizedDescription:@"Failed to unlock pixel buffer"];
    }
  }

  return v13 == 0;
}

+ (BOOL)zeroOutPixelBuffer:(void *)a3 error:
{
  objc_opt_self();
  result = [VNCVPixelBufferHelper lockPixelBuffer:a2 lockFlags:0 error:a3];
  if (result)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
    v7 = CVPixelBufferGetHeight(a2) * BytesPerRow;
    BaseAddress = CVPixelBufferGetBaseAddress(a2);
    bzero(BaseAddress, v7);

    return [VNCVPixelBufferHelper unlockPixelBuffer:a2 lockFlags:0 error:a3];
  }

  return result;
}

+ (id)copyCVPixelBufferContent:(__CVBuffer *)a3 target:(void *)a4 error:
{
  objc_opt_self();
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  result = CVPixelBufferGetWidth(a3);
  if (Width == result && (result = CVPixelBufferGetHeight(a3), Height == result) && (result = CVPixelBufferGetBytesPerRow(a3), BytesPerRow == result))
  {
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(a3, 0);
    v11 = BytesPerRow * Height;
    BaseAddress = CVPixelBufferGetBaseAddress(a2);
    v13 = CVPixelBufferGetBaseAddress(a3);
    memcpy(v13, BaseAddress, v11);
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);

    return CVPixelBufferUnlockBaseAddress(a3, 0);
  }

  else if (a4)
  {
    result = [VNError errorForInternalErrorWithLocalizedDescription:@"Pixel buffers are of different memory layout"];
    *a4 = result;
  }

  return result;
}

+ (uint64_t)copyCVPixelBufferContentFromFP16ToFP32:(__CVBuffer *)a3 target:(void *)a4 error:
{
  objc_opt_self();
  Width = CVPixelBufferGetWidth(a2);
  if (Width != CVPixelBufferGetWidth(a3) || (Height = CVPixelBufferGetHeight(a2), Height != CVPixelBufferGetHeight(a3)))
  {
    if (!a4)
    {
      return 0;
    }

    v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"Pixel buffers are of different dimensions"];
    v15 = 0;
    goto LABEL_13;
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  v9 = CVPixelBufferGetWidth(a2);
  v10 = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v12 = CVPixelBufferGetBytesPerRow(a3);
  src.data = CVPixelBufferGetBaseAddress(a2);
  src.height = v10;
  src.width = v9;
  src.rowBytes = BytesPerRow;
  v19.data = CVPixelBufferGetBaseAddress(a3);
  v19.height = v10;
  v19.width = v9;
  v19.rowBytes = v12;
  v13 = vImageConvert_Planar16FtoPlanarF(&src, &v19, 0);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (a4)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (!v14)
  {
    v16 = [VNError errorForInternalErrorWithLocalizedDescription:@"conversion from FP16 to FP32 failed"];
    *a4 = v16;
    v17 = v16;
LABEL_13:
    *a4 = v17;
  }

  return v15;
}

@end