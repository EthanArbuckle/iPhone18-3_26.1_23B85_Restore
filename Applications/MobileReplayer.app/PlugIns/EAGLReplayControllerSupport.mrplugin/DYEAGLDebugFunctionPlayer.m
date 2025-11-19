@interface DYEAGLDebugFunctionPlayer
+ (void)_resolveDepthWithWidth:(int)a3 height:(int)a4 numSamples:(int)a5 buffer:(float *)a6;
+ (void)_resolveStencilWithWidth:(int)a3 height:(int)a4 numSamples:(int)a5 buffer:(char *)a6;
- (BOOL)_isContextModifiable;
- (BOOL)_switchToWireframeFramebuffer;
- (BOOL)isFunctionEnabled;
- (BOOL)shouldExecuteGraphicsFunction;
- (DYEAGLDebugFunctionPlayer)initWithCaptureStore:(id)a3;
- (DYLayerManager)strongLayerManager;
- (id).cxx_construct;
- (void)_imageInfoForAttachment:(unsigned int)a3 outImageInfo:(ImageInfo *)a4;
- (void)_presentFramebufferWithWireframe:(BOOL)a3 wireframeLineColor:(unsigned int)a4;
- (void)_renderPresentTextureWithColor:(unsigned int)a3 enableBlend:(BOOL)a4 texBlitProgram:(unsigned int)a5;
- (void)dealloc;
- (void)executePlatformFunction;
- (void)prepareForCaptureExecution;
- (void)setEngine:(id)a3;
@end

@implementation DYEAGLDebugFunctionPlayer

- (DYLayerManager)strongLayerManager
{
  WeakRetained = objc_loadWeakRetained(&self->super._layerManager);

  return WeakRetained;
}

+ (void)_resolveDepthWithWidth:(int)a3 height:(int)a4 numSamples:(int)a5 buffer:(float *)a6
{
  if (a5 >= 2 && a4 >= 1)
  {
    v6 = 0;
    v7 = a6;
    do
    {
      if (a3 >= 1)
      {
        for (i = 0; i != a3; ++i)
        {
          v9 = 0;
          v10 = 0.0;
          do
          {
            v10 = v10 + v7[v9++];
          }

          while (a5 != v9);
          v7 += (a5 - 1) + 1;
          *a6++ = (1.0 / a5) * v10;
        }
      }

      ++v6;
    }

    while (v6 != a4);
  }
}

+ (void)_resolveStencilWithWidth:(int)a3 height:(int)a4 numSamples:(int)a5 buffer:(char *)a6
{
  if (a5 >= 2 && a4 >= 1)
  {
    v6 = 0;
    v7 = a6;
    do
    {
      if (a3 >= 1)
      {
        for (i = 0; i != a3; ++i)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[v9++];
          }

          while (a5 != v9);
          v7 += a5;
          *a6++ = v10 / a5;
        }
      }

      ++v6;
    }

    while (v6 != a4);
  }
}

- (DYEAGLDebugFunctionPlayer)initWithCaptureStore:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DYEAGLDebugFunctionPlayer;
  v5 = [(DYEAGLDebugFunctionPlayer *)&v13 initWithCaptureStore:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    sharegroupSet = v5->_sharegroupSet;
    v5->_sharegroupSet = v6;

    v5->_wireframeRenderbuffer = kDYReservedGLNameWireframeRenderbuffer;
    v5->_wireframeFramebuffer = kDYReservedGLNameWireframeFramebuffer;
    v5->_wireframeRenderbufferFormat = 0;
    v5->_presentRenderbuffer = kDYReservedGLNamePresentRenderbuffer;
    v5->_presentFramebuffer = kDYReservedGLNamePresentFramebuffer;
    v5->_presentTexture = kDYReservedGLNamePresentTexture;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_70F8;
    v11[4] = sub_7108;
    v8 = v5;
    v12 = v8;
    DYSetResourceUpdateCallbackBlock();
    v9 = v8;
    _Block_object_dispose(v11, 8);
  }

  return v5;
}

