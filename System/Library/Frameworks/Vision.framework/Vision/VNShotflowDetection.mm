@interface VNShotflowDetection
- (BOOL)isOverlappingLowMergeDet:(id)a3 withOverlapThreshold:(float)a4 withMergeCountDelta:(int)a5;
- (BOOL)isOverlappingSmallFace:(id)a3 withOverlapThreshold:(float)a4 withSizeRatio:(float)a5;
- (CGPoint)boxCenter;
- (CGRect)box;
- (CGRect)defaultBox;
- (VNShotflowDetection)initWithBox:(CGRect)a3 defaultBox:(CGRect)a4 confidence:(float)a5 scale:(int)a6 rotationAngle:(float)a7 yawAngle:(float)a8 pitchAngle:(float)a9 mergesCount:(int)a10 hasLabel:(BOOL)a11 label:(int)a12 petFaceScore:(float)a13 associatedX:(float)a14 associatedY:(float)a15 groupId:(int)a16;
- (float)distanceToDefaultBox;
- (float)intersectionOverArea:(id)a3;
- (float)intersectionOverMinArea:(id)a3;
- (float)overlap:(id)a3;
- (float)smartDistance;
- (id)description;
@end

@implementation VNShotflowDetection

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

- (id)description
{
  [(VNShotflowDetection *)self box];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%g, %g, %g, %g]", v3, v4, v5, v6];
  [(VNShotflowDetection *)self defaultBox];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%g, %g, %g, %g]", v8, v9, v10, v11];
  [(VNShotflowDetection *)self boxCenter];
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(%g, %g)", v13, v14];
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(VNShotflowDetection *)self confidence];
  v18 = v17;
  [(VNShotflowDetection *)self rotationAngle];
  v20 = v19;
  [(VNShotflowDetection *)self yawAngle];
  v22 = v21;
  v23 = [(VNShotflowDetection *)self label];
  [(VNShotflowDetection *)self petFaceScore];
  v25 = v24;
  [(VNShotflowDetection *)self associatedX];
  v27 = v26;
  [(VNShotflowDetection *)self associatedY];
  v29 = [v16 initWithFormat:@"box = %@; default box = %@; confidence = %f; rotationAngle = %f; yawAngle = %f label = %d petFaceScore = %f matchingX = %f matchingY %f; boxCenter = %@", v7, v12, v18, v20, v22, v23, v25, v27, v28, v15];

  return v29;
}

- (BOOL)isOverlappingLowMergeDet:(id)a3 withOverlapThreshold:(float)a4 withMergeCountDelta:(int)a5
{
  v8 = a3;
  [v8 box];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(VNShotflowDetection *)self box];
  v20 = v12;
  v21 = v16;
  v22 = v20 + v21;
  v23 = v10;
  v24 = v14;
  v25 = v24 * v21;
  v27 = v17 + v26;
  if ((v23 + v24) < v27)
  {
    v27 = v23 + v24;
  }

  v28 = v17;
  if (v23 >= v28)
  {
    v28 = v10;
  }

  v29 = fmaxf(v27 - v28, 0.0);
  v30 = v18 + v19;
  if (v22 < v30)
  {
    v30 = v22;
  }

  v31 = v18;
  if (v20 >= v31)
  {
    v31 = v12;
  }

  v32 = v29 * fmaxf(v30 - v31, 0.0);
  if ((v32 / ((v25 + self->_area) - v32)) <= a4)
  {
    v34 = 0;
  }

  else
  {
    mergesCount = self->_mergesCount;
    v34 = (mergesCount - [v8 mergesCount]) > a5;
  }

  return v34;
}

- (BOOL)isOverlappingSmallFace:(id)a3 withOverlapThreshold:(float)a4 withSizeRatio:(float)a5
{
  [a3 box];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v13 * v15;
  [(VNShotflowDetection *)self box];
  v20 = v11;
  v21 = v9;
  v23 = v17 + v22;
  if ((v21 + v13) < v23)
  {
    v23 = v21 + v13;
  }

  v24 = v17;
  if (v21 >= v24)
  {
    v24 = v9;
  }

  v25 = fmaxf(v23 - v24, 0.0);
  v26 = v18 + v19;
  if ((v20 + v15) < v26)
  {
    v26 = v20 + v15;
  }

  v27 = v18;
  if (v20 >= v27)
  {
    v27 = v11;
  }

  return ((v25 * fmaxf(v26 - v27, 0.0)) / v16) > a4 && v16 <= (self->_area * a5);
}

