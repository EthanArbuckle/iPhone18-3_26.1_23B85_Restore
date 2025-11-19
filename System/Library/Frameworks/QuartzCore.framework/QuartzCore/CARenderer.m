@interface CARenderer
+ (CARenderer)rendererWithEAGLContext:(id)a3 options:(id)a4;
+ (CARenderer)rendererWithMTLTexture:(id)tex options:(NSDictionary *)dict;
- (CFTimeInterval)nextFrameTime;
- (CGRect)bounds;
- (CGRect)updateBounds;
- (id)_initWithEAGLContext:(id)a3 options:(id)a4;
- (id)_initWithMTLTexture:(id)a3 options:(id)a4;
- (id)_initWithOptions:(id)a3;
- (void)addUpdateRect:(CGRect)r;
- (void)beginFrameAtTime:(CFTimeInterval)t timeStamp:(CVTimeStamp *)ts;
- (void)dealloc;
- (void)endFrame;
- (void)render;
- (void)setContext:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation CARenderer

- (void)endFrame
{
  priv = self->_priv;
  if (priv[10])
  {
    (*(*priv[3] + 456))(priv[3], (priv[14] & 0x200) == 0);
    v5 = self->_priv;
    v6 = *(v5 + 10);
    if (v6)
    {
      CA::Render::Update::~Update(v6, v4);
      MEMORY[0x1865EA9A0]();
      v5 = self->_priv;
    }

    *(v5 + 10) = 0;
  }
}

- (void)render
{
  v14[1] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v4 = priv[10];
  if (v4)
  {
    v5 = *(v4 + 2);
    if (v5)
    {
      if (v5 == 1)
      {
        return;
      }
    }

    else if (*(v5 + 4) == 6)
    {
      return;
    }

    if (BYTE5(ca_debug_options) == 1)
    {
      CA::Render::Update::print_trees(v4);
      priv = self->_priv;
    }

    if (priv[4])
    {
      v6 = [MEMORY[0x1E6977FE8] currentContext];
      v7 = self->_priv;
      v8 = *(v7 + 2);
      if (v8)
      {
        [MEMORY[0x1E6977FE8] setCurrentContext:?];
        v7 = self->_priv;
      }

      if ((*(v7 + 56) & 0x100) != 0)
      {
        v9 = *(v7 + 3);
        v14[0] = 0;
        (*(*v9 + 1000))(v9, &CA::Shape::_infinite_shape, v14);
        v7 = self->_priv;
      }

      CA::OGL::render(*(v7 + 4), *(v7 + 10), v8);
      v10 = self->_priv;
      v11 = *(v10 + 112);
      if (!v10[v11 + 25])
      {
        v10[v11 + 25] = *(*(v10 + 10) + 272);
        *(v10 + 56) = v10[28] & 0xFF01 ^ 1;
      }

      v12 = mach_absolute_time();
      v13 = CATimeWithHostTime(v12);
      CA::Render::collect(0, v13);
      CA::OGL::Renderer::collect(*(self->_priv + 4), *(self->_priv + 10), v13);
      if (*(self->_priv + 2))
      {
        [MEMORY[0x1E6977FE8] setCurrentContext:v6];
      }

      if (BYTE6(ca_debug_options) == 1)
      {
        CARenderShowStatistics();
      }
    }
  }
}

- (CFTimeInterval)nextFrameTime
{
  v2 = *(self->_priv + 10);
  if (v2)
  {
    return *(v2 + 88);
  }

  else
  {
    return INFINITY;
  }
}

- (void)addUpdateRect:(CGRect)r
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(self->_priv + 10);
  if (v4)
  {
    v5.i64[0] = *&r.origin.x;
    v5.i64[1] = *&r.origin.y;
    v3.f64[0] = 0.0;
    v6.i64[0] = *&r.size.width;
    v6.i64[1] = *&r.size.height;
    v7 = vdupq_lane_s64(vcgtq_f64(v3, r.size).i64[0], 0);
    v8.i64[1] = *&r.size.height;
    *v8.i64 = -r.size.width;
    v9 = vbslq_s8(v7, v8, v6);
    y = r.origin.y;
    r.size.width = r.size.width + r.origin.x;
    v11 = vbslq_s8(v7, r.size, v5);
    if (r.size.height < 0.0)
    {
      v11.f64[1] = r.size.height + r.origin.y;
      v9.f64[1] = -r.size.height;
    }

    v12 = vceqzq_f64(v9);
    if ((vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) != 0 || (v13 = vceqq_f64(v9, v9), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v13), 1), v13).u64[0] & 0x8000000000000000) != 0))
    {
      v16 = 0uLL;
    }

    else
    {
      v14 = vcvtmq_s64_f64(vmaxnmq_f64(v11, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v16 = vuzp1q_s32(v14, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v11, v9), vdupq_n_s64(0x41C0000000000000uLL))), v14));
    }

    v18 = 0u;
    v19 = 0u;
    *v17 = 0u;
    CA::Shape::operator=(v17, v16.i32);
    CA::shape_union((v4 + 16), v17, v15);
  }
}