- (void)dealloc
{
  DYSetResourceUpdateCallbackBlock();
  v3.receiver = self;
  v3.super_class = DYEAGLDebugFunctionPlayer;
  [(DYEAGLDebugFunctionPlayer *)&v3 dealloc];
}

- (void)setEngine:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DYEAGLDebugFunctionPlayer;
  [(DYEAGLDebugFunctionPlayer *)&v7 setEngine:v4];
  v5 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] disabledFunctions];
  disabledFunctions = self->_disabledFunctions;
  self->_disabledFunctions = v5;
}

- (BOOL)isFunctionEnabled
{
  if (self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__mainExecutionMode] == 1)
  {
    return [(NSMutableIndexSet *)self->_disabledFunctions containsIndex:*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__currentExecutionModeFunctionIndex], v2, v3]^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldExecuteGraphicsFunction
{
  v3 = OBJC_IVAR___DYFunctionPlayer__engine;
  v4 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_28;
  }

  v6 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v7 = [v6 shouldExecuteGraphicsFunction];

  v8 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v9 = [v8 shouldCallSuper];

  if (v9)
  {
    v22 = self;
    v10 = &v22;
LABEL_23:
    v10[1] = DYEAGLDebugFunctionPlayer;
    return objc_msgSendSuper2(v10, "shouldExecuteGraphicsFunction", v21);
  }

  v11 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v12 = [v11 shouldReturn];

  if ((v12 & 1) == 0)
  {
LABEL_28:
    if ([(DYEAGLDebugFunctionPlayer *)self isFunctionEnabled])
    {
      if (self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__mainExecutionMode] != 1)
      {
        goto LABEL_22;
      }

      v13 = **&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
      if (v13 <= 822)
      {
        v18 = (v13 - 139) > 7 || ((1 << (v13 + 117)) & 0x91) == 0;
        if (v18 && v13 != 382 && v13 != 384)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v14 = v13 - 823;
        v15 = v14 > 0x16;
        v16 = (1 << v14) & 0x780003;
        if (v15 || v16 == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__currentExecutionModeFunctionIndex];
      if (v19 < [*&self->super.DYGLFunctionPlayer_opaque[v3] targetFunctionIndex])
      {
LABEL_22:
        v21 = self;
        v10 = &v21;
        goto LABEL_23;
      }
    }

    return 0;
  }

  return v7;
}

- (void)executePlatformFunction
{
  v3 = OBJC_IVAR___DYFunctionPlayer__engine;
  v4 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  [v6 executePlatformFunction];

  v7 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v8 = [v7 shouldCallSuper];

  if (v8)
  {
    v29.receiver = self;
    v29.super_class = DYEAGLDebugFunctionPlayer;
    [(DYEAGLFunctionPlayer *)&v29 executePlatformFunction];
  }

  v9 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v10 = [v9 shouldReturn];

  if ((v10 & 1) == 0)
  {
LABEL_20:
    v11 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
    v12 = *v11;
    if ([(DYEAGLDebugFunctionPlayer *)self isFunctionEnabled])
    {
      if (v12 > -8180)
      {
        if ((v12 + 8179) < 2)
        {
          return;
        }
      }

      else
      {
        switch(v12)
        {
          case -12287:
            v27.receiver = self;
            v27.super_class = DYEAGLDebugFunctionPlayer;
            [(DYEAGLFunctionPlayer *)&v27 executePlatformFunction];
            v20 = **(v11 + 96);
            v21 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
            v22 = [v21 layerForID:v20];

            v23 = [v22 drawableProperties];
            v24 = [v23 mutableCopy];

            v25 = [NSNumber numberWithBool:1];
            [v24 setObject:v25 forKey:kEAGLDrawablePropertyRetainedBacking];

            [v22 setDrawableProperties:v24];
            return;
          case -8190:
            return;
          case -8188:
            v28.receiver = self;
            v28.super_class = DYEAGLDebugFunctionPlayer;
            [(DYEAGLFunctionPlayer *)&v28 executePlatformFunction];
            v13 = [[NSNumber alloc] initWithUnsignedLongLong:**(v11 + 120)];
            if (([(NSMutableSet *)self->_sharegroupSet containsObject:v13]& 1) == 0)
            {
              [(NSMutableSet *)self->_sharegroupSet addObject:v13];
              v14 = OBJC_IVAR___DYGLFunctionPlayer__ctx;
              v15 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
              DYReserveGLObjects();
              v16 = *&self->super.DYGLFunctionPlayer_opaque[v14];
              DYReserveGLObjects();
              v17 = *&self->super.DYGLFunctionPlayer_opaque[v14];
              DYReserveGLObjects();
              v18 = *&self->super.DYGLFunctionPlayer_opaque[v14];
              DYReserveGLObjects();
              v19 = *&self->super.DYGLFunctionPlayer_opaque[v14];
              DYReserveGLObjects();
            }

            if (**(v11 + 72) >= 2u)
            {
              [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] setParameter:610 to:&unk_2A510];
            }

            return;
        }
      }

      v26.receiver = self;
      v26.super_class = DYEAGLDebugFunctionPlayer;
      [(DYEAGLFunctionPlayer *)&v26 executePlatformFunction];
    }
  }
}

