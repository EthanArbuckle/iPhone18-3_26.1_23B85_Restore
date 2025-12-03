@interface DYEAGLFunctionPlayer
- (BOOL)shouldExecuteGraphicsFunction;
- (DYLayerManager)layerManager;
- (DYLayerManager)strongLayerManager;
- (id).cxx_construct;
- (id)currentRenderbufferDrawableMap;
- (unint64_t)_generateDrawableId;
- (unsigned)_loadShaderWithType:(unsigned int)type source:(const char *)source dispatcher:(Dispatcher *)dispatcher;
- (unsigned)_loadSimpleProgramWithVertexSource:(const char *)source fragmentSource:(const char *)fragmentSource link:(BOOL)link dispatcher:(Dispatcher *)dispatcher;
- (void)_createIOSurfaceReplacementForFramebuffer:(FramebufferInfo *)framebuffer;
- (void)_transformCoreAnimationLayer:(id)layer rotated:(BOOL)rotated;
- (void)createEAGLContextWithAPI:(unint64_t)i sharegroupID:(unint64_t)d contextID:(unint64_t)iD;
- (void)executePlatformFunction;
- (void)initializeNewSharegroupInfoDictionary;
@end

@implementation DYEAGLFunctionPlayer

- (DYLayerManager)strongLayerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (void)initializeNewSharegroupInfoDictionary
{
  v8.receiver = self;
  v8.super_class = DYEAGLFunctionPlayer;
  [(DYEAGLFunctionPlayer *)&v8 initializeNewSharegroupInfoDictionary];
  v3 = OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict;
  v4 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict];
  sharegroup = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] sharegroup];
  [v4 setObject:sharegroup forKey:@"sharegroup"];

  v6 = *&self->DYGLFunctionPlayer_opaque[v3];
  v7 = +[NSMutableDictionary dictionary];
  [v6 setObject:v7 forKey:@"renderbuffer_drawable_map"];
}

- (id)currentRenderbufferDrawableMap
{
  if (*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx])
  {
    v3 = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroup_dict] objectForKey:@"renderbuffer_drawable_map"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)createEAGLContextWithAPI:(unint64_t)i sharegroupID:(unint64_t)d contextID:(unint64_t)iD
{
  iDCopy = iD;
  if (sub_5308(&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__contextInfoMap], &iDCopy))
  {
    [(DYEAGLFunctionPlayer *)self setCurrentContext:iDCopy];
    if (!self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__recreateContexts])
    {
      return;
    }

    [(DYEAGLFunctionPlayer *)self deleteCurrentContext];
  }

  v8 = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__sharegroupMap] objectForIntKey:d];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"sharegroup"];
    v11 = [[EAGLContext alloc] initWithAPI:i sharegroup:v10];
  }

  else
  {
    v11 = [[EAGLContext alloc] initWithAPI:i];
  }

  [(DYEAGLFunctionPlayer *)self updateCurrentStateWithNewContext:v11 contextID:iDCopy sharegroupID:d];
  *(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo] + 104) = i;
}

