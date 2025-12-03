@interface AXElementDetection
- (AXElementDetection)initWithBox:(CGRect)box defaultBox:(CGRect)defaultBox confidence:(float)confidence scale:(int)scale mergesCount:(int)count hasLabel:(BOOL)label label:(int)a9 labelName:(id)self0;
- (BOOL)isOverlappingLowMergeDet:(id)det withOverlapThreshold:(float)threshold withMergeCountDelta:(int)delta;
- (BOOL)isOverlappingSmallFace:(id)face withOverlapThreshold:(float)threshold withSizeRatio:(float)ratio;
- (CGPoint)boxCenter;
- (CGRect)box;
- (CGRect)defaultBox;
- (float)distanceToDefaultBox;
- (float)iOa:(id)oa;
- (float)overlap:(id)overlap;
- (float)smartDistance;
- (id)description;
@end

@implementation AXElementDetection

- (AXElementDetection)initWithBox:(CGRect)box defaultBox:(CGRect)defaultBox confidence:(float)confidence scale:(int)scale mergesCount:(int)count hasLabel:(BOOL)label label:(int)a9 labelName:(id)self0
{
  height = defaultBox.size.height;
  width = defaultBox.size.width;
  y = defaultBox.origin.y;
  x = defaultBox.origin.x;
  v19 = box.size.height;
  v20 = box.size.width;
  v21 = box.origin.y;
  v22 = box.origin.x;
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = AXElementDetection;
  v25 = [(AXElementDetection *)&v29 init];
  v26 = v25;
  if (v25)
  {
    v25->_box.origin.x = v22;
    v25->_box.origin.y = v21;
    v25->_box.size.width = v20;
    v25->_box.size.height = v19;
    v25->_defaultBox.origin.x = x;
    v25->_defaultBox.origin.y = y;
    v25->_defaultBox.size.width = width;
    v25->_defaultBox.size.height = height;
    v25->_confidence = confidence;
    v25->_mergesCount = count;
    v25->_scale = scale;
    v27 = v20 * v19;
    v25->_area = v27;
    v25->_hasLabel = label;
    v25->_label = a9;
    objc_storeStrong(&v25->_labelName, name);
  }

  return v26;
}

- (CGPoint)boxCenter
{
  [(AXElementDetection *)self box];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (float)distanceToDefaultBox
{
  [(AXElementDetection *)self boxCenter];
  v17 = v4;
  v18 = v3;
  [(AXElementDetection *)self defaultBox];
  v6.f64[1] = v5;
  __asm { FMOV            V3.2D, #0.5 }

  v13.f64[1] = v12;
  v14.f64[0] = v18;
  v14.f64[1] = v17;
  v15 = vdivq_f64(vsubq_f64(v14, vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v13, vmulq_f64(v6, _Q3))))), v6);
  return sqrt(vaddvq_f64(vmulq_f64(v15, v15)));
}

- (float)smartDistance
{
  [(AXElementDetection *)self distanceToDefaultBox];
  v4 = v3;
  [(AXElementDetection *)self confidence];
  return v4 + (1.0 - v5);
}

- (float)overlap:(id)overlap
{
  [overlap box];
  v18 = v5;
  v19 = v4;
  v21 = v6;
  v20 = v7;
  [(AXElementDetection *)self box];
  v8.f64[0] = v19;
  v8.f64[1] = v18;
  *&v8.f64[0] = vcvt_f32_f64(v8);
  v9.f64[0] = v21;
  v9.f64[1] = v20;
  *&v9.f64[0] = vcvt_f32_f64(v9);
  v10 = vadd_f32(*&v8.f64[0], *&v9.f64[0]);
  v12.f64[1] = v11;
  v14.f64[1] = v13;
  v15 = vcvt_f32_f64(vaddq_f64(v12, v14));
  v16 = vbsl_s8(vcgt_f32(v15, v10), v10, v15);
  *&v12.f64[0] = vcvt_f32_f64(v12);
  *&v12.f64[0] = vbsl_s8(vcgt_f32(*&v8.f64[0], *&v12.f64[0]), *&v8.f64[0], *&v12.f64[0]);
  *&v12.f64[0] = vbic_s8(vsub_f32(v16, *&v12.f64[0]), vcgt_f32(*&v12.f64[0], v16));
  *&v12.f64[0] = vmul_f32(vzip1_s32(*&v9.f64[0], *&v12.f64[0]), vzip2_s32(*&v9.f64[0], *&v12.f64[0]));
  return *(v12.f64 + 1) / ((*v12.f64 + self->_area) - *(v12.f64 + 1));
}

