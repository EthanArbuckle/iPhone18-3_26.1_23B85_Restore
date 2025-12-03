@interface EAGLContext
+ (BOOL)setCurrentContext:(EAGLContext *)context;
+ (EAGLContext)currentContext;
- (BOOL)attachImage:(unint64_t)image toCoreSurface:(__IOSurface *)surface invertedRender:(BOOL)render;
- (BOOL)isMultiThreaded;
- (BOOL)presentRenderbuffer:(NSUInteger)target;
- (BOOL)presentRenderbuffer:(NSUInteger)target afterMinimumDuration:(CFTimeInterval)duration;
- (BOOL)presentRenderbuffer:(NSUInteger)target atTime:(CFTimeInterval)presentationTime;
- (BOOL)renderbufferStorage:(NSUInteger)target fromDrawable:(id)drawable;
- (BOOL)texImageIOSurface:(__IOSurface *)surface target:(unint64_t)target internalFormat:(unint64_t)format width:(unsigned int)width height:(unsigned int)height format:(unint64_t)a8 type:(unint64_t)type plane:(unsigned int)self0 invert:(BOOL)self1;
- (EAGLContext)initWithAPI:(EAGLRenderingAPI)api sharegroup:(EAGLSharegroup *)sharegroup;
- (EAGLContext)initWithAPI:(unint64_t)i properties:(id)properties;
- (id)commonInitWithAPI:(unint64_t)i properties:(id)properties;
- (void)dealloc;
@end

@implementation EAGLContext

- (EAGLContext)initWithAPI:(EAGLRenderingAPI)api sharegroup:(EAGLSharegroup *)sharegroup
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (sharegroup)
  {
    [v7 setObject:sharegroup forKey:@"EAGLContextPropertySharegroup"];
  }

  v9 = [(EAGLContext *)self commonInitWithAPI:api properties:v8];

  return v9;
}

- (EAGLContext)initWithAPI:(unint64_t)i properties:(id)properties
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (!properties)
  {
    v10 = objc_autoreleasePoolPush();
    v14 = @"EAGLContextPropertySharedWithCompute";
    v15[0] = MEMORY[0x277CBEC28];
    v11 = -[EAGLContext commonInitWithAPI:properties:](self, "commonInitWithAPI:properties:", i, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1]);
    objc_autoreleasePoolPop(v10);
LABEL_7:
    v12 = *MEMORY[0x277D85DE8];
    return v11;
  }

  v7 = [objc_msgSend(properties objectForKey:{@"EAGLContextPropertyClientLabel", "intValue"}];
  if ((v7 - 1) >= 8)
  {
    if (v7)
    {

      v11 = 0;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:properties copyItems:0];
      [v13 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 1), @"EAGLContextPropertyClientLabel"}];
      v11 = [(EAGLContext *)self commonInitWithAPI:i properties:v13];
    }

    goto LABEL_7;
  }

  v8 = *MEMORY[0x277D85DE8];

  return [(EAGLContext *)self commonInitWithAPI:i properties:properties];
}

