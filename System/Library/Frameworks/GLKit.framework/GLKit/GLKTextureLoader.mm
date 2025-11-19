@interface GLKTextureLoader
+ (GLKTextureInfo)cubeMapWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)cubeMapWithContentsOfFiles:(NSArray *)paths options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)cubeMapWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithContentsOfData:(NSData *)data options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithContentsOfURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)outError;
+ (GLKTextureInfo)textureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)outError;
+ (id)_textureWithTexture:(id)a3 error:(id *)a4;
+ (id)_textureWithTextureTXR:(id)a3 error:(id *)a4;
+ (id)commonCubeMapWithContentsOfFiles:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7;
+ (id)commonCubeMapWithContentsOfURL:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7;
+ (id)commonTextureWithCGImage:(CGImage *)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7;
+ (id)commonTextureWithContentsOfData:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7;
+ (id)commonTextureWithContentsOfURL:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7;
+ (id)commonTextureWithName:(id)a3 scaleFactor:(double)a4 bundle:(id)a5 options:(id)a6 error:(id *)a7 lock:(id)a8 glContext:(id)a9;
+ (id)lockAndSwitchContext:(id)a3 glContext:(id)a4;
+ (void)unlockAndRestoreContext:(id)a3 glContext:(id)a4;
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

+ (id)lockAndSwitchContext:(id)a3 glContext:(id)a4
{
  [a3 lock];
  if (!a4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CD9388] currentContext];
  [MEMORY[0x277CD9388] setCurrentContext:a4];
  return v5;
}

+ (void)unlockAndRestoreContext:(id)a3 glContext:(id)a4
{
  if (a3)
  {
    glFlush();
    [MEMORY[0x277CD9388] setCurrentContext:a4];
  }

  [a3 unlock];
}

+ (id)_textureWithTexture:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  textures = 0;
  glGenTextures(1, &textures);
  if ([a3 uploadToGLTexture:textures error:a4])
  {
    if ([a3 dataCategory] != 5 && objc_msgSend(a3, "isMipmapped") && objc_msgSend(a3, "numMipMapLevels") == 1)
    {
      glGenerateMipmap([a3 bindTarget]);
    }

    v6 = [GLKTextureInfo alloc];
    return [(GLKTextureInfo *)v6 initWithTexture:a3 textureName:textures];
  }

  else
  {
    glDeleteTextures(1, &textures);
    return 0;
  }
}

+ (id)_textureWithTextureTXR:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  textures = 0;
  glGenTextures(1, &textures);
  if ([a3 uploadToGLTexture:textures error:a4])
  {
    v6 = [GLKTextureInfo alloc];
    return [(GLKTextureInfo *)v6 initWithTextureTXR:a3 textureName:textures];
  }

  else
  {
    glDeleteTextures(1, &textures);
    return 0;
  }
}

+ (id)commonTextureWithContentsOfData:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7
{
  if (a3)
  {
    v11 = [[GLKTexture alloc] initWithData:a3 forceCubeMap:0 wasCubeMap:0 cubeMapIndex:0 options:a4 error:a5];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 lockAndSwitchContext:a6 glContext:a7];
      v14 = [GLKTextureLoader _textureWithTexture:v12 error:a5];
      [a1 unlockAndRestoreContext:a6 glContext:v13];

      return v14;
    }
  }

  else if (a5)
  {
    *a5 = _GLKTextureErrorWithCodeAndErrorString(1, @"Invalid NSData");
  }

  return 0;
}