- (void)executePlatformFunction
{
  v3 = OBJC_IVAR___DYFunctionPlayer__function;
  v4 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v5 = (v4 + 48);
  v6 = *v4;
  v7 = OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo;
  v8 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo];
  if (*v4 <= -8187)
  {
    if (v6 <= -8191)
    {
      if ((v6 + 12283) < 2)
      {
        return;
      }

      if ((v6 + 0x2000) < 2)
      {
        v9 = **(v4 + 72);
        v10 = **(v4 + 96);
        v11 = **(v4 + 48);

        [(DYEAGLFunctionPlayer *)self createEAGLContextWithAPI:v9 sharegroupID:v10 contextID:v11];
        return;
      }

      if (v6 == -12287)
      {
        v78 = **(v4 + 48);
        v37 = **(v4 + 96);
        v77 = v37;
        if (!v37)
        {
          return;
        }

        v38 = **(v4 + 120);
        v39 = **(v4 + 144);
        v40 = 1.0;
        if (*(v4 + 10) >= 6u)
        {
          v41.n64_u64[0] = sub_B704(v4 + 168, 0).n64_u64[0];
          if (v41.n64_f64[0] == 0.0)
          {
            return;
          }

          v40 = v41.n64_f64[0];
        }

        v42.n64_u64[0] = sub_B704(v4 + 72, 0).n64_u64[0];
        v43.n64_u64[0] = sub_B704(v4 + 72, 1uLL).n64_u64[0];
        v44.n64_u64[0] = sub_B704(v4 + 72, 2uLL).n64_u64[0];
        v45.n64_u64[0] = sub_B704(v4 + 72, 3uLL).n64_u64[0];
        if (v39 <= 35906)
        {
          switch(v39)
          {
            case 32856:
              v46 = &kEAGLColorFormatRGBA8;
              goto LABEL_89;
            case 35446:
              v46 = &kEAGLColorFormatRGBA_XR10_64BPP;
              goto LABEL_89;
            case 35447:
              v46 = &kEAGLColorFormatSRGBA_XR10_64BPP;
              goto LABEL_89;
          }
        }

        else if (v39 > 37873)
        {
          if (v39 == 37874)
          {
            v46 = &kEAGLColorFormatSRGB_XR10;
            goto LABEL_89;
          }

          if (v39 == 37881)
          {
            v46 = &kEAGLColorFormatSRGB_XR10_A8_2P;
            goto LABEL_89;
          }
        }

        else
        {
          if (v39 == 35907)
          {
            v46 = &kEAGLColorFormatSRGBA8;
            goto LABEL_89;
          }

          if (v39 == 36194)
          {
            v46 = &kEAGLColorFormatRGB565;
LABEL_89:
            currentRenderbufferDrawableMap3 = *v46;
            v66 = [NSNumber numberWithBool:v38];
            v59 = [NSDictionary dictionaryWithObjectsAndKeys:v66, kEAGLDrawablePropertyRetainedBacking, currentRenderbufferDrawableMap3, kEAGLDrawablePropertyColorFormat, 0];

            strongLayerManager = [(DYEAGLFunctionPlayer *)self strongLayerManager];
            v68 = [strongLayerManager layerForID:v37];

            if (v68)
            {
              strongLayerManager2 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
              [strongLayerManager2 updateLayer:v68 contentRect:v59 contentsScale:v42.n64_f64[0] properties:{v43.n64_f64[0], v44.n64_f64[0], v45.n64_f64[0], v40}];

              v62 = v68;
            }

            else
            {
              strongLayerManager3 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
              v62 = [strongLayerManager3 createLayerWithID:v37 contentRect:v59 contentsScale:0 properties:v42.n64_f64[0] isCoreAnimationSurface:{v43.n64_f64[0], v44.n64_f64[0], v45.n64_f64[0], v40}];

              if (!v62)
              {
                __assert_rtn("[DYEAGLFunctionPlayer executePlatformFunction]", &unk_1FD61, 0, "layer");
              }
            }

            v71 = sub_5308((v8 + 200), &v77);
            if (!v71)
            {
              memset(v75, 0, sizeof(v75));
              v76 = 1065353216;
              v79 = &v77;
              v72 = sub_D4D4((v8 + 200), &v77);
              sub_D744((v72 + 3), v75);
              sub_46A4(v75);
              *&v75[0] = &v77;
              v71 = sub_D4D4((v8 + 200), &v77);
            }

            sub_D854(v71 + 3, &v78);
LABEL_95:

            goto LABEL_96;
          }
        }

        dy_abort();
        __break(1u);
        return;
      }

LABEL_66:
      v74.receiver = self;
      v74.super_class = DYEAGLFunctionPlayer;
      [(DYEAGLFunctionPlayer *)&v74 executePlatformFunction];
      return;
    }

    if (v6 <= -8189)
    {
      if (v6 != -8190)
      {
        v16 = **(v4 + 96);
        if (!v16)
        {
          return;
        }

        v17 = **(v4 + 72);
        renderbuffer_binding_enum = GPUTools::GL::dy_get_renderbuffer_binding_enum(v17, a2);
        LODWORD(v75[0]) = 0;
        (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], renderbuffer_binding_enum, v75);
        v19 = DYGetGLGuestAppClient();
        traceMode = [v19 traceMode];

        if (traceMode == 6)
        {
          return;
        }

        strongLayerManager4 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        currentRenderbufferDrawableMap3 = [strongLayerManager4 layerForID:v16];

        [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] renderbufferStorage:v17 fromDrawable:currentRenderbufferDrawableMap3];
        +[CATransaction flush];
        currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
        v24 = [NSNumber numberWithUnsignedLongLong:v16];
        v25 = [NSNumber numberWithUnsignedInt:LODWORD(v75[0])];
        [currentRenderbufferDrawableMap setObject:v24 forKey:v25];

LABEL_96:
        return;
      }

      goto LABEL_28;
    }

    if (v6 == -8188)
    {
      [(DYEAGLFunctionPlayer *)self createEAGLContextWithAPI:**(v4 + 72) sharegroupID:**(v4 + 120) contextID:**(v4 + 48)];
      v47 = *&self->DYGLFunctionPlayer_opaque[v7];
      v49 = 1;
      if (*(v4 + 108) == 14)
      {
        v48 = *(v4 + 96);
        if (!strstr(v48, "EAGLContextPropertyClientRetainRelease:true") || strstr(v48, "EAGLContextPropertyVisibleInDebugTools:true"))
        {
          v49 = 0;
        }
      }

      *(v47 + 240) = v49;
      return;
    }

    if (v6 != -8187)
    {
      goto LABEL_66;
    }

    v26 = *(v4 + 72);