- (CGRect)updateBounds
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(self->_priv + 10);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_4;
    }
  }

  else if (*(v3 + 4) == 6)
  {
LABEL_4:
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 16);
    goto LABEL_9;
  }

  v17 = 0;
  v18 = 0;
  CA::Shape::get_bounds(v3, &v17);
  v7.i32[1] = HIDWORD(v18);
  v8.i64[0] = v17;
  v8.i64[1] = SHIDWORD(v17);
  v9 = vcvtq_f64_s64(v8);
  v10 = HIDWORD(v18);
  v8.i64[0] = v18;
  v8.i64[1] = SHIDWORD(v18);
  v11 = v8;
  if (v18 > SHIDWORD(v18))
  {
    v10 = v18;
  }

  v7.i32[0] = v10;
  v6.i32[0] = 1073741822;
  v4 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v7, v6), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v9);
  v12 = vcvtq_f64_s64(v11);
  v13 = vdup_n_s32(v10 > 1073741822);
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v12);
LABEL_9:
  v15 = *&v4.i64[1];
  v16 = *&v5.i64[1];
  result.size.width = *v5.i64;
  result.origin.x = *v4.i64;
  result.size.height = v16;
  result.origin.y = v15;
  return result;
}

- (void)beginFrameAtTime:(CFTimeInterval)t timeStamp:(CVTimeStamp *)ts
{
  priv = self->_priv;
  if (priv[10])
  {
    [(CARenderer *)self endFrame:ts];
    priv = self->_priv;
  }

  v6 = *(priv + 112);
  v7 = *(priv + v6 + 25);
  if (v7)
  {
    *(priv + 27) = v7;
    *(priv + v6 + 25) = 0;
  }

  operator new();
}

- (CGRect)bounds
{
  priv = self->_priv;
  v3 = priv[5];
  v4 = priv[6];
  v5 = priv[7];
  v6 = priv[8];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    remove_observer(self);
    CGColorSpaceRelease(priv[9]);
    if (priv[10])
    {
      [(CARenderer *)self endFrame];
    }

    v4 = priv[4];
    if (v4)
    {
      CA::OGL::Renderer::~Renderer(priv[4]);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v4);
    }

    v5 = priv[3];
    if (v5)
    {
      (*(*v5 + 16))(v5, 0, 0, 0);
      v6 = priv[3];
      (*(*v6 + 272))(v6, 1);
      (*(*v6 + 8))(v6);
    }

    if (*priv)
    {
      CFRelease(*priv);
    }

    v7 = priv[2];
    if (v7)
    {
      CFRelease(v7);
    }

    free(priv);
    self->_priv = 0;
  }

  v8.receiver = self;
  v8.super_class = CARenderer;
  [(CARenderer *)&v8 dealloc];
}

- (id)_initWithEAGLContext:(id)a3 options:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {

    return 0;
  }

  v5 = [(CARenderer *)self _initWithOptions:a4];
  if (!v5)
  {
    return v5;
  }

  v6 = [a3 API];
  if (v6 != 3)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v15 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_FAULT))
    {
      v17[0] = 67109120;
      v17[1] = v6;
      _os_log_fault_impl(&dword_183AA6000, v15, OS_LOG_TYPE_FAULT, "CoreAnimation: GLES%d not supported by CARenderer on this device", v17, 8u);
    }

    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xB00uLL, 0xDEEC3011uLL);
  if (v7)
  {
    v7 = CA::OGL::GLESContext::GLESContext(v7, a3);
  }

  *(v5[1] + 24) = v7;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
  v9 = v8;
  if (v8)
  {
    v10 = *(v5[1] + 24);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = v10;
    v8[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
    v9[7] = 0;
    *(v9 + 24) = 1;
    *(v9 + 50) = 0;
  }

  *(v5[1] + 32) = v9;
  v11 = v5[1];
  v12 = *(v11 + 24);
  v13 = *(v11 + 88);
  v14 = *(v12 + 158);
  *(v12 + 158) = v13;
  *(v12 + 218) = global_feature_flags | v13;
  if (((v14 ^ v13) & 0x2000200) != 0)
  {
    CA::OGL::Context::update_color_program_cache(v12);
    v11 = v5[1];
    v12 = *(v11 + 24);
  }

  CA::OGL::Context::set_colorspace(v12, *(v11 + 72));
  *(*(v5[1] + 24) + 1384) |= 2u;
  *(*(v5[1] + 24) + 1384) |= 4u;
  *(v5[1] + 16) = a3;
  CFRetain(a3);
  return v5;
}

