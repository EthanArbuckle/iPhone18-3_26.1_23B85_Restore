@interface CIToneCurve
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIToneCurve

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryColorAdjustment";
  v15[1] = @"CICategoryVideo";
  v15[2] = @"CICategoryStillImage";
  v15[3] = @"CICategoryInterlaced";
  v15[4] = @"CICategoryNonSquarePixels";
  v15[5] = @"CICategoryHighDynamicRange";
  v15[6] = @"CICategoryBuiltIn";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:7];
  v17[1] = @"5";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.7";
  v16[3] = @"inputPoint0";
  v13[0] = @"CIAttributeDefault";
  v14[0] = [CIVector vectorWithX:0.0 Y:0.0];
  v13[1] = @"CIAttributeIdentity";
  v13[2] = @"CIAttributeType";
  v14[1] = [CIVector vectorWithX:0.0 Y:0.0];
  v14[2] = @"CIAttributeTypeOffset";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[4] = @"inputPoint1";
  v11[0] = @"CIAttributeDefault";
  v12[0] = [CIVector vectorWithX:0.25 Y:0.25];
  v11[1] = @"CIAttributeIdentity";
  v11[2] = @"CIAttributeType";
  v12[1] = [CIVector vectorWithX:0.25 Y:0.25];
  v12[2] = @"CIAttributeTypeOffset";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v16[5] = @"inputPoint2";
  v9[0] = @"CIAttributeDefault";
  v10[0] = [CIVector vectorWithX:0.5 Y:0.5];
  v9[1] = @"CIAttributeIdentity";
  v9[2] = @"CIAttributeType";
  v10[1] = [CIVector vectorWithX:0.5 Y:0.5];
  v10[2] = @"CIAttributeTypeOffset";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v16[6] = @"inputPoint3";
  v7[0] = @"CIAttributeDefault";
  v8[0] = [CIVector vectorWithX:0.75 Y:0.75];
  v7[1] = @"CIAttributeIdentity";
  v7[2] = @"CIAttributeType";
  v8[1] = [CIVector vectorWithX:0.75 Y:0.75];
  v8[2] = @"CIAttributeTypeOffset";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v16[7] = @"inputPoint4";
  v5[0] = @"CIAttributeDefault";
  v6[0] = [CIVector vectorWithX:1.0 Y:1.0];
  v5[1] = @"CIAttributeIdentity";
  v5[2] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:1.0 Y:1.0];
  v6[2] = @"CIAttributeTypeOffset";
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v16[8] = @"inputExtrapolate";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeMin";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = @"CIAttributeTypeBoolean";
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

- (BOOL)_isIdentity
{
  [(CIVector *)self->inputPoint0 X];
  v4 = v3;
  [(CIVector *)self->inputPoint0 Y];
  if (vabdd_f64(v4, v5) >= 0.001)
  {
    return 0;
  }

  [(CIVector *)self->inputPoint1 X];
  v7 = v6;
  [(CIVector *)self->inputPoint1 Y];
  if (vabdd_f64(v7, v8) >= 0.001)
  {
    return 0;
  }

  [(CIVector *)self->inputPoint2 X];
  v10 = v9;
  [(CIVector *)self->inputPoint2 Y];
  if (vabdd_f64(v10, v11) >= 0.001)
  {
    return 0;
  }

  [(CIVector *)self->inputPoint3 X];
  v13 = v12;
  [(CIVector *)self->inputPoint3 Y];
  if (vabdd_f64(v13, v14) >= 0.001)
  {
    return 0;
  }

  [(CIVector *)self->inputPoint4 X];
  v16 = v15;
  [(CIVector *)self->inputPoint4 Y];
  return vabdd_f64(v16, v17) < 0.001;
}

