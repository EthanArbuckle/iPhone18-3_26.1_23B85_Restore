@interface MDLCheckerboardTexture
- (MDLCheckerboardTexture)initWithDivisions:(float)divisions name:(NSString *)name dimensions:(vector_int2)dimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding color1:(CGColorRef)color1 color2:(CGColorRef)color2;
- (id)generateDataAtLevel:(int64_t)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)setColor1:(CGColorRef)color1;
- (void)setColor2:(CGColorRef)color2;
- (void)setDivisions:(float)divisions;
@end

@implementation MDLCheckerboardTexture

- (void)dealloc
{
  v3 = *&self->_divisions;
  if (v3)
  {
    CFRelease(v3);
  }

  color1 = self->_color1;
  if (color1)
  {
    CFRelease(color1);
  }

  v5.receiver = self;
  v5.super_class = MDLCheckerboardTexture;
  [(MDLCheckerboardTexture *)&v5 dealloc];
}

- (void)setDivisions:(float)divisions
{
  if (*(&self->super._hasAlphaValues + 2) != divisions)
  {
    *(&self->super._hasAlphaValues + 2) = divisions;
  }
}

- (void)setColor1:(CGColorRef)color1
{
  if (color1)
  {
    objc_msgSend_clearTexelData(self, a2, color1);
    v5 = *&self->_divisions;
    if (v5)
    {
      CGColorRelease(v5);
    }

    *&self->_divisions = CGColorCreateCopy(color1);
  }
}

- (void)setColor2:(CGColorRef)color2
{
  if (color2)
  {
    objc_msgSend_clearTexelData(self, a2, color2);
    color1 = self->_color1;
    if (color1)
    {
      CGColorRelease(color1);
    }

    self->_color1 = CGColorCreateCopy(color2);
  }
}

- (id)generateDataAtLevel:(int64_t)a3 selector:(SEL)a4
{
  if (self->super._channelEncoding != 1)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a4);
    objc_msgSend_raise_format_(v7, v11, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v9, v10);
  }

  if (self->super._textureData.channelCount != 4)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a4);
    objc_msgSend_raise_format_(v12, v16, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported", v14, v15);
  }

  v50 = *self->super._anon_118;
  v17 = objc_msgSend_allocateDataAtLevel_(self, a2, a3);
  v18 = v17;
  v21 = objc_msgSend_mutableBytes(v18, v19, v20);
  Components = CGColorGetComponents(*&self->_divisions);
  v23 = CGColorGetComponents(self->_color1);
  v25.i32[0] = 0;
  v26.i32[0] = 0;
  v27 = 0;
  v28.i32[1] = v50.i32[1];
  v28.i32[0] = 1;
  v29 = vbsl_s8(vdup_lane_s32(vcgt_s32(v25, v50), 0), v28, v50);
  v30 = vmax_s32(vshl_s32(vbsl_s8(vdup_lane_s32(vcgt_s32(v25, vdup_lane_s32(v29, 1)), 0), (v29.u32[0] | 0x100000000), v29), vneg_s32(vdup_n_s32(a3))), 0x100000001);
  v32 = *Components;
  v31 = *(Components + 2);
  v34 = *v23;
  v33 = *(v23 + 2);
  v35 = vcvt_f32_u32(v30);
  v36 = v30.u32[0];
  v37 = (4 * v30.i32[0]);
  v38 = vdupq_n_s32(0x437F0000u);
  v39 = v30.u32[1];
  __asm { FMOV            V6.2S, #1.0 }

  v45 = vdiv_f32(_D6, v35);
  v46.i64[0] = 0x100000001;
  v46.i64[1] = 0x100000001;
  do
  {
    v47 = 0;
    do
    {
      *v24.i32 = v47;
      *&v24.i32[1] = v27;
      *v24.i8 = vcvt_s32_f32(vmul_f32(vmul_n_f32(*v24.i8, *(&self->super._hasAlphaValues + 2)), v45));
      *v24.i8 = vadd_s32(vdup_lane_s32(*v24.i8, 1), *v24.i8);
      v48 = vdupq_lane_s32(*&vceqq_s32(vandq_s8(v24, v46), v26), 0);
      v24 = vcvtq_s32_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vbslq_s8(v48, v34, v32)), vbslq_s8(v48, v33, v31)), v38));
      *(v21 + 4 * v47++) = vuzp1_s8(vmovn_s32(v24), *v26.i8).u32[0];
    }

    while (v36 != v47);
    ++v27;
    v21 += v37;
  }

  while (v27 != v39);

  return v17;
}

- (MDLCheckerboardTexture)initWithDivisions:(float)divisions name:(NSString *)name dimensions:(vector_int2)dimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding color1:(CGColorRef)color1 color2:(CGColorRef)color2
{
  v16 = name;
  v23.receiver = self;
  v23.super_class = MDLCheckerboardTexture;
  v18 = [(MDLTexture *)&v23 init];
  if (v18)
  {
    if (v16)
    {
      v19 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v17, v16);
      v20 = v18->super._name;
      v18->super._name = v19;
    }

    *v18->super._anon_118 = dimensions;
    *(&v18->super._hasAlphaValues + 2) = divisions;
    *&v18->_divisions = CGColorCreateCopy(color1);
    v18->_color1 = CGColorCreateCopy(color2);
    *&v18->super._anon_118[8] = (4 * *v18->super._anon_118);
    v18->super._textureData.channelCount = channelCount;
    v18->super._channelEncoding = channelEncoding;
    v18->super._selfCreating = 1;
    v21 = v18;
  }

  return v18;
}

@end