- (BOOL)_switchToWireframeFramebuffer
{
  v3 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v4 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36006, &self->_origFramebuffer);
  if (self->_origFramebuffer)
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36007, &v18);
    v5 = 36064;
    (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36064, 36049, &v17);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36064, 36048, &v16);
    if (v16 || (v5 = 36096, (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36096, 36049, &v17), (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36096, 36048, &v16), v16) || (v5 = 36128, (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36128, 36049, &v17), (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36128, 36048, &v16), v16))
    {
      memset(v12, 0, sizeof(v12));
      v13 = 0;
      v14 = 0x100000001;
      v15[0] = 0;
      *(v15 + 5) = 0;
      [(DYEAGLDebugFunctionPlayer *)self _imageInfoForAttachment:v5 outImageInfo:v12];
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, self->_wireframeFramebuffer);
      v11 = 0;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, self->_wireframeRenderbuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, 36162, &v11 + 4);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, 36163, &v11);
      if (self->_wireframeRenderbufferFormat)
      {
        if (__PAIR64__(v13, v14) == v11)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      self->_wireframeRenderbufferFormat = 32856;
      v7 = *(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104);
      if (v7 == 2)
      {
        v8 = (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 936))(*&self->super.DYGLFunctionPlayer_opaque[v4], 7939);
        if (!v8 || !strstr(v8, "GL_EXT_texture_rg"))
        {
          goto LABEL_15;
        }
      }

      else if (v7 < 3)
      {
LABEL_15:
        HIDWORD(v11) = ~v13;
LABEL_16:
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5352))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, self->_wireframeRenderbufferFormat);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5432))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36009, 36064, 36161, self->_wireframeRenderbuffer);
LABEL_17:
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 824))(*&self->super.DYGLFunctionPlayer_opaque[v4], 3106, v19);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 792))(*&self->super.DYGLFunctionPlayer_opaque[v4], 3107, v10);
        v6 = 1;
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 392))(*&self->super.DYGLFunctionPlayer_opaque[v4], 1, 1, 1, 1);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 96))(*&self->super.DYGLFunctionPlayer_opaque[v4], 0.0, 0.0, 0.0, 0.0);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 80))(*&self->super.DYGLFunctionPlayer_opaque[v4], 0x4000);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 96))(*&self->super.DYGLFunctionPlayer_opaque[v4], v19[0], v19[1], v19[2], v19[3]);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 392))(*&self->super.DYGLFunctionPlayer_opaque[v4], v10[0], v10[1], v10[2], v10[3]);
        (*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v4], 36161, v18);
        return v6;
      }

      self->_wireframeRenderbufferFormat = 33321;
      goto LABEL_15;
    }
  }

  return 0;
}