- (id)outputImage
{
  v117 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  _isIdentity = [(CIToneCurve *)self _isIdentity];
  inputImage = self->inputImage;
  if (_isIdentity)
  {
    v5 = inputImage;

    return v5;
  }

  else
  {
    imageByUnpremultiplyingAlpha = [[(CIImage *)inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve"] imageByUnpremultiplyingAlpha];
    v8 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_toneCurve];
    [(CIVector *)self->inputPoint0 X];
    v10 = v9;
    v91 = v9;
    v11 = &v92;
    [(CIVector *)self->inputPoint0 Y];
    v92 = v12;
    [(CIVector *)self->inputPoint1 X];
    v93 = v13;
    [(CIVector *)self->inputPoint1 Y];
    v94 = v14;
    [(CIVector *)self->inputPoint2 X];
    v95[0] = v15;
    [(CIVector *)self->inputPoint2 Y];
    v95[1] = v16;
    [(CIVector *)self->inputPoint3 X];
    v18 = v17;
    v96 = v17;
    [(CIVector *)self->inputPoint3 Y];
    v97 = v19;
    [(CIVector *)self->inputPoint4 X];
    v21 = v20;
    v98 = v20;
    [(CIVector *)self->inputPoint4 Y];
    v22 = 0;
    v99 = v23;
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    v111 = 0;
    memset(v110, 0, sizeof(v110));
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v105 = 0;
    memset(v104, 0, sizeof(v104));
    v103 = 0;
    memset(v102, 0, sizeof(v102));
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    do
    {
      v24 = *v11;
      v11 += 2;
      v25 = v24;
      v114.f32[v22++] = v25;
    }

    while (v22 != 5);
    v26 = 0;
    v27 = 16;
    do
    {
      v28 = *(&v91 + v27);
      v29 = v28 - v10;
      *(v106 + v26) = v29;
      v26 += 4;
      v27 += 16;
      v10 = v28;
    }

    while (v26 != 16);
    v30 = 0;
    v31 = v114.f32[1];
    v32 = *v106;
    v33 = *v106;
    do
    {
      v34 = *(v106 + v30 * 4 + 4);
      v35 = v114.f32[v30 + 2];
      *(v104 + v30 * 4 + 4) = ((-3.0 / v33) * (v31 - v114.f32[v30])) + ((3.0 / v34) * (v35 - v31));
      ++v30;
      v33 = v34;
      v31 = v35;
    }

    while (v30 != 3);
    v36 = v95;
    v37 = 0.0;
    v38 = 4;
    v39 = 0.0;
    do
    {
      v40 = -((v39 * v32) - (*v36 - *(v36 - 4)) * 2.0);
      v41 = *(v104 + v38) - (v32 * v37);
      v42 = *(v106 + v38);
      v39 = v42 / v40;
      *(v102 + v38) = v42 / v40;
      v37 = v41 / v40;
      *(v100 + v38) = v41 / v40;
      v38 += 4;
      v36 += 2;
      v32 = v42;
    }

    while (v38 != 16);
    v43 = 0.0;
    v44 = *&v115;
    for (i = 3; i != -1; --i)
    {
      v46 = *(v100 + i * 4) - (*(v102 + i * 4) * v43);
      v110[0].f32[i] = v46;
      v47 = v114.f32[i];
      v48 = *(v106 + i * 4);
      v49 = ((v44 - v47) / v48);
      v50 = v48;
      *&v49 = v49 + (v43 + v46 * 2.0) * v50 * -0.333333333;
      v112[0].i32[i] = LODWORD(v49);
      v51 = (v43 - v46) / (v50 * 3.0);
      v108[0].f32[i] = v51;
      v44 = v47;
      v43 = v46;
    }

    v52 = v91;
    v87 = v93;
    v88 = *v95;
    v89 = v96;
    v81 = vcvtq_f64_f32(*v108[0].f32);
    v82 = vcvtq_f64_f32(*v114.f32);
    v79 = vcvtq_f64_f32(*v112[0].f32);
    v80 = vcvtq_f64_f32(*v110[0].f32);
    v83 = vcvt_hight_f64_f32(v108[0]);
    v84 = vcvt_hight_f64_f32(v110[0]);
    v85 = vcvt_hight_f64_f32(v112[0]);
    v86 = vcvt_hight_f64_f32(v114);
    v53 = v21 - v18;
    _D6 = v53;
    __asm { FMLA            D7, D6, V16.D[1] }

    v60 = vmuld_lane_f64(_D6, v84, 1);
    v61 = vmuld_lane_f64(_D6, v83, 1) * _D6;
    v62 = _D7 + v60 * _D6 + v61 * _D6;
    v63 = v85.f64[1] + v60 * 2.0 + v61 * 3.0;
    v64 = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:*&v79.f64[0] Z:? W:?];
    v65 = [CIVector vectorWithX:v82.f64[1] Y:v79.f64[1] Z:v80.f64[1] W:v81.f64[1]];
    v66 = [CIVector vectorWithX:v86.f64[0] Y:v85.f64[0] Z:v84.f64[0] W:v83.f64[0]];
    v67 = [CIVector vectorWithX:v86.f64[1] Y:v85.f64[1] Z:v84.f64[1] W:v83.f64[1]];
    v68 = [CIVector vectorWithX:v62 Y:v63 Z:0.0 W:0.0];
    if ([(NSNumber *)self->inputExtrapolate BOOLValue])
    {
      v69 = 1.0;
    }

    else
    {
      v69 = 0.0;
    }

    [(CIImage *)self->inputImage extent];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v90[0] = imageByUnpremultiplyingAlpha;
    v90[1] = [MEMORY[0x1E696AD98] numberWithDouble:v52];
    v90[2] = v64;
    v90[3] = [MEMORY[0x1E696AD98] numberWithDouble:v87];
    v90[4] = v65;
    v90[5] = [MEMORY[0x1E696AD98] numberWithDouble:v88];
    v90[6] = v66;
    v90[7] = [MEMORY[0x1E696AD98] numberWithDouble:v89];
    v90[8] = v67;
    v90[9] = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    v90[10] = v68;
    *&v78 = v69;
    v90[11] = [MEMORY[0x1E696AD98] numberWithFloat:v78];
    return -[CIImage imageByApplyingFilter:](-[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v8, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:12], v71, v73, v75, v77), "imageByPremultiplyingAlpha"), "imageByApplyingFilter:", @"CISRGBToneCurveToLinear");
  }
}

@end