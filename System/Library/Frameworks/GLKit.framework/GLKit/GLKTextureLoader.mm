@interface GLKTextureLoader
+ (GLKTextureInfo)cubeMapWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)cubeMapWithContentsOfFiles:(NSArray *)paths options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)cubeMapWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithContentsOfData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)outError;
+ (id)_textureWithTexture:(id)texture error:(id *)error;
+ (id)_textureWithTextureTXR:(id)r error:(id *)error;
+ (id)commonCubeMapWithContentsOfFiles:(id)files options:(id)options error:(id *)error lock:(id)lock glContext:(id)context;
+ (id)commonCubeMapWithContentsOfURL:(id)l options:(id)options error:(id *)error lock:(id)lock glContext:(id)context;
+ (id)commonTextureWithCGImage:(CGImage *)image options:(id)options error:(id *)error lock:(id)lock glContext:(id)context;
+ (id)commonTextureWithContentsOfData:(id)data options:(id)options error:(id *)error lock:(id)lock glContext:(id)context;
+ (id)commonTextureWithContentsOfURL:(id)l options:(id)options error:(id *)error lock:(id)lock glContext:(id)context;
+ (id)commonTextureWithName:(id)name scaleFactor:(double)factor bundle:(id)bundle options:(id)options error:(id *)error lock:(id)lock glContext:(id)context;
+ (id)lockAndSwitchContext:(id)context glContext:(id)glContext;
+ (void)unlockAndRestoreContext:(id)context glContext:(id)glContext;
- (GLKTextureLoader)initWithSharegroup:(EAGLSharegroup *)sharegroup;
- (void)cubeMapWithContentsOfFile:(NSString *)path options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)cubeMapWithContentsOfFiles:(NSArray *)paths options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)cubeMapWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)dealloc;
- (void)textureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)textureWithContentsOfData:(NSData *)data options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)textureWithContentsOfFile:(NSString *)path options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)textureWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
- (void)textureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block;
@end

@implementation GLKTextureLoader

