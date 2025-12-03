@interface MDLNoiseTexture
- (MDLNoiseTexture)initCellularNoiseWithFrequency:(float)frequency name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding;
- (MDLNoiseTexture)initScalarNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding grayscale:(BOOL)grayscale;
- (MDLNoiseTexture)initVectorNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding;
- (id)_generateCellularNoiseAtLevel:(int64_t)level selector:(SEL)selector;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
@end

@implementation MDLNoiseTexture

- (id)_generateCellularNoiseAtLevel:(int64_t)level selector:(SEL)selector
{
  if (self->super._textureData.channelCount != 1)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v7, v11, @"ModelIOException", @"[%@ %@]: Only single channel textures supported for cellular noise", v9, v10);
  }

  v47 = *self->super._anon_118;
  smoothness = self->_smoothness;
  v13 = objc_msgSend_allocateDataAtLevel_(self, a2, level);
  v14 = v13;
  v17 = objc_msgSend_mutableBytes(v14, v15, v16);
  v18.i32[0] = 0;
  v19.i32[1] = v47.i32[1];
  v19.i32[0] = 1;
  v20 = vbsl_s8(vdup_lane_s32(vcgt_s32(v18, v47), 0), v19, v47);
  v21 = vbsl_s8(vdup_lane_s32(vcgt_s32(v18, vdup_lane_s32(v20, 1)), 0), (v20.u32[0] | 0x100000000), v20);
  v22 = v21.i32[1] >> level;
  if (v21.i32[0] >> level <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v21.i32[0] >> level);
  }

  v48 = smoothness * (1 << level);
  channelCount = self->super._textureData.channelCount;
  v25 = sub_239F6B868(self->super._channelEncoding);
  v27 = 0;
  if (v22 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v22;
  }

  do
  {
    v29 = 0;
    do
    {
      *&v30 = v29;
      *(&v30 + 1) = v27;
      v31 = vmulq_n_f32(v30, v48);
      v32 = vcvtms_s32_f32(v31.f32[2]);
      *v34.f32 = vrndm_f32(*v31.f32);
      v33 = vcvt_s32_f32(*v34.f32);
      v34.i64[1] = COERCE_UNSIGNED_INT(floorf(v31.f32[2]));
      v35 = -1;
      v36 = 3.4028e38;
      do
      {
        for (i = -1; i != 2; ++i)
        {
          for (j = -1; j != 2; ++j)
          {
            v39 = 12345 - 131238505 * ((16777619 * ((i + v33.i32[1]) ^ (16777619 * ((v35 + v33.i32[0]) ^ 0x811C9DC5)))) ^ (v32 + j));
            v40 = v39;
            v41 = 1103515245 * v39 + 12345;
            v26.f32[0] = v35 + (v40 * 2.3283e-10);
            v26.f32[1] = i + (v41 * 2.3283e-10);
            v26.f32[2] = j + ((1103515245 * v41 + 12345) * 2.3283e-10);
            v42 = vsubq_f32(v31, vaddq_f32(v34, v26));
            v26 = vmulq_f32(v42, v42);
            v43 = vaddv_f32(*v26.f32);
            if ((v43 + v26.f32[2]) < v36)
            {
              v36 = v43 + v26.f32[2];
            }
          }
        }

        ++v35;
      }

      while (v35 != 2);
      v44 = sqrtf(v36);
      if (v44 > 1.0)
      {
        v44 = 1.0;
      }

      v45 = v44 * 255.0;
      if (v45 > 255.0)
      {
        v45 = 255.0;
      }

      if (v45 < 0.0)
      {
        v45 = 0.0;
      }

      *(v17 + channelCount * v23 * (v25 / 8) * v27 + v29++) = v45;
    }

    while (v29 != v23);
    ++v27;
  }

  while (v27 != v28);

  return v13;
}

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  if (!*&self->_grayScale)
  {
    v19 = objc_msgSend__generateCellularNoiseAtLevel_selector_(self, a2, level, selector);
    goto LABEL_41;
  }

  if (self->super._channelEncoding != 1)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v8, v12, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v10, v11);
  }

  channelCount = self->super._textureData.channelCount;
  if (*(&self->super._hasAlphaValues + 1))
  {
    if (channelCount == 4)
    {
      goto LABEL_14;
    }

    v14 = MEMORY[0x277CBEAD8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v14, v18, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported for vector noise", v16, v17);
    goto LABEL_13;
  }

  if (channelCount != 1 && channelCount != 4)
  {
    v21 = MEMORY[0x277CBEAD8];
    v22 = objc_opt_class();
    v16 = NSStringFromClass(v22);
    v17 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v21, v23, @"ModelIOException", @"[%@ %@]: Only 1 and 4 channel textures supported for scalar noise", v16, v17);
LABEL_13:
  }

