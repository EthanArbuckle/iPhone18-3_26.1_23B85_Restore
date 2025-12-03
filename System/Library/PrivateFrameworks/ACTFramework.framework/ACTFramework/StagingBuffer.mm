@interface StagingBuffer
- (StagingBuffer)initWithContext:(__n128)context stagingWidth:(__n128)width stagingHeight:(__n128)height homography:(__n128)homography atlasHomography:(__n128)atlasHomography;
- (void)overlapWithAtlasHomography:(float32x4_t *)homography roi:(simd_float3x3)roi;
- (void)setAtlasHomography:(__n128)homography;
- (void)setHomographyToReference:(__n128)reference;
@end

@implementation StagingBuffer

- (void)overlapWithAtlasHomography:(float32x4_t *)homography roi:(simd_float3x3)roi
{
  v9 = __invert_f3(roi);
  v3 = 0;
  v4 = homography[6];
  v5 = homography[7];
  v6 = homography[8];
  v7 = v9;
  memset(v8, 0, sizeof(v8));
  do
  {
    v8[v3] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*&v7.columns[v3])), v5, *v7.columns[v3].f32, 1), v6, v7.columns[v3], 2);
    ++v3;
  }

  while (v3 != 3);
}

- (void)setHomographyToReference:(__n128)reference
{
  v4[0] = a2;
  v4[1] = reference;
  v4[2] = a4;
  objc_copyStruct((self + 48), v4, 48, 1, 0);
}

- (void)setAtlasHomography:(__n128)homography
{
  v4[0] = a2;
  v4[1] = homography;
  v4[2] = a4;
  objc_copyStruct((self + 96), v4, 48, 1, 0);
}

- (StagingBuffer)initWithContext:(__n128)context stagingWidth:(__n128)width stagingHeight:(__n128)height homography:(__n128)homography atlasHomography:(__n128)atlasHomography
{
  v14 = a9;
  v61.receiver = self;
  v61.super_class = StagingBuffer;
  v16 = [(StagingBuffer *)&v61 init];
  if (v16)
  {
    v17 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v15, 25, a10, a11, 0);
    objc_msgSend_setUsage_(v17, v18, 3, v19);
    v23 = objc_msgSend_device(v14, v20, v21, v22);
    v26 = objc_msgSend_newTextureWithDescriptor_(v23, v24, v17, v25);
    luma = v16->_luma;
    v16->_luma = v26;

    if (!v16->_luma)
    {
      goto LABEL_7;
    }

    v29 = a10 >> 1;
    v30 = a11 >> 1;
    v31 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v28, 65, v29, a11 >> 1, 0);

    objc_msgSend_setUsage_(v31, v32, 3, v33);
    v37 = objc_msgSend_device(v14, v34, v35, v36);
    v40 = objc_msgSend_newTextureWithDescriptor_(v37, v38, v31, v39);
    chroma = v16->_chroma;
    v16->_chroma = v40;

    if (!v16->_chroma)
    {
      v53 = 0;
      v17 = v31;
      goto LABEL_6;
    }

    v17 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v42, 25, v29, v30, 0);

    objc_msgSend_setUsage_(v17, v43, 3, v44);
    v48 = objc_msgSend_device(v14, v45, v46, v47);
    v51 = objc_msgSend_newTextureWithDescriptor_(v48, v49, v17, v50);
    weights = v16->_weights;
    v16->_weights = v51;

    if (v16->_weights)
    {
      *v16->_anon_30 = a2;
      *&v16->_anon_30[16] = context;
      *&v16->_anon_30[32] = width;
      *&v16[1].super.isa = height;
      *&v16[1]._luma = homography;
      *&v16[1]._weights = atlasHomography;
      v16->_dirty = 0;
      fig_note_initialize_category_with_default_work();
      v53 = v16;
    }

    else
    {
LABEL_7:
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
    v17 = 0;
  }

LABEL_6:

  return v53;
}

@end