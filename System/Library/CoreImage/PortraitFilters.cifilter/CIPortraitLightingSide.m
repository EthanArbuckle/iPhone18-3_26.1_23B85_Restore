@interface CIPortraitLightingSide
+ (id)customAttributes;
- (id)_kickLightKernel_neg;
- (id)_kickLightKernel_pos;
- (id)outputImage;
@end

@implementation CIPortraitLightingSide

+ (id)customAttributes
{
  v14[0] = kCIAttributeFilterCategories;
  v13[0] = kCICategoryColorAdjustment;
  v13[1] = kCICategoryVideo;
  v13[2] = kCICategoryStillImage;
  v13[3] = kCICategoryInterlaced;
  v13[4] = kCICategoryNonSquarePixels;
  v13[5] = kCICategoryBuiltIn;
  v13[6] = kCICategoryApplePrivate;
  v15[0] = [NSArray arrayWithObjects:v13 count:7];
  v15[1] = @"11";
  v14[1] = kCIAttributeFilterAvailable_iOS;
  v14[2] = kCIAttributeFilterAvailable_Mac;
  v15[2] = @"10.12";
  v14[3] = @"inputStrength";
  v11[0] = kCIAttributeMin;
  v11[1] = kCIAttributeSliderMin;
  v12[0] = &off_79A10;
  v12[1] = &off_79A10;
  v11[2] = kCIAttributeSliderMax;
  v11[3] = kCIAttributeDefault;
  v12[2] = &off_79A20;
  v12[3] = &off_79A30;
  v11[4] = kCIAttributeIdentity;
  v11[5] = kCIAttributeType;
  v12[4] = &off_79A30;
  v12[5] = kCIAttributeTypeScalar;
  v15[3] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  v14[4] = @"inputWidth";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeSliderMin;
  v10[0] = &off_79A30;
  v10[1] = &off_79A30;
  v9[2] = kCIAttributeSliderMax;
  v9[3] = kCIAttributeDefault;
  v10[2] = &off_79A40;
  v10[3] = &off_79A50;
  v9[4] = kCIAttributeIdentity;
  v9[5] = kCIAttributeType;
  v10[4] = &off_79A30;
  v10[5] = kCIAttributeTypeScalar;
  v15[4] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v14[5] = @"inputRotate";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_79A60;
  v8[1] = &off_79A30;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeDefault;
  v8[2] = &off_79A70;
  v8[3] = &off_79A30;
  v7[4] = kCIAttributeIdentity;
  v7[5] = kCIAttributeType;
  v8[4] = &off_79A30;
  v8[5] = kCIAttributeTypeScalar;
  v15[5] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputOrientation";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeSliderMin;
  v6[0] = &off_79A80;
  v6[1] = &off_79A80;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_79A90;
  v6[3] = &off_79A80;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_79A80;
  v6[5] = kCIAttributeTypeScalar;
  v15[6] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v14[7] = @"inputCenterBottom";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_79A30;
  v4[1] = &off_79A30;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_79A80;
  v4[3] = &off_79A30;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_79A30;
  v4[5] = kCIAttributeTypeScalar;
  v15[7] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)_kickLightKernel_pos
{
  if (qword_8CA08 != -1)
  {
    sub_4A01C();
  }

  return qword_8CA00;
}

