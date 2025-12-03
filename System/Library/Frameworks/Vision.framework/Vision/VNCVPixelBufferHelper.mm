@interface VNCVPixelBufferHelper
+ (BOOL)lockPixelBuffer:(CVPixelBufferLockFlags)buffer lockFlags:(void *)flags error:;
+ (BOOL)unlockPixelBuffer:(CVPixelBufferLockFlags)buffer lockFlags:(void *)flags error:;
+ (BOOL)zeroOutPixelBuffer:(void *)buffer error:;
+ (CVPixelBufferRef)createPixelBufferUsingIOSurfaceWithWidth:(size_t)width height:(uint64_t)height pixelFormatType:(void *)type error:;
+ (id)copyCVPixelBufferContent:(__CVBuffer *)content target:(void *)target error:;
+ (uint64_t)_validatePixelBuffer:(void *)buffer error:;
+ (uint64_t)copyCVPixelBufferContentFromFP16ToFP32:(__CVBuffer *)p32 target:(void *)target error:;
+ (uint64_t)renderRawDataBufferWithWidth:(uint64_t)width height:(uint64_t)height pixelFormatType:(uint64_t)type rowBytes:(uint64_t)bytes dataBytes:(int *)dataBytes intoCVPixelBuffer:(__CVBuffer *)buffer error:(void *)error;
@end

@implementation VNCVPixelBufferHelper

+ (CVPixelBufferRef)createPixelBufferUsingIOSurfaceWithWidth:(size_t)width height:(uint64_t)height pixelFormatType:(void *)type error:
{
  objc_opt_self();
  objc_opt_self();
  texture = 0;
  v9 = VNCVPixelBufferCreateUsingIOSurface(a2, width, height, 0, &texture);
  if (v9)
  {
    if (type)
    {
      v10 = [VNError errorForCVReturnCode:v9 width:a2 height:width pixelFormat:height localizedDescription:@"Failed to create CVPixelBuffer"];
      v11 = v10;
      result = 0;
      *type = v10;
      return result;
    }
  }

  else
  {
    v13 = [VNCVPixelBufferHelper _validatePixelBuffer:type error:?];
    result = texture;
    if (v13)
    {
      return result;
    }

    CVPixelBufferRelease(texture);
  }

  return 0;
}

+ (uint64_t)_validatePixelBuffer:(void *)buffer error:
{
  objc_opt_self();
  if (!a2)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Pixel buffer is null", v5, v6, v7, v8, v9, v10, v28);
    if (!buffer)
    {
      return 0;
    }

    v25 = @"Pixel buffer is null";
LABEL_11:
    v26 = [VNError errorForInternalErrorWithLocalizedDescription:v25];
    v27 = v26;
    result = 0;
    *buffer = v26;
    return result;
  }

  IOSurface = CVPixelBufferGetIOSurface(a2);
  if (!IOSurface)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Pixel buffer is missing an IOSurface", v12, v13, v14, v15, v16, v17, v28);
    if (!buffer)
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
  if (buffer)
  {
    v25 = @"IOSurface is not valid";
    goto LABEL_11;
  }

  return 0;
}

+ (uint64_t)renderRawDataBufferWithWidth:(uint64_t)width height:(uint64_t)height pixelFormatType:(uint64_t)type rowBytes:(uint64_t)bytes dataBytes:(int *)dataBytes intoCVPixelBuffer:(__CVBuffer *)buffer error:(void *)error
{
  objc_opt_self();
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (Width != height || Height != type)
  {
    if (error)
    {
      height = [MEMORY[0x1E696AEC0] stringWithFormat:@"inference buffer image with dimensions %ld x %ld cannot be rendered into a pixel buffer with dimensions %ld x %ld", height, type, Width, Height];
      *error = [VNError errorForInvalidOperationWithLocalizedDescription:height];
    }

    return 0;
  }

  v15 = CVPixelBufferLockBaseAddress(buffer, 0);
  if (!v15)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    if (bytes == 1278226534)
    {
      if (4 * height <= BytesPerRow)
      {
        for (i = type * height; i; --i)
        {
          v31 = *dataBytes++;
          *BaseAddress++ = v31;
        }

        goto LABEL_23;
      }

      if (error)
      {
        bytesPerRow = [MEMORY[0x1E696AEC0] stringWithFormat:@"inference buffer image with row bytes size of %ld cannot be rendered into a pixel buffer with %lu bytes per row", 4 * height, BytesPerRow];
        v29 = [VNError errorForInvalidOperationWithLocalizedDescription:bytesPerRow];
LABEL_19:
        *error = v29;
      }
    }

    else
    {
      if (bytes == 1278226536)
      {
        for (j = type * height; j; --j)
        {
          v21 = *dataBytes;
          dataBytes = (dataBytes + 2);
          _H0 = v21;
          __asm { FCVT            S0, H0 }

          *BaseAddress++ = _S0;
        }

LABEL_23:
        v16 = 1;
        goto LABEL_24;
      }

      if (error)
      {
        bytesPerRow = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format type (%u)", bytes];
        v29 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:bytesPerRow];
        goto LABEL_19;
      }
    }

    v16 = 0;