LABEL_37:
    v36 = *v26;
    *(v75 + 7) = 0;
    GPUTools::GL::DYGetTextureTargetInfo();
    LODWORD(v79) = 0;
    (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 0, &v79);
    sub_D2A4((v8 + 160), &v79);
    return;
  }

  if (v6 > -8182)
  {
    if ((v6 + 8179) < 2)
    {
LABEL_28:
      v27 = **(v4 + 72);
      v28 = GPUTools::GL::dy_get_renderbuffer_binding_enum(v27, a2);
      LODWORD(v75[0]) = 0;
      (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], v28, v75);
      if (LODWORD(v75[0]))
      {
        currentRenderbufferDrawableMap2 = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
        v30 = [NSNumber numberWithUnsignedInt:LODWORD(v75[0])];
        v31 = [currentRenderbufferDrawableMap2 objectForKey:v30];
        unsignedLongLongValue = [v31 unsignedLongLongValue];

        strongLayerManager5 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        v34 = [strongLayerManager5 layerForID:unsignedLongLongValue];

        strongLayerManager6 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        [strongLayerManager6 prepareLayerForPresent:v34];
      }

      switch(v6)
      {
        case -8178:
          [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:v27 afterMinimumDuration:{sub_B704(v4 + 96, 0).n64_f64[0]}];
          break;
        case -8179:
          [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:v27 atTime:{sub_B704(v4 + 96, 0).n64_f64[0]}];
          break;
        case -8190:
          [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:v27];
          break;
      }

      return;
    }

    if (v6 != -8181)
    {
      if (v6 != -8180)
      {
        goto LABEL_66;
      }

      v26 = *(v4 + 96);
      goto LABEL_37;
    }

    strongLayerManager7 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    [strongLayerManager7 setAnchorPoint:v4 + 72 forLayerID:{sub_DA80(v5, 0)}];
    goto LABEL_63;
  }

  if (v6 > -8184)
  {
    if (v6 == -8183)
    {
      v53 = 1.0;
      v54 = 1.0;
      if (*(v4 + 10) >= 4u)
      {
        v53 = sub_B704(v4 + 96, 0).n64_u64[0];
        v54 = sub_B704(v4 + 120, 0).n64_u64[0];
      }

      *&v75[0] = v53;
      *(&v75[0] + 1) = v54;
      strongLayerManager8 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
      [strongLayerManager8 setTransform:v4 + 72 forLayerID:sub_DA80(v5 withScreenToLayerScale:{0), v75}];

      return;
    }

    strongLayerManager7 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    [strongLayerManager7 setPosition:v4 + 72 forLayerID:{sub_DA80(v5, 0)}];
LABEL_63:

    return;
  }

  if (v6 == -8186)
  {
    if (!*(v8 + 112))
    {
      return;
    }

    v50 = DYGetGLGuestAppClient();
    traceMode2 = [v50 traceMode];

    if (traceMode2 != 6)
    {
      v56 = sub_63B0((v8 + 120), (v8 + 112));
      if ((*(*&self->DYGLFunctionPlayer_opaque[v3] + 4) & 4) != 0)
      {
        if (!v56)
        {
          return;
        }
      }

      else if (!v56)
      {
        sub_14158();
      }

      v57 = *(v56 + 5);
      currentRenderbufferDrawableMap3 = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
      v58 = [NSNumber numberWithUnsignedInt:v57];
      v59 = [currentRenderbufferDrawableMap3 objectForKeyedSubscript:v58];

      if (!v59)
      {
        __assert_rtn("[DYEAGLFunctionPlayer executePlatformFunction]", &unk_1FD61, 0, "drawable_obj");
      }

      unsignedLongLongValue2 = [v59 unsignedLongLongValue];
      strongLayerManager9 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
      v62 = [strongLayerManager9 layerForID:unsignedLongLongValue2];

      if (!v62)
      {
        __assert_rtn("[DYEAGLFunctionPlayer executePlatformFunction]", &unk_1FD61, 0, "layer");
      }

      LODWORD(v75[0]) = 0;
      v63 = OBJC_IVAR___DYGLFunctionPlayer__disp;
      v64 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
      (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 36007, v75);
      (*(*&self->DYGLFunctionPlayer_opaque[v63] + 5328))(*&self->DYGLFunctionPlayer_opaque[v64], 36161, v57);
      strongLayerManager10 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
      [strongLayerManager10 prepareLayerForPresent:v62];

      [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] presentRenderbuffer:36161];
      (*(*&self->DYGLFunctionPlayer_opaque[v63] + 5328))(*&self->DYGLFunctionPlayer_opaque[v64], 36161, LODWORD(v75[0]));
      goto LABEL_95;
    }

    v52 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];

    [v52 presentRenderbuffer:36161];
  }

  else
  {
    if (v6 != -8185)
    {
      goto LABEL_66;
    }

    v79 = **v5;
    v12 = *(v8 + 216);
    if (v12)
    {
      do
      {
        while (1)
        {
          v13 = sub_5308(v12 + 3, &v79);
          if (v13)
          {
            sub_6464(v12 + 3, v13);
            if (!v12[6])
            {
              break;
            }
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_18;
          }
        }

        strongLayerManager11 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
        [strongLayerManager11 deleteLayer:v12[2]];

        v15 = *v12;
        sub_64A8((v8 + 200), v12, v75);
        sub_49E0(v75);
        v12 = v15;
      }

      while (v15);
    }

LABEL_18:
    [(DYEAGLFunctionPlayer *)self deleteCurrentContext];
  }
}