LABEL_14:
  v4.i32[0] = 0;
  v24.i32[1] = HIDWORD(*self->super._anon_118);
  v24.i32[0] = 1;
  v25 = vbsl_s8(vdup_lane_s32(vcgt_s32(v4, *self->super._anon_118), 0), v24, *self->super._anon_118);
  v26 = vbsl_s8(vdup_lane_s32(vcgt_s32(v4, vdup_lane_s32(v25, 1)), 0), (v25.u32[0] | 0x100000000), v25);
  v72 = v26.i32[1];
  if (v26.i32[0] >> level <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = (v26.i32[0] >> level);
  }

  v19 = objc_msgSend_allocateDataAtLevel_(self, a2, level);
  v28 = v19;
  v31 = objc_msgSend_mutableBytes(v28, v29, v30);
  v32 = v72 >> level;
  v33 = (1 << level);
  if (*(&self->super._hasAlphaValues + 1))
  {
    v34 = __exp10(((*(&self->super._hasAlphaValues + 2) * -2.0) + 3.0));
    v35 = 0;
    v36 = 0;
    *&v34 = v34;
    v37 = *&v34 * 0.00024414;
    v38 = v33 * 26.026;
    if (v32 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v32;
    }

    do
    {
      v40 = 0;
      v41 = v35;
      do
      {
        *v74 = 0;
        v73 = 0.0;
        v42 = sub_239E84CE8(&v74[1], v74, &v73, v37 * v40, v37 * v36, 0.0, 0.0);
        *(v31 + v41) = ((v38 * v74[1]) + 127.5);
        *(v31 + v41 + 1) = ((v38 * v74[0]) + 127.5);
        *(v31 + v41 + 2) = ((v38 * v73) + 127.5);
        *(v31 + v41 + 3) = ((v42 * 127.5) + 127.5);
        ++v40;
        v41 += 4;
      }

      while (v27 != v40);
      ++v36;
      v35 += 4 * v27;
    }

    while (v36 != v39);
  }

  else
  {
    v43 = v33;
    v44 = *(&self->super._hasAlphaValues + 2);
    if (v32 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = v32;
    }

    if (self->super._textureData.channelCount == 4)
    {
      v67 = v19;
      v46 = 0;
      v47 = 0;
      v48 = __exp10(((v44 * -2.0) + 3.0)) * v43;
      v50 = v48 * 0.00024414;
      v71 = vdupq_n_s32(0x42FF0000u);
      do
      {
        v51 = 0;
        v52 = v50 * v47;
        v53 = v46;
        do
        {
          v54 = v50 * v51;
          v49.f32[0] = v50 * v47;
          v49.i32[0] = sub_239F3883C(v54, *v49.i64);
          if (self->_vectorNoise)
          {
            v55 = 1.0;
            v56 = v49.i32[0];
            v57 = v49.f32[0];
          }

          else
          {
            v70 = v49.i32[0];
            v49.f32[0] = v52 + 1234.0;
            v69 = sub_239F3883C(v54 + 1337.0, *v49.i64);
            *&v58 = v52 + 11100.0;
            v68 = sub_239F3883C(v54 + -853.0, v58);
            *&v59 = v52 + -8732.0;
            v55 = sub_239F3883C(v54 + 611.0, v59);
            v56 = LODWORD(v69);
            v49.i32[0] = v70;
            v57 = v68;
          }

          v49.i32[1] = v56;
          v49.i64[1] = __PAIR64__(LODWORD(v55), LODWORD(v57));
          v60 = vmlaq_f32(v71, v71, v49);
          *(v31 + v53) = v60.f32[0];
          *(v31 + v53 + 1) = v60.f32[1];
          *(v31 + v53 + 2) = v60.f32[2];
          *(v31 + v53 + 3) = v60.f32[3];
          ++v51;
          v53 += 4;
        }

        while (v27 != v51);
        ++v47;
        v46 += 4 * v27;
      }

      while (v47 != v45);
      v19 = v67;
    }

    else
    {
      v61 = 0;
      v62 = __exp10(((v44 * -2.0) + 3.0)) * v43;
      v64 = v62 * 0.00024414;
      do
      {
        v65 = 0;
        do
        {
          *&v63 = v64 * v61;
          *(v31 + v65) = ((sub_239F3883C(v64 * v65, v63) * 127.5) + 127.5);
          ++v65;
        }

        while (v27 != v65);
        ++v61;
        v31 += v27;
      }

      while (v61 != v45);
    }
  }