- (GLKTextureLoader)initWithSharegroup:(EAGLSharegroup *)sharegroup
{
  v6.receiver = self;
  v6.super_class = GLKTextureLoader;
  v4 = [(GLKTextureLoader *)&v6 init];
  if (v4)
  {
    -[GLKTextureLoader setGlContext:](v4, "setGlContext:", [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:-[EAGLSharegroup APIs](sharegroup sharegroup:{"APIs"), sharegroup}]);
    if ([(GLKTextureLoader *)v4 glContext])
    {
      [(GLKTextureLoader *)v4 setNsLock:objc_alloc_init(MEMORY[0x277CCAAF8])];
      if ([(GLKTextureLoader *)v4 nsLock])
      {
        [(EAGLContext *)[(GLKTextureLoader *)v4 glContext] setDebugLabel:@"GLKTextureLoader"];
        return v4;
      }

      fwrite("Failed to create texture loader lock\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
      [(GLKTextureLoader *)v4 setGlContext:0];
    }

    else
    {
      fwrite("Failed to create texture loader context\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [(GLKTextureLoader *)self setGlContext:0];
  [(GLKTextureLoader *)self setNsLock:0];
  v3.receiver = self;
  v3.super_class = GLKTextureLoader;
  [(GLKTextureLoader *)&v3 dealloc];
}

+ (id)lockAndSwitchContext:(id)context glContext:(id)glContext
{
  [context lock];
  if (!glContext)
  {
    return 0;
  }

  currentContext = [MEMORY[0x277CD9388] currentContext];
  [MEMORY[0x277CD9388] setCurrentContext:glContext];
  return currentContext;
}

+ (void)unlockAndRestoreContext:(id)context glContext:(id)glContext
{
  if (context)
  {
    glFlush();
    [MEMORY[0x277CD9388] setCurrentContext:glContext];
  }

  [context unlock];
}

+ (id)_textureWithTexture:(id)texture error:(id *)error
{
  if (!texture)
  {
    return 0;
  }

  textures = 0;
  glGenTextures(1, &textures);
  if ([texture uploadToGLTexture:textures error:error])
  {
    if ([texture dataCategory] != 5 && objc_msgSend(texture, "isMipmapped") && objc_msgSend(texture, "numMipMapLevels") == 1)
    {
      glGenerateMipmap([texture bindTarget]);
    }

    v6 = [GLKTextureInfo alloc];
    return [(GLKTextureInfo *)v6 initWithTexture:texture textureName:textures];
  }

  else
  {
    glDeleteTextures(1, &textures);
    return 0;
  }
}

+ (id)_textureWithTextureTXR:(id)r error:(id *)error
{
  if (!r)
  {
    return 0;
  }

  textures = 0;
  glGenTextures(1, &textures);
  if ([r uploadToGLTexture:textures error:error])
  {
    v6 = [GLKTextureInfo alloc];
    return [(GLKTextureInfo *)v6 initWithTextureTXR:r textureName:textures];
  }

  else
  {
    glDeleteTextures(1, &textures);
    return 0;
  }
}

+ (id)commonTextureWithContentsOfData:(id)data options:(id)options error:(id *)error lock:(id)lock glContext:(id)context
{
  if (data)
  {
    v11 = [[GLKTexture alloc] initWithData:data forceCubeMap:0 wasCubeMap:0 cubeMapIndex:0 options:options error:error];
    if (v11)
    {
      v12 = v11;
      v13 = [self lockAndSwitchContext:lock glContext:context];
      v14 = [GLKTextureLoader _textureWithTexture:v12 error:error];
      [self unlockAndRestoreContext:lock glContext:v13];

      return v14;
    }
  }

  else if (error)
  {
    *error = _GLKTextureErrorWithCodeAndErrorString(1, @"Invalid NSData");
  }

  return 0;
}

+ (id)commonTextureWithContentsOfURL:(id)l options:(id)options error:(id *)error lock:(id)lock glContext:(id)context
{
  if ([l isFileURL] && (objc_msgSend(l, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(l, "lastPathComponent")];
      v15 = 0;
      goto LABEL_11;
    }

    return 0;
  }

  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:l options:1 error:&v20];
  if (v20)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid NSData, %@", objc_msgSend(v20, "localizedDescription")];
      v15 = 1;
LABEL_11:
      v18 = 0;
      *error = _GLKTextureErrorWithCodeAndErrorString(v15, v14);
      return v18;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v16 = [[GLKTexture alloc] initWithData:v13 forceCubeMap:0 wasCubeMap:0 cubeMapIndex:0 options:options error:error];

  if (!v16)
  {
    return 0;
  }

  -[GLKTexture setLabel:](v16, "setLabel:", [l relativeString]);
  v17 = [self lockAndSwitchContext:lock glContext:context];
  v18 = [GLKTextureLoader _textureWithTexture:v16 error:error];
  [self unlockAndRestoreContext:lock glContext:v17];

  return v18;
}

+ (id)commonTextureWithName:(id)name scaleFactor:(double)factor bundle:(id)bundle options:(id)options error:(id *)error lock:(id)lock glContext:(id)context
{
  v16 = [MEMORY[0x277D02670] defaultUICatalogForBundle:bundle];
  if (!v16)
  {
    if (error)
    {
      name = @"Could not get asset catalog from supplied bundle";
LABEL_12:
      v28 = 0;
      *error = _GLKTextureErrorWithCodeAndErrorString(0, name);
      return v28;
    }

    return 0;
  }

  v17 = v16;
  v18 = objc_alloc_init(MEMORY[0x277D71428]);
  v19 = [v17 namedTextureWithName:name scaleFactor:factor];
  if (!v19)
  {
    if (error)
    {
      name = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find texture named %@ in supplied bundle", name];
      goto LABEL_12;
    }

    return 0;
  }

  v20 = v19;
  v21 = objc_autoreleasePoolPush();
  v22 = [v20 textureWithBufferAllocator:v18];
  v23 = v22;
  objc_autoreleasePoolPop(v21);
  pixelFormat = [v22 pixelFormat];
  if (pixelFormat > 151)
  {
    if (pixelFormat == 152)
    {
      if (error)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC7_RGBAUnorm";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (pixelFormat == 153)
    {
      if (error)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC7_RGBAUnorm_sRGB";
        goto LABEL_24;
      }

LABEL_25:

      return 0;
    }
  }

  else
  {
    if (pixelFormat == 150)
    {
      if (error)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC6H_RGBFloat";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (pixelFormat == 151)
    {
      if (error)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC6H_RGBUfloat";
LABEL_24:
        *error = _GLKTextureErrorWithCodeAndErrorString(7, [v25 stringWithFormat:@"Texture was created with unsupported pixel format: %s", v26]);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  if (v22 && (!context ? (v29 = [MEMORY[0x277CD9388] currentContext]) : (v29 = context), (v31 = -[GLKTextureTXR initWithTexture:API:options:error:]([GLKTextureTXR alloc], "initWithTexture:API:options:error:", v22, objc_msgSend(v29, "API"), options, error)) != 0))
  {
    v32 = v31;
    [(GLKTextureTXR *)v31 setLabel:name];
    v33 = [self lockAndSwitchContext:lock glContext:context];
    v28 = [GLKTextureLoader _textureWithTextureTXR:v32 error:error];
    [self unlockAndRestoreContext:lock glContext:v33];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)commonTextureWithCGImage:(CGImage *)image options:(id)options error:(id *)error lock:(id)lock glContext:(id)context
{
  if (image)
  {
    v11 = [[GLKTexture alloc] initWithCGImage:image forceCubeMap:0 wasCubeMap:0 cubeMapIndex:0 options:options error:error];
    if (v11)
    {
      v12 = v11;
      v13 = [self lockAndSwitchContext:lock glContext:context];
      v14 = [GLKTextureLoader _textureWithTexture:v12 error:error];
      [self unlockAndRestoreContext:lock glContext:v13];

      return v14;
    }
  }

  else if (error)
  {
    *error = _GLKTextureErrorWithCodeAndErrorString(2, @"Invalid CGImage");
  }

  return 0;
}

+ (id)commonCubeMapWithContentsOfFiles:(id)files options:(id)options error:(id *)error lock:(id)lock glContext:(id)context
{
  if ([files count] == 6)
  {
    textures = 0;
    v13 = [self lockAndSwitchContext:lock glContext:context];
    glGenTextures(1, &textures);
    [self unlockAndRestoreContext:lock glContext:v13];
    if (![files count])
    {
      v23 = [self lockAndSwitchContext:lock glContext:context];
LABEL_42:
      v24 = 0;
LABEL_43:
      [self unlockAndRestoreContext:lock glContext:v23];
      return v24;
    }

    v14 = 0;
    v33 = 0;
    v34 = 0;
    target = 3553;
    while (1)
    {
      relativeString = [files objectAtIndex:v14];
      objc_opt_class();
      v16 = relativeString;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:relativeString];
        }

        else
        {
          v16 = 0;
        }
      }

      if (([v16 checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        if (!error)
        {
          return 0;
        }

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(v16, "lastPathComponent")];
        v26 = 0;
LABEL_27:
        v27 = _GLKTextureErrorWithCodeAndErrorString(v26, v25);
        result = 0;
        *error = v27;
        return result;
      }

      v36 = 0;
      v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v16 options:1 error:&v36];
      if (!v17)
      {
        v29 = v34;
        if (error)
        {
          v30 = MEMORY[0x277CCACA8];
          if (v36)
          {
            localizedDescription = [v36 localizedDescription];
          }

          else
          {
            localizedDescription = &stru_284B44600;
          }

          *error = _GLKTextureErrorWithCodeAndErrorString(1, [v30 stringWithFormat:@"Invalid NSData for face %d, %@", v14, localizedDescription, target]);
        }

        goto LABEL_41;
      }

      v18 = v17;
      v35 = 0;
      v19 = [[GLKTexture alloc] initWithData:v17 forceCubeMap:1 wasCubeMap:&v35 cubeMapIndex:v14 options:options error:error];

      if (!v19)
      {
        goto LABEL_38;
      }

      if ([(GLKTexture *)v19 dataCategory]== 5 && v35 == 1)
      {

        if (error)
        {
          *error = _GLKTextureErrorWithCodeAndErrorString(5, @"PVR atlas unsupported");
        }

LABEL_38:
        v29 = v34;
LABEL_41:
        v23 = [self lockAndSwitchContext:lock glContext:context];
        glDeleteTextures(1, &textures);

        goto LABEL_42;
      }

      if (!v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          relativeString = [relativeString relativeString];
LABEL_17:
          [(GLKTexture *)v19 setLabel:relativeString];
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v20 = [self lockAndSwitchContext:lock glContext:context];
      v21 = [(GLKTexture *)v19 uploadToGLTexture:textures error:error];
      [self unlockAndRestoreContext:lock glContext:v20];
      if (!v21)
      {

        goto LABEL_38;
      }

      if (!v14)
      {
        v22 = [GLKTextureInfo alloc];
        v34 = [(GLKTextureInfo *)v22 initWithTexture:v19 textureName:textures];
        HIDWORD(v33) = [(GLKTexture *)v19 dataCategory];
        LOBYTE(v33) = [(GLKTexture *)v19 isMipmapped];
        LODWORD(target) = [(GLKTexture *)v19 bindTarget];
        HIDWORD(target) = [(GLKTexture *)v19 numMipMapLevels];
      }

      if ([files count] <= ++v14)
      {
        v23 = [self lockAndSwitchContext:lock glContext:context];
        if (((HIDWORD(v33) != 5) & v33) == 1)
        {
          v24 = v34;
          if (HIDWORD(target) == 1)
          {
            glGenerateMipmap(target);
          }
        }

        else
        {
          v24 = v34;
        }

        goto LABEL_43;
      }
    }
  }

  if (error)
  {
    v25 = @"Invalid number of files";
    v26 = 6;
    goto LABEL_27;
  }

  return 0;
}

+ (id)commonCubeMapWithContentsOfURL:(id)l options:(id)options error:(id *)error lock:(id)lock glContext:(id)context
{
  if (![l isFileURL] || (objc_msgSend(l, "checkResourceIsReachableAndReturnError:", 0) & 1) != 0)
  {
    textures = 0;
    v13 = [self lockAndSwitchContext:lock glContext:context];
    glGenTextures(1, &textures);
    [self unlockAndRestoreContext:lock glContext:v13];
    v63 = 0;
    v62 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:l options:1 error:&v62];
    if (v14)
    {
      v15 = v14;
      v16 = [[GLKTexture alloc] initWithData:v14 forceCubeMap:1 wasCubeMap:&v63 cubeMapIndex:0 options:0 error:error];

      if (!v16)
      {
LABEL_19:
        v19 = [self lockAndSwitchContext:lock glContext:context];
        v18 = 0;
LABEL_20:
        glDeleteTextures(1, &textures);

        goto LABEL_21;
      }

      if ([(GLKTexture *)v16 dataCategory]== 5)
      {
        if (v63)
        {
          v17 = [self lockAndSwitchContext:lock glContext:context];
          v18 = [GLKTextureLoader _textureWithTexture:v16 error:error];
          [self unlockAndRestoreContext:lock glContext:v17];

          v19 = [self lockAndSwitchContext:lock glContext:context];
          if (v18)
          {
LABEL_22:
            [self unlockAndRestoreContext:lock glContext:v19];
            return v18;
          }

          goto LABEL_20;
        }

        if (error)
        {
          *error = _GLKTextureErrorWithCodeAndErrorString(11, @"PVR file does not contain cubemap data");
        }

        goto LABEL_19;
      }

      if ([(GLKTexture *)v16 dataCategory]== 5)
      {

        v19 = [self lockAndSwitchContext:lock glContext:context];
LABEL_21:
        v18 = 0;
        goto LABEL_22;
      }

      width = [(GLKTexture *)v16 width];
      v26 = 3 * [(GLKTexture *)v16 height];
      height = [(GLKTexture *)v16 height];
      v56 = 6 * [(GLKTexture *)v16 width];
      v59 = width;
      if (width != 2 * v26 && height != v56)
      {
        goto LABEL_25;
      }

      v57 = 2 * v26;
      if (width == 2 * v26)
      {
        height2 = [(GLKTexture *)v16 height];
        rowBytes = [(GLKTexture *)v16 rowBytes]/ 6uLL;
      }

      else
      {
        if (height != v56)
        {
          goto LABEL_25;
        }

        height2 = [(GLKTexture *)v16 width];
        rowBytes = [(GLKTexture *)v16 rowBytes];
      }

      if (rowBytes && height2)
      {
        v50 = height;
        optionsCopy = options;
        errorCopy = error;
        contextCopy = context;
        v60 = v16;
        bytes = [(NSData *)[(GLKTexture *)v16 imageData] bytes];
        v34 = 0;
        v49 = 0;
        isMipmapped = 0;
        v46 = 0;
        v35 = rowBytes;
        size = rowBytes * height2;
        v52 = rowBytes;
        v36 = 6 * rowBytes;
        bindTarget = 3553;
        v51 = 1;
        while (1)
        {
          if (v59 == v57)
          {
            bytes = ([(NSData *)[(GLKTexture *)v60 imageData] bytes]+ v34 * v35);
            v37 = malloc_type_malloc(size, 0x100004077774924uLL);
            v38 = v37;
            v39 = height2;
            if (height2 >= 1)
            {
              v40 = v37;
              do
              {
                memcpy(v40, bytes, v35);
                bytes += v36;
                v40 += v35;
                --v39;
              }

              while (v39);
            }

            v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v38 length:size freeWhenDone:1];
          }

          else if (v50 == v56)
          {
            v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:bytes length:size freeWhenDone:0];
            bytes += size;
          }

          else
          {
            v41 = 0;
          }

          v42 = [[GLKTexture alloc] initWithDecodedData:v41 width:height2 height:height2 rowBytes:v52 texture:v60 cubeMapIndex:v34 options:optionsCopy error:errorCopy];

          if (!v34)
          {
            -[GLKTexture setLabel:](v42, "setLabel:", [l relativeString]);
          }

          v43 = [self lockAndSwitchContext:lock glContext:contextCopy];
          v44 = [(GLKTexture *)v42 uploadToGLTexture:textures error:errorCopy];
          [self unlockAndRestoreContext:lock glContext:v43];
          if (!v44)
          {
            break;
          }

          if (!v34)
          {
            v45 = [GLKTextureInfo alloc];
            v49 = [(GLKTextureInfo *)v45 initWithTexture:v42 textureName:textures];
            isMipmapped = [(GLKTexture *)v42 isMipmapped];
            bindTarget = [(GLKTexture *)v42 bindTarget];
            HIDWORD(v46) = [(GLKTexture *)v42 dataCategory];
            LODWORD(v46) = [(GLKTexture *)v42 numMipMapLevels];
          }

          v51 = v34++ < 5;
          if (v34 == 6)
          {
            v28 = 0;
            goto LABEL_57;
          }
        }

        v28 = v51;
LABEL_57:
        v31 = bindTarget;
        v32 = HIDWORD(v46) == 5 || !isMipmapped || v46 != 1;
        context = contextCopy;
        v16 = v60;
        v18 = v49;
LABEL_33:

        v19 = [self lockAndSwitchContext:lock glContext:context];
        if (!v28)
        {
          if ((v32 & 1) == 0)
          {
            glGenerateMipmap(v31);
          }

          goto LABEL_22;
        }

        goto LABEL_20;
      }

LABEL_25:
      v18 = 0;
      v28 = 0;
      if (error)
      {
        *error = _GLKTextureErrorWithCodeAndErrorString(9, @"Invalid cube map dimensions");
      }

      v31 = 3553;
      v32 = 1;
      goto LABEL_33;
    }

    if (error)
    {
      v20 = MEMORY[0x277CCACA8];
      if (v62)
      {
        localizedDescription = [v62 localizedDescription];
      }

      else
      {
        localizedDescription = &stru_284B44600;
      }

      v22 = [v20 stringWithFormat:@"Invalid NSData, %@", localizedDescription];
      v23 = 1;
      goto LABEL_29;
    }

    return 0;
  }

  if (!error)
  {
    return 0;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(l, "lastPathComponent")];
  v23 = 0;
LABEL_29:
  v29 = _GLKTextureErrorWithCodeAndErrorString(v23, v22);
  result = 0;
  *error = v29;
  return result;
}

+ (GLKTextureInfo)textureWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

    return [self textureWithContentsOfURL:v9 options:options error:outError];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)textureWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {

    return [self commonTextureWithContentsOfURL:url options:options error:outError lock:0 glContext:0];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)textureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {

    return [self commonTextureWithName:name scaleFactor:bundle bundle:options options:outError error:0 lock:0 glContext:scaleFactor];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)textureWithContentsOfData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {

    return [self commonTextureWithContentsOfData:data options:options error:outError lock:0 glContext:0];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)textureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {

    return [self commonTextureWithCGImage:cgImage options:options error:outError lock:0 glContext:0];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)cubeMapWithContentsOfFiles:(NSArray *)paths options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {

    return [self commonCubeMapWithContentsOfFiles:paths options:options error:outError lock:0 glContext:0];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)cubeMapWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

    return [GLKTextureLoader cubeMapWithContentsOfURL:v8 options:options error:outError];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

+ (GLKTextureInfo)cubeMapWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {

    return [GLKTextureLoader commonCubeMapWithContentsOfURL:url options:options error:outError lock:0 glContext:0];
  }

  else
  {
    if (outError)
    {
      *outError = _GLKTextureErrorWithCodeAndErrorString(17, @"Invalid EAGL context");
    }

    return 0;
  }
}