- (BOOL)shouldExecuteGraphicsFunction
{
  v3 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v4 = *v3;
  v5 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__currentContextInfo];
  if (*v3 <= 206)
  {
    if (v4 <= 200)
    {
      if (v4 == 116)
      {
        if ((*(v3 + 46) & 0x10) == 0)
        {
          v23 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
          v24 = **(v3 + 24);
          DYReserveGLProgram();
          return 0;
        }
      }

      else if (v4 == 117)
      {
        if ((*(v3 + 46) & 0x10) == 0)
        {
          v34 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
          v35 = **(v3 + 24);
          v36 = **(v3 + 72);
          DYReserveGLShader();
          return 0;
        }
      }

      else if (v4 == 192 && ([*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__captureSessionInfo] guestAppWasLinkedOnApexOrLater] & 1) == 0)
      {
        v6 = **(v3 + 96);
        if ((v6 & 0xFFFFFFDF) == 0x8D00)
        {
          v7 = **(v3 + 72);
          v8 = v3;
          v9 = **(v3 + 144);
          if (v6 == 36096)
          {
            v10 = 36128;
          }

          else
          {
            v10 = 36096;
          }

          LODWORD(v77) = 0;
          v11 = OBJC_IVAR___DYGLFunctionPlayer__disp;
          v12 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
          (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 5440))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], v7, v10, 36048, &v77);
          if (v77 == 36161)
          {
            v82 = 0;
            (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5440))(*&self->DYGLFunctionPlayer_opaque[v12], v7, v10, 36049, &v82);
            if (v82 != v9 && v82 != 0)
            {
              v81 = 0;
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 832))(*&self->DYGLFunctionPlayer_opaque[v12], 36007, &v81);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5328))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, v82);
              v80 = 0;
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5360))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, 36162, &v80 + 4);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5360))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, 36163, &v80);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5352))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, 35056, HIDWORD(v80), v80);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5432))(*&self->DYGLFunctionPlayer_opaque[v12], v7, v6, 36161, v82);
              (*(*&self->DYGLFunctionPlayer_opaque[v11] + 5328))(*&self->DYGLFunctionPlayer_opaque[v12], 36161, v81);
              return 0;
            }
          }

          v3 = v8;
        }
      }

      goto LABEL_38;
    }

    switch(v4)
    {
      case 201:
        v28 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
        v29 = *(v3 + 96);
        v30 = **(v3 + 72);
        break;
      case 203:
        v41 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
        v42 = *(v3 + 96);
        v43 = **(v3 + 72);
        break;
      case 206:
        v17 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
        v18 = *(v3 + 96);
        v19 = **(v3 + 72);
        break;
      default:
        goto LABEL_38;
    }