- (float)intersectionOverMinArea:(id)a3
{
  [a3 box];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(VNShotflowDetection *)self box];
  v16 = v7;
  v17 = v11;
  v18 = v16 + v17;
  v19 = v5;
  v20 = v9;
  v21 = v19 + v20;
  v22 = v20 * v17;
  v23 = v12 + v14;
  if (v21 < v23)
  {
    v23 = v21;
  }

  v24 = v12;
  if (v19 >= v24)
  {
    v24 = v5;
  }

  v25 = fmaxf(v23 - v24, 0.0);
  v26 = v13 + v15;
  if (v18 >= v26)
  {
    v18 = v13 + v15;
  }

  v27 = v13;
  if (v16 >= v27)
  {
    v27 = v7;
  }

  v28 = v25 * fmaxf(v18 - v27, 0.0);
  if (v15 * v14 <= v22)
  {
    v29 = v15 * v14;
    v30 = v29;
  }

  else
  {
    v30 = v22;
  }

  return v28 / v30;
}

- (float)intersectionOverArea:(id)a3
{
  [a3 box];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(VNShotflowDetection *)self box];
  v15 = v7;
  v16 = v11;
  v17 = v15 + v16;
  v18 = v5;
  v19 = v9;
  v20 = v19 * v16;
  v22 = v12 + v21;
  if ((v18 + v19) < v22)
  {
    v22 = v18 + v19;
  }

  v23 = v12;
  if (v18 >= v23)
  {
    v23 = v5;
  }

  v24 = fmaxf(v22 - v23, 0.0);
  v25 = v13 + v14;
  if (v17 < v25)
  {
    v25 = v17;
  }

  v26 = v13;
  if (v15 >= v26)
  {
    v26 = v7;
  }

  return (v24 * fmaxf(v25 - v26, 0.0)) / v20;
}

- (float)overlap:(id)a3
{
  [a3 box];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(VNShotflowDetection *)self box];
  v15 = v7;
  v16 = v11;
  v17 = v15 + v16;
  v18 = v5;
  v19 = v9;
  v20 = v19 * v16;
  v22 = v12 + v21;
  if ((v18 + v19) < v22)
  {
    v22 = v18 + v19;
  }

  v23 = v12;
  if (v18 >= v23)
  {
    v23 = v5;
  }

  v24 = fmaxf(v22 - v23, 0.0);
  v25 = v13 + v14;
  if (v17 < v25)
  {
    v25 = v17;
  }

  v26 = v13;
  if (v15 >= v26)
  {
    v26 = v7;
  }

  v27 = fmaxf(v25 - v26, 0.0);
  return (v24 * v27) / ((v20 + self->_area) - (v24 * v27));
}

- (float)smartDistance
{
  [(VNShotflowDetection *)self distanceToDefaultBox];
  v4 = v3;
  [(VNShotflowDetection *)self confidence];
  return v4 + (1.0 - v5);
}

- (float)distanceToDefaultBox
{
  [(VNShotflowDetection *)self boxCenter];
  v17 = v4;
  v18 = v3;
  [(VNShotflowDetection *)self defaultBox];
  v6.f64[1] = v5;
  __asm { FMOV            V3.2D, #0.5 }

  v13.f64[1] = v12;
  v14.f64[0] = v18;
  v14.f64[1] = v17;
  v15 = vdivq_f64(vsubq_f64(v14, vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v13, vmulq_f64(v6, _Q3))))), v6);
  return sqrt(vaddvq_f64(vmulq_f64(v15, v15)));
}

- (CGPoint)boxCenter
{
  [(VNShotflowDetection *)self box];
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

- (VNShotflowDetection)initWithBox:(CGRect)a3 defaultBox:(CGRect)a4 confidence:(float)a5 scale:(int)a6 rotationAngle:(float)a7 yawAngle:(float)a8 pitchAngle:(float)a9 mergesCount:(int)a10 hasLabel:(BOOL)a11 label:(int)a12 petFaceScore:(float)a13 associatedX:(float)a14 associatedY:(float)a15 groupId:(int)a16
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v25 = a3.size.height;
  v26 = a3.size.width;
  v27 = a3.origin.y;
  v28 = a3.origin.x;
  v31.receiver = self;
  v31.super_class = VNShotflowDetection;
  result = [(VNShotflowDetection *)&v31 init];
  if (result)
  {
    result->_box.origin.x = v28;
    result->_box.origin.y = v27;
    result->_box.size.width = v26;
    result->_box.size.height = v25;
    result->_defaultBox.origin.x = x;
    result->_defaultBox.origin.y = y;
    result->_defaultBox.size.width = width;
    result->_defaultBox.size.height = height;
    result->_confidence = a5;
    result->_mergesCount = a10;
    result->_scale = a6;
    result->_rotationAngle = a7;
    result->_yawAngle = a8;
    result->_pitchAngle = a9;
    v30 = v26 * v25;
    result->_area = v30;
    result->_hasLabel = a11;
    result->_label = a12;
    result->_petFaceScore = a13;
    result->_associatedX = a14;
    result->_associatedY = a15;
    result->_groupId = a16;
  }

  return result;
}

@end