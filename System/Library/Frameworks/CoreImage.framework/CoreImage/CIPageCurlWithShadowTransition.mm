@interface CIPageCurlWithShadowTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPageCurlWithShadowTransition

- (id)outputImage
{
  v160 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAngle doubleValue];
  v152 = v3;
  [(NSNumber *)self->inputTime doubleValue];
  v147 = v4;
  [(NSNumber *)self->inputRadius doubleValue];
  v144 = v5;
  [(NSNumber *)self->inputRadius doubleValue];
  v7 = fmax(v6, 0.0);
  [(NSNumber *)self->inputShadowSize doubleValue];
  v9 = v8;
  [(NSNumber *)self->inputShadowAmount doubleValue];
  v11 = v10;
  [(CIImage *)self->inputImage extent];
  v16 = v15;
  v17 = v12;
  v18 = v7 * 0.0625;
  if (v7 >= 16.0)
  {
    v18 = 1.0;
  }

  v149 = v7;
  v150 = v18;
  inputBacksideImage = self->inputBacksideImage;
  v130 = v12;
  v123 = v14;
  v125 = v13;
  if (!inputBacksideImage || (v20 = v13, v21 = v14, inputBacksideImage == +[CIImage emptyImage]))
  {
    v117 = [CIVector vectorWithX:0.764706 Y:0.764706 Z:0.764706 W:0.8];
    v116 = [CIVector vectorWithX:0.701961 Y:0.701961 Z:0.701961 W:1.0];
    inputImage = self->inputImage;
  }

  else
  {
    v117 = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v116 = [CIVector vectorWithX:0.701961 Y:0.701961 Z:0.701961 W:1.0];
    inputImage = [(CIImage *)self->inputBacksideImage imageByCroppingToRect:v16, v17, v20, v21];
  }

  v23 = fmax(v9, 0.01);
  v24 = fmax(v11, 0.0);
  [(CIVector *)self->inputExtent X];
  v26 = v25;
  [(CIVector *)self->inputExtent Y];
  v28 = v27;
  [(CIVector *)self->inputExtent Z];
  v30 = v29;
  [(CIVector *)self->inputExtent W];
  v32 = v31;
  v162.origin.x = v26;
  v162.origin.y = v28;
  v162.size.width = v30;
  v162.size.height = v32;
  v132 = v16;
  if (CGRectIsEmpty(v162))
  {
    [(CIImage *)self->inputImage extent];
    v26 = v33;
    v141 = v34;
    v30 = v35;
    v32 = v36;
  }

  else
  {
    v141 = v28;
  }

  v38 = v144;
  v37 = v147;
  v148 = fmin(v23, 1.0);
  v139 = fmin(v24, 1.0);
  v145 = fmax(v37, 0.0);
  v39 = fmax(v38, 0.01);
  [(CIVector *)self->inputShadowExtent X];
  v41 = v40;
  [(CIVector *)self->inputShadowExtent Y];
  v43 = v42;
  [(CIVector *)self->inputShadowExtent Z];
  v45 = v44;
  [(CIVector *)self->inputShadowExtent W];
  v163.size.height = v46;
  v163.origin.x = v41;
  v119 = v45;
  v120 = v43;
  v163.origin.y = v43;
  v163.size.width = v45;
  height = v163.size.height;
  if (CGRectIsEmpty(v163))
  {
    [(CIImage *)self->inputImage extent];
    v115 = v47;
    v119 = v49;
    v120 = v48;
    height = v50;
  }

  else
  {
    v115 = v41;
  }

  v127 = v148 * 0.3045;
  v129 = v150 * v139;
  v51 = __sincos_stret(v152);
  v52 = __sincos_stret(v152 + v152);
  v53 = -(v51.__sinval * v141);
  v54 = v53 - v26 * v51.__cosval;
  v55 = v53 - (v30 + v26) * v51.__cosval;
  v56 = fmin(v54, v55);
  v57 = fmax(v54, v55);
  v58 = -(v51.__sinval * (v32 + v141));
  v59 = v58 - v26 * v51.__cosval;
  v60 = v58 - (v30 + v26) * v51.__cosval;
  v61 = fmax(fmax(v57, v59), v60);
  v62 = -(v61 - v145 * (v149 + v61 - fmin(fmin(v56, v59), v60)));
  v63 = v51.__sinval * (v26 + v30 * 0.5) - v51.__cosval * (v141 + v32 * 0.5);
  v153 = -v51.__cosval / v39;
  v64 = v62 / v39;
  v65 = -(v51.__sinval * v39);
  v66 = v51.__sinval * v63 + v51.__cosval * v62;
  v135 = v63;
  v67 = v51.__sinval * v62 - v51.__cosval * v63;
  v68 = v66 + -(v51.__cosval * v39) * 0.5 * 3.14159265;
  v140 = v65;
  v69 = v67 + v65 * 0.5 * 3.14159265;
  v146 = v68 + v52.__sinval * v69 + v52.__cosval * v68;
  v121 = *MEMORY[0x1E695F050];
  v113 = *(MEMORY[0x1E695F050] + 8);
  r1 = *(MEMORY[0x1E695F050] + 24);
  v108 = *(MEMORY[0x1E695F050] + 16);
  v159.a = v153;
  v159.b = -v51.__sinval;
  v151 = -v51.__sinval / v39;
  v159.c = v151;
  v159.d = v51.__cosval;
  v159.tx = v64;
  v159.ty = v63;
  v70 = v64;
  v156.a = -(v51.__cosval * v39);
  a = v156.a;
  v156.b = v65;
  v137 = v64;
  v138 = v69 + v52.__sinval * v68 - v52.__cosval * v69;
  v136 = -v52.__cosval;
  v156.c = -v51.__sinval;
  v156.d = v51.__cosval;
  v128 = -v52.__sinval;
  v156.tx = v66;
  v142 = v67;
  v143 = v66;
  v156.ty = v67;
  v161.y = v130;
  v161.x = v132;
  *&v180.origin.x = pageCurlMapInverse(v161, &v159, &v156).n128_u64[0];
  v180.origin.y = v71;
  v180.size.width = 0.0;
  v180.size.height = 0.0;
  v164.origin.x = v121;
  v164.size.width = v108;
  v164.origin.y = v113;
  v164.size.height = r1;
  v165 = CGRectUnion(v164, v180);
  y = v165.origin.y;
  x = v165.origin.x;
  v99 = v165.size.height;
  r1a = v165.size.width;
  v159.a = v153;
  v159.b = -v51.__sinval;
  v165.origin.y = v130 + v123;
  v159.c = v151;
  v159.d = v51.__cosval;
  v159.tx = v70;
  v159.ty = v135;
  v156.a = -(v51.__cosval * v39);
  v156.b = v140;
  v156.c = -v51.__sinval;
  v156.d = v51.__cosval;
  v156.tx = v66;
  v156.ty = v67;
  v165.origin.x = v132;
  *&v181.origin.x = pageCurlMapInverse(v165.origin, &v159, &v156).n128_u64[0];
  v181.origin.y = v72;
  v181.size.width = 0.0;
  v181.size.height = 0.0;
  v166.origin.y = y;
  v166.origin.x = x;
  v166.size.height = v99;
  v166.size.width = r1a;
  v167 = CGRectUnion(v166, v181);
  r1b = v167.origin.y;
  v110 = v167.origin.x;
  width = v167.size.width;
  v97 = v167.size.height;
  v159.a = v153;
  v159.b = -v51.__sinval;
  v167.origin.x = v132 + v125;
  v159.c = v151;
  v159.d = v51.__cosval;
  v159.tx = v137;
  v159.ty = v135;
  v156.a = -(v51.__cosval * v39);
  v156.b = v140;
  v156.c = -v51.__sinval;
  v156.d = v51.__cosval;
  v156.tx = v66;
  v156.ty = v67;
  v167.origin.y = v130;
  *&v182.origin.x = pageCurlMapInverse(v167.origin, &v159, &v156).n128_u64[0];
  v182.origin.y = v73;
  v182.size.width = 0.0;
  v182.size.height = 0.0;
  v168.origin.y = r1b;
  v168.origin.x = v110;
  v168.size.width = width;
  v168.size.height = v97;
  v169 = CGRectUnion(v168, v182);
  r1c = v169.origin.y;
  v111 = v169.origin.x;
  v101 = v169.size.width;
  v98 = v169.size.height;
  v159.a = v153;
  v159.b = -v51.__sinval;
  v159.c = v151;
  v159.d = v51.__cosval;
  v159.tx = v137;
  v159.ty = v135;
  v156.a = -(v51.__cosval * v39);
  v156.b = v140;
  v156.c = -v51.__sinval;
  v156.d = v51.__cosval;
  v156.tx = v66;
  v156.ty = v67;
  v169.origin.x = v132 + v125;
  v169.origin.y = v130 + v123;
  *&v183.origin.x = pageCurlMapInverse(v169.origin, &v159, &v156).n128_u64[0];
  v183.origin.y = v74;
  v183.size.width = 0.0;
  v183.size.height = 0.0;
  v170.origin.y = r1c;
  v170.origin.x = v111;
  v170.size.width = v101;
  v170.size.height = v98;
  v171 = CGRectUnion(v170, v183);
  v75 = v171.origin.x;
  v76 = v171.origin.y;
  v77 = v171.size.width;
  v78 = v171.size.height;
  v156.a = v153;
  v79 = -v51.__sinval;
  v156.b = -v51.__sinval;
  v156.c = v151;
  v156.d = v51.__cosval;
  v156.tx = v137;
  v156.ty = v135;
  v171.origin.y = v130;
  v171.origin.x = v132;
  v171.size.height = v123;
  v171.size.width = v125;
  v80 = CriticalPointsDOD(v171, &v156, &v159);
  if (v80 >= 1)
  {
    v81 = v80;
    p_b = &v159.b;
    do
    {
      v184.origin.x = *(p_b - 1);
      v184.origin.y = *p_b;
      v184.size.width = 0.0;
      v184.size.height = 0.0;
      v172.origin.x = v75;
      v172.origin.y = v76;
      v172.size.width = v77;
      v172.size.height = v78;
      v173 = CGRectUnion(v172, v184);
      v75 = v173.origin.x;
      v76 = v173.origin.y;
      v77 = v173.size.width;
      v78 = v173.size.height;
      p_b += 2;
      --v81;
    }

    while (v81);
  }

  v174.origin.x = v75;
  v174.origin.y = v76;
  v174.size.width = v77;
  v174.size.height = v78;
  v175 = CGRectInset(v174, -(v149 * v127) - v149 * v127, -(v149 * v127) - v149 * v127);
  v131 = v175.origin.x;
  v133 = v175.size.height;
  v124 = v175.size.width;
  v126 = v175.origin.y;
  [(CIImage *)self->inputImage extent];
  v84 = v83;
  r1d = v85;
  v112 = v83;
  v86 = v85;
  v88 = v87;
  v102 = v87;
  v122 = v89;
  _CIPageCurlWithShadowTransition = [(CIPageCurlWithShadowTransition *)self _CIPageCurlWithShadowTransition];
  v155[0] = MEMORY[0x1E69E9820];
  v155[1] = 3221225472;
  v155[2] = __45__CIPageCurlWithShadowTransition_outputImage__block_invoke;
  v155[3] = &__block_descriptor_208_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v155[4] = v153;
  *&v155[5] = -v51.__sinval;
  *&v155[6] = v151;
  v155[7] = *&v51.__cosval;
  *&v155[8] = v137;
  *&v155[9] = v135;
  *&v155[10] = a;
  *&v155[11] = v140;
  *&v155[12] = -v51.__sinval;
  v155[13] = *&v51.__cosval;
  *&v155[14] = v143;
  *&v155[15] = v142;
  *&v155[16] = -v52.__cosval;
  *&v155[17] = -v52.__sinval;
  *&v155[18] = -v52.__sinval;
  v155[19] = *&v52.__cosval;
  *&v155[20] = v146;
  *&v155[21] = v138;
  v155[22] = v84;
  v155[23] = v86;
  v155[24] = v88;
  v155[25] = v122;
  v158[0] = self->inputImage;
  v158[1] = inputImage;
  v158[2] = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:v153 Z:v151 W:?];
  v158[3] = [CIVector vectorWithX:v137 Y:v135];
  v158[4] = [CIVector vectorWithX:a Y:v79 Z:v140 W:v51.__cosval];
  v158[5] = [CIVector vectorWithX:v143 Y:v142];
  v158[6] = [CIVector vectorWithX:v136 Y:v128 Z:v128 W:v52.__cosval];
  v158[7] = [CIVector vectorWithX:v146 Y:v138];
  v158[8] = [MEMORY[0x1E696AD98] numberWithDouble:v149];
  v176.origin.x = v115;
  v176.origin.y = v120;
  v176.size.width = v119;
  v176.size.height = height;
  MinX = CGRectGetMinX(v176);
  v177.origin.x = v115;
  v177.origin.y = v120;
  v177.size.width = v119;
  v177.size.height = height;
  MinY = CGRectGetMinY(v177);
  v178.origin.x = v115;
  v178.origin.y = v120;
  v178.size.width = v119;
  v178.size.height = height;
  MaxX = CGRectGetMaxX(v178);
  v179.origin.x = v115;
  v179.origin.y = v120;
  v179.size.width = v119;
  v179.size.height = height;
  v158[9] = [CIVector vectorWithX:MinX Y:MinY Z:MaxX W:CGRectGetMaxY(v179)];
  v158[10] = [MEMORY[0x1E696AD98] numberWithDouble:v127];
  v158[11] = [MEMORY[0x1E696AD98] numberWithDouble:v129];
  v158[12] = v117;
  v158[13] = v116;
  v94 = [_CIPageCurlWithShadowTransition applyWithExtent:v155 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v158, 14), v131, v126, v124, v133}];
  _CIPageCurlNoShadowTransition = [(CIPageCurlWithShadowTransition *)self _CIPageCurlNoShadowTransition];
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __45__CIPageCurlWithShadowTransition_outputImage__block_invoke_2;
  v154[3] = &__block_descriptor_208_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v154[4] = v153;
  *&v154[5] = -v51.__sinval;
  *&v154[6] = v151;
  v154[7] = *&v51.__cosval;
  *&v154[8] = v137;
  *&v154[9] = v135;
  *&v154[10] = a;
  *&v154[11] = v140;
  *&v154[12] = -v51.__sinval;
  v154[13] = *&v51.__cosval;
  *&v154[14] = v143;
  *&v154[15] = v142;
  *&v154[16] = -v52.__cosval;
  *&v154[17] = -v52.__sinval;
  *&v154[18] = -v52.__sinval;
  v154[19] = *&v52.__cosval;
  *&v154[20] = v146;
  *&v154[21] = v138;
  v154[22] = v112;
  v154[23] = r1d;
  v154[24] = v102;
  v154[25] = v122;
  v157[0] = self->inputImage;
  v157[1] = inputImage;
  v157[2] = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:? Z:? W:?];
  v157[3] = [CIVector vectorWithX:v137 Y:v135];
  v157[4] = [CIVector vectorWithX:a Y:v79 Z:v140 W:v51.__cosval];
  v157[5] = [CIVector vectorWithX:v143 Y:v142];
  v157[6] = [CIVector vectorWithX:v136 Y:v128 Z:v128 W:v52.__cosval];
  v157[7] = [CIVector vectorWithX:v146 Y:v138];
  v157[8] = [MEMORY[0x1E696AD98] numberWithDouble:v149];
  v157[9] = v117;
  v157[10] = v116;
  result = [_CIPageCurlNoShadowTransition applyWithExtent:v154 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v157, 11), v131, v126, v124, v133}];
  if (v129 > 0.001)
  {
    result = v94;
  }

  if (result)
  {
    if (self->inputTargetImage)
    {
      return [[CIFilter valueForKey:@"CISourceOverCompositing" filterWithName:0.001 keysAndValues:v129, result, @"inputBackgroundImage", self->inputTargetImage, 0], "valueForKey:", @"outputImage"];
    }
  }

  return result;
}

void __45__CIPageCurlWithShadowTransition_outputImage__block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
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

void __45__CIPageCurlWithShadowTransition_outputImage__block_invoke_2(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
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
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryTransition";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"9";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.9";
  v14[3] = @"inputRadius";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1084448;
  v12[1] = &unk_1F1084448;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1084458;
  v12[3] = &unk_1F1084468;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeDistance";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v14[4] = @"inputShadowSize";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084478;
  v10[1] = &unk_1F1084478;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1084488;
  v10[3] = &unk_1F1084488;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1084498;
  v10[5] = @"CIAttributeTypeDistance";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v14[5] = @"inputShadowAmount";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084478;
  v8[1] = &unk_1F1084478;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1084488;
  v8[3] = &unk_1F1084488;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10844A8;
  v8[5] = @"CIAttributeTypeDistance";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputShadowExtent";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeRectangle";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputExtent";
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0, @"CIAttributeType", @"CIAttributeDefault", @"CIAttributeTypeRectangle"];
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

@end