- (void)_presentFramebufferWithWireframe:(BOOL)a3 wireframeLineColor:(unsigned int)a4
{
  v58 = a3;
  v84 = 0;
  v83 = 0uLL;
  v5 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v6 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36006, &v84 + 4);
  if (HIDWORD(v84))
  {
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 832))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36007, &v84);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36064, 36049, &v83 + 12);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36064, 36048, &v83 + 8);
    if (DWORD2(v83))
    {
      v69 = 0uLL;
      *&v70[8] = 0;
      *v70 = 0;
      *&v70[12] = 0x100000001;
      *&v70[20] = 0;
      *&v70[25] = 0;
      [(DYEAGLDebugFunctionPlayer *)self _imageInfoForAttachment:36064 outImageInfo:&v69];
      v7 = kEAGLColorFormatRGBA8;
      if ((HIDWORD(v69) & 0xFFFFFFFD) == 0x8C41)
      {
        v8 = kEAGLColorFormatSRGBA8;
      }

      else
      {
        v8 = kEAGLColorFormatRGBA8;
      }

      v59 = v8;
      if (DWORD2(v83) == 36161)
      {
        v9 = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
        v10 = [NSNumber numberWithUnsignedInt:HIDWORD(v83)];
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          v12 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
          v13 = [v12 layerForID:{objc_msgSend(v11, "unsignedLongLongValue")}];

          if (v13)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v59 = 0;
    }

    v14 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
    v13 = [v14 currentTopLayer];

    if (!v13)
    {
LABEL_39:

      return;
    }

    v7 = kEAGLColorFormatRGBA8;
LABEL_14:
    v15 = v59;
    if (v59)
    {
      v16 = v59;
    }

    else
    {
      v16 = v7;
    }

    v59 = v16;

    v56 = OBJC_IVAR___DYGLFunctionPlayer__ctx;
    v17 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] sharegroup];

    v18 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
    v19 = [v18 layerForID:v17];

    v20 = [v19 drawableProperties];
    v21 = [v20 objectForKeyedSubscript:kEAGLDrawablePropertyColorFormat];

    if (v19 != v13)
    {
      goto LABEL_21;
    }

    [v19 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v13 bounds];
    v89.origin.x = v30;
    v89.origin.y = v31;
    v89.size.width = v32;
    v89.size.height = v33;
    v88.origin.x = v23;
    v88.origin.y = v25;
    v88.size.width = v27;
    v88.size.height = v29;
    if (!CGRectEqualToRect(v88, v89) || ([v19 contentsScale], v35 = v34, objc_msgSend(v13, "contentsScale"), v35 != v36) || (objc_msgSend(v21, "isEqualToString:", v59) & 1) == 0)
    {
LABEL_21:
      v86 = kEAGLDrawablePropertyColorFormat;
      v87 = v59;
      v37 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      if (v19)
      {
        sub_A3F4(v85, 1, 1);
        [v13 transform];
        v71 = v65;
        v72 = v66;
        v73 = v67;
        v74 = v68;
        v69 = v61;
        *v70 = v62;
        *&v70[16] = v63;
        *&v70[32] = v64;
        [v19 setTransform:&v69];
        [v13 anchorPoint];
        [v19 setAnchorPoint:?];
        [v13 bounds];
        [v19 setBounds:?];
        [v13 contentsScale];
        [v19 setContentsScale:?];
        [v19 setDrawableProperties:v37];
      }

      else
      {
        v38 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
        [v13 bounds];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        [v13 contentsScale];
        v19 = [v38 createLayerWithID:v17 contentRect:v37 contentsScale:0 properties:v40 isCoreAnimationSurface:{v42, v44, v46, v47}];

        sub_A3F4(v85, 1, 1);
        [v13 transform];
        v71 = v79;
        v72 = v80;
        v73 = v81;
        v74 = v82;
        v69 = v75;
        *v70 = v76;
        *&v70[16] = v77;
        *&v70[32] = v78;
        [v19 setTransform:&v69];
        [v13 anchorPoint];
        [v19 setAnchorPoint:?];
      }

      sub_A4C0(v85);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, self->_presentRenderbuffer);
      [*&self->super.DYGLFunctionPlayer_opaque[v56] renderbufferStorage:36161 fromDrawable:v19];
      +[CATransaction flush];
      LODWORD(v69) = 0;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, 36164, &v69);
      InternalFormatInfo = GPUTools::GL::GetInternalFormatInfo(v69, v48);
      v51 = InternalFormatInfo[1];
      v50 = InternalFormatInfo[2];
      v52 = *InternalFormatInfo;
      *&self->_presentRenderbufferInternalFormatInfo.rBits = *(InternalFormatInfo + 44);
      *&self->_presentRenderbufferInternalFormatInfo.bComponentType = v51;
      *&self->_presentRenderbufferInternalFormatInfo.sComponentType = v50;
      *&self->_presentRenderbufferInternalFormatInfo.internalFormat = v52;
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, 36162, self->_presentRenderbufferResolution);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5360))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, 36163, &self->_presentRenderbufferResolution[1]);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, self->_presentFramebuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5432))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36064, 36161, self->_presentRenderbuffer);
      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, HIDWORD(v84));
    }

    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36096, 36048, &v83 + 4);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5440))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, 36128, 36048, &v83);
    if (*(&v83 + 4) || v83)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_8C1C;
      v60[3] = &unk_24730;
      v60[4] = self;
      v53 = objc_retainBlock(v60);
      if (DWORD2(v83))
      {
        v54 = GPUTools::GL::DYIsAttachmentWritable();
        if (DWORD2(v83) == 36161)
        {
          [(DYEAGLDebugFunctionPlayer *)self _copyRenderbufferColorAttachmentToPresent:36064 color:0xFFFFFFFFLL isWireframe:0];
        }

        else
        {
          [(DYEAGLDebugFunctionPlayer *)self _copyTextureColorAttachmentToPresent:36064];
        }
      }

      else if (DWORD1(v83))
      {
        v54 = GPUTools::GL::DYIsAttachmentWritable();
        [(DYEAGLDebugFunctionPlayer *)self _copyDepthOrStencilAttachmentToPresent:36096 type:DWORD1(v83)];
      }

      else
      {
        v54 = GPUTools::GL::DYIsAttachmentWritable();
        [(DYEAGLDebugFunctionPlayer *)self _copyDepthOrStencilAttachmentToPresent:36128 type:v83];
      }

      if (v54)
      {
        if (v58)
        {
          (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, self->_wireframeFramebuffer);
          [(DYEAGLDebugFunctionPlayer *)self _copyRenderbufferColorAttachmentToPresent:36064 color:a4 isWireframe:1];
        }
      }

      (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, self->_presentRenderbuffer);
      v55 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
      [v55 prepareLayerForPresent:v19];

      [*&self->super.DYGLFunctionPlayer_opaque[v56] presentRenderbuffer:36161];
    }

    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5328))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36161, v84);
    (*(*&self->super.DYGLFunctionPlayer_opaque[v5] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v6], 36009, HIDWORD(v84));

    goto LABEL_39;
  }
}