- (id)_kickLightKernel_neg
{
  if (qword_8CA18 != -1)
  {
    sub_4A030();
  }

  return qword_8CA10;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  [(NSNumber *)self->inputStrength floatValue];
  v6 = v5;
  [(NSNumber *)self->inputRotate floatValue];
  v8 = v7;
  v9 = [(NSNumber *)self->inputOrientation intValue];
  v10 = [(NSNumber *)self->inputCenterBottom intValue];
  if (v4 == 0.0 || v6 == 0.0)
  {
    return self->inputImage;
  }

  v11 = v10;
  v168 = v6;
  [(CIVector *)self->inputPt1 X];
  v13 = v12;
  [(CIVector *)self->inputPt2 X];
  *&v14 = (v13 + v14) * 0.5;
  v165 = *&v14;
  [(CIVector *)self->inputPt1 Y];
  v16 = v15;
  [(CIVector *)self->inputPt2 Y];
  *&v17 = (v16 + v17) * 0.5;
  v163 = *&v17;
  v18 = v9 - 5;
  inputPt2 = self->inputPt2;
  v169 = v8;
  if (v9 - 5 > 3)
  {
    [(CIVector *)inputPt2 Y];
    v31 = v30;
    [(CIVector *)self->inputPt1 Y];
    *&v32 = v31 - v32;
    v23 = *&v32 * 0.5;
    [(CIVector *)self->inputPt2 X];
    v34 = v33;
    [(CIVector *)self->inputPt1 X];
    *&v35 = v34 - v35;
    v28 = v8 + atan2f(v23, -*&v35);
  }

  else
  {
    [(CIVector *)inputPt2 X];
    v21 = v20;
    [(CIVector *)self->inputPt1 X];
    *&v22 = v21 - v22;
    v23 = *&v22 * 0.5;
    [(CIVector *)self->inputPt2 Y];
    v25 = v24;
    [(CIVector *)self->inputPt1 Y];
    v27 = v25 - v26;
    v28 = atan2f(v23, v27);
  }

  v36 = v28;
  v37 = __sincos_stret(v28);
  v38 = v4;
  v39 = (v38 + v38) * v38;
  v40 = v23;
  v41 = (v40 + v40) * v40;
  v42 = v37.__cosval * v37.__cosval / v39 + v37.__sinval * v37.__sinval / v41;
  v43 = sin(v36 + v36);
  v170 = v38 * 4.0 * v38;
  v44 = v43 / (v40 * 4.0 * v40) - v43 / v170;
  v45 = v37.__sinval * v37.__sinval / v39 + v37.__cosval * v37.__cosval / v41;
  v167 = [CIVector vectorWithX:v42 Y:v44 Z:v45 W:?];
  v166 = [CIVector vectorWithX:v165 Y:v163];
  [(CIVector *)self->inputPt2 X];
  v47 = v46;
  [(CIVector *)self->inputPt3 X];
  v49 = (v47 + v48) * 0.5;
  if (v11)
  {
    [(CIVector *)self->inputPt3 Y];
  }

  else
  {
    [(CIVector *)self->inputPt2 Y];
    v52 = v51;
    [(CIVector *)self->inputPt3 Y];
    v50 = (v52 + v53) * 0.5;
  }

  v54 = v49;
  v160 = v54;
  v55 = v50;
  inputPt3 = self->inputPt3;
  if (v18 > 3)
  {
    [(CIVector *)inputPt3 Y];
    v67 = v66;
    [(CIVector *)self->inputPt2 Y];
    *&v68 = v67 - v68;
    v60 = *&v68 * 0.5;
    [(CIVector *)self->inputPt3 X];
    v70 = v69;
    [(CIVector *)self->inputPt2 X];
    *&v71 = v70 - v71;
    v65 = v169 + atan2f(v60, -*&v71);
  }

  else
  {
    [(CIVector *)inputPt3 X];
    v58 = v57;
    [(CIVector *)self->inputPt2 X];
    *&v59 = v58 - v59;
    v60 = *&v59 * 0.5;
    [(CIVector *)self->inputPt3 Y];
    v62 = v61;
    [(CIVector *)self->inputPt2 Y];
    v64 = v62 - v63;
    v65 = atan2f(v60, v64);
  }

  v72 = v65;
  v73 = __sincos_stret(v65);
  v74 = v60;
  v75 = (v74 + v74) * v74;
  v76 = v73.__cosval * v73.__cosval / v39 + v73.__sinval * v73.__sinval / v75;
  v77 = sin(v72 + v72);
  v78 = v77 / (v74 * 4.0 * v74) - v77 / v170;
  v79 = v73.__sinval * v73.__sinval / v39 + v73.__cosval * v73.__cosval / v75;
  v164 = [CIVector vectorWithX:v76 Y:v78 Z:v79 W:0.35];
  v80 = [CIVector vectorWithX:v160 Y:v55];
  [(CIVector *)self->inputPt4 X];
  v82 = v81;
  [(CIVector *)self->inputPt5 X];
  *&v83 = (v82 + v83) * 0.5;
  v161 = *&v83;
  [(CIVector *)self->inputPt4 Y];
  v85 = v84;
  [(CIVector *)self->inputPt5 Y];
  v87 = (v85 + v86) * 0.5;
  inputPt5 = self->inputPt5;
  if (v18 > 3)
  {
    [(CIVector *)inputPt5 Y];
    v99 = v98;
    [(CIVector *)self->inputPt4 Y];
    *&v100 = v99 - v100;
    v92 = *&v100 * 0.5;
    [(CIVector *)self->inputPt5 X];
    v102 = v101;
    [(CIVector *)self->inputPt4 X];
    *&v103 = v102 - v103;
    v97 = v169 + atan2f(v92, -*&v103);
  }

  else
  {
    [(CIVector *)inputPt5 X];
    v90 = v89;
    [(CIVector *)self->inputPt4 X];
    *&v91 = v90 - v91;
    v92 = *&v91 * 0.5;
    [(CIVector *)self->inputPt5 Y];
    v94 = v93;
    [(CIVector *)self->inputPt4 Y];
    v96 = v94 - v95;
    v97 = atan2f(v92, v96);
  }

  v104 = v97;
  v105 = __sincos_stret(v97);
  v106 = v92;
  v107 = (v106 + v106) * v106;
  v108 = v105.__cosval * v105.__cosval / v39 + v105.__sinval * v105.__sinval / v107;
  v109 = sin(v104 + v104);
  v110 = v109 / (v106 * 4.0 * v106) - v109 / v170;
  v111 = v105.__sinval * v105.__sinval / v39 + v105.__cosval * v105.__cosval / v107;
  v112 = [CIVector vectorWithX:v108 Y:v110 Z:v111 W:0.35];
  v113 = [CIVector vectorWithX:v161 Y:v87];
  [(CIVector *)self->inputPt5 X];
  v115 = v114;
  [(CIVector *)self->inputPt6 X];
  v117 = (v115 + v116) * 0.5;
  if (v11)
  {
    [(CIVector *)self->inputPt6 Y];
  }

  else
  {
    [(CIVector *)self->inputPt5 Y];
    v120 = v119;
    [(CIVector *)self->inputPt6 Y];
    v118 = (v120 + v121) * 0.5;
  }

  v122 = v117;
  v123 = v118;
  v162 = v123;
  inputPt6 = self->inputPt6;
  if (v18 > 3)
  {
    [(CIVector *)inputPt6 Y];
    v135 = v134;
    [(CIVector *)self->inputPt5 Y];
    *&v136 = v135 - v136;
    v128 = *&v136 * 0.5;
    [(CIVector *)self->inputPt6 X];
    v138 = v137;
    [(CIVector *)self->inputPt5 X];
    *&v139 = v138 - v139;
    v133 = v169 + atan2f(v128, -*&v139);
  }

  else
  {
    [(CIVector *)inputPt6 X];
    v126 = v125;
    [(CIVector *)self->inputPt5 X];
    *&v127 = v126 - v127;
    v128 = *&v127 * 0.5;
    [(CIVector *)self->inputPt6 Y];
    v130 = v129;
    [(CIVector *)self->inputPt5 Y];
    v132 = v130 - v131;
    v133 = atan2f(v128, v132);
  }

  v140 = v133;
  v141 = __sincos_stret(v133);
  v142 = v128;
  v143 = (v142 + v142) * v142;
  v144 = v141.__cosval * v141.__cosval / v39 + v141.__sinval * v141.__sinval / v143;
  v145 = sin(v140 + v140);
  v146 = v145 / (v142 * 4.0 * v142) - v145 / v170;
  v147 = v141.__sinval * v141.__sinval / v39 + v141.__cosval * v141.__cosval / v143;
  v148 = [CIVector vectorWithX:v144 Y:v146 Z:v147 W:0.35];
  v149 = [CIVector vectorWithX:v122 Y:v162];
  if (v168 <= 0.0)
  {
    v150 = [(CIPortraitLightingSide *)self _kickLightKernel_neg];
  }

  else
  {
    v150 = [(CIPortraitLightingSide *)self _kickLightKernel_pos];
  }

  v151 = v150;
  [(CIImage *)self->inputImage extent];
  v153 = v152;
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v171[0] = self->inputImage;
  v171[1] = v166;
  v171[2] = v167;
  v171[3] = v80;
  v171[4] = v164;
  v171[5] = v113;
  v171[6] = v112;
  v171[7] = v149;
  v171[8] = v148;
  *&v152 = v168;
  v171[9] = [NSNumber numberWithFloat:v152];
  return [v151 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v171, 10), v153, v155, v157, v159}];
}

@end