- (void)textureWithContentsOfFile:(NSString *)path options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

  [(GLKTextureLoader *)self textureWithContentsOfURL:v10 options:options queue:queue completionHandler:block];
}

- (void)textureWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  if (queue)
  {
    v10 = queue;
  }

  else
  {
    v10 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v10);
  global_queue = dispatch_get_global_queue(-2, 0);
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 3221225472;
  blocka[2] = __77__GLKTextureLoader_textureWithContentsOfURL_options_queue_completionHandler___block_invoke;
  blocka[3] = &unk_278A580A8;
  blocka[4] = url;
  blocka[5] = options;
  blocka[6] = self;
  blocka[7] = v10;
  blocka[8] = block;
  dispatch_async(global_queue, blocka);
}

void __77__GLKTextureLoader_textureWithContentsOfURL_options_queue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = +[GLKTextureLoader commonTextureWithContentsOfURL:options:error:lock:glContext:](GLKTextureLoader, "commonTextureWithContentsOfURL:options:error:lock:glContext:", *(a1 + 32), *(a1 + 40), &v4, [*(a1 + 48) nsLock], objc_msgSend(*(a1 + 48), "glContext"));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__GLKTextureLoader_textureWithContentsOfURL_options_queue_completionHandler___block_invoke_2;
  block[3] = &unk_278A58080;
  block[4] = v2;
  block[5] = v4;
  dispatch_async(*(a1 + 56), block);
}

