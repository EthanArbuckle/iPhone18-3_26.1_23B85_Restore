@interface MDLColorSwatchTexture
- (MDLColorSwatchTexture)initWithColorGradientFrom:(CGColorRef)color1 toColor:(CGColorRef)color2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions;
- (MDLColorSwatchTexture)initWithColorTemperatureGradientFrom:(float)colorTemperature1 toColorTemperature:(float)colorTemperature2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
@end

@implementation MDLColorSwatchTexture

- (MDLColorSwatchTexture)initWithColorTemperatureGradientFrom:(float)colorTemperature1 toColorTemperature:(float)colorTemperature2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions
{
  v9 = name;
  v17.receiver = self;
  v17.super_class = MDLColorSwatchTexture;
  v11 = [(MDLTexture *)&v17 init];
  if (v11)
  {
    if (v9)
    {
      v12 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v10, v9);
      v13 = v11->super._name;
      v11->super._name = v12;
    }

    *v11->super._anon_118 = textureDimensions;
    *&v11->super._anon_118[8] = 4 * textureDimensions.i32[0];
    v11->super._textureData.channelCount = 4;
    *(&v11->super._hasAlphaValues + 2) = colorTemperature1;
    v11->_colorTemperature1 = colorTemperature2;
    v11->super._channelEncoding = 1;
    v11->_type = 0;
    v11->super._selfCreating = 1;
    v14 = v11;
  }

  return v11;
}

- (MDLColorSwatchTexture)initWithColorGradientFrom:(CGColorRef)color1 toColor:(CGColorRef)color2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions
{
  v9 = name;
  v17.receiver = self;
  v17.super_class = MDLColorSwatchTexture;
  v11 = [(MDLTexture *)&v17 init];
  if (v11)
  {
    if (v9)
    {
      v12 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v10, v9);
      v13 = v11->super._name;
      v11->super._name = v12;
    }

    *v11->super._anon_118 = textureDimensions;
    *&v11->super._anon_118[8] = 4 * textureDimensions.i32[0];
    v11->super._textureData.channelCount = 4;
    v11->_color1 = color1;
    v11->_color2 = color2;
    v11->super._channelEncoding = 1;
    v11->_type = 1;
    v11->super._selfCreating = 1;
    v14 = v11;
  }

  return v11;
}

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  if (self->super._channelEncoding != 1)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v7, v11, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v9, v10);
  }

  if (self->super._textureData.channelCount != 4)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v12, v16, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported", v14, v15);
  }

  v62 = *self->super._anon_118;
  v17 = objc_msgSend_allocateDataAtLevel_(self, a2, level);
  v18 = v17;
  v21 = objc_msgSend_mutableBytes(v18, v19, v20);
  v24.i32[0] = 0;
  v25.i32[1] = v62.i32[1];
  v25.i32[0] = 1;
  v26 = vbsl_s8(vdup_lane_s32(vcgt_s32(v24, v62), 0), v25, v62);
  v27 = v26.u32[0] | 0x100000000;
  v28 = vbsl_s8(vdup_lane_s32(vcgt_s32(v24, vdup_lane_s32(v26, 1)), 0), v27, v26);
  v29 = v28.i32[0] >> level;
  if (v28.i32[1] >> level <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = (v28.i32[1] >> level);
  }

  if (v29 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  v28.i32[0] = 1.0;
  v32 = 1.0 / v30;
  v33 = (4 * v31);
  if (self->_type)
  {
    color1 = self->_color1;
    if (color1 && self->_color2)
    {
      *v35.f32 = sub_239E84A8C(color1);
      v63 = v35;
      *v36.f32 = sub_239E84A8C(self->_color2);
      v61 = v36;
      v40 = 0;
      v60 = vdupq_n_s32(0x437F0000u);
      do
      {
        v41 = v32 * v40;
        v37.n64_f32[0] = 1.0 - v41;
        *v42.i64 = sub_239E84C14(vmlaq_n_f32(vmulq_n_f32(v63, v41), v61, 1.0 - v41), v37.n64_f64[0], *v61.i64, *v63.i64, v38.n64_f64[0], v39);
        v42.i32[3] = 1.0;
        v37.n64_u32[1] = v60.u32[1];
        *v42.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v42, v60)));
        v43 = vuzp1_s8(*v42.f32, *v42.f32).u32[0];
        v44 = v31;
        v45 = v21;
        do
        {
          *v45++ = v43;
          --v44;
        }

        while (v44);
        ++v40;
        v21 += v33;
      }

      while (v40 != v30);
    }

    else
    {
      v46 = 0;
      v28.i32[0] = 1.0;
      v47 = vdupq_n_s32(0x437F0000u);
      do
      {
        *&v27 = v32 * v46;
        v48 = vdupq_lane_s32(v27, 0);
        v48.i32[3] = 1.0;
        v27 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(v48, v47))), v28);
        v49 = v31;
        v50 = v21;
        do
        {
          *v50++ = v27;
          --v49;
        }

        while (v49);
        ++v46;
        v21 += v33;
      }

      while (v46 != v30);
    }
  }

  else
  {
    v51 = 0;
    v52 = vdupq_n_s32(0x437F0000u);
    v22.i32[0] = 1170939904;
    do
    {
      *v23.i32 = self->_colorTemperature1 + ((v32 * v51) * (*(&self->super._hasAlphaValues + 2) - self->_colorTemperature1));
      v53.i64[0] = 0;
      v53.i32[2] = 0;
      if (*v23.i32 >= 1000.0 && *v23.i32 <= 40000.0)
      {
        v54 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v22, v23)), 0);
        v55 = vaddq_f32(vdivq_f32(vbslq_s8(v54, xmmword_239F9B9E0, xmmword_239F9B9D0), vaddq_f32(vbslq_s8(v54, xmmword_239F9BA00, xmmword_239F9B9F0), vdupq_lane_s32(*v23.i8, 0))), vbslq_s8(v54, xmmword_239F9B9C0, xmmword_239F9B9B0));
        v55.i32[3] = 0;
        v56 = vmaxnmq_f32(v55, 0);
        v56.i32[3] = 0;
        v53 = vminnmq_f32(v56, xmmword_239F9BA10);
      }

      v53.i32[3] = 1.0;
      v23 = vcvtq_s32_f32(vmulq_f32(v53, v52));
      *v23.i8 = vuzp1_s8(vmovn_s32(v23), v28);
      v57 = v31;
      v58 = v21;
      do
      {
        *v58++ = v23.i32[0];
        --v57;
      }

      while (v57);
      ++v51;
      v21 += v33;
    }

    while (v51 != v30);
  }

  return v17;
}

@end