- (float)iOa:(id)oa
{
  [oa box];
  v18 = v5;
  v19 = v4;
  v21 = v6;
  v20 = v7;
  [(AXElementDetection *)self box];
  v8.f64[0] = v19;
  v8.f64[1] = v18;
  *&v8.f64[0] = vcvt_f32_f64(v8);
  v9.f64[0] = v21;
  v9.f64[1] = v20;
  *&v9.f64[0] = vcvt_f32_f64(v9);
  v10 = vadd_f32(*&v8.f64[0], *&v9.f64[0]);
  v12.f64[1] = v11;
  v14.f64[1] = v13;
  v15 = vcvt_f32_f64(vaddq_f64(v12, v14));
  v16 = vbsl_s8(vcgt_f32(v15, v10), v10, v15);
  *&v12.f64[0] = vcvt_f32_f64(v12);
  *&v12.f64[0] = vbsl_s8(vcgt_f32(*&v8.f64[0], *&v12.f64[0]), *&v8.f64[0], *&v12.f64[0]);
  *&v12.f64[0] = vbic_s8(vsub_f32(v16, *&v12.f64[0]), vcgt_f32(*&v12.f64[0], v16));
  LODWORD(result) = vdiv_f32(vmul_lane_f32(*&v12.f64[0], *&v12.f64[0], 1), vmul_lane_f32(*&v9.f64[0], *&v9.f64[0], 1)).u32[0];
  return result;
}

- (BOOL)isOverlappingSmallFace:(id)face withOverlapThreshold:(float)threshold withSizeRatio:(float)ratio
{
  [face box];
  v26 = v9;
  v27 = v8;
  v24 = v11;
  v25 = v10;
  [(AXElementDetection *)self box];
  v12.f64[0] = v25;
  v12.f64[1] = v24;
  v13 = vcvt_f32_f64(v12);
  v14 = vmul_lane_f32(v13, v13, 1);
  v15.f64[0] = v27;
  v15.f64[1] = v26;
  *&v15.f64[0] = vcvt_f32_f64(v15);
  v16 = vadd_f32(*&v15.f64[0], v13);
  v18.f64[1] = v17;
  v20.f64[1] = v19;
  v21 = vcvt_f32_f64(vaddq_f64(v18, v20));
  v22 = vbsl_s8(vcgt_f32(v21, v16), v16, v21);
  *&v18.f64[0] = vcvt_f32_f64(v18);
  *&v18.f64[0] = vbsl_s8(vcgt_f32(*&v15.f64[0], *&v18.f64[0]), *&v15.f64[0], *&v18.f64[0]);
  *&v18.f64[0] = vbic_s8(vsub_f32(v22, *&v18.f64[0]), vcgt_f32(*&v18.f64[0], v22));
  return vdiv_f32(vmul_lane_f32(*&v18.f64[0], *&v18.f64[0], 1), v14).f32[0] > threshold && v14.f32[0] <= (self->_area * ratio);
}

- (BOOL)isOverlappingLowMergeDet:(id)det withOverlapThreshold:(float)threshold withMergeCountDelta:(int)delta
{
  detCopy = det;
  [detCopy box];
  v26 = v10;
  v27 = v9;
  v28 = v12;
  v29 = v11;
  [(AXElementDetection *)self box];
  v13.f64[0] = v27;
  v13.f64[1] = v26;
  *&v13.f64[0] = vcvt_f32_f64(v13);
  v14.f64[0] = v29;
  v14.f64[1] = v28;
  *&v14.f64[0] = vcvt_f32_f64(v14);
  v15 = vadd_f32(*&v13.f64[0], *&v14.f64[0]);
  v17.f64[1] = v16;
  v19.f64[1] = v18;
  v20 = vcvt_f32_f64(vaddq_f64(v17, v19));
  v21 = vbsl_s8(vcgt_f32(v20, v15), v15, v20);
  *&v17.f64[0] = vcvt_f32_f64(v17);
  *&v17.f64[0] = vbsl_s8(vcgt_f32(*&v13.f64[0], *&v17.f64[0]), *&v13.f64[0], *&v17.f64[0]);
  *&v17.f64[0] = vbic_s8(vsub_f32(v21, *&v17.f64[0]), vcgt_f32(*&v17.f64[0], v21));
  v22 = COERCE_DOUBLE(vmul_f32(vzip1_s32(*&v14.f64[0], *&v17.f64[0]), vzip2_s32(*&v14.f64[0], *&v17.f64[0])));
  *&v22 = *(&v22 + 1) / ((*&v22 + self->_area) - *(&v22 + 1));
  if (*&v22 <= threshold)
  {
    v24 = 0;
  }

  else
  {
    mergesCount = self->_mergesCount;
    v24 = (mergesCount - [detCopy mergesCount]) > delta;
  }

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = AXElementDetection;
  v4 = [(AXElementDetection *)&v14 description];
  v5 = MEMORY[0x1E696B098];
  [(AXElementDetection *)self box];
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v10 = [v5 valueWithBytes:v13 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v11 = [v3 stringWithFormat:@"%@: %@", v4, v10];

  return v11;
}

- (CGRect)box
{
  x = self->_box.origin.x;
  y = self->_box.origin.y;
  width = self->_box.size.width;
  height = self->_box.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)defaultBox
{
  x = self->_defaultBox.origin.x;
  y = self->_defaultBox.origin.y;
  width = self->_defaultBox.size.width;
  height = self->_defaultBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end