void __77__GLKTextureLoader_textureWithContentsOfURL_options_queue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  dispatch_release(v4);
}

- (void)textureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  if (queue)
  {
    v14 = queue;
  }

  else
  {
    v14 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v14);
  global_queue = dispatch_get_global_queue(-2, 0);
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 3221225472;
  blocka[2] = __87__GLKTextureLoader_textureWithName_scaleFactor_bundle_options_queue_completionHandler___block_invoke;
  blocka[3] = &unk_278A580D0;
  *&blocka[10] = scaleFactor;
  blocka[4] = name;
  blocka[5] = bundle;
  blocka[6] = options;
  blocka[7] = self;
  blocka[8] = v14;
  blocka[9] = block;
  dispatch_async(global_queue, blocka);
}

void __87__GLKTextureLoader_textureWithName_scaleFactor_bundle_options_queue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = +[GLKTextureLoader commonTextureWithName:scaleFactor:bundle:options:error:lock:glContext:](GLKTextureLoader, "commonTextureWithName:scaleFactor:bundle:options:error:lock:glContext:", *(a1 + 32), *(a1 + 40), *(a1 + 48), &v4, [*(a1 + 56) nsLock], objc_msgSend(*(a1 + 56), "glContext"), *(a1 + 80));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__GLKTextureLoader_textureWithName_scaleFactor_bundle_options_queue_completionHandler___block_invoke_2;
  block[3] = &unk_278A58080;
  block[4] = v2;
  block[5] = v4;
  dispatch_async(*(a1 + 64), block);
}