LABEL_43:
    DYReserveGLObjects();
    return 0;
  }

  if (v4 > 857)
  {
    switch(v4)
    {
      case 858:
        v31 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
        v32 = *(v3 + 96);
        v33 = **(v3 + 72);
        break;
      case 890:
        v44 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
        v45 = *(v3 + 96);
        v46 = **(v3 + 72);
        break;
      case 987:
        v20 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
        v21 = *(v3 + 96);
        v22 = **(v3 + 72);
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_43;
  }

  switch(v4)
  {
    case 207:
      v25 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
      v26 = *(v3 + 96);
      v27 = **(v3 + 72);
      goto LABEL_43;
    case 208:
      v38 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
      v39 = *(v3 + 96);
      v40 = **(v3 + 72);
      goto LABEL_43;
    case 840:
      v14 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx];
      v15 = *(v3 + 96);
      v16 = **(v3 + 72);
      DYReserveGLVAOs();
      return 0;
  }

LABEL_38:
  if ((*(v5 + 240) & 1) == 0)
  {
    v79.receiver = self;
    v79.super_class = DYEAGLFunctionPlayer;
    return [(DYEAGLFunctionPlayer *)&v79 shouldExecuteGraphicsFunction];
  }

  if (v4 <= 126)
  {
    if (v4 == 17)
    {
      v71 = **(v3 + 96);
      if (v71)
      {
        v72 = **(v3 + 72);
        if (v72 == 36160 || v72 == 36009)
        {
          *(v5 + 112) = v71;
        }
      }
    }

    else if (v4 == 121)
    {
      v50 = **(v3 + 72);
      if (v50)
      {
        v51 = *(v3 + 96);
        do
        {
          if (*v51 == *(v5 + 112))
          {
            *(v5 + 112) = 0;
          }

          v52 = sub_63B0((v5 + 120), v51);
          if (v52)
          {
            sub_6464((v5 + 120), v52);
          }

          ++v51;
          --v50;
        }

        while (v50);
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 825:
        if (**(v3 + 96) == 35449)
        {
          v53 = **(v3 + 72);
          v54 = **(v3 + 120);
          v82 = 0;
          framebuffer_binding_enum = GPUTools::GL::dy_get_framebuffer_binding_enum(v53, a2);
          (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], framebuffer_binding_enum, &v82);
          v77 = &v82;
          v56 = sub_DBB0((v5 + 120), &v82);
          *(v56 + 6) = v54;
          if (*(v56 + 5))
          {
            v57 = v56;
            currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
            v59 = [NSNumber numberWithUnsignedInt:*(v57 + 5)];
            v60 = [currentRenderbufferDrawableMap objectForKeyedSubscript:v59];

            unsignedLongLongValue = [v60 unsignedLongLongValue];
            strongLayerManager = [(DYEAGLFunctionPlayer *)self strongLayerManager];
            v63 = [strongLayerManager layerForID:unsignedLongLongValue];

            [(DYEAGLFunctionPlayer *)self _transformCoreAnimationLayer:v63 rotated:v54 == 35453];
          }
        }

        break;
      case 194:
        v64 = **(v3 + 72);
        v65 = **(v3 + 120);
        v82 = **(v3 + 144);
        if (sub_63B0((v5 + 160), &v82))
        {
          v67 = GPUTools::GL::dy_get_framebuffer_binding_enum(v64, v66);
          v81 = 0;
          v68 = OBJC_IVAR___DYGLFunctionPlayer__disp;
          v69 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
          (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], v67, &v81);
          if (v81)
          {
            v77 = &v81;
            v70 = sub_DBB0((v5 + 120), &v81);
            if (!*(v70 + 5))
            {
              [(DYEAGLFunctionPlayer *)self _createIOSurfaceReplacementForFramebuffer:v70 + 20];
            }

            HIDWORD(v80) = 0;
            (*(*&self->DYGLFunctionPlayer_opaque[v68] + 832))(*&self->DYGLFunctionPlayer_opaque[v69], 36007, &v80 + 4);
            (*(*&self->DYGLFunctionPlayer_opaque[v68] + 5328))(*&self->DYGLFunctionPlayer_opaque[v69], 36161, *(v70 + 5));
            v77 = 0;
            v78 = 0;
            (*(*&self->DYGLFunctionPlayer_opaque[v68] + 5360))(*&self->DYGLFunctionPlayer_opaque[v69], 36161, 36162, &v78);
            (*(*&self->DYGLFunctionPlayer_opaque[v68] + 5360))(*&self->DYGLFunctionPlayer_opaque[v69], 36161, 36163, &v78 + 4);
            (*(*&self->DYGLFunctionPlayer_opaque[v68] + 5328))(*&self->DYGLFunctionPlayer_opaque[v69], 36161, HIDWORD(v80));
            (*(*&self->DYGLFunctionPlayer_opaque[v68] + 720))(*&self->DYGLFunctionPlayer_opaque[v69]);
            LODWORD(v75) = 0;
            BYTE5(v74) = *(v70 + 6) == 35453;
            BYTE4(v74) = 0;
            LODWORD(v74) = -1;
            [(DYEAGLFunctionPlayer *)self drawTexture:v82 target:v65 framebuffer:v81 bounds:v77 clearBits:v78 modulateColor:0 enableBlend:v74 rotated:v75 texBlitProgram:?];
            return 0;
          }
        }

        break;
      case 127:
        v47 = **(v3 + 72);
        if (v47)
        {
          v48 = *(v3 + 96);
          do
          {
            v49 = sub_63B0((v5 + 160), v48);
            if (v49)
            {
              sub_6464((v5 + 160), v49);
            }

            ++v48;
            --v47;
          }

          while (v47);
        }

        break;
    }
  }

  v76.receiver = self;
  v76.super_class = DYEAGLFunctionPlayer;
  return [(DYEAGLFunctionPlayer *)&v76 shouldExecuteGraphicsFunction];
}

