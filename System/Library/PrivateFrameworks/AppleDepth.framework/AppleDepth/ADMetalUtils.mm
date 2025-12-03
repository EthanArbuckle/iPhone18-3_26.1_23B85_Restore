@interface ADMetalUtils
+ (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height plane:(unint64_t)plane metalDevice:(id)device error:(id *)error;
+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture metalDevice:(id)device;
+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format textureSize:(CGSize)size plane:(unint64_t)plane metalDevice:(id)device error:(id *)error;
+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture plane:(unint64_t)plane metalDevice:(id)device error:(id *)error;
+ (id)textureForSize:(CGSize)size pixelFormat:(unsigned int)format metalDevice:(id)device;
+ (id)textureForSize:(CGSize)size pixelFormat:(unsigned int)format mipmapped:(BOOL)mipmapped metalDevice:(id)device;
+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format;
+ (unint64_t)getMTLPixelFormat:(unsigned int)format;
+ (void)dispatchCommandEncoder:(id)encoder pipeline:(id)pipeline width:(unsigned int)width height:(unsigned int)height;
@end

@implementation ADMetalUtils

+ (void)dispatchCommandEncoder:(id)encoder pipeline:(id)pipeline width:(unsigned int)width height:(unsigned int)height
{
  encoderCopy = encoder;
  pipelineCopy = pipeline;
  threadExecutionWidth = [pipelineCopy threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [pipelineCopy maxTotalThreadsPerThreadgroup];
  v14[0] = ((width + threadExecutionWidth - 1) / threadExecutionWidth);
  v14[1] = ((height + maxTotalThreadsPerThreadgroup / threadExecutionWidth - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth));
  v14[2] = 1;
  v13[0] = threadExecutionWidth;
  v13[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v13[2] = 1;
  [encoderCopy dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
}

+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format
{
  result = 1;
  switch(format)
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

+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture pixelFormat:(unint64_t)format textureSize:(CGSize)size plane:(unint64_t)plane metalDevice:(id)device error:(id *)error
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  IOSurface = CVPixelBufferGetIOSurface(texture);
  if (IOSurface)
  {
    v16 = [ADMetalUtils bindIOSurfaceToMTL2DTexture:IOSurface pixelFormat:format width:width height:height plane:plane metalDevice:deviceCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture plane:(unint64_t)plane metalDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  IOSurface = CVPixelBufferGetIOSurface(texture);
  if (IOSurface)
  {
    v11 = [ADMetalUtils getMTLPixelFormat:CVPixelBufferGetPixelFormatType(texture)];
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, plane);
    error = [ADMetalUtils bindIOSurfaceToMTL2DTexture:IOSurface pixelFormat:v11 width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(IOSurface plane:plane) metalDevice:plane error:deviceCopy, error];
  }

  else
  {
    error = 0;
  }

  return error;
}

+ (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)texture metalDevice:(id)device
{
  v4 = [ADMetalUtils bindPixelBufferToMTL2DTexture:texture plane:0 metalDevice:device error:0];

  return v4;
}

+ (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)texture pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height plane:(unint64_t)plane metalDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:width height:height mipmapped:0];
  v16 = v15;
  if (v15)
  {
    [v15 setUsage:23];
    v17 = [deviceCopy newTextureWithDescriptor:v16 iosurface:texture plane:plane];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)textureForSize:(CGSize)size pixelFormat:(unsigned int)format mipmapped:(BOOL)mipmapped metalDevice:(id)device
{
  mipmappedCopy = mipmapped;
  v7 = *&format;
  height = size.height;
  width = size.width;
  deviceCopy = device;
  mipmappedCopy = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:+[ADMetalUtils getMTLPixelFormat:](ADMetalUtils width:"getMTLPixelFormat:" height:v7) mipmapped:width, height, mipmappedCopy];
  [mipmappedCopy setUsage:19];
  v12 = [deviceCopy newTextureWithDescriptor:mipmappedCopy];

  return v12;
}

+ (id)textureForSize:(CGSize)size pixelFormat:(unsigned int)format metalDevice:(id)device
{
  v5 = [ADMetalUtils textureForSize:*&format pixelFormat:0 mipmapped:device metalDevice:size.width, size.height];

  return v5;
}

+ (unint64_t)getMTLPixelFormat:(unsigned int)format
{
  if (format > 1380401728)
  {
    if (format <= 1717855599)
    {
      if (format <= 1380411456)
      {
        if (format == 1380401729)
        {
          return 70;
        }

        if (format == 1380410945)
        {
          return 125;
        }

        goto LABEL_35;
      }

      if (format == 1380411457)
      {
        return 115;
      }

      v5 = 1647392359;
      goto LABEL_26;
    }

    if (format <= 1751410031)
    {
      if (format == 1717855600)
      {
        return 55;
      }

      v7 = 1717856627;
      goto LABEL_17;
    }

    if (format != 1751410032 && format != 1751411059)
    {
      goto LABEL_35;
    }

    return 25;
  }

  if (format <= 1278226487)
  {
    if (format > 843264103)
    {
      if (format == 843264104)
      {
        return 65;
      }

      if (format == 1111970369)
      {
        return 80;
      }

      goto LABEL_35;
    }

    if (format == 825306677)
    {
      return 23;
    }

    v5 = 825437747;
    goto LABEL_26;
  }

  if (format > 1278226535)
  {
    if (format != 1278226536)
    {
      v5 = 1278226742;
LABEL_26:
      if (format == v5)
      {
        return 23;
      }

      goto LABEL_35;
    }

    return 25;
  }

  if (format == 1278226488)
  {
    return 10;
  }

  v7 = 1278226534;
LABEL_17:
  if (format == v7)
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