void __87__GLKTextureLoader_textureWithName_scaleFactor_bundle_options_queue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  dispatch_release(v4);
}

- (void)textureWithContentsOfData:(NSData *)data options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  if (queue)
  {
    v10 = queue;
  }

  else
  {
    v10 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v10);
  global_queue = dispatch_get_global_queue(-2, 0);
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 3221225472;
  blocka[2] = __78__GLKTextureLoader_textureWithContentsOfData_options_queue_completionHandler___block_invoke;
  blocka[3] = &unk_278A580A8;
  blocka[4] = data;
  blocka[5] = options;
  blocka[6] = self;
  blocka[7] = v10;
  blocka[8] = block;
  dispatch_async(global_queue, blocka);
}

void __78__GLKTextureLoader_textureWithContentsOfData_options_queue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = +[GLKTextureLoader commonTextureWithContentsOfData:options:error:lock:glContext:](GLKTextureLoader, "commonTextureWithContentsOfData:options:error:lock:glContext:", *(a1 + 32), *(a1 + 40), &v4, [*(a1 + 48) nsLock], objc_msgSend(*(a1 + 48), "glContext"));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__GLKTextureLoader_textureWithContentsOfData_options_queue_completionHandler___block_invoke_2;
  block[3] = &unk_278A58080;
  block[4] = v2;
  block[5] = v4;
  dispatch_async(*(a1 + 56), block);
}