- (unint64_t)_generateDrawableId
{
  for (i = &self->_ioSurfaceDrawableIdSet; sub_5308(i, &self->_nextIOSurfaceDrawableId); i = &self->_ioSurfaceDrawableIdSet)
  {
    self->_nextIOSurfaceDrawableId = (LODWORD(self->_nextIOSurfaceDrawableId) + 1) & 0xFFF;
  }

  nextIOSurfaceDrawableId = self->_nextIOSurfaceDrawableId;
  sub_DDF0(&self->_ioSurfaceDrawableIdSet.__table_.__bucket_list_.__ptr_, &nextIOSurfaceDrawableId);
  self->_nextIOSurfaceDrawableId = (LODWORD(self->_nextIOSurfaceDrawableId) + 1) & 0xFFF;
  return nextIOSurfaceDrawableId;
}

- (void)_createIOSurfaceReplacementForFramebuffer:(FramebufferInfo *)framebuffer
{
  v5 = *&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  v6 = *v5[9];
  v7 = *v5[15];
  v8 = *v5[18];
  v9 = (v8 + 1000000);
  currentRenderbufferDrawableMap = [(DYEAGLFunctionPlayer *)self currentRenderbufferDrawableMap];
  v11 = [NSNumber numberWithUnsignedInt:v9];
  v31 = v6;
  v12 = [currentRenderbufferDrawableMap objectForKeyedSubscript:v11];

  v13 = OBJC_IVAR___DYGLFunctionPlayer__disp;
  v14 = OBJC_IVAR___DYGLFunctionPlayer__gli_ctx;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v30 = currentRenderbufferDrawableMap;
    (*(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__disp] + 832))(*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__gli_ctx], 32873, &v37 + 4);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 40))(*&self->DYGLFunctionPlayer_opaque[v14], 3553, v8);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 1000))(*&self->DYGLFunctionPlayer_opaque[v14], v7, 0, 4096, &v37);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 1000))(*&self->DYGLFunctionPlayer_opaque[v14], v7, 0, 4097, &v36);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 40))(*&self->DYGLFunctionPlayer_opaque[v14], 3553, HIDWORD(v37));
    _generateDrawableId = [(DYEAGLFunctionPlayer *)self _generateDrawableId];
    v17 = [NSNumber numberWithUnsignedLongLong:_generateDrawableId];
    v18 = [NSNumber numberWithUnsignedInt:v9];
    [currentRenderbufferDrawableMap setObject:v17 forKeyedSubscript:v18];

    deviceInfo = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__captureSessionInfo] deviceInfo];
    v33 = 0;
    v34 = 0;
    v35 = 0;
    framebufferCopy = framebuffer;
    v28 = deviceInfo;
    if (deviceInfo)
    {
      [deviceInfo mainScreenDescriptor];
      v20 = HIDWORD(v34);
      v21 = v35;
      v22 = v34;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    strongLayerManager = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    v29 = [strongLayerManager layerForID:_generateDrawableId];

    v24 = [NSNumber numberWithBool:1];
    v25 = [NSDictionary dictionaryWithObjectsAndKeys:v24, kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGBA8, kEAGLDrawablePropertyColorFormat, 0];

    strongLayerManager2 = [(DYEAGLFunctionPlayer *)self strongLayerManager];
    v15 = [strongLayerManager2 createLayerWithID:_generateDrawableId contentRect:v25 contentsScale:1 properties:0.0 isCoreAnimationSurface:{0.0, (v22 / v21), (v20 / v21), v21}];

    framebuffer = framebufferCopy;
    v12 = 0;
    currentRenderbufferDrawableMap = v30;
    [(DYEAGLFunctionPlayer *)self _transformCoreAnimationLayer:v15 rotated:framebufferCopy->var1 == 35453];
    v32 = 0;
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 832))(*&self->DYGLFunctionPlayer_opaque[v14], 36007, &v32);
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 5328))(*&self->DYGLFunctionPlayer_opaque[v14], 36161, v9);
    [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__ctx] renderbufferStorage:36161 fromDrawable:v15];
    +[CATransaction flush];
    (*(*&self->DYGLFunctionPlayer_opaque[v13] + 5328))(*&self->DYGLFunctionPlayer_opaque[v14], 36161, v32);
  }

  (*(*&self->DYGLFunctionPlayer_opaque[v13] + 5432))(*&self->DYGLFunctionPlayer_opaque[v14], v31, 36064, 36161, v9);
  framebuffer->var0 = v9;
}

