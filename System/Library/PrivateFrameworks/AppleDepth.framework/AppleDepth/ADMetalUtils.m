@interface ADMetalUtils
+ (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 plane:(unint64_t)a7 metalDevice:(id)a8 error:(id *)a9;
+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 metalDevice:(id)a4;
+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 textureSize:(CGSize)a5 plane:(unint64_t)a6 metalDevice:(id)a7 error:(id *)a8;
+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 plane:(unint64_t)a4 metalDevice:(id)a5 error:(id *)a6;
+ (id)textureForSize:(CGSize)a3 pixelFormat:(unsigned int)a4 metalDevice:(id)a5;
+ (id)textureForSize:(CGSize)a3 pixelFormat:(unsigned int)a4 mipmapped:(BOOL)a5 metalDevice:(id)a6;
+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3;
+ (unint64_t)getMTLPixelFormat:(unsigned int)a3;
+ (void)dispatchCommandEncoder:(id)a3 pipeline:(id)a4 width:(unsigned int)a5 height:(unsigned int)a6;
@end

@implementation ADMetalUtils

+ (void)dispatchCommandEncoder:(id)a3 pipeline:(id)a4 width:(unsigned int)a5 height:(unsigned int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 threadExecutionWidth];
  v12 = [v10 maxTotalThreadsPerThreadgroup];
  v14[0] = ((a5 + v11 - 1) / v11);
  v14[1] = ((a6 + v12 / v11 - 1) / (v12 / v11));
  v14[2] = 1;
  v13[0] = v11;
  v13[1] = v12 / v11;
  v13[2] = 1;
  [v9 dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
}

+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3
{
  result = 1;
  switch(a3)
  {
    case 1uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
      return result;
    case 0x14uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1EuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
      result = 2;
      break;
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x3CuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x40uLL:
    case 0x41uLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x5AuLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
      result = 4;
      break;
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6EuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x73uLL:
      result = 8;
      break;
    case 0x7BuLL:
    case 0x7CuLL:
    case 0x7DuLL:
      result = 16;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 textureSize:(CGSize)a5 plane:(unint64_t)a6 metalDevice:(id)a7 error:(id *)a8
{
  height = a5.height;
  width = a5.width;
  v14 = a7;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    v16 = [ADMetalUtils bindIOSurfaceToMTL2DTexture:IOSurface pixelFormat:a4 width:width height:height plane:a6 metalDevice:v14 error:a8];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 plane:(unint64_t)a4 metalDevice:(id)a5 error:(id *)a6
{
  v9 = a5;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    v11 = [ADMetalUtils getMTLPixelFormat:CVPixelBufferGetPixelFormatType(a3)];
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, a4);
    v13 = [ADMetalUtils bindIOSurfaceToMTL2DTexture:IOSurface pixelFormat:v11 width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(IOSurface plane:a4) metalDevice:a4 error:v9, a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 metalDevice:(id)a4
{
  v4 = [ADMetalUtils bindPixelBufferToMTL2DTexture:a3 plane:0 metalDevice:a4 error:0];

  return v4;
}

+ (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 plane:(unint64_t)a7 metalDevice:(id)a8 error:(id *)a9
{
  v14 = a8;
  v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a4 width:a5 height:a6 mipmapped:0];
  v16 = v15;
  if (v15)
  {
    [v15 setUsage:23];
    v17 = [v14 newTextureWithDescriptor:v16 iosurface:a3 plane:a7];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)textureForSize:(CGSize)a3 pixelFormat:(unsigned int)a4 mipmapped:(BOOL)a5 metalDevice:(id)a6
{
  v6 = a5;
  v7 = *&a4;
  height = a3.height;
  width = a3.width;
  v10 = a6;
  v11 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:+[ADMetalUtils getMTLPixelFormat:](ADMetalUtils width:"getMTLPixelFormat:" height:v7) mipmapped:width, height, v6];
  [v11 setUsage:19];
  v12 = [v10 newTextureWithDescriptor:v11];

  return v12;
}

+ (id)textureForSize:(CGSize)a3 pixelFormat:(unsigned int)a4 metalDevice:(id)a5
{
  v5 = [ADMetalUtils textureForSize:*&a4 pixelFormat:0 mipmapped:a5 metalDevice:a3.width, a3.height];

  return v5;
}

+ (unint64_t)getMTLPixelFormat:(unsigned int)a3
{
  if (a3 > 1380401728)
  {
    if (a3 <= 1717855599)
    {
      if (a3 <= 1380411456)
      {
        if (a3 == 1380401729)
        {
          return 70;
        }

        if (a3 == 1380410945)
        {
          return 125;
        }

        goto LABEL_35;
      }

      if (a3 == 1380411457)
      {
        return 115;
      }

      v5 = 1647392359;
      goto LABEL_26;
    }

    if (a3 <= 1751410031)
    {
      if (a3 == 1717855600)
      {
        return 55;
      }

      v7 = 1717856627;
      goto LABEL_17;
    }

    if (a3 != 1751410032 && a3 != 1751411059)
    {
      goto LABEL_35;
    }

    return 25;
  }

  if (a3 <= 1278226487)
  {
    if (a3 > 843264103)
    {
      if (a3 == 843264104)
      {
        return 65;
      }

      if (a3 == 1111970369)
      {
        return 80;
      }

      goto LABEL_35;
    }

    if (a3 == 825306677)
    {
      return 23;
    }

    v5 = 825437747;
    goto LABEL_26;
  }

  if (a3 > 1278226535)
  {
    if (a3 != 1278226536)
    {
      v5 = 1278226742;
LABEL_26:
      if (a3 == v5)
      {
        return 23;
      }

      goto LABEL_35;
    }

    return 25;
  }

  if (a3 == 1278226488)
  {
    return 10;
  }

  v7 = 1278226534;
LABEL_17:
  if (a3 == v7)
  {
    return 55;
  }

LABEL_35:
  v9 = v3;
  v10 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported pixelformat", v8, 2u);
  }

  return 0;
}

@end