void __78__GLKTextureLoader_textureWithContentsOfData_options_queue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  dispatch_release(v4);
}

- (void)textureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  if (queue)
  {
    v10 = queue;
  }

  else
  {
    v10 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v10);
  global_queue = dispatch_get_global_queue(-2, 0);
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 3221225472;
  blocka[2] = __71__GLKTextureLoader_textureWithCGImage_options_queue_completionHandler___block_invoke;
  blocka[3] = &unk_278A580F8;
  blocka[7] = block;
  blocka[8] = cgImage;
  blocka[4] = options;
  blocka[5] = self;
  blocka[6] = v10;
  dispatch_async(global_queue, blocka);
}

void __71__GLKTextureLoader_textureWithCGImage_options_queue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = +[GLKTextureLoader commonTextureWithCGImage:options:error:lock:glContext:](GLKTextureLoader, "commonTextureWithCGImage:options:error:lock:glContext:", *(a1 + 64), *(a1 + 32), &v4, [*(a1 + 40) nsLock], objc_msgSend(*(a1 + 40), "glContext"));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__GLKTextureLoader_textureWithCGImage_options_queue_completionHandler___block_invoke_2;
  block[3] = &unk_278A58080;
  block[4] = v2;
  block[5] = v4;
  dispatch_async(*(a1 + 48), block);
}