- (id)commonInitWithAPI:(unint64_t)i properties:(id)properties
{
  v21.receiver = self;
  v21.super_class = EAGLContext;
  v6 = [(EAGLContext *)&v21 init];
  if (!v6)
  {
    return v6;
  }

  v7 = [properties objectForKey:@"EAGLContextPropertySharegroup"];
  v8 = [objc_msgSend(properties objectForKey:{@"EAGLContextPropertySharedWithCompute", "BOOLValue"}];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      fprintf_l(*MEMORY[0x277D85DF8], 0, "%s: not a valid sharegroup\n", "[EAGLContext commonInitWithAPI:properties:]");
      goto LABEL_24;
    }

    v9 = v7;
  }

  else
  {
    v9 = [[EAGLSharegroup alloc] initWithAPI:i sharedWithCompute:v8];
  }

  v10 = v9;
  if (!v9 || [(EAGLSharegroup *)v9 APIs]!= i)
  {
    goto LABEL_24;
  }

  v11 = malloc_type_calloc(1uLL, 0x40E8uLL, 0x10A00409BC24E64uLL);
  v6->_private = v11;
  if (!v11)
  {

    goto LABEL_24;
  }

  v12 = 0;
  *(v11 + 1) = v10;
  *(v11 + 2) = i;
  *v11 = v6;
  *(v11 + 6) = 0;
  if (i - 1 <= 2)
  {
    v12 = dword_23A10F968[i - 1];
  }

  v13 = v10->_private;
  if (*(v13 + 2) != 1)
  {
    goto LABEL_29;
  }

  if (off_280BD5B90(v11 + 32, *(v13 + 2), *(v13 + 3), v11 + 40, v11 + 8328, v12))
  {
LABEL_24:

    return 0;
  }

  v14 = commonInitWithAPI_properties__EAGL_MTENGINE_FLAG;
  if (commonInitWithAPI_properties__EAGL_MTENGINE_FLAG == -1)
  {
    v15 = getenv("EAGL_MTENGINE_FLAG");
    v14 = (v15 || (v15 = getenv("ATF_GL_MTENGINE")) != 0) && *v15 != 48;
    commonInitWithAPI_properties__EAGL_MTENGINE_FLAG = v14;
  }

  if (v14)
  {
    v20 = 1;
    off_280BD5BB0(*(v6->_private + 4), 313, &v20);
  }

  v16 = gfxLinkedOSVersion();
  v20 = v16;
  off_280BD5BB0(*(v6->_private + 4), 701, &v20);
  if (v16 <= 2)
  {
    v19 = 1;
    off_280BD5BB0(*(v6->_private + 4), 995, &v19);
LABEL_27:
    v19 = 1;
    off_280BD5BB0(*(v6->_private + 4), 929, &v19);
    v18 = 1;
    off_280BD5BB0(*(v6->_private + 4), 928, &v18);
    goto LABEL_28;
  }

  if (v16 == 3)
  {
    goto LABEL_27;
  }

LABEL_28:
  v19 = v12 & 0x40;
  off_280BD5BB0(*(v6->_private + 4), 927, &v19);
  v20 = [objc_msgSend(properties objectForKey:{@"EAGLContextPropertyClientLabel", "intValue"}];
  off_280BD5BB0(*(v6->_private + 4), 703, &v20);
LABEL_29:
  LOBYTE(v20) = 0;
  if (eagl_dict_read_BOOL(properties, @"EAGLContextPropertyClientRetainRelease", &v20) && v20 == 1)
  {
    *(v6->_private + 6) |= 1u;
  }

  return v6;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    if (*(v3 + 4) && *(*(*(v3 + 1) + 8) + 8) == 1)
    {
      off_280BD5B98();
      v3 = self->_private;
    }

    *(v3 + 4) = 0;
    bzero(self->_private + 40, 0x2060uLL);
    bzero(self->_private + 8328, 0x2060uLL);
    v4 = self->_private;
    v5 = *(v4 + 1);
    if (v5)
    {

      v4 = self->_private;
      *(v4 + 1) = 0;
    }

    free(v4);
    self->_private = 0;
  }

  [(EAGLContext *)self setDebugLabel:0];
  v6.receiver = self;
  v6.super_class = EAGLContext;
  [(EAGLContext *)&v6 dealloc];
}

+ (BOOL)setCurrentContext:(EAGLContext *)context
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 240);
  if (context)
  {
    v5 = context->_private;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == v5)
  {
LABEL_13:
    LOBYTE(v6) = 1;
    return v6;
  }

  v6 = eagl_ctx_tls_set(v5);
  if (v6)
  {
    if (context && (*(context->_private + 24) & 1) == 0)
    {
      v7 = context;
    }

    if (v4)
    {
      v8 = *v4;
      if (*v4)
      {
        if ((*(v8[1] + 24) & 1) == 0)
        {
        }
      }
    }

    goto LABEL_13;
  }

  return v6;
}

