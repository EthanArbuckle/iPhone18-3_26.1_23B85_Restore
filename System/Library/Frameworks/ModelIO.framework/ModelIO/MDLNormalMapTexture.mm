@interface MDLNormalMapTexture
- (MDLNormalMapTexture)initByGeneratingNormalMapWithTexture:(MDLTexture *)sourceTexture name:(NSString *)name smoothness:(float)smoothness contrast:(float)contrast;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
@end

@implementation MDLNormalMapTexture

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  if (self->super._channelEncoding != 1)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v8, v12, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v10, v11);
  }

  if (self->super._textureData.channelCount != 4)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v13, v17, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported", v15, v16);
  }

  v4.i32[0] = 0;
  v18.i32[1] = HIDWORD(*self->super._anon_118);
  v18.i32[0] = 1;
  v19 = vbsl_s8(vdup_lane_s32(vcgt_s32(v4, *self->super._anon_118), 0), v18, *self->super._anon_118);
  v20 = vbsl_s8(vdup_lane_s32(vcgt_s32(v4, vdup_lane_s32(v19, 1)), 0), (v19.u32[0] | 0x100000000), v19);
  if (v20.i32[0] >> level <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20.i32[0] >> level;
  }

  if (v20.i32[1] >> level <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v20.i32[1] >> level;
  }

  v23 = objc_msgSend_allocateDataAtLevel_(self, a2, level);
  v24 = v23;
  v27 = objc_msgSend_mutableBytes(v24, v25, v26);
  v30 = objc_msgSend_texelDataWithTopLeftOrigin(self->_sourceTexture, v28, v29);
  v31 = v30;
  v34 = objc_msgSend_bytes(v31, v32, v33);
  v37 = objc_msgSend_length(v23, v35, v36);
  memcpy(v27, v34, v37);
  sub_239F72130(v21, v22, v27, *(&self->super._hasAlphaValues + 2), self->_smoothness);

  return v23;
}

- (MDLNormalMapTexture)initByGeneratingNormalMapWithTexture:(MDLTexture *)sourceTexture name:(NSString *)name smoothness:(float)smoothness contrast:(float)contrast
{
  v11 = sourceTexture;
  v12 = name;
  v21.receiver = self;
  v21.super_class = MDLNormalMapTexture;
  v15 = [(MDLTexture *)&v21 init];
  if (v15)
  {
    if (v12)
    {
      v16 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v13, v12);
      v17 = v15->super._name;
      v15->super._name = v16;
    }

    objc_msgSend_dimensions(v11, v13, v14);
    *v15->super._anon_118 = v18;
    *&v15->super._anon_118[8] = 4 * v18;
    v15->super._textureData.channelCount = 4;
    v15->super._channelEncoding = 1;
    *(&v15->super._hasAlphaValues + 2) = smoothness;
    v15->_smoothness = contrast;
    objc_storeStrong(&v15->_sourceTexture, sourceTexture);
    v15->super._selfCreating = 1;
    v19 = v15;
  }

  return v15;
}

@end