- (id)_initWithMTLTexture:(id)a3 options:(id)a4
{
  if (!a3)
  {

    return 0;
  }

  v6 = [(CARenderer *)self _initWithOptions:a4];
  if (!v6)
  {
    return v6;
  }

  v7 = [a3 device];
  v8 = [a4 objectForKey:@"kCARendererMetalCommandQueue"];
  v9 = v6[1];
  if (v8)
  {
    *(v9 + 112) |= 0x200u;
    v9 = v6[1];
  }

  *(v6[1] + 24) = CA::OGL::new_metal_context(v7, v8, 0, *(v9 + 88), 0, @"com.apple.coreanimation.CARenderer");
  v10 = *(v6[1] + 24);
  if (!v10)
  {

    return 0;
  }

  (*(*v10 + 16))(v10, 0, a3, 0);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v11 = malloc_type_zone_malloc(malloc_zone, 0x68uLL, 0x165299FDuLL);
  v12 = v11;
  if (v11)
  {
    v13 = *(v6[1] + 24);
    v11[1] = 0;
    v11[2] = 0;
    *v11 = v13;
    v11[6] = malloc_type_malloc(0x40000uLL, 0x369E734BuLL);
    v12[7] = 0;
    *(v12 + 24) = 1;
    *(v12 + 50) = 0;
  }

  *(v6[1] + 32) = v12;
  CA::OGL::Context::set_colorspace(*(v6[1] + 24), *(v6[1] + 72));
  *(*(v6[1] + 24) + 1384) |= 2u;
  *(*(v6[1] + 24) + 1384) |= 4u;
  return v6;
}

- (id)_initWithOptions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CARenderer;
  v4 = [(CARenderer *)&v14 init];
  if (v4)
  {
    v5 = malloc_type_malloc(0x1000uLL, 0x10A0040D47DAC5DuLL);
    v4->_priv = v5;
    if (v5)
    {
      v5[6] = 0u;
      v5[7] = 0u;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v4->_priv + 1) = 0;
      v6 = CFRetain(+[CAContext localContext]);
      priv = v4->_priv;
      *priv = v6;
      v8 = *MEMORY[0x1E695F050];
      *(priv + 56) = *(MEMORY[0x1E695F050] + 16);
      *(priv + 40) = v8;
      v9 = v4->_priv;
      v9[15] = 3968;
      *(v9 + 27) = 1;
      if (a3)
      {
        *(v4->_priv + 9) = [a3 objectForKey:@"kCARendererColorSpace"];
        v9 = v4->_priv;
      }

      v10 = *v9;
      if (v9[9])
      {
        [v10 setColorSpace:?];
      }

      else
      {
        *(v4->_priv + 9) = [v10 colorSpace];
      }

      CGColorSpaceRetain(*(v4->_priv + 9));
      v11 = [a3 objectForKey:@"kCARendererFlags"];
      if (v11)
      {
        *(v4->_priv + 22) = [v11 unsignedIntValue];
      }

      if ([objc_msgSend(a3 objectForKeyedSubscript:{@"kCARendererClearsDestination", "BOOLValue"}])
      {
        v12 = 256;
      }

      else
      {
        v12 = 0;
      }

      *(v4->_priv + 56) = *(v4->_priv + 56) & 0xFEFF | v12;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

+ (CARenderer)rendererWithMTLTexture:(id)tex options:(NSDictionary *)dict
{
  v4 = [[a1 alloc] _initWithMTLTexture:tex options:dict];

  return v4;
}

- (void)setDelegate:(id)a3
{
  if (*(self->_priv + 1) != a3)
  {
    remove_observer(self);
    *(self->_priv + 1) = a3;

    add_observer(self);
  }
}

- (void)setContext:(id)a3
{
  priv = self->_priv;
  if (*priv != a3)
  {
    if (*priv)
    {
      remove_observer(self);
      CFRelease(*self->_priv);
      priv = self->_priv;
    }

    *priv = a3;
    if (a3)
    {
      CFRetain(a3);
      add_observer(self);
      v6 = self->_priv;
      if (v6[9])
      {
        v7 = *v6;

        [v7 setColorSpace:?];
      }
    }
  }
}

+ (CARenderer)rendererWithEAGLContext:(id)a3 options:(id)a4
{
  v4 = [[a1 alloc] _initWithEAGLContext:a3 options:a4];

  return v4;
}

@end