void __71__GLKTextureLoader_textureWithCGImage_options_queue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  dispatch_release(v4);
}

- (void)cubeMapWithContentsOfFiles:(NSArray *)paths options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  if (queue)
  {
    v10 = queue;
  }

  else
  {
    v10 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v10);
  global_queue = dispatch_get_global_queue(-2, 0);
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 3221225472;
  blocka[2] = __79__GLKTextureLoader_cubeMapWithContentsOfFiles_options_queue_completionHandler___block_invoke;
  blocka[3] = &unk_278A580A8;
  blocka[4] = paths;
  blocka[5] = options;
  blocka[6] = self;
  blocka[7] = v10;
  blocka[8] = block;
  dispatch_async(global_queue, blocka);
}

void __79__GLKTextureLoader_cubeMapWithContentsOfFiles_options_queue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = +[GLKTextureLoader commonCubeMapWithContentsOfFiles:options:error:lock:glContext:](GLKTextureLoader, "commonCubeMapWithContentsOfFiles:options:error:lock:glContext:", *(a1 + 32), *(a1 + 40), &v4, [*(a1 + 48) nsLock], objc_msgSend(*(a1 + 48), "glContext"));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__GLKTextureLoader_cubeMapWithContentsOfFiles_options_queue_completionHandler___block_invoke_2;
  block[3] = &unk_278A58080;
  block[4] = v2;
  block[5] = v4;
  dispatch_async(*(a1 + 56), block);
}

