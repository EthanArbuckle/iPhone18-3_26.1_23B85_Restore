@interface CIPageCurlTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPageCurlTransition

- (id)outputImage
{
  v133 = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  if (CGRectIsEmpty(v135))
  {
    v3 = ci_logger_filter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", &buf, 0xCu);
    }
  }

  [(NSNumber *)self->inputAngle doubleValue];
  v5 = v4;
  [(NSNumber *)self->inputTime doubleValue];
  v125 = fmax(v6, 0.0);
  [(NSNumber *)self->inputRadius doubleValue];
  v8 = fmax(v7, 0.01);
  [(NSNumber *)self->inputRadius doubleValue];
  v112 = fmax(v9, 0.0);
  [(CIImage *)self->inputImage extent];
  inputBacksideImage = self->inputBacksideImage;
  v113 = v12;
  v115 = v11;
  r1_16 = v14;
  r1_24 = v13;
  if (inputBacksideImage)
  {
    inputImage = [(CIImage *)inputBacksideImage imageByCroppingToRect:?];
  }

  else
  {
    inputImage = self->inputImage;
  }

  [(CIImage *)self->inputShadingImage extent];
  v16 = [CIVector vectorWithCGRect:?];
  [(CIVector *)self->inputExtent X];
  v18 = v17;
  [(CIVector *)self->inputExtent Y];
  v20 = v19;
  [(CIVector *)self->inputExtent Z];
  v22 = v18 + v21;
  [(CIVector *)self->inputExtent W];
  v121 = v20 + v23;
  [(CIVector *)self->inputExtent Z];
  v123 = v18 + v24 * 0.5;
  [(CIVector *)self->inputExtent W];
  v26 = v20 + v25 * 0.5;
  v27 = __sincos_stret(v5);
  v28 = __sincos_stret(v5 + v5);
  v29 = -(v27.__sinval * v20);
  v30 = v29 - v18 * v27.__cosval;
  v31 = v29 - v22 * v27.__cosval;
  v32 = fmin(v30, v31);
  v33 = fmax(v30, v31);
  v34 = -(v27.__sinval * v121);
  v35 = v34 - v18 * v27.__cosval;
  v36 = fmin(v32, v35);
  v37 = v34 - v22 * v27.__cosval;
  v38 = fmax(fmax(v33, v35), v37);
  v39 = -(v38 - v125 * (v112 + v38 - fmin(v36, v37)));
  v40 = v27.__sinval * v123 - v27.__cosval * v26;
  v41 = -v27.__sinval / v8;
  v42 = v39 / v8;
  v120 = -v27.__cosval / v8;
  v122 = v39 / v8;
  v43 = -(v27.__cosval * v8);
  v44 = -(v27.__sinval * v8);
  v45 = v27.__sinval * v40 + v27.__cosval * v39;
  v46 = v40;
  v47 = v27.__sinval * v39 - v27.__cosval * v40;
  v124 = v43;
  v48 = v45 + v43 * 0.5 * 3.14159265;
  v49 = v47 + v44 * 0.5 * 3.14159265;
  v126 = v47;
  v102 = v28.__sinval * v49 + v28.__cosval * v48;
  v103 = v49;
  r1a = *MEMORY[0x1E695F050];
  r1_8 = v41;
  v96 = *(MEMORY[0x1E695F050] + 8);
  v50 = *(MEMORY[0x1E695F050] + 24);
  v91 = *(MEMORY[0x1E695F050] + 16);
  buf.a = v120;
  buf.b = -v27.__sinval;
  buf.c = v41;
  buf.d = v27.__cosval;
  v51 = v41;
  buf.tx = v42;
  buf.ty = v46;
  v52 = v46;
  v117 = v46;
  v118 = v44;
  v129.a = v43;
  v129.b = v44;
  v53 = v44;
  v129.c = -v27.__sinval;
  v129.d = v27.__cosval;
  v105 = v48;
  v100 = v28.__sinval * v48 - v28.__cosval * v49;
  v129.tx = v45;
  v119 = v45;
  v129.ty = v47;
  v134.x = v115;
  v134.y = v113;
  *&v147.origin.x = pageCurlMapInverse(v134, &buf, &v129).n128_u64[0];
  v147.origin.y = v54;
  v147.size.width = 0.0;
  v147.size.height = 0.0;
  v136.origin.x = r1a;
  v136.size.width = v91;
  v136.origin.y = v96;
  v136.size.height = v50;
  v137 = CGRectUnion(v136, v147);
  y = v137.origin.y;
  x = v137.origin.x;
  height = v137.size.height;
  width = v137.size.width;
  buf.a = v120;
  buf.b = -v27.__sinval;
  v137.origin.y = v113 + r1_16;
  buf.c = v51;
  buf.d = v27.__cosval;
  buf.tx = v122;
  buf.ty = v52;
  v129.a = v124;
  v129.b = v53;
  v129.c = -v27.__sinval;
  v129.d = v27.__cosval;
  v129.tx = v45;
  v129.ty = v126;
  v137.origin.x = v115;
  *&v148.origin.x = pageCurlMapInverse(v137.origin, &buf, &v129).n128_u64[0];
  v148.origin.y = v55;
  v148.size.width = 0.0;
  v148.size.height = 0.0;
  v138.origin.y = y;
  v138.origin.x = x;
  v138.size.height = height;
  v138.size.width = width;
  v139 = CGRectUnion(v138, v148);
  v93 = v139.origin.y;
  v98 = v139.origin.x;
  v84 = v139.size.height;
  v88 = v139.size.width;
  buf.a = v120;
  buf.b = -v27.__sinval;
  v139.origin.x = v115 + r1_24;
  buf.c = r1_8;
  buf.d = v27.__cosval;
  buf.tx = v122;
  buf.ty = v117;
  v129.a = v124;
  v129.b = v118;
  v129.c = -v27.__sinval;
  v129.d = v27.__cosval;
  v129.tx = v45;
  v129.ty = v126;
  v139.origin.y = v113;
  *&v149.origin.x = pageCurlMapInverse(v139.origin, &buf, &v129).n128_u64[0];
  v149.origin.y = v56;
  v149.size.width = 0.0;
  v149.size.height = 0.0;
  v140.origin.y = v93;
  v140.origin.x = v98;
  v140.size.height = v84;
  v140.size.width = v88;
  v141 = CGRectUnion(v140, v149);
  v94 = v141.origin.y;
  v99 = v141.origin.x;
  v85 = v141.size.height;
  v89 = v141.size.width;
  buf.a = v120;
  buf.b = -v27.__sinval;
  buf.c = r1_8;
  buf.d = v27.__cosval;
  buf.tx = v122;
  buf.ty = v117;
  v129.a = v124;
  v129.b = v118;
  v129.c = -v27.__sinval;
  v129.d = v27.__cosval;
  v129.tx = v45;
  v129.ty = v126;
  v141.origin.x = v115 + r1_24;
  v141.origin.y = v113 + r1_16;
  *&v150.origin.x = pageCurlMapInverse(v141.origin, &buf, &v129).n128_u64[0];
  v150.origin.y = v57;
  v150.size.width = 0.0;
  v150.size.height = 0.0;
  v142.origin.y = v94;
  v142.origin.x = v99;
  v142.size.height = v85;
  v142.size.width = v89;
  v143 = CGRectUnion(v142, v150);
  v58 = v143.origin.x;
  v59 = v143.origin.y;
  v60 = v143.size.width;
  v61 = v143.size.height;
  v129.a = v120;
  r1 = -v27.__sinval;
  v129.b = -v27.__sinval;
  v129.c = r1_8;
  v129.d = v27.__cosval;
  v129.tx = v122;
  v129.ty = v117;
  v143.origin.y = v113;
  v143.origin.x = v115;
  v143.size.height = r1_16;
  v143.size.width = r1_24;
  v62 = CriticalPointsDOD(v143, &v129, &buf);
  if (v62 >= 1)
  {
    v63 = v62;
    p_b = &buf.b;
    do
    {
      v151.origin.x = *(p_b - 1);
      v151.origin.y = *p_b;
      v151.size.width = 0.0;
      v151.size.height = 0.0;
      v144.origin.x = v58;
      v144.origin.y = v59;
      v144.size.width = v60;
      v144.size.height = v61;
      v145 = CGRectUnion(v144, v151);
      v58 = v145.origin.x;
      v59 = v145.origin.y;
      v60 = v145.size.width;
      v61 = v145.size.height;
      p_b += 2;
      --v63;
    }

    while (v63);
  }

  r1_24a = -v28.__cosval;
  v114 = v103 + v100;
  v116 = v105 + v102;
  v104 = -v28.__sinval;
  [(CIImage *)self->inputShadingImage extent];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  [(CIImage *)self->inputImage extent];
  v86 = v73;
  v90 = v74;
  v95 = v75;
  v101 = v76;
  v146.origin.x = v66;
  v146.origin.y = v68;
  v146.size.width = v70;
  v146.size.height = v72;
  if (CGRectIsEmpty(v146))
  {
    _CIPageCurlTransNoEmap = [(CIPageCurlTransition *)self _CIPageCurlTransNoEmap];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __35__CIPageCurlTransition_outputImage__block_invoke;
    v128[3] = &__block_descriptor_240_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v128[4] = v120;
    *&v128[5] = -v27.__sinval;
    *&v128[6] = r1_8;
    v128[7] = *&v27.__cosval;
    *&v128[8] = v122;
    *&v128[9] = v117;
    *&v128[10] = v124;
    *&v128[11] = v118;
    *&v128[12] = -v27.__sinval;
    v128[13] = *&v27.__cosval;
    *&v128[14] = v119;
    *&v128[15] = v126;
    *&v128[16] = -v28.__cosval;
    *&v128[17] = -v28.__sinval;
    *&v128[18] = -v28.__sinval;
    v128[19] = *&v28.__cosval;
    *&v128[20] = v105 + v102;
    *&v128[21] = v114;
    v128[22] = v86;
    v128[23] = v90;
    v128[24] = v95;
    v128[25] = v101;
    *&v128[26] = v66;
    *&v128[27] = v68;
    *&v128[28] = v70;
    *&v128[29] = v72;
    v131[0] = self->inputImage;
    v131[1] = inputImage;
    v131[2] = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:? Z:? W:?];
    v131[3] = [CIVector vectorWithX:v122 Y:v117];
    v131[4] = [CIVector vectorWithX:v124 Y:r1 Z:v118 W:v27.__cosval];
    v131[5] = [CIVector vectorWithX:v119 Y:v126];
    v131[6] = [CIVector vectorWithX:r1_24a Y:v104 Z:v104 W:v28.__cosval];
    v131[7] = [CIVector vectorWithX:v116 Y:v114];
    v131[8] = [MEMORY[0x1E696AD98] numberWithDouble:v112];
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:9];
    v79 = v128;
    v80 = _CIPageCurlTransNoEmap;
  }

  else
  {
    _CIPageCurlTransition = [(CIPageCurlTransition *)self _CIPageCurlTransition];
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __35__CIPageCurlTransition_outputImage__block_invoke_2;
    v127[3] = &__block_descriptor_240_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v127[4] = v120;
    *&v127[5] = -v27.__sinval;
    *&v127[6] = r1_8;
    v127[7] = *&v27.__cosval;
    *&v127[8] = v122;
    *&v127[9] = v117;
    *&v127[10] = v124;
    *&v127[11] = v118;
    *&v127[12] = -v27.__sinval;
    v127[13] = *&v27.__cosval;
    *&v127[14] = v119;
    *&v127[15] = v126;
    *&v127[16] = -v28.__cosval;
    *&v127[17] = -v28.__sinval;
    *&v127[18] = -v28.__sinval;
    v127[19] = *&v28.__cosval;
    *&v127[20] = v105 + v102;
    *&v127[21] = v114;
    v127[22] = v86;
    v127[23] = v90;
    v127[24] = v95;
    v127[25] = v101;
    *&v127[26] = v66;
    *&v127[27] = v68;
    *&v127[28] = v70;
    *&v127[29] = v72;
    v130[0] = self->inputImage;
    v130[1] = inputImage;
    v130[2] = self->inputShadingImage;
    v130[3] = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:? Z:? W:?];
    v130[4] = [CIVector vectorWithX:v122 Y:v117];
    v130[5] = [CIVector vectorWithX:v124 Y:r1 Z:v118 W:v27.__cosval];
    v130[6] = [CIVector vectorWithX:v119 Y:v126];
    v130[7] = [CIVector vectorWithX:r1_24a Y:v104 Z:v104 W:v28.__cosval];
    v130[8] = [CIVector vectorWithX:v116 Y:v114];
    v130[9] = [MEMORY[0x1E696AD98] numberWithDouble:v112];
    v130[10] = v16;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:11];
    v79 = v127;
    v80 = _CIPageCurlTransition;
  }

  result = [v80 applyWithExtent:v79 roiCallback:v78 arguments:{v58, v59, v60, v61}];
  if (result)
  {
    if (self->inputTargetImage)
    {
      return [[CIFilter valueForKey:@"CISourceOverCompositing" filterWithName:result keysAndValues:@"inputBackgroundImage", self->inputTargetImage, 0], "valueForKey:", @"outputImage"];
    }
  }

  return result;
}

void __35__CIPageCurlTransition_outputImage__block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 48);
  v13[0] = *(a1 + 32);
  v13[1] = v6;
  v7 = *(a1 + 80);
  v13[2] = *(a1 + 64);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = *(a1 + 144);
  v11[0] = *(a1 + 128);
  v11[1] = v10;
  v11[2] = *(a1 + 160);
  pageCurlROI(a2, v13, v12, v11, a3, a4, a5, a6, *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200));
}

void __35__CIPageCurlTransition_outputImage__block_invoke_2(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 48);
  v13[0] = *(a1 + 32);
  v13[1] = v6;
  v7 = *(a1 + 80);
  v13[2] = *(a1 + 64);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = *(a1 + 144);
  v11[0] = *(a1 + 128);
  v11[1] = v10;
  v11[2] = *(a1 + 160);
  pageCurlROI(a2, v13, v12, v11, a3, a4, a5, a6, *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200));
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTransition";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"9";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084448;
  v6[1] = &unk_1F1084448;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084458;
  v6[3] = &unk_1F1084468;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputExtent";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeRectangle";
  v3[0] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end