- (unsigned)_loadShaderWithType:(unsigned int)type source:(const char *)source dispatcher:(Dispatcher *)dispatcher
{
  sourceCopy = source;
  v6 = *dispatcher->var0;
  v7 = DYCreatePrivateGLShader();
  if (v7)
  {
    size_4 = 0;
    (dispatcher->var1->shader_source_ARB)(*(dispatcher->var0 + 2), v7, 1, &sourceCopy, 0);
    (dispatcher->var1->compile_shader_ARB)(*(dispatcher->var0 + 2), v7);
    (dispatcher->var1->get_shaderiv)(*(dispatcher->var0 + 2), v7, 35713, &size_4);
    if (!size_4)
    {
      size = 0;
      (dispatcher->var1->get_shaderiv)(*(dispatcher->var0 + 2), v7, 35716, &size);
      if (size >= 2)
      {
        v8 = malloc_type_malloc(size, 0x100004077774924uLL);
        (dispatcher->var1->get_shader_info_log)(*(dispatcher->var0 + 2), v7, size, 0, v8);
        free(v8);
      }

      (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v7);
      LODWORD(v7) = 0;
    }
  }

  return v7;
}

- (unsigned)_loadSimpleProgramWithVertexSource:(const char *)source fragmentSource:(const char *)fragmentSource link:(BOOL)link dispatcher:(Dispatcher *)dispatcher
{
  linkCopy = link;
  v10 = [(DYEAGLFunctionPlayer *)self _loadShaderWithType:35633 source:source dispatcher:dispatcher];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [(DYEAGLFunctionPlayer *)self _loadShaderWithType:35632 source:fragmentSource dispatcher:dispatcher];
  if (!v12)
  {
    (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v11);
    return 0;
  }

  v13 = v12;
  v14 = *dispatcher->var0;
  v15 = DYCreatePrivateGLProgram();
  var1 = dispatcher->var1;
  v17 = *(dispatcher->var0 + 2);
  if (!v15)
  {
    (var1->delete_object_ARB)(v17, v11);
    (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v13);
    return v15;
  }

  (var1->attach_object_ARB)(v17, v15, v11);
  (dispatcher->var1->attach_object_ARB)(*(dispatcher->var0 + 2), v15, v13);
  (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v11);
  (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v13);
  if (linkCopy && ![(DYEAGLFunctionPlayer *)self _linkProgram:v15 dispatcher:dispatcher])
  {
    (dispatcher->var1->delete_object_ARB)(*(dispatcher->var0 + 2), v15);
    return 0;
  }

  return v15;
}