void __79__GLKTextureLoader_cubeMapWithContentsOfFiles_options_queue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  dispatch_release(v4);
}

- (void)cubeMapWithContentsOfFile:(NSString *)path options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

  [(GLKTextureLoader *)self cubeMapWithContentsOfURL:v10 options:options queue:queue completionHandler:block];
}

- (void)cubeMapWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options queue:(dispatch_queue_t)queue completionHandler:(GLKTextureLoaderCallback)block
{
  if (queue)
  {
    v10 = queue;
  }

  else
  {
    v10 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v10);
  global_queue = dispatch_get_global_queue(-2, 0);
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 3221225472;
  blocka[2] = __77__GLKTextureLoader_cubeMapWithContentsOfURL_options_queue_completionHandler___block_invoke;
  blocka[3] = &unk_278A580A8;
  blocka[4] = url;
  blocka[5] = options;
  blocka[6] = self;
  blocka[7] = v10;
  blocka[8] = block;
  dispatch_async(global_queue, blocka);
}

void __77__GLKTextureLoader_cubeMapWithContentsOfURL_options_queue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = +[GLKTextureLoader commonCubeMapWithContentsOfURL:options:error:lock:glContext:](GLKTextureLoader, "commonCubeMapWithContentsOfURL:options:error:lock:glContext:", *(a1 + 32), *(a1 + 40), &v4, [*(a1 + 48) nsLock], objc_msgSend(*(a1 + 48), "glContext"));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__GLKTextureLoader_cubeMapWithContentsOfURL_options_queue_completionHandler___block_invoke_2;
  block[3] = &unk_278A58080;
  block[4] = v2;
  block[5] = v4;
  dispatch_async(*(a1 + 56), block);
}

void __77__GLKTextureLoader_cubeMapWithContentsOfURL_options_queue_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  dispatch_release(v4);
}

@end