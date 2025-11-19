@interface NTKMagmaQuad
- (BOOL)prepareForTime:(double)a3;
- (CGSize)size;
- (NTKMagmaEffectsRendererDelegate)delegate;
- (NTKMagmaQuad)initWithScale:(double)a3;
- (void)applyLineImpulseWithLinearFalloff:(NTKMagmaQuad *)self;
- (void)applyLineImpulseWithQuadraticFalloff:(NTKMagmaQuad *)self;
- (void)applyRandomImpulses:(float)a3;
- (void)applySpinWithMagnitude:(float)a3;
- (void)applyUniformImpulse:(NTKMagmaQuad *)self;
- (void)performOffscreenPassesWithCommandBuffer:(id)a3;
- (void)setBackgroundBottomColor:(id)a3;
- (void)setBackgroundTopColor:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setLogoColor:(id)a3;
- (void)setTimeFillColor:(id)a3;
- (void)setTimeOutlineColor:(id)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKMagmaQuad

- (NTKMagmaQuad)initWithScale:(double)a3
{
  v15.receiver = self;
  v15.super_class = NTKMagmaQuad;
  v4 = [(NTKMagmaQuad *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_screenScale = a3;
    v6 = +[CLKUIMetalResourceManager sharedDevice];
    device = v5->_device;
    v5->_device = v6;

    v8 = v5->_device;
    if (qword_1C210 != -1)
    {
      sub_A8F4();
    }

    v9 = qword_1C208;
    v10 = [(MTLDevice *)v8 newDefaultLibraryWithBundle:v9 error:0];
    library = v5->_library;
    v5->_library = v10;

    v12 = dispatch_semaphore_create(2);
    renderSemaphore = v5->_renderSemaphore;
    v5->_renderSemaphore = v12;
  }

  return v5;
}

- (void)setupForQuadView:(id)a3
{
  p_size = &self->_size;
  v5 = a3;
  [v5 bounds];
  p_size->width = v6;
  p_size->height = v7;
  v8 = [NTKMagmaEffectsRenderer alloc];
  device = self->_device;
  library = self->_library;
  [v5 bounds];
  v12 = (v11 * self->_screenScale);
  [v5 bounds];
  screenScale = self->_screenScale;
  v15 = (screenScale * v14);
  v16 = screenScale;
  v17 = [v5 colorPixelFormat];

  *&v18 = v16;
  v19 = [(NTKMagmaEffectsRenderer *)v8 initWithDevice:device library:library width:v12 height:v15 screenScale:v17 colorPixelFormat:v18];
  renderer = self->_renderer;
  self->_renderer = v19;

  _objc_release_x1();
}

- (BOOL)prepareForTime:(double)a3
{
  renderSemaphore = self->_renderSemaphore;
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(renderSemaphore, v6))
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_A91C(v7);
    }
  }

  else
  {
    if ([(NTKMagmaEffectsRenderer *)self->_renderer prepareForTime:a3])
    {
      return 1;
    }

    dispatch_semaphore_signal(self->_renderSemaphore);
  }

  return 0;
}

- (void)performOffscreenPassesWithCommandBuffer:(id)a3
{
  renderer = self->_renderer;
  v5 = a3;
  [(NTKMagmaEffectsRenderer *)renderer performOffscreenPassesWithCommandBuffer:v5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_9520;
  v6[3] = &unk_14728;
  v6[4] = self;
  [v5 addCompletedHandler:v6];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(NTKMagmaEffectsRenderer *)self->_renderer setDelegate:v4];
}

- (void)applyUniformImpulse:(NTKMagmaQuad *)self
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_9694;
  v3[3] = &unk_14748;
  v4 = v2;
  [(NTKMagmaQuad *)self applySpringImpulseWithBlock:v3];
}

- (void)applyRandomImpulses:(float)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_9708;
  v3[3] = &unk_14768;
  v4 = a3;
  [(NTKMagmaQuad *)self applySpringImpulseWithBlock:v3];
}

- (void)applyLineImpulseWithLinearFalloff:(NTKMagmaQuad *)self
{
  v3.i32[0] = vdup_lane_s32(v2, 1).u32[0];
  v3.f32[1] = -*v2.i32;
  v4 = vmul_f32(v3, v3);
  v4.i32[0] = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v5 = vrsqrte_f32(v4.u32[0]);
  v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9830;
  v7[3] = &unk_14788;
  v7[4] = vmul_n_f32(v3, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]);
  v8 = v2;
  [(NTKMagmaQuad *)self applySpringImpulseWithBlock:v7];
}

- (void)applyLineImpulseWithQuadraticFalloff:(NTKMagmaQuad *)self
{
  if (sqrtf(vaddv_f32(vmul_f32(v4, v4))) != 0.0)
  {
    v9[6] = v2;
    v9[7] = v3;
    v5.i32[0] = vdup_lane_s32(v4, 1).u32[0];
    v5.f32[1] = -v4.f32[0];
    v6 = vmul_f32(v5, v5);
    v6.i32[0] = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
    v7 = vrsqrte_f32(v6.u32[0]);
    v8 = vmul_f32(v7, vrsqrts_f32(v6.u32[0], vmul_f32(v7, v7)));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_9940;
    v9[3] = &unk_14788;
    v9[4] = vmul_n_f32(v5, vmul_f32(v8, vrsqrts_f32(v6.u32[0], vmul_f32(v8, v8))).f32[0]);
    v9[5] = v4;
    [(NTKMagmaQuad *)self applySpringImpulseWithBlock:v9];
  }
}

- (void)applySpinWithMagnitude:(float)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_99F8;
  v3[3] = &unk_147B0;
  v3[4] = self;
  v4 = a3;
  [(NTKMagmaQuad *)self applySpringImpulseWithBlock:v3];
}

- (void)setTimeFillColor:(id)a3
{
  objc_storeStrong(&self->_timeFillColor, a3);
  v5 = a3;
  CLKUIConvertToRGBfFromUIColor();
  [(NTKMagmaEffectsRenderer *)self->_renderer setTimeFillColor:?];
}

- (void)setTimeOutlineColor:(id)a3
{
  objc_storeStrong(&self->_timeOutlineColor, a3);
  v5 = a3;
  CLKUIConvertToRGBfFromUIColor();
  [(NTKMagmaEffectsRenderer *)self->_renderer setTimeOutlineColor:?];
}

- (void)setLogoColor:(id)a3
{
  objc_storeStrong(&self->_logoColor, a3);
  v6 = a3;
  CLKUIConvertToRGBfFromUIColor();
  [(NTKMagmaEffectsRenderer *)self->_renderer setLogoColor:*vmulq_laneq_f32(v5, v5, 3).i64];
}

- (void)setBackgroundTopColor:(id)a3
{
  objc_storeStrong(&self->_backgroundTopColor, a3);
  v5 = a3;
  CLKUIConvertToRGBfFromUIColor();
  [(NTKMagmaEffectsRenderer *)self->_renderer setBackgroundTopColor:?];
}

- (void)setBackgroundBottomColor:(id)a3
{
  objc_storeStrong(&self->_backgroundBottomColor, a3);
  v5 = a3;
  CLKUIConvertToRGBfFromUIColor();
  [(NTKMagmaEffectsRenderer *)self->_renderer setBackgroundBottomColor:?];
}

- (NTKMagmaEffectsRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end