- (void)_transformCoreAnimationLayer:(id)layer rotated:(BOOL)rotated
{
  rotatedCopy = rotated;
  layerCopy = layer;
  deviceInfo = [*&self->DYGLFunctionPlayer_opaque[OBJC_IVAR___DYGLFunctionPlayer__captureSessionInfo] deviceInfo];
  v8 = deviceInfo;
  v16 = 0.0;
  v17 = 0;
  v18 = 0;
  if (deviceInfo)
  {
    [deviceInfo mainScreenDescriptor];
    v9 = v16;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&CGAffineTransformIdentity.c;
  *&v15.a = *&CGAffineTransformIdentity.a;
  *&v15.c = v10;
  *&v15.tx = *&CGAffineTransformIdentity.tx;
  *&v14.a = *&v15.a;
  *&v14.c = v10;
  *&v14.tx = *&v15.tx;
  CGAffineTransformRotate(&v15, &v14, v9);
  v19 = v15;
  CGAffineTransformScale(&v14, &v19, 1.0, -1.0);
  v15 = v14;
  if (rotatedCopy)
  {
    v19 = v15;
    CGAffineTransformScale(&v14, &v19, -1.0, -1.0);
    v15 = v14;
  }

  v12 = HIDWORD(v17);
  v11 = v18;
  v13 = v17;
  sub_A3F4(&v19, 1, 1);
  v14 = v15;
  [layerCopy setAffineTransform:&v14];
  [layerCopy setFrame:{0.0, 0.0, (v13 / v11), (v12 / v11)}];
  sub_A4C0(&v19);
}

- (DYLayerManager)layerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1112) = 0u;
  *(self + 1128) = 0u;
  *(self + 286) = 1065353216;
  return self;
}

@end