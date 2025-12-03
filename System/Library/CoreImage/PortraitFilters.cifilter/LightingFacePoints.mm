@interface LightingFacePoints
- (CGPoint)bottomShadow;
- (CGPoint)centerChin;
- (CGPoint)centerNose;
- (CGPoint)leftEye;
- (CGPoint)noseTip;
- (CGPoint)rightEye;
- (CGRect)faceRect;
- (LightingFacePoints)initWithFaceLandmarkDictionary:(id)dictionary forImageRect:(CGRect)rect;
@end

@implementation LightingFacePoints

- (CGPoint)leftEye
{
  x = self->leftEye.x;
  y = self->leftEye.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)rightEye
{
  x = self->rightEye.x;
  y = self->rightEye.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)centerNose
{
  x = self->centerNose.x;
  y = self->centerNose.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomShadow
{
  x = self->bottomShadow.x;
  y = self->bottomShadow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)centerChin
{
  x = self->centerChin.x;
  y = self->centerChin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)noseTip
{
  x = self->noseTip.x;
  y = self->noseTip.y;
  result.y = y;
  result.x = x;
  return result;
}

- (LightingFacePoints)initWithFaceLandmarkDictionary:(id)dictionary forImageRect:(CGRect)rect
{
  rectCopy = rect;
  v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"orientation", "intValue"}];
  v7 = [dictionary objectForKeyedSubscript:@"allPoints"];
  v8 = [v7 count];
  v9 = 65;
  if (v8 > 0x41)
  {
    v9 = v8;
  }

  v85 = [+[NSMutableData dataWithLength:](NSMutableData mutableBytes:16 * v9];
  v10 = [dictionary objectForKeyedSubscript:@"faceBoundingBox"];
  [objc_msgSend(v10 objectForKeyedSubscript:{@"x", "doubleValue"}];
  v12 = v11;
  [objc_msgSend(v10 objectForKeyedSubscript:{@"y", "doubleValue"}];
  v14 = v13;
  [objc_msgSend(v10 objectForKeyedSubscript:{@"w", "doubleValue"}];
  v16 = v15;
  [objc_msgSend(v10 objectForKeyedSubscript:{@"h", "doubleValue"}];
  v18 = v17;
  v97.x = v12;
  v97.y = v14;
  v98.width = v16;
  v98.height = v17;
  v19 = v98;
  self->faceRect.origin = v97;
  self->faceRect.size = v19;
  selfCopy = self;
  if ([dictionary objectForKeyedSubscript:@"faceOrientationIndex"])
  {
    [objc_msgSend(dictionary objectForKeyedSubscript:{@"faceOrientationIndex", "floatValue"}];
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v22 = [v7 countByEnumeratingWithState:&v100 objects:&v104 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v101;
    do
    {
      v26 = 0;
      v27 = &v85[v24].f64[1];
      v24 += v23;
      do
      {
        if (*v101 != v25)
        {
          objc_enumerationMutation(v7);
        }

        v28 = *(*&v100.f64[1] + 8 * v26);
        [objc_msgSend(v28 objectForKeyedSubscript:{@"x", "doubleValue"}];
        v30 = v29;
        [objc_msgSend(v28 objectForKeyedSubscript:{@"y", "doubleValue"}];
        *(v27 - 1) = v30;
        *v27 = v31;
        v26 = v26 + 1;
        v27 += 2;
      }

      while (v23 != v26);
      v23 = [v7 countByEnumeratingWithState:&v100 objects:&v104 count:16];
    }

    while (v23);
  }

  selfCopy->rightKickLights[0] = v85[48];
  selfCopy->rightKickLights[1] = v85[49];
  selfCopy->rightKickLights[2] = v85[50];
  v32 = 0.0;
  v33 = 0.0;
  if (v21 < 0.0)
  {
    v34 = fmax(v21 * 0.5 / 3.14159, -0.075);
    v33 = v34;
  }

  selfCopy->rightKickLights[0].x = selfCopy->rightKickLights[0].x - v33;
  selfCopy->rightKickLights[1].x = selfCopy->rightKickLights[1].x - v33;
  selfCopy->rightKickLights[2].x = selfCopy->rightKickLights[2].x - v33;
  selfCopy->rightContour[0] = v85[46];
  selfCopy->rightContour[1] = v85[47];
  selfCopy->rightContour[2] = v85[48];
  selfCopy->rightContour[3] = v85[49];
  selfCopy->rightContour[4] = v85[50];
  if (v21 < 0.0)
  {
    v35 = fmax(v21 * 0.5 / 3.14159, -0.075);
    v32 = v35;
  }

  selfCopy->rightContour[0].x = selfCopy->rightContour[0].x - v32;
  selfCopy->rightContour[1].x = selfCopy->rightContour[1].x - v32;
  selfCopy->rightContour[2].x = selfCopy->rightContour[2].x - v32;
  selfCopy->rightContour[3].x = selfCopy->rightContour[3].x - v32;
  selfCopy->rightContour[4].x = selfCopy->rightContour[4].x - v32;
  selfCopy->leftKickLights[0] = v85[40];
  selfCopy->leftKickLights[1] = v85[41];
  selfCopy->leftKickLights[2] = v85[42];
  v36 = 0.0;
  v37 = 0.0;
  if (v21 > 0.0)
  {
    v38 = fmin(v21 * 0.1 / 3.14159, 0.0075);
    v37 = v38;
  }

  selfCopy->leftKickLights[0].x = v37 + selfCopy->leftKickLights[0].x;
  selfCopy->leftKickLights[1].x = v37 + selfCopy->leftKickLights[1].x;
  selfCopy->leftKickLights[2].x = v37 + selfCopy->leftKickLights[2].x;
  selfCopy->leftContour[0] = v85[40];
  selfCopy->leftContour[1] = v85[41];
  selfCopy->leftContour[2] = v85[42];
  selfCopy->leftContour[3] = v85[43];
  selfCopy->leftContour[4] = v85[44];
  if (v21 > 0.0)
  {
    v39 = fmin(v21 * 0.5 / 3.14159, 0.075);
    v36 = v39;
  }

  p_leftEye = &selfCopy->leftEye;
  selfCopy->leftContour[0].x = v36 + selfCopy->leftContour[0].x;
  selfCopy->leftContour[1].x = v36 + selfCopy->leftContour[1].x;
  selfCopy->leftContour[2].x = v36 + selfCopy->leftContour[2].x;
  selfCopy->leftContour[3].x = v36 + selfCopy->leftContour[3].x;
  selfCopy->leftContour[4].x = v36 + selfCopy->leftContour[4].x;
  selfCopy->centerNose = v85[61];
  v41 = v18;
  selfCopy->faceHeight = v41;
  v42 = v16;
  selfCopy->faceWidth = v42;
  selfCopy->bottomShadow = v85[45];
  selfCopy->bottomShadow.y = selfCopy->bottomShadow.y + v41 * -0.1;
  __asm { FMOV            V0.2D, #0.5 }

  selfCopy->centerChin = vmulq_f64(vaddq_f64(v85[31], v85[45]), _Q0);
  selfCopy->leftNose[0] = v85[51];
  selfCopy->leftNose[1] = v85[52];
  selfCopy->leftNose[2] = v85[53];
  selfCopy->leftNose[2].x = selfCopy->leftNose[2].x * 0.95;
  selfCopy->rightNose[0] = v85[57];
  selfCopy->rightNose[0].x = selfCopy->rightNose[0].x * 1.05;
  selfCopy->rightNose[1] = v85[58];
  selfCopy->rightNose[2] = v85[59];
  selfCopy->noseStrobe[0] = v85[61];
  selfCopy->noseStrobe[1] = v85[55];
  selfCopy->noseProtect[0] = v85[62];
  selfCopy->noseProtect[1] = v85[53];
  selfCopy->noseProtect[2] = v85[57];
  selfCopy->leftCheekContour[0] = v85[40];
  selfCopy->leftCheekContour[1] = v85[41];
  selfCopy->leftCheekContour[2] = v85[53];
  selfCopy->leftCheekContour[2].y = (v85[53].f64[1] + v85[24].f64[1]) * 0.5;
  selfCopy->leftCheekStrobe[0] = v85[52];
  selfCopy->leftCheekStrobe[1] = v85[53];
  selfCopy->leftCheekStrobe[2] = v85[40];
  selfCopy->rightCheekContour[0] = v85[57];
  selfCopy->rightCheekContour[0].y = (v85[57].f64[1] + v85[28].f64[1]) * 0.5;
  selfCopy->rightCheekContour[1] = v85[50];
  selfCopy->rightCheekContour[2] = v85[49];
  selfCopy->rightCheekStrobe[0] = v85[57];
  selfCopy->rightCheekStrobe[1] = v85[58];
  selfCopy->rightCheekStrobe[2] = v85[50];
  selfCopy->leftChinContour[0] = v85[42];
  selfCopy->leftChinContour[1] = v85[43];
  selfCopy->leftChinContour[2] = v85[44];
  selfCopy->leftNoseContour[0] = v85[51];
  selfCopy->leftNoseContour[1] = v85[52];
  selfCopy->leftNoseContour[2] = v85[53];
  selfCopy->rightChinContour[0] = v85[46];
  selfCopy->rightChinContour[1] = v85[47];
  selfCopy->rightChinContour[2] = v85[48];
  selfCopy->rightNoseContour[0] = v85[57];
  selfCopy->rightNoseContour[1] = v85[58];
  selfCopy->rightNoseContour[2] = v85[59];
  selfCopy->leftLipContour[0] = v85[33];
  selfCopy->leftLipContour[1] = v85[43];
  selfCopy->leftLipContour[2] = v85[44];
  selfCopy->rightLipContour[0] = v85[29];
  selfCopy->rightLipContour[1] = v85[46];
  selfCopy->rightLipContour[2] = v85[47];
  selfCopy->neckContour1[0] = v85[44];
  selfCopy->neckContour1[1] = v85[46];
  selfCopy->neckContour1[2] = v85[45];
  selfCopy->neckContour1[0].y = selfCopy->neckContour1[0].y + -0.03;
  selfCopy->neckContour1[1].y = selfCopy->neckContour1[1].y + -0.03;
  v48 = selfCopy->neckContour1[2].y + -0.18;
  selfCopy->neckContour1[2].y = v48;
  selfCopy->neckContourLeft[0] = v85[43];
  selfCopy->neckContourLeft[1] = v85[44];
  selfCopy->neckContourLeft[2].x = (v85[43].f64[0] + v85[44].f64[0]) * 0.5;
  v49 = v48 + 0.02;
  selfCopy->neckContourLeft[2].y = v49;
  selfCopy->neckContourRight[0] = v85[46];
  selfCopy->neckContourRight[1] = v85[47];
  selfCopy->neckContourRight[2].x = (v85[46].f64[0] + v85[47].f64[0]) * 0.5;
  selfCopy->neckContourRight[2].y = v49;
  selfCopy->chinSpot[0].x = v85[32].f64[0];
  selfCopy->chinSpot[0].y = v85[45].f64[1] * 0.25 + v85[32].f64[1] * 0.75;
  selfCopy->chinSpot[1].x = v85[30].f64[0];
  selfCopy->chinSpot[1].y = v85[45].f64[1] * 0.25 + v85[30].f64[1] * 0.75;
  selfCopy->chinSpot[2].x = v85[45].f64[0];
  selfCopy->chinSpot[2].y = v85[31].f64[1] * 0.25 + v85[45].f64[1] * 0.75;
  selfCopy->noseTip = vmlaq_f64(vmulq_f64(v85[55], _Q0), _Q0, v85[62]);
  selfCopy->rightEyeOutline[0] = v85[16];
  selfCopy->rightEyeOutline[1] = v85[18];
  selfCopy->rightEyeOutline[2] = v85[20];
  selfCopy->rightEyeOutline[3] = v85[22];
  selfCopy->leftEyeOutline[0] = v85[8];
  selfCopy->leftEyeOutline[1] = v85[10];
  selfCopy->leftEyeOutline[2] = v85[12];
  selfCopy->leftEyeOutline[3] = v85[14];
  v50 = 0;
  v51 = 8;
  do
  {
    v50 = vcvt_f32_f64(vaddq_f64(v85[v51++], vcvtq_f64_f32(v50)));
  }

  while ((v51 * 16) != 208);
  for (i = 12; i != 16; ++i)
  {
    v50 = vcvt_f32_f64(vaddq_f64(v85[i], vcvtq_f64_f32(v50)));
  }

  v53 = vcvt_f32_f64(vaddq_f64(v85[8], vcvtq_f64_f32(v50)));
  __asm { FMOV            V0.2S, #10.0 }

  *p_leftEye = vcvtq_f64_f32(vdiv_f32(v53, _D0));
  v55 = 0;
  do
  {
    v55 = vcvt_f32_f64(vaddq_f64(v85[i++], vcvtq_f64_f32(v55)));
  }

  while ((i * 16) != 336);
  for (j = 20; j != 24; ++j)
  {
    v55 = vcvt_f32_f64(vaddq_f64(v85[j], vcvtq_f64_f32(v55)));
  }

  v57 = 0;
  selfCopy->rightEye = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vaddq_f64(v85[16], vcvtq_f64_f32(v55))), _D0));
  v104 = v85[10];
  v100 = v85[14];
  v58 = v85[8];
  v95 = v85[12];
  v96 = v58;
  v59 = v85[18];
  v93 = v85[22];
  v94 = v59;
  v60 = v85[16];
  v91 = v85[20];
  v92 = v60;
  v61 = v85[62];
  v89 = v85[55];
  v90 = v61;
  do
  {
    rightEye = selfCopy->rightKickLights[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightKickLights[v57].x);
    rightEye = selfCopy->leftKickLights[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftKickLights[v57].x);
    rightEye = selfCopy->rightNose[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightNose[v57].x);
    rightEye = selfCopy->leftNose[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftNose[v57].x);
    rightEye = selfCopy->leftCheekContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftCheekContour[v57].x);
    rightEye = selfCopy->rightCheekContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightCheekContour[v57].x);
    rightEye = selfCopy->leftCheekStrobe[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftCheekStrobe[v57].x);
    rightEye = selfCopy->rightCheekStrobe[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightCheekStrobe[v57].x);
    rightEye = selfCopy->leftChinContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftChinContour[v57].x);
    rightEye = selfCopy->leftNoseContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftNoseContour[v57].x);
    rightEye = selfCopy->rightChinContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightChinContour[v57].x);
    rightEye = selfCopy->rightNoseContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightNoseContour[v57].x);
    rightEye = selfCopy->leftLipContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftLipContour[v57].x);
    rightEye = selfCopy->rightLipContour[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightLipContour[v57].x);
    rightEye = selfCopy->neckContour1[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->neckContour1[v57].x);
    rightEye = selfCopy->neckContourLeft[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->neckContourLeft[v57].x);
    rightEye = selfCopy->neckContourRight[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->neckContourRight[v57].x);
    rightEye = selfCopy->chinSpot[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->chinSpot[v57].x);
    rightEye = selfCopy->noseProtect[v57];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->noseProtect[v57++].x);
  }

  while (v57 != 3);
  for (k = 0; k != 5; ++k)
  {
    rightEye = selfCopy->rightContour[k];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightContour[k].x);
    rightEye = selfCopy->leftContour[k];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftContour[k].x);
  }

  for (m = 0; m != 4; ++m)
  {
    rightEye = selfCopy->rightEyeOutline[m];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightEyeOutline[m].x);
    rightEye = selfCopy->leftEyeOutline[m];
    sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftEyeOutline[m].x);
  }

  rightEye = *p_leftEye;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->leftEye.x);
  rightEye = selfCopy->rightEye;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->rightEye.x);
  rightEye = selfCopy->centerNose;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->centerNose.x);
  rightEye = selfCopy->bottomShadow;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->bottomShadow.x);
  rightEye = selfCopy->centerChin;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->centerChin.x);
  rightEye = selfCopy->noseStrobe[0];
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->noseStrobe[0].x);
  rightEye = selfCopy->noseStrobe[1];
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->noseStrobe[1].x);
  rightEye = selfCopy->noseTip;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, &selfCopy->noseTip.x);
  rightEye = v90;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v90.f64);
  rightEye = v89;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v89.f64);
  rightEye = v104;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v104.f64);
  rightEye = v100;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v100.f64);
  rightEye = v96;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v96.f64);
  rightEye = v95;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v95.f64);
  rightEye = v94;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v94.f64);
  rightEye = v93;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v93.f64);
  rightEye = v92;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v92.f64);
  rightEye = v91;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v91.f64);
  v64.f64[0] = v104.f64[1];
  v65.f64[0] = v100.f64[1];
  v66.f64[0] = v94.f64[1];
  v67.f64[0] = v93.f64[1];
  v64.f64[1] = v96.f64[0];
  v66.f64[1] = v92.f64[0];
  v65.f64[1] = v95.f64[0];
  v67.f64[1] = v91.f64[0];
  *&selfCopy->leftEyeHeight = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v64, v65)), vsubq_f64(v66, v67)));
  *v64.f64 = selfCopy->leftNose[2].x - selfCopy->rightNose[0].x;
  selfCopy->noseWidth = fabsf(*v64.f64);
  *v64.f64 = v90.f64[1] - v89.f64[1];
  selfCopy->noseHeight = fabsf(*v64.f64);
  *&v66.f64[0] = vdup_n_s32((v6 - 5) < 4);
  v68.i64[0] = LODWORD(v66.f64[0]);
  v68.i64[1] = HIDWORD(v66.f64[0]);
  *&selfCopy->faceHeight = vcvt_f32_f64(vmulq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v68, 0x3FuLL)), rectCopy.size, vextq_s8(rectCopy.size, rectCopy.size, 8uLL)), vcvtq_f64_f32(*&selfCopy->faceHeight)));
  v86 = *v85;
  v87 = v86;
  v69 = v86;
  v70 = v86;
  if (v83 > 1)
  {
    v71 = v87.f64[1];
    v72 = 2;
    v73 = v86.f64[1];
    v74 = 1;
    do
    {
      f64 = v85[v74].f64;
      v76 = f64[1];
      if (*f64 < v69.f64[0])
      {
        v69.f64[0] = *f64;
      }

      if (v76 < v71)
      {
        v71 = f64[1];
      }

      if (*f64 >= v70.f64[0])
      {
        v70.f64[0] = *f64;
      }

      if (v76 >= v73)
      {
        v73 = f64[1];
      }

      v74 = v72;
    }

    while (v83 > v72++);
    v87.f64[1] = v71;
    v86.f64[1] = v73;
  }

  v87.f64[0] = v69.f64[0];
  v86.f64[0] = v70.f64[0];
  rightEye = v87;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v87.f64);
  rightEye = v86;
  sub_273DC(v6, rightEye.f64, &v97.x, &rectCopy, v86.f64);
  if (v87.f64[0] >= v86.f64[0])
  {
    v78 = v86.f64[0];
  }

  else
  {
    v78 = v87.f64[0];
  }

  if (v87.f64[1] >= v86.f64[1])
  {
    v79 = v86.f64[1];
  }

  else
  {
    v79 = v87.f64[1];
  }

  v80 = vabdd_f64(v86.f64[0], v87.f64[0]);
  v81 = vabdd_f64(v86.f64[1], v87.f64[1]);
  selfCopy->faceRect.origin.x = v78;
  selfCopy->faceRect.origin.y = v79;
  selfCopy->faceRect.size.width = v80;
  selfCopy->faceRect.size.height = v81;
  return selfCopy;
}

- (CGRect)faceRect
{
  objc_copyStruct(v6, &self->faceRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end