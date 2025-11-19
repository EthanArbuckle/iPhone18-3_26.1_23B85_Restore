@interface CIPinchDistortion
+ (id)customAttributes;
- (CGRect)computeDOD:(float)a3 scale:(float)a4;
- (id)outputImage;
@end

@implementation CIPinchDistortion

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"6";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputCenter";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v8[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10845E8;
  v6[1] = &unk_1F10845E8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F10845F8;
  v6[3] = &unk_1F1084608;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10845E8;
  v6[5] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10845E8;
  v4[1] = &unk_1F10845E8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084618;
  v4[3] = &unk_1F1084628;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10845E8;
  v4[5] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (CGRect)computeDOD:(float)a3 scale:(float)a4
{
  v128 = *(MEMORY[0x1E695F050] + 8);
  v130 = *MEMORY[0x1E695F050];
  v126 = *(MEMORY[0x1E695F050] + 16);
  v124 = *(MEMORY[0x1E695F050] + 24);
  [(CIImage *)self->inputImage extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CIVector *)self->inputCenter X];
  v15 = v14;
  [(CIVector *)self->inputCenter Y];
  v17 = v16;
  v136.origin.x = v7;
  v136.origin.y = v9;
  v134 = v11;
  v136.size.width = v11;
  v18 = v13;
  v136.size.height = v13;
  if (CGRectIsInfinite(v136))
  {
    v24 = v134;
    v25 = v7;
    v26 = v9;
    v27 = v13;
  }

  else
  {
    v28.f32[0] = v15;
    v29 = v17;
    v120 = v28.f32[0];
    v121 = v29;
    v28.f32[1] = v29;
    v135 = v28;
    v132 = v7;
    v30.f32[0] = v7;
    *&v19 = v9;
    v122 = LODWORD(v19);
    v123 = v30.i32[0];
    v30.i32[1] = LODWORD(v19);
    *&v19 = a3;
    v31 = map_point_inv(v30, v28, v19, a4, v20, v21, v22, v23);
    v32 = unionPointWithRect(v31, v130, v128, v126, v124);
    v34 = v33;
    v36 = v35;
    v38 = v37;
    *&v33 = v9 + v18;
    v125 = LODWORD(v33);
    *&v35 = a3;
    v43 = map_point_inv(__PAIR64__(LODWORD(v33), v123), v135, v35, a4, v39, v40, v41, v42);
    v44 = unionPointWithRect(v43, v32, v34, v36, v38);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51.f32[0] = v132 + v134;
    v127 = v51.i32[0];
    v51.i32[1] = v122;
    *&v47 = a3;
    v56 = map_point_inv(v51, v135, v47, a4, v52, v53, v54, v55);
    v57 = unionPointWithRect(v56, v44, v46, v48, v50);
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v119 = a3;
    *&v60 = a3;
    v68 = map_point_inv(__PAIR64__(v125, v127), v135, v60, a4, v64, v65, v66, v67);
    v69 = unionPointWithRect(v68, v57, v59, v61, v63);
    v71 = v70;
    v129 = v73;
    v131 = v72;
    v137.origin.x = v132;
    v137.origin.y = v9;
    v74 = v134;
    v137.size.width = v134;
    v137.size.height = v18;
    v75 = v9;
    if (CGRectGetMinX(v137) < v120)
    {
      v138.origin.x = v132;
      v138.origin.y = v9;
      v138.size.width = v134;
      v138.size.height = v18;
      if (CGRectGetMaxX(v138) > v120)
      {
        v80 = map_point_inv(__PAIR64__(v122, v135.u32[0]), v135, COERCE_DOUBLE(__PAIR64__(v135.u32[1], LODWORD(a3))), a4, v76, v77, v78, v79);
        v81 = unionPointWithRect(v80, v69, v71, v131, v129);
        v83 = v82;
        v85 = v84;
        v87 = v86;
        v92 = map_point_inv(__PAIR64__(v125, v135.u32[0]), v135, COERCE_DOUBLE(__PAIR64__(v135.u32[1], LODWORD(a3))), a4, v88, v89, v90, v91);
        v93 = v83;
        v75 = v9;
        v74 = v134;
        v69 = unionPointWithRect(v92, v81, v93, v85, v87);
        v71 = v94;
        v129 = v96;
        v131 = v95;
      }
    }

    v139.origin.x = v132;
    v139.origin.y = v75;
    v139.size.width = v74;
    v139.size.height = v18;
    if (CGRectGetMinY(v139) >= v121 || (v140.origin.x = v132, v140.origin.y = v75, v140.size.width = v74, v140.size.height = v18, CGRectGetMaxY(v140) <= v121))
    {
      v115 = v129;
      v114 = v131;
    }

    else
    {
      v101 = map_point_inv(__PAIR64__(v135.u32[1], v127), v135, COERCE_DOUBLE(__PAIR64__(v135.u32[1], LODWORD(a3))), a4, v97, v98, v99, v100);
      v102 = unionPointWithRect(v101, v69, v71, v131, v129);
      v104 = v103;
      v106 = v105;
      v108 = v107;
      v113 = map_point_inv(__PAIR64__(v135.u32[1], v123), v135, COERCE_DOUBLE(__PAIR64__(v135.u32[1], LODWORD(v119))), a4, v109, v110, v111, v112);
      v69 = unionPointWithRect(v113, v102, v104, v106, v108);
      v71 = v116;
    }

    v117 = v69;
    v118 = v71;
    *&v25 = CGRectIntegral(*(&v114 - 2));
  }

  result.size.height = v27;
  result.size.width = v24;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)outputImage
{
  v41[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIVector *)self->inputCenter X];
  v4 = v3;
  [(CIVector *)self->inputCenter Y];
  v6 = v5;
  [(NSNumber *)self->inputRadius floatValue];
  v8 = v7;
  [(NSNumber *)self->inputScale floatValue];
  if (fabsf(v9) < 0.001)
  {
    v10 = self->inputImage;

    return v10;
  }

  v12 = v9;
  if (v9 > 2.0)
  {
    NSLog(&cfstr_InvalidScaleGI.isa, v9);
    return 0;
  }

  v13 = v4;
  v14 = v6;
  v15 = fmin(v12, 1.9);
  v16 = v15;
  if (fabsf(v8) >= 1.0)
  {
    *&v15 = v8;
    *&v12 = v16;
    [(CIPinchDistortion *)self computeDOD:v15 scale:v12];
    v44 = CGRectIntegral(v43);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    v21 = v16;
    if (v16 >= 1.0)
    {
      v22 = [(CIPinchDistortion *)self _pinchDistortionScaleGE1];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __32__CIPinchDistortion_outputImage__block_invoke_2;
      v29[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v30 = v13;
      v31 = v6;
      v32 = v16;
      v33 = v8;
      inputImage = self->inputImage;
      v40[0] = [CIVector vectorWithX:v13 Y:v14];
      v40[1] = [CIVector vectorWithX:v8 Y:1.0 / v8 Z:v16 W:v21 * -0.5];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      v25 = v29;
    }

    else
    {
      v22 = [(CIPinchDistortion *)self _pinchDistortionScaleLT1];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __32__CIPinchDistortion_outputImage__block_invoke;
      v34[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v35 = v13;
      v36 = v6;
      v37 = v16;
      v38 = v8;
      inputImage = self->inputImage;
      v41[0] = [CIVector vectorWithX:v13 Y:v14];
      v41[1] = [CIVector vectorWithX:v8 Y:1.0 / v8 Z:v16 W:v21 * -0.5];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v25 = v34;
    }

    return [v22 applyWithExtent:v25 roiCallback:inputImage inputImage:v24 arguments:{x, y, width, height}];
  }

  else if (v16 >= 0.999)
  {
    v26 = [(CIImage *)self->inputImage imageByCroppingToRect:floorf(v13), floorf(v14), 1.0, 1.0];

    return [(CIImage *)v26 imageByClampingToExtent];
  }

  else
  {
    v39[1] = 0.0;
    v39[2] = 0.0;
    v17 = 1.0 / (1.0 - v16);
    v18 = self->inputImage;
    v39[0] = v17;
    v39[3] = v17;
    v39[4] = ((1.0 - v17) * v13);
    v39[5] = ((1.0 - v17) * v14);
    return [(CIImage *)v18 imageByApplyingTransform:v39];
  }
}

@end