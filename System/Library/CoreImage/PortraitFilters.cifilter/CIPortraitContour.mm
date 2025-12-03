@interface CIPortraitContour
+ (id)customAttributes;
- (id)_drawTriangle;
- (id)_protectEyes;
- (id)outputImage;
@end

@implementation CIPortraitContour

+ (id)customAttributes
{
  v10[0] = kCIAttributeFilterCategories;
  v9[0] = kCICategoryColorAdjustment;
  v9[1] = kCICategoryVideo;
  v9[2] = kCICategoryStillImage;
  v9[3] = kCICategoryInterlaced;
  v9[4] = kCICategoryNonSquarePixels;
  v9[5] = kCICategoryBuiltIn;
  v9[6] = kCICategoryApplePrivate;
  v11[0] = [NSArray arrayWithObjects:v9 count:7];
  v11[1] = @"11";
  v10[1] = kCIAttributeFilterAvailable_iOS;
  v10[2] = kCIAttributeFilterAvailable_Mac;
  v11[2] = @"10.12";
  v10[3] = @"inputStrength";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeMax;
  v8[0] = &off_79B70;
  v8[1] = &off_79B80;
  v7[2] = kCIAttributeDefault;
  v7[3] = kCIAttributeIdentity;
  v8[2] = &off_79B80;
  v8[3] = &off_79B70;
  v7[4] = kCIAttributeType;
  v8[4] = kCIAttributeTypeScalar;
  v11[3] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[4] = @"inputScale";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeMax;
  v6[0] = &off_79B90;
  v6[1] = &off_79B80;
  v5[2] = kCIAttributeDefault;
  v5[3] = kCIAttributeIdentity;
  v6[2] = &off_79B80;
  v6[3] = &off_79B80;
  v5[4] = kCIAttributeType;
  v6[4] = kCIAttributeTypeScalar;
  v11[4] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputBlur";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeMax;
  v4[0] = &off_79B70;
  v4[1] = &off_79BA0;
  v3[2] = kCIAttributeDefault;
  v3[3] = kCIAttributeIdentity;
  v4[2] = &off_79BB0;
  v4[3] = &off_79B70;
  v3[4] = kCIAttributeType;
  v4[4] = kCIAttributeTypeScalar;
  v11[5] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)_drawTriangle
{
  if (qword_8CB88 != -1)
  {
    sub_4A40C();
  }

  return qword_8CB80;
}