LABEL_24:
    CVPixelBufferUnlockBaseAddress(buffer, 0);
    return v16;
  }

  if (!error)
  {
    return 0;
  }

  [VNError errorForCVReturnCode:v15 localizedDescription:@"could not lock pixel buffer"];
  *error = v16 = 0;
  return v16;
}

+ (BOOL)lockPixelBuffer:(CVPixelBufferLockFlags)buffer lockFlags:(void *)flags error:
{
  objc_opt_self();
  v13 = CVPixelBufferLockBaseAddress(a2, buffer);
  if (v13)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Failed to lock pixel buffer (%p): %d", v7, v8, v9, v10, v11, v12, a2);
    if (flags)
    {
      *flags = [VNError errorForCVReturnCode:v13 localizedDescription:@"Failed to lock pixel buffer"];
    }
  }

  return v13 == 0;
}

+ (BOOL)unlockPixelBuffer:(CVPixelBufferLockFlags)buffer lockFlags:(void *)flags error:
{
  objc_opt_self();
  v13 = CVPixelBufferUnlockBaseAddress(a2, buffer);
  if (v13)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Failed to unlock buffer (%p): %d", v7, v8, v9, v10, v11, v12, a2);
    if (flags)
    {
      *flags = [VNError errorForCVReturnCode:v13 localizedDescription:@"Failed to unlock pixel buffer"];
    }
  }

  return v13 == 0;
}

+ (BOOL)zeroOutPixelBuffer:(void *)buffer error:
{
  objc_opt_self();
  result = [VNCVPixelBufferHelper lockPixelBuffer:a2 lockFlags:0 error:buffer];
  if (result)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
    v7 = CVPixelBufferGetHeight(a2) * BytesPerRow;
    BaseAddress = CVPixelBufferGetBaseAddress(a2);
    bzero(BaseAddress, v7);

    return [VNCVPixelBufferHelper unlockPixelBuffer:a2 lockFlags:0 error:buffer];
  }

  return result;
}

+ (id)copyCVPixelBufferContent:(__CVBuffer *)content target:(void *)target error:
{
  objc_opt_self();
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  result = CVPixelBufferGetWidth(content);
  if (Width == result && (result = CVPixelBufferGetHeight(content), Height == result) && (result = CVPixelBufferGetBytesPerRow(content), BytesPerRow == result))
  {
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(content, 0);
    v11 = BytesPerRow * Height;
    BaseAddress = CVPixelBufferGetBaseAddress(a2);
    v13 = CVPixelBufferGetBaseAddress(content);
    memcpy(v13, BaseAddress, v11);
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);

    return CVPixelBufferUnlockBaseAddress(content, 0);
  }

  else if (target)
  {
    result = [VNError errorForInternalErrorWithLocalizedDescription:@"Pixel buffers are of different memory layout"];
    *target = result;
  }

  return result;
}

+ (uint64_t)copyCVPixelBufferContentFromFP16ToFP32:(__CVBuffer *)p32 target:(void *)target error:
{
  objc_opt_self();
  Width = CVPixelBufferGetWidth(a2);
  if (Width != CVPixelBufferGetWidth(p32) || (Height = CVPixelBufferGetHeight(a2), Height != CVPixelBufferGetHeight(p32)))
  {
    if (!target)
    {
      return 0;
    }

    v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"Pixel buffers are of different dimensions"];
    v15 = 0;
    goto LABEL_13;
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(p32, 0);
  v9 = CVPixelBufferGetWidth(a2);
  v10 = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v12 = CVPixelBufferGetBytesPerRow(p32);
  src.data = CVPixelBufferGetBaseAddress(a2);
  src.height = v10;
  src.width = v9;
  src.rowBytes = BytesPerRow;
  v19.data = CVPixelBufferGetBaseAddress(p32);
  v19.height = v10;
  v19.width = v9;
  v19.rowBytes = v12;
  v13 = vImageConvert_Planar16FtoPlanarF(&src, &v19, 0);
  CVPixelBufferUnlockBaseAddress(p32, 0);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (target)
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
    *target = v16;
    v17 = v16;
LABEL_13:
    *target = v17;
  }

  return v15;
}

@end