+ (id)commonTextureWithContentsOfURL:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7
{
  if ([a3 isFileURL] && (objc_msgSend(a3, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
  {
    if (a5)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(a3, "lastPathComponent")];
      v15 = 0;
      goto LABEL_11;
    }

    return 0;
  }

  v20 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:a3 options:1 error:&v20];
  if (v20)
  {
    if (a5)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid NSData, %@", objc_msgSend(v20, "localizedDescription")];
      v15 = 1;
LABEL_11:
      v18 = 0;
      *a5 = _GLKTextureErrorWithCodeAndErrorString(v15, v14);
      return v18;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v16 = [[GLKTexture alloc] initWithData:v13 forceCubeMap:0 wasCubeMap:0 cubeMapIndex:0 options:a4 error:a5];

  if (!v16)
  {
    return 0;
  }

  -[GLKTexture setLabel:](v16, "setLabel:", [a3 relativeString]);
  v17 = [a1 lockAndSwitchContext:a6 glContext:a7];
  v18 = [GLKTextureLoader _textureWithTexture:v16 error:a5];
  [a1 unlockAndRestoreContext:a6 glContext:v17];

  return v18;
}

+ (id)commonTextureWithName:(id)a3 scaleFactor:(double)a4 bundle:(id)a5 options:(id)a6 error:(id *)a7 lock:(id)a8 glContext:(id)a9
{
  v16 = [MEMORY[0x277D02670] defaultUICatalogForBundle:a5];
  if (!v16)
  {
    if (a7)
    {
      v27 = @"Could not get asset catalog from supplied bundle";
LABEL_12:
      v28 = 0;
      *a7 = _GLKTextureErrorWithCodeAndErrorString(0, v27);
      return v28;
    }

    return 0;
  }

  v17 = v16;
  v18 = objc_alloc_init(MEMORY[0x277D71428]);
  v19 = [v17 namedTextureWithName:a3 scaleFactor:a4];
  if (!v19)
  {
    if (a7)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find texture named %@ in supplied bundle", a3];
      goto LABEL_12;
    }

    return 0;
  }

  v20 = v19;
  v21 = objc_autoreleasePoolPush();
  v22 = [v20 textureWithBufferAllocator:v18];
  v23 = v22;
  objc_autoreleasePoolPop(v21);
  v24 = [v22 pixelFormat];
  if (v24 > 151)
  {
    if (v24 == 152)
    {
      if (a7)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC7_RGBAUnorm";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (v24 == 153)
    {
      if (a7)
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
    if (v24 == 150)
    {
      if (a7)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC6H_RGBFloat";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (v24 == 151)
    {
      if (a7)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = "BC6H_RGBUfloat";
LABEL_24:
        *a7 = _GLKTextureErrorWithCodeAndErrorString(7, [v25 stringWithFormat:@"Texture was created with unsupported pixel format: %s", v26]);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  if (v22 && (!a9 ? (v29 = [MEMORY[0x277CD9388] currentContext]) : (v29 = a9), (v31 = -[GLKTextureTXR initWithTexture:API:options:error:]([GLKTextureTXR alloc], "initWithTexture:API:options:error:", v22, objc_msgSend(v29, "API"), a6, a7)) != 0))
  {
    v32 = v31;
    [(GLKTextureTXR *)v31 setLabel:a3];
    v33 = [a1 lockAndSwitchContext:a8 glContext:a9];
    v28 = [GLKTextureLoader _textureWithTextureTXR:v32 error:a7];
    [a1 unlockAndRestoreContext:a8 glContext:v33];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)commonTextureWithCGImage:(CGImage *)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7
{
  if (a3)
  {
    v11 = [[GLKTexture alloc] initWithCGImage:a3 forceCubeMap:0 wasCubeMap:0 cubeMapIndex:0 options:a4 error:a5];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 lockAndSwitchContext:a6 glContext:a7];
      v14 = [GLKTextureLoader _textureWithTexture:v12 error:a5];
      [a1 unlockAndRestoreContext:a6 glContext:v13];

      return v14;
    }
  }

  else if (a5)
  {
    *a5 = _GLKTextureErrorWithCodeAndErrorString(2, @"Invalid CGImage");
  }

  return 0;
}

+ (id)commonCubeMapWithContentsOfFiles:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7
{
  if ([a3 count] == 6)
  {
    textures = 0;
    v13 = [a1 lockAndSwitchContext:a6 glContext:a7];
    glGenTextures(1, &textures);
    [a1 unlockAndRestoreContext:a6 glContext:v13];
    if (![a3 count])
    {
      v23 = [a1 lockAndSwitchContext:a6 glContext:a7];
LABEL_42:
      v24 = 0;
LABEL_43:
      [a1 unlockAndRestoreContext:a6 glContext:v23];
      return v24;
    }

    v14 = 0;
    v33 = 0;
    v34 = 0;
    target = 3553;
    while (1)
    {
      v15 = [a3 objectAtIndex:v14];
      objc_opt_class();
      v16 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
        }

        else
        {
          v16 = 0;
        }
      }

      if (([v16 checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        if (!a5)
        {
          return 0;
        }

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(v16, "lastPathComponent")];
        v26 = 0;
LABEL_27:
        v27 = _GLKTextureErrorWithCodeAndErrorString(v26, v25);
        result = 0;
        *a5 = v27;
        return result;
      }

      v36 = 0;
      v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v16 options:1 error:&v36];
      if (!v17)
      {
        v29 = v34;
        if (a5)
        {
          v30 = MEMORY[0x277CCACA8];
          if (v36)
          {
            v31 = [v36 localizedDescription];
          }

          else
          {
            v31 = &stru_284B44600;
          }

          *a5 = _GLKTextureErrorWithCodeAndErrorString(1, [v30 stringWithFormat:@"Invalid NSData for face %d, %@", v14, v31, target]);
        }

        goto LABEL_41;
      }

      v18 = v17;
      v35 = 0;
      v19 = [[GLKTexture alloc] initWithData:v17 forceCubeMap:1 wasCubeMap:&v35 cubeMapIndex:v14 options:a4 error:a5];

      if (!v19)
      {
        goto LABEL_38;
      }

      if ([(GLKTexture *)v19 dataCategory]== 5 && v35 == 1)
      {

        if (a5)
        {
          *a5 = _GLKTextureErrorWithCodeAndErrorString(5, @"PVR atlas unsupported");
        }

LABEL_38:
        v29 = v34;
LABEL_41:
        v23 = [a1 lockAndSwitchContext:a6 glContext:a7];
        glDeleteTextures(1, &textures);

        goto LABEL_42;
      }

      if (!v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v15 relativeString];
LABEL_17:
          [(GLKTexture *)v19 setLabel:v15];
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v20 = [a1 lockAndSwitchContext:a6 glContext:a7];
      v21 = [(GLKTexture *)v19 uploadToGLTexture:textures error:a5];
      [a1 unlockAndRestoreContext:a6 glContext:v20];
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

      if ([a3 count] <= ++v14)
      {
        v23 = [a1 lockAndSwitchContext:a6 glContext:a7];
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

  if (a5)
  {
    v25 = @"Invalid number of files";
    v26 = 6;
    goto LABEL_27;
  }

  return 0;
}

+ (id)commonCubeMapWithContentsOfURL:(id)a3 options:(id)a4 error:(id *)a5 lock:(id)a6 glContext:(id)a7
{
  if (![a3 isFileURL] || (objc_msgSend(a3, "checkResourceIsReachableAndReturnError:", 0) & 1) != 0)
  {
    textures = 0;
    v13 = [a1 lockAndSwitchContext:a6 glContext:a7];
    glGenTextures(1, &textures);
    [a1 unlockAndRestoreContext:a6 glContext:v13];
    v63 = 0;
    v62 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:a3 options:1 error:&v62];
    if (v14)
    {
      v15 = v14;
      v16 = [[GLKTexture alloc] initWithData:v14 forceCubeMap:1 wasCubeMap:&v63 cubeMapIndex:0 options:0 error:a5];

      if (!v16)
      {
LABEL_19:
        v19 = [a1 lockAndSwitchContext:a6 glContext:a7];
        v18 = 0;
LABEL_20:
        glDeleteTextures(1, &textures);

        goto LABEL_21;
      }

      if ([(GLKTexture *)v16 dataCategory]== 5)
      {
        if (v63)
        {
          v17 = [a1 lockAndSwitchContext:a6 glContext:a7];
          v18 = [GLKTextureLoader _textureWithTexture:v16 error:a5];
          [a1 unlockAndRestoreContext:a6 glContext:v17];

          v19 = [a1 lockAndSwitchContext:a6 glContext:a7];
          if (v18)
          {
LABEL_22:
            [a1 unlockAndRestoreContext:a6 glContext:v19];
            return v18;
          }

          goto LABEL_20;
        }

        if (a5)
        {
          *a5 = _GLKTextureErrorWithCodeAndErrorString(11, @"PVR file does not contain cubemap data");
        }

        goto LABEL_19;
      }

      if ([(GLKTexture *)v16 dataCategory]== 5)
      {

        v19 = [a1 lockAndSwitchContext:a6 glContext:a7];
LABEL_21:
        v18 = 0;
        goto LABEL_22;
      }

      v25 = [(GLKTexture *)v16 width];
      v26 = 3 * [(GLKTexture *)v16 height];
      v27 = [(GLKTexture *)v16 height];
      v56 = 6 * [(GLKTexture *)v16 width];
      v59 = v25;
      if (v25 != 2 * v26 && v27 != v56)
      {
        goto LABEL_25;
      }

      v57 = 2 * v26;
      if (v25 == 2 * v26)
      {
        v61 = [(GLKTexture *)v16 height];
        v30 = [(GLKTexture *)v16 rowBytes]/ 6uLL;
      }

      else
      {
        if (v27 != v56)
        {
          goto LABEL_25;
        }

        v61 = [(GLKTexture *)v16 width];
        v30 = [(GLKTexture *)v16 rowBytes];
      }

      if (v30 && v61)
      {
        v50 = v27;
        v53 = a4;
        v54 = a5;
        v55 = a7;
        v60 = v16;
        v33 = [(NSData *)[(GLKTexture *)v16 imageData] bytes];
        v34 = 0;
        v49 = 0;
        v47 = 0;
        v46 = 0;
        v35 = v30;
        size = v30 * v61;
        v52 = v30;
        v36 = 6 * v30;
        v48 = 3553;
        v51 = 1;
        while (1)
        {
          if (v59 == v57)
          {
            v33 = ([(NSData *)[(GLKTexture *)v60 imageData] bytes]+ v34 * v35);
            v37 = malloc_type_malloc(size, 0x100004077774924uLL);
            v38 = v37;
            v39 = v61;
            if (v61 >= 1)
            {
              v40 = v37;
              do
              {
                memcpy(v40, v33, v35);
                v33 += v36;
                v40 += v35;
                --v39;
              }

              while (v39);
            }

            v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v38 length:size freeWhenDone:1];
          }

          else if (v50 == v56)
          {
            v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v33 length:size freeWhenDone:0];
            v33 += size;
          }

          else
          {
            v41 = 0;
          }

          v42 = [[GLKTexture alloc] initWithDecodedData:v41 width:v61 height:v61 rowBytes:v52 texture:v60 cubeMapIndex:v34 options:v53 error:v54];

          if (!v34)
          {
            -[GLKTexture setLabel:](v42, "setLabel:", [a3 relativeString]);
          }

          v43 = [a1 lockAndSwitchContext:a6 glContext:v55];
          v44 = [(GLKTexture *)v42 uploadToGLTexture:textures error:v54];
          [a1 unlockAndRestoreContext:a6 glContext:v43];
          if (!v44)
          {
            break;
          }

          if (!v34)
          {
            v45 = [GLKTextureInfo alloc];
            v49 = [(GLKTextureInfo *)v45 initWithTexture:v42 textureName:textures];
            v47 = [(GLKTexture *)v42 isMipmapped];
            v48 = [(GLKTexture *)v42 bindTarget];
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
        v31 = v48;
        v32 = HIDWORD(v46) == 5 || !v47 || v46 != 1;
        a7 = v55;
        v16 = v60;
        v18 = v49;
LABEL_33:

        v19 = [a1 lockAndSwitchContext:a6 glContext:a7];
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
      if (a5)
      {
        *a5 = _GLKTextureErrorWithCodeAndErrorString(9, @"Invalid cube map dimensions");
      }

      v31 = 3553;
      v32 = 1;
      goto LABEL_33;
    }

    if (a5)
    {
      v20 = MEMORY[0x277CCACA8];
      if (v62)
      {
        v21 = [v62 localizedDescription];
      }

      else
      {
        v21 = &stru_284B44600;
      }

      v22 = [v20 stringWithFormat:@"Invalid NSData, %@", v21];
      v23 = 1;
      goto LABEL_29;
    }

    return 0;
  }

  if (!a5)
  {
    return 0;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(a3, "lastPathComponent")];
  v23 = 0;
LABEL_29:
  v29 = _GLKTextureErrorWithCodeAndErrorString(v23, v22);
  result = 0;
  *a5 = v29;
  return result;
}

+ (GLKTextureInfo)textureWithContentsOfFile:(NSString *)path options:(NSDictionary *)options error:(NSError *)outError
{
  if ([MEMORY[0x277CD9388] currentContext])
  {
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

    return [a1 textureWithContentsOfURL:v9 options:options error:outError];
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

    return [a1 commonTextureWithContentsOfURL:url options:options error:outError lock:0 glContext:0];
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

    return [a1 commonTextureWithName:name scaleFactor:bundle bundle:options options:outError error:0 lock:0 glContext:scaleFactor];
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

    return [a1 commonTextureWithContentsOfData:data options:options error:outError lock:0 glContext:0];
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

    return [a1 commonTextureWithCGImage:cgImage options:options error:outError lock:0 glContext:0];
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

    return [a1 commonCubeMapWithContentsOfFiles:paths options:options error:outError lock:0 glContext:0];
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