- (id)_protectEyes
{
  if (qword_8CB98 != -1)
  {
    sub_4A420();
  }

  return qword_8CB90;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputStrength floatValue];
  v4 = v3 * 0.9;
  inputOrigImage = self->inputOrigImage;
  CGAffineTransformMakeScale(&v201, 0.05, 0.05);
  imageByInsertingIntermediate = [[(CIImage *)inputOrigImage imageByApplyingTransform:&v201] imageByInsertingIntermediate];
  _drawTriangle = [(CIPortraitContour *)self _drawTriangle];
  v8 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks leftCheekContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekContour]+ 3)];
  v9 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v217[0] = imageByInsertingIntermediate;
  v217[1] = v8;
  v217[2] = v9;
  v217[3] = &off_79BC0;
  *&v10 = v4;
  v217[4] = [NSNumber numberWithFloat:v10];
  v18 = [_drawTriangle applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v217, 5), v11, v13, v15, v17}];
  v19 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks leftCheekStrobe] Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekStrobe]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekStrobe]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekStrobe]+ 3)];
  v20 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekStrobe]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftCheekStrobe]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v216[0] = imageByInsertingIntermediate;
  v216[1] = v19;
  v216[2] = v20;
  LODWORD(v21) = 1065772646;
  v216[3] = [NSNumber numberWithFloat:v21];
  *&v29 = v4;
  v216[4] = [NSNumber numberWithFloat:v29];
  v30 = [v18 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v216, 5), v22, v24, v26, v28)}];
  v31 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks rightCheekContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekContour]+ 3)];
  v32 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v215[0] = imageByInsertingIntermediate;
  v215[1] = v31;
  v215[2] = v32;
  v215[3] = &off_79BC0;
  *&v33 = v4;
  v215[4] = [NSNumber numberWithFloat:v33];
  v41 = [v30 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v215, 5), v34, v36, v38, v40)}];
  v42 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks rightCheekStrobe] Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekStrobe]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekStrobe]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekStrobe]+ 3)];
  v43 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekStrobe]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightCheekStrobe]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v214[0] = imageByInsertingIntermediate;
  v214[1] = v42;
  v214[2] = v43;
  LODWORD(v44) = 1065772646;
  v214[3] = [NSNumber numberWithFloat:v44];
  *&v52 = v4;
  v214[4] = [NSNumber numberWithFloat:v52];
  v53 = [v41 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v214, 5), v45, v47, v49, v51)}];
  v54 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks leftChinContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftChinContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks leftChinContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks leftChinContour]+ 3)];
  v55 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks leftChinContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftChinContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v213[0] = imageByInsertingIntermediate;
  v213[1] = v54;
  v213[2] = v55;
  LODWORD(v56) = 1055286886;
  v213[3] = [NSNumber numberWithFloat:v56];
  *&v64 = v4;
  v213[4] = [NSNumber numberWithFloat:v64];
  v65 = [v53 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v213, 5), v57, v59, v61, v63)}];
  v66 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks leftNoseContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftNoseContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks leftNoseContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks leftNoseContour]+ 3)];
  v67 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks leftNoseContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftNoseContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v212[0] = imageByInsertingIntermediate;
  v212[1] = v66;
  v212[2] = v67;
  LODWORD(v68) = 1055286886;
  v212[3] = [NSNumber numberWithFloat:v68];
  *&v76 = v4;
  v212[4] = [NSNumber numberWithFloat:v76];
  v77 = [v65 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v212, 5), v69, v71, v73, v75)}];
  v78 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks rightChinContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightChinContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks rightChinContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks rightChinContour]+ 3)];
  v79 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks rightChinContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightChinContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v211[0] = imageByInsertingIntermediate;
  v211[1] = v78;
  v211[2] = v79;
  LODWORD(v80) = 1055286886;
  v211[3] = [NSNumber numberWithFloat:v80];
  *&v88 = v4;
  v211[4] = [NSNumber numberWithFloat:v88];
  v89 = [v77 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v211, 5), v81, v83, v85, v87)}];
  v90 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks rightNoseContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightNoseContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks rightNoseContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks rightNoseContour]+ 3)];
  v91 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks rightNoseContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightNoseContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v210[0] = imageByInsertingIntermediate;
  v210[1] = v90;
  v210[2] = v91;
  LODWORD(v92) = 1055286886;
  v210[3] = [NSNumber numberWithFloat:v92];
  *&v100 = v4;
  v210[4] = [NSNumber numberWithFloat:v100];
  v101 = [v89 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v210, 5), v93, v95, v97, v99)}];
  v102 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks leftLipContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftLipContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks leftLipContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks leftLipContour]+ 3)];
  v103 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks leftLipContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks leftLipContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v209[0] = imageByInsertingIntermediate;
  v209[1] = v102;
  v209[2] = v103;
  v209[3] = &off_79BD0;
  *&v104 = v4;
  v209[4] = [NSNumber numberWithFloat:v104];
  v112 = [v101 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v209, 5), v105, v107, v109, v111)}];
  v113 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks rightLipContour] Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightLipContour]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks rightLipContour]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks rightLipContour]+ 3)];
  v114 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks rightLipContour]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks rightLipContour]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v208[0] = imageByInsertingIntermediate;
  v208[1] = v113;
  v208[2] = v114;
  v208[3] = &off_79BD0;
  *&v115 = v4;
  v208[4] = [NSNumber numberWithFloat:v115];
  v123 = [v112 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v208, 5), v116, v118, v120, v122)}];
  v124 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks neckContour1] Y:*([(LightingFacePoints *)self->inputFaceLandmarks neckContour1]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks neckContour1]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks neckContour1]+ 3)];
  v125 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks neckContour1]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks neckContour1]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v207[0] = imageByInsertingIntermediate;
  v207[1] = v124;
  v207[2] = v125;
  LODWORD(v126) = 1041865114;
  v207[3] = [NSNumber numberWithFloat:v126];
  *&v134 = v4;
  v207[4] = [NSNumber numberWithFloat:v134];
  v135 = [v123 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v207, 5), v127, v129, v131, v133)}];
  v136 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks neckContourLeft] Y:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourLeft]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourLeft]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourLeft]+ 3)];
  v137 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourLeft]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourLeft]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v206[0] = imageByInsertingIntermediate;
  v206[1] = v136;
  v206[2] = v137;
  LODWORD(v138) = 1041865114;
  v206[3] = [NSNumber numberWithFloat:v138];
  *&v146 = v4;
  v206[4] = [NSNumber numberWithFloat:v146];
  v147 = [v135 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v206, 5), v139, v141, v143, v145)}];
  v148 = [CIVector vectorWithX:*[(LightingFacePoints *)self->inputFaceLandmarks neckContourRight] Y:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourRight]+ 1) Z:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourRight]+ 2) W:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourRight]+ 3)];
  v149 = [CIVector vectorWithX:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourRight]+ 4) Y:*([(LightingFacePoints *)self->inputFaceLandmarks neckContourRight]+ 5)];
  [(CIImage *)imageByInsertingIntermediate extent];
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v157 = v156;
  v205[0] = imageByInsertingIntermediate;
  v205[1] = v148;
  v205[2] = v149;
  LODWORD(v150) = 1041865114;
  v205[3] = [NSNumber numberWithFloat:v150];
  *&v158 = v4;
  v205[4] = [NSNumber numberWithFloat:v158];
  v159 = [objc_msgSend(v147 imageByCompositingOverImage:{objc_msgSend(_drawTriangle, "applyWithExtent:arguments:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v205, 5), v151, v153, v155, v157)), "imageByClampingToExtent"}];
  [(NSNumber *)self->inputBlur floatValue];
  v161 = v160 * 0.05;
  [(NSNumber *)self->inputScale floatValue];
  v162 = [v159 imageByApplyingGaussianBlurWithSigma:v161 * v162];
  CGAffineTransformMakeScale(&v201, 20.0, 20.0);
  v164 = [v162 imageByApplyingTransform:&v201];
  [(CIImage *)self->inputImage extent];
  v165 = [v164 imageByCroppingToRect:?];
  [(LightingFacePoints *)self->inputFaceLandmarks leftEye];
  v167 = v166 * 20.0;
  [(LightingFacePoints *)self->inputFaceLandmarks leftEye];
  v169 = v168 * 20.0;
  [(LightingFacePoints *)self->inputFaceLandmarks rightEye];
  v171 = v170 * 20.0;
  [(LightingFacePoints *)self->inputFaceLandmarks rightEye];
  v173 = [CIVector vectorWithX:v167 Y:v169 Z:v171 W:v172 * 20.0];
  [(CIVector *)v173 X];
  v175 = v174;
  [(CIVector *)v173 Z];
  v177 = v175 - v176;
  [(CIVector *)v173 X];
  v179 = v178;
  [(CIVector *)v173 Z];
  v181 = v179 - v180;
  [(CIVector *)v173 Y];
  v183 = v182;
  [(CIVector *)v173 W];
  v185 = v183 - v184;
  [(CIVector *)v173 Y];
  v187 = v186;
  [(CIVector *)v173 W];
  *&v188 = v185 * (v187 - v188) + v177 * v181;
  *&v187 = sqrtf(*&v188) * 4.5;
  _protectEyes = [(CIPortraitContour *)self _protectEyes];
  [(CIImage *)self->inputImage extent];
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v204[0] = v165;
  v204[1] = v173;
  LODWORD(v190) = LODWORD(v187);
  v204[2] = [NSNumber numberWithFloat:v190];
  v198 = [_protectEyes applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v204, 3), v191, v193, v195, v197}];
  inputImage = self->inputImage;
  v202 = @"inputBackgroundImage";
  v203 = inputImage;
  return [v198 imageByApplyingFilter:@"CIHardLightBlendMode" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v203, &v202, 1)}];
}

@end