+ (EAGLContext)currentContext
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 240);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isMultiThreaded
{
  v3 = 0;
  [(EAGLContext *)self getParameter:313 to:&v3];
  return v3 != 0;
}

- (BOOL)renderbufferStorage:(NSUInteger)target fromDrawable:(id)drawable
{
  v17 = 0;
  if (target != 36161)
  {
    goto LABEL_27;
  }

  if (!drawable)
  {
    v7 = 0;
LABEL_22:
    v12 = 32856;
    goto LABEL_23;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [drawable performSelector:sel_nativeWindow]) == 0)
  {
    fprintf_l(*MEMORY[0x277D85DF8], 0, "%s: invalid drawable\n");
    goto LABEL_27;
  }

  v7 = v6;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = [drawable performSelector:sel_drawableProperties];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  v10 = eagl_dict_read_BOOL(v8, @"EAGLDrawablePropertyRetained", &v17);
  v11 = [v9 objectForKey:@"EAGLDrawablePropertyColorFormat"];
  v12 = 32856;
  if (v11 != @"EAGLColorFormat8888" && v11)
  {
    if (v11 == @"EAGLColorFormat565")
    {
      v12 = 36194;
    }

    else if (v11 == @"EAGLColorFormatS8888")
    {
      v12 = 35907;
    }

    else if (v11 == @"EAGLColorFormatSRGB_XR10")
    {
      v12 = 37874;
    }

    else if (v11 == @"EAGLColorFormatRGBA_XR10_64BPP")
    {
      v12 = 35446;
    }

    else
    {
      if (v11 != @"EAGLColorFormatSRGBA_XR10_64BPP")
      {
        if (v11 == @"EAGLColorFormatSRGB_XR10_A8_2P")
        {
          v12 = 37881;
        }

        else
        {
          v12 = 32856;
        }

        if (((v11 == @"EAGLColorFormatSRGB_XR10_A8_2P") & v10) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      v12 = 35447;
    }
  }

  if ((v10 & 1) == 0)
  {
LABEL_35:
    fprintf_l(*MEMORY[0x277D85DF8], 0, "%s: invalid property values\n");
    goto LABEL_27;
  }

LABEL_23:
  v13 = self->_private;
  if (*(*(*(v13 + 1) + 8) + 8) != 1)
  {
LABEL_27:
    LOBYTE(v15) = 0;
    return v15;
  }

  v14 = v17;
  off_280BD5BE8(*(v13 + 4), 0, 0, 0);
  if (!drawable || (v15 = off_280BD5BE8(*(self->_private + 4), v7, v14, v12)) != 0)
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (BOOL)presentRenderbuffer:(NSUInteger)target
{
  v3 = self->_private;
  v4 = *(*(*(v3 + 1) + 8) + 8);
  if (v4 == 1)
  {
    off_280BD5BF0(*(v3 + 4), 0, target, 0.0);
  }

  return v4 == 1;
}

- (BOOL)presentRenderbuffer:(NSUInteger)target atTime:(CFTimeInterval)presentationTime
{
  v4 = self->_private;
  v5 = *(*(*(v4 + 1) + 8) + 8);
  if (v5 == 1)
  {
    off_280BD5BF0(*(v4 + 4), 0, target, presentationTime);
  }

  return v5 == 1;
}

- (BOOL)presentRenderbuffer:(NSUInteger)target afterMinimumDuration:(CFTimeInterval)duration
{
  v4 = self->_private;
  v5 = *(*(*(v4 + 1) + 8) + 8);
  if (v5 == 1)
  {
    off_280BD5BF0(*(v4 + 4), 1, target, duration);
  }

  return v5 == 1;
}

- (BOOL)attachImage:(unint64_t)image toCoreSurface:(__IOSurface *)surface invertedRender:(BOOL)render
{
  if (*(*(*(self->_private + 1) + 8) + 8) != 1)
  {
    return 0;
  }

  PixelFormat = IOSurfaceGetPixelFormat(surface);
  if (PixelFormat <= 1278555444)
  {
    if (PixelFormat <= 1093677111)
    {
      if (PixelFormat == 875836468)
      {
        if (image == 36161)
        {
          v11 = 32854;
        }

        else
        {
          v11 = 6408;
        }

        v12 = 32819;
        goto LABEL_33;
      }

      if (PixelFormat == 892679473)
      {
        goto LABEL_25;
      }
    }

    else
    {
      switch(PixelFormat)
      {
        case 1093677112:
          v12 = 5121;
          v11 = 6406;
          v10 = 6406;
          goto LABEL_39;
        case 1111970369:
          goto LABEL_19;
        case 1278226488:
          v12 = 5121;
          v11 = 6409;
          v10 = 6409;
LABEL_39:
          Width = IOSurfaceGetWidth(surface);
          BYTE4(v15) = render;
          LODWORD(v15) = 0;
          return [(EAGLContext *)self texImageIOSurface:surface target:image internalFormat:v11 width:Width height:IOSurfaceGetHeight(surface) format:v10 type:v12 plane:v15 invert:?];
      }
    }
  }

  else
  {
    if (PixelFormat <= 1395864161)
    {
      if (PixelFormat != 1278555445)
      {
        if (PixelFormat == 1278555701)
        {
          v10 = 6407;
          if (image == 36161)
          {
            v11 = 36194;
          }

          else
          {
            v11 = 6407;
          }

          v12 = 33635;
          goto LABEL_39;
        }

        if (PixelFormat == 1380401729)
        {
          v10 = 6408;
          if (image == 36161)
          {
            v11 = 32856;
          }

          else
          {
            v11 = 6408;
          }

          v12 = 33639;
          goto LABEL_39;
        }

        goto LABEL_40;
      }

LABEL_25:
      v10 = 6408;
      if (image == 36161)
      {
        v11 = 32855;
      }

      else
      {
        v11 = 6408;
      }

      v12 = 32820;
      goto LABEL_39;
    }

    if (PixelFormat == 1932866865 || PixelFormat == 1395995957)
    {
      goto LABEL_25;
    }

    if (PixelFormat == 1395864162)
    {
LABEL_19:
      if (image == 36161)
      {
        v11 = 32856;
      }

      else
      {
        v11 = 6408;
      }

      v12 = 33639;
LABEL_33:
      v10 = 32993;
      goto LABEL_39;
    }
  }

LABEL_40:
  fprintf_l(*MEMORY[0x277D85DF8], 0, "Unsupported IOSurface format: 0x%08x\n", PixelFormat);
  return 0;
}

- (BOOL)texImageIOSurface:(__IOSurface *)surface target:(unint64_t)target internalFormat:(unint64_t)format width:(unsigned int)width height:(unsigned int)height format:(unint64_t)a8 type:(unint64_t)type plane:(unsigned int)self0 invert:(BOOL)self1
{
  v11 = a8;
  formatCopy = format;
  targetCopy = target;
  v28 = *MEMORY[0x277D85DE8];
  ID = IOSurfaceGetID(surface);
  invertCopy = targetCopy;
  v21 = formatCopy;
  widthCopy = width;
  heightCopy = height;
  v24 = v11;
  typeCopy = type;
  planeCopy = plane;
  v27 = 0;
  if (off_280BD5BB0(*(self->_private + 4), 910, &ID))
  {
    fprintf_l(*MEMORY[0x277D85DF8], 0, "Failed to create IOSurface image (texture)\n");
  }

  else
  {
    ID = targetCopy;
    invertCopy = invert;
    if (!off_280BD5BB0(*(self->_private + 4), 921, &ID))
    {
      result = 1;
      goto LABEL_6;
    }

    fprintf_l(*MEMORY[0x277D85DF8], 0, "Failed to create IOSurface image (inversion)\n");
  }

  result = 0;
LABEL_6:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

@end