- (void)_renderPresentTextureWithColor:(unsigned int)a3 enableBlend:(BOOL)a4 texBlitProgram:(unsigned int)a5
{
  v6 = a4;
  v9 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] sharegroup];

  v10 = [(DYEAGLDebugFunctionPlayer *)self strongLayerManager];
  v11 = [v10 layerForID:v9];

  v35 = 0;
  v34 = 0;
  v12 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v13 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 32873, &v35 + 4);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, self->_presentTexture);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 1000))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, 0, 4096, &v35);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 1000))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, 0, 4097, &v34);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 40))(*&self->super.DYGLFunctionPlayer_opaque[v13], 3553, HIDWORD(v35));
  v15 = v34;
  v14 = v35;
  [v11 bounds];
  v17 = v16;
  v19 = v18;
  [v11 contentsScale];
  v21 = v20;
  [v11 contentsScale];
  v22 = v17 * v21;
  v24 = v19 * v23;
  [DYEAGLDebugFunctionPlayer shrinkSourceSize:v14 toDestSize:v15, v22, v19 * v23];
  v26 = v25;
  v28 = v27;
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 5376))(*&self->super.DYGLFunctionPlayer_opaque[v13], 36009, self->_presentFramebuffer);
  (*(*&self->super.DYGLFunctionPlayer_opaque[v12] + 720))(*&self->super.DYGLFunctionPlayer_opaque[v13]);
  LODWORD(v29) = vcvtpd_s64_f64(v26);
  LODWORD(v30) = vcvtpd_s64_f64(v28);
  if (v6)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0x4000;
  }

  LODWORD(v33) = a5;
  BYTE5(v32) = 0;
  BYTE4(v32) = v6;
  LODWORD(v32) = a3;
  [(DYEAGLFunctionPlayer *)self drawTexture:self->_presentTexture target:3553 framebuffer:self->_presentFramebuffer bounds:((v22 - v29) / 2) | (((v24 - v30) / 2) << 32) clearBits:v29 | (v30 << 32) modulateColor:v31 enableBlend:v32 rotated:v33 texBlitProgram:?];
}