LABEL_41:

  return v19;
}

- (MDLNoiseTexture)initVectorNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding
{
  v6 = channelEncoding;
  v9 = name;
  v17.receiver = self;
  v17.super_class = MDLNoiseTexture;
  v11 = [(MDLTexture *)&v17 init];
  if (v11)
  {
    if (v9)
    {
      v12 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v10, v9);
    }

    else
    {
      v12 = &stru_284D18478;
    }

    v13 = v11->super._name;
    v11->super._name = &v12->isa;

    *v11->super._anon_118 = textureDimensions;
    v11->super._textureData.channelCount = 4;
    v11->super._channelEncoding = 1;
    *&v11->super._anon_118[8] = (v6 & 0xF) * (4 * textureDimensions.i32[0]);
    *(&v11->super._hasAlphaValues + 1) = 1;
    *(&v11->super._hasAlphaValues + 2) = smoothness;
    v11->super._selfCreating = 1;
    v11->_vectorNoise = 0;
    *&v11->_grayScale = 1;
    v14 = v11;
  }

  return v11;
}

- (MDLNoiseTexture)initScalarNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding grayscale:(BOOL)grayscale
{
  v9 = channelEncoding;
  v13 = name;
  v21.receiver = self;
  v21.super_class = MDLNoiseTexture;
  v15 = [(MDLTexture *)&v21 init];
  if (v15)
  {
    if (v13)
    {
      v16 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v14, v13);
    }

    else
    {
      v16 = &stru_284D18478;
    }

    v17 = v15->super._name;
    v15->super._name = &v16->isa;

    *v15->super._anon_118 = textureDimensions;
    v15->super._textureData.channelCount = channelCount;
    v15->super._channelEncoding = 1;
    *&v15->super._anon_118[8] = (v9 & 0xF) * (textureDimensions.i32[0] * channelCount);
    *(&v15->super._hasAlphaValues + 1) = 0;
    *(&v15->super._hasAlphaValues + 2) = smoothness;
    v15->super._selfCreating = 1;
    v15->_vectorNoise = grayscale;
    *&v15->_grayScale = 1;
    v18 = v15;
  }

  return v15;
}

- (MDLNoiseTexture)initCellularNoiseWithFrequency:(float)frequency name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding
{
  v6 = channelEncoding;
  v9 = name;
  v18.receiver = self;
  v18.super_class = MDLNoiseTexture;
  v10 = [(MDLTexture *)&v18 init];
  v12 = v10;
  if (v10)
  {
    v10->_smoothness = frequency;
    if (v9)
    {
      v13 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v11, v9);
    }

    else
    {
      v13 = &stru_284D18478;
    }

    v14 = v12->super._name;
    v12->super._name = &v13->isa;

    *v12->super._anon_118 = textureDimensions;
    v12->super._textureData.channelCount = 1;
    v12->super._channelEncoding = 1;
    *&v12->super._anon_118[8] = (v6 & 0xF) * textureDimensions.i32[0];
    *(&v12->super._hasAlphaValues + 1) = 0;
    *(&v12->super._hasAlphaValues + 2) = 0;
    v12->super._selfCreating = 1;
    v12->_vectorNoise = 1;
    *&v12->_grayScale = 0;
    v15 = v12;
  }

  return v12;
}

@end