- (void)_imageInfoForAttachment:(unsigned int)a3 outImageInfo:(ImageInfo *)a4
{
  v5 = [(DYEAGLDebugFunctionPlayer *)self context];
  sub_4528(v8, v5);

  [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
  v6 = [(DYEAGLDebugFunctionPlayer *)self captureSessionInfo];
  v7 = [v6 contextInfoForContext:{-[DYEAGLDebugFunctionPlayer ctxID](self, "ctxID")}];
  [v7 api];

  GPUTools::GL::GetFramebufferAttachmentInfo();
  GPUTools::GL::GetImageInfo();
}

- (BOOL)_isContextModifiable
{
  v3 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  if (![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:34965 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 5160)]|| ![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:36006 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5368)]|| ![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:36010 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5368)]|| ![(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:36007 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5320)])
  {
    return 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v4 = [(DYEAGLDebugFunctionPlayer *)self context];
  sub_4528(v10, v4);

  [(DYEAGLDebugFunctionPlayer *)self gliDispatch];
  v5 = [(DYEAGLDebugFunctionPlayer *)self captureSessionInfo];
  v6 = [v5 contextInfoForContext:{-[DYEAGLDebugFunctionPlayer ctxID](self, "ctxID")}];
  [v6 api];

  GPUTools::GL::EnumerateTextureTargets();
  v8 = 0;
  if (v12[3])
  {
    v7 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
    if (*(*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) < 2uLL || [(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:33370 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 6600)]&& (*(*&self->super.DYGLFunctionPlayer_opaque[v7] + 104) < 3uLL || [(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:35053 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5160)]&& [(DYEAGLDebugFunctionPlayer *)self _isBoundObjectAlive:35055 isObjectFunc:*(*&self->super.DYGLFunctionPlayer_opaque[v3] + 5160)]))
    {
      v8 = 1;
    }
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)prepareForCaptureExecution
{
  v3 = OBJC_IVAR___DYFunctionPlayer__engine;
  v4 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  [v6 prepareForCaptureExecution];

  v7 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v8 = [v7 shouldCallSuper];

  if (v8)
  {
    v12.receiver = self;
    v12.super_class = DYEAGLDebugFunctionPlayer;
    [(DYEAGLDebugFunctionPlayer *)&v12 prepareForCaptureExecution];
  }

  v9 = [*&self->super.DYGLFunctionPlayer_opaque[v3] delegate];
  v10 = [v9 shouldReturn];

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v11.receiver = self;
    v11.super_class = DYEAGLDebugFunctionPlayer;
    [(DYEAGLDebugFunctionPlayer *)&v11 prepareForCaptureExecution];
  }
}

- (id).cxx_construct
{
  *(self + 148) = off_24650;
  *(self + 149) = 0;
  *(self + 150) = 0;
  *(self + 151) = 0;
  *(self + 152) = off_246B8;
  *(self + 159) = 0;
  *(self + 1256) = 0u;
  *(self + 1240) = 0u;
  *(self + 1224) = 0u;
  *(self + 320) = 1065353216;
  *(self + 1304) = 0u;
  *(self + 1288) = 0u;
  *(self + 330) = 1065353216;
  *(self + 83) = 0u;
  *(self + 84) = 0u;
  *(self + 340) = 1065353216;
  *(self + 1384) = 0u;
  *(self + 1368) = 0u;
  *(self + 350) = 1065353216;
  *(self + 88) = 0u;
  *(self + 89) = 0u;
  *(self + 360) = 1065353216;
  *(self + 1448) = 0u;
  *(self + 1464) = 0u;
  *(self + 370) = 1065353216;
  return self;
}

@end