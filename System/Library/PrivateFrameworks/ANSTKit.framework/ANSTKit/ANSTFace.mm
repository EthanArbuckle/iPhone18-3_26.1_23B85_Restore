@interface ANSTFace
+ (id)new;
- (ANSTFace)init;
- (ANSTFace)initWithAcFace:(id *)a3;
- (ANSTFace)initWithAcObject:(id *)a3;
- (ANSTFace)initWithCoder:(id)a3;
- (ANSTFace)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8;
- (ANSTFace)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8 frontal:(BOOL)a9 faceMaskConfidence:(int64_t)a10 eyeCoveringConfidence:(int64_t)a11 poseEstimate:(id)a12 skinToneEstimate:(id)a13 smileEstimate:(id)a14 eyeBlinkEstimate:(id)a15 eyeRectEstimate:(id)a16;
- (id)debugJSONDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTFace

- (ANSTFace)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTFace)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8
{
  v10 = a5;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v11, a2);
  __break(1u);
  return result;
}

- (ANSTFace)initWithAcObject:(id *)a3
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTFace)initWithAcFace:(id *)a3
{
  if (a3->var16)
  {
    v5 = [ANST3DPoseEstimate alloc];
    v7 = objc_msgSend_initWithYaw_roll_refinedYaw_refinedRoll_refinedPitch_(v5, v6, a3->var6, a3->var7, a3->var8, a3->var9, a3->var10);
  }

  else
  {
    v7 = 0;
  }

  if (a3->var40)
  {
    v8 = [ANSTSkinToneEstimate alloc];
    v10 = objc_msgSend_initWithTypeIConfidence_typeIIConfidence_typeIIIConfidence_typeIVConfidence_typeVConfidence_typeVIConfidence_firmwareConfidence_(v8, v9, a3->var29, a3->var30, a3->var31, a3->var32, a3->var33, a3->var34, a3->var35);
  }

  else
  {
    v10 = 0;
  }

  if (a3->var19)
  {
    v11 = [ANSTSmileEstimate alloc];
    v13 = objc_msgSend_initWithSmile_(v11, v12, a3->var11);
  }

  else
  {
    v13 = 0;
  }

  if (a3->var18)
  {
    v14 = [ANSTEyeBlinkEstimate alloc];
    v16 = objc_msgSend_initWithBlinkLeft_blinkRight_(v14, v15, a3->var12, a3->var13);
  }

  else
  {
    v16 = 0;
  }

  if (a3->var17)
  {
    v17 = [ANSTEyeRectEstimate alloc];
    v20 = objc_msgSend_initWithEyeRectLeft_eyeRectRight_(v17, v18, v19, a3->var14.var0, a3->var14.var1, a3->var14.var2, a3->var14.var3, a3->var15.var0, a3->var15.var1, a3->var15.var2, a3->var15.var3);
  }

  else
  {
    v20 = 0;
  }

  var0 = a3->var0;
  var1 = a3->var1;
  v23 = ANSTObjectCategoryFromAcDetCategory(a3->var2);
  *&v24 = a3->var5;
  v26 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_frontal_faceMaskConfidence_eyeCoveringConfidence_poseEstimate_skinToneEstimate_smileEstimate_eyeBlinkEstimate_eyeRectEstimate_(self, v25, var0, var1, v23, a3->var4, a3->var20 != 0, a3->var24, a3->var3.var0, a3->var3.var1, a3->var3.var2, a3->var3.var3, v24, a3->var28, v7, v10, v13, v16, v20);

  return v26;
}

- (ANSTFace)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8 frontal:(BOOL)a9 faceMaskConfidence:(int64_t)a10 eyeCoveringConfidence:(int64_t)a11 poseEstimate:(id)a12 skinToneEstimate:(id)a13 smileEstimate:(id)a14 eyeBlinkEstimate:(id)a15 eyeRectEstimate:(id)a16
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v44 = a16;
  v45.receiver = self;
  v45.super_class = ANSTFace;
  *&v29 = a8;
  v30 = [(ANSTObject *)&v45 initWithObjectID:a3 groupID:a4 category:a5 boundingBox:a7 confidence:x distance:y, width, height, v29];
  v30->_frontal = a9;
  v30->_faceMaskConfidence = a10;
  v30->_eyeCoveringConfidence = a11;
  poseEstimate = v30->_poseEstimate;
  v30->_poseEstimate = v25;
  v32 = v25;

  v30->_poseEstimateExists = v32 != 0;
  skinToneEstimate = v30->_skinToneEstimate;
  v30->_skinToneEstimate = v26;
  v34 = v26;

  v30->_skinToneEstimateExists = v34 != 0;
  smileEstimate = v30->_smileEstimate;
  v30->_smileEstimate = v27;
  v36 = v27;

  v30->_smileEstimateExists = v36 != 0;
  eyeBlinkEstimate = v30->_eyeBlinkEstimate;
  v30->_eyeBlinkEstimate = v28;
  v38 = v28;

  v30->_eyeBlinkEstimateExists = v38 != 0;
  eyeRectEstimate = v30->_eyeRectEstimate;
  v30->_eyeRectEstimate = v44;

  v30->_eyeRectEstimateExists = v44 != 0;
  return v30;
}

- (ANSTFace)initWithCoder:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = ANSTFace;
  v5 = [(ANSTObject *)&v68 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v4;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_isFrontal);
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

  if (!v10)
  {
    goto LABEL_21;
  }

  v5->_frontal = objc_msgSend_BOOLValue(v10, v11, v12);

  v13 = v6;
  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_faceMaskConfidence);
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(v13, v16, v14, v15);

  if (!v17)
  {
    goto LABEL_21;
  }

  v5->_faceMaskConfidence = objc_msgSend_integerValue(v17, v18, v19);

  v20 = v13;
  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_eyeCoveringConfidence);
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v20, v23, v21, v22);

  if (!v24)
  {
    goto LABEL_21;
  }

  v5->_eyeCoveringConfidence = objc_msgSend_integerValue(v24, v25, v26);

  v27 = v20;
  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_poseEstimateExists);
  v31 = objc_msgSend_decodeObjectOfClass_forKey_(v27, v30, v28, v29);

  if (!v31)
  {
    goto LABEL_21;
  }

  v5->_poseEstimateExists = objc_msgSend_BOOLValue(v31, v32, v33);

  v34 = v27;
  v35 = objc_opt_class();
  v36 = NSStringFromSelector(sel_skinToneEstimateExists);
  v38 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v37, v35, v36);

  if (!v38)
  {
    goto LABEL_21;
  }

  v5->_skinToneEstimateExists = objc_msgSend_BOOLValue(v38, v39, v40);

  if (!sub_22E601030(v34, &v5->_smileEstimateExists, sel_smileEstimateExists))
  {
    goto LABEL_21;
  }

  if (!sub_22E601030(v34, &v5->_eyeBlinkEstimateExists, sel_eyeBlinkEstimateExists))
  {
    goto LABEL_21;
  }

  if (!sub_22E601030(v34, &v5->_eyeRectEstimateExists, sel_eyeRectEstimateExists))
  {
    goto LABEL_21;
  }

  if (v5->_poseEstimateExists)
  {
    v41 = objc_opt_class();
    v42 = NSStringFromSelector(sel_poseEstimate);
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v43, v41, v42);
    poseEstimate = v5->_poseEstimate;
    v5->_poseEstimate = v44;

    if (!v5->_poseEstimate)
    {
      goto LABEL_21;
    }
  }

  if (v5->_skinToneEstimateExists)
  {
    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_skinToneEstimate);
    v49 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v48, v46, v47);
    skinToneEstimate = v5->_skinToneEstimate;
    v5->_skinToneEstimate = v49;

    if (!v5->_skinToneEstimate)
    {
      goto LABEL_21;
    }
  }

  if (v5->_smileEstimateExists)
  {
    v51 = objc_opt_class();
    v52 = NSStringFromSelector(sel_smileEstimate);
    v54 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v53, v51, v52);
    smileEstimate = v5->_smileEstimate;
    v5->_smileEstimate = v54;

    if (!v5->_smileEstimate)
    {
      goto LABEL_21;
    }
  }

  if (v5->_eyeBlinkEstimateExists)
  {
    v56 = objc_opt_class();
    v57 = NSStringFromSelector(sel_eyeBlinkEstimate);
    v59 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v58, v56, v57);
    eyeBlinkEstimate = v5->_eyeBlinkEstimate;
    v5->_eyeBlinkEstimate = v59;

    if (!v5->_eyeBlinkEstimate)
    {
      goto LABEL_21;
    }
  }

  if (!v5->_eyeRectEstimateExists)
  {
    goto LABEL_20;
  }

  v61 = objc_opt_class();
  v62 = NSStringFromSelector(sel_eyeRectEstimate);
  v64 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v63, v61, v62);
  eyeRectEstimate = v5->_eyeRectEstimate;
  v5->_eyeRectEstimate = v64;

  if (v5->_eyeRectEstimate)
  {
LABEL_20:
    v66 = v5;
  }

  else
  {
LABEL_21:
    v66 = 0;
  }

  return v66;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v76.receiver = self;
  v76.super_class = ANSTFace;
  [(ANSTObject *)&v76 encodeWithCoder:v4];
  frontal = self->_frontal;
  v6 = MEMORY[0x277CCABB0];
  v7 = v4;
  v9 = objc_msgSend_numberWithBool_(v6, v8, frontal);
  v10 = NSStringFromSelector(sel_isFrontal);
  objc_msgSend_encodeObject_forKey_(v7, v11, v9, v10);

  faceMaskConfidence = self->_faceMaskConfidence;
  v13 = MEMORY[0x277CCABB0];
  v14 = v7;
  v16 = objc_msgSend_numberWithInteger_(v13, v15, faceMaskConfidence);
  v17 = NSStringFromSelector(sel_faceMaskConfidence);
  objc_msgSend_encodeObject_forKey_(v14, v18, v16, v17);

  eyeCoveringConfidence = self->_eyeCoveringConfidence;
  v20 = MEMORY[0x277CCABB0];
  v21 = v14;
  v23 = objc_msgSend_numberWithInteger_(v20, v22, eyeCoveringConfidence);
  v24 = NSStringFromSelector(sel_eyeCoveringConfidence);
  objc_msgSend_encodeObject_forKey_(v21, v25, v23, v24);

  poseEstimateExists = self->_poseEstimateExists;
  v27 = MEMORY[0x277CCABB0];
  v28 = v21;
  v30 = objc_msgSend_numberWithBool_(v27, v29, poseEstimateExists);
  v31 = NSStringFromSelector(sel_poseEstimateExists);
  objc_msgSend_encodeObject_forKey_(v28, v32, v30, v31);

  poseEstimate = self->_poseEstimate;
  if (poseEstimate)
  {
    v34 = NSStringFromSelector(sel_poseEstimate);
    objc_msgSend_encodeObject_forKey_(v28, v35, poseEstimate, v34);
  }

  skinToneEstimateExists = self->_skinToneEstimateExists;
  v37 = MEMORY[0x277CCABB0];
  v38 = v28;
  v40 = objc_msgSend_numberWithBool_(v37, v39, skinToneEstimateExists);
  v41 = NSStringFromSelector(sel_skinToneEstimateExists);
  objc_msgSend_encodeObject_forKey_(v38, v42, v40, v41);

  skinToneEstimate = self->_skinToneEstimate;
  if (skinToneEstimate)
  {
    v44 = NSStringFromSelector(sel_skinToneEstimate);
    objc_msgSend_encodeObject_forKey_(v38, v45, skinToneEstimate, v44);
  }

  smileEstimateExists = self->_smileEstimateExists;
  v47 = MEMORY[0x277CCABB0];
  v48 = v38;
  v50 = objc_msgSend_numberWithBool_(v47, v49, smileEstimateExists);
  v51 = NSStringFromSelector(sel_smileEstimateExists);
  objc_msgSend_encodeObject_forKey_(v48, v52, v50, v51);

  smileEstimate = self->_smileEstimate;
  if (smileEstimate)
  {
    v54 = NSStringFromSelector(sel_smileEstimate);
    objc_msgSend_encodeObject_forKey_(v48, v55, smileEstimate, v54);
  }

  eyeBlinkEstimateExists = self->_eyeBlinkEstimateExists;
  v57 = MEMORY[0x277CCABB0];
  v58 = v48;
  v60 = objc_msgSend_numberWithBool_(v57, v59, eyeBlinkEstimateExists);
  v61 = NSStringFromSelector(sel_eyeBlinkEstimateExists);
  objc_msgSend_encodeObject_forKey_(v58, v62, v60, v61);

  eyeBlinkEstimate = self->_eyeBlinkEstimate;
  if (eyeBlinkEstimate)
  {
    v64 = NSStringFromSelector(sel_eyeBlinkEstimate);
    objc_msgSend_encodeObject_forKey_(v58, v65, eyeBlinkEstimate, v64);
  }

  eyeRectEstimateExists = self->_eyeRectEstimateExists;
  v67 = MEMORY[0x277CCABB0];
  v68 = v58;
  v70 = objc_msgSend_numberWithBool_(v67, v69, eyeRectEstimateExists);
  v71 = NSStringFromSelector(sel_eyeRectEstimateExists);
  objc_msgSend_encodeObject_forKey_(v68, v72, v70, v71);

  eyeRectEstimate = self->_eyeRectEstimate;
  if (eyeRectEstimate)
  {
    v74 = NSStringFromSelector(sel_eyeRectEstimate);
    objc_msgSend_encodeObject_forKey_(v68, v75, eyeRectEstimate, v74);
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTFace %p> {\n", self);
  v7 = objc_msgSend_objectID(self, v5, v6);
  objc_msgSend_appendFormat_(v3, v8, @"    objectID            %lu\n", v7);
  v11 = objc_msgSend_category(self, v9, v10);
  objc_msgSend_appendFormat_(v3, v12, @"    category            %@\n", v11);

  objc_msgSend_boundingBox(self, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v23, v24, @"CGRect(");
  v216.origin.x = v16;
  v216.origin.y = v18;
  v216.size.width = v20;
  v216.size.height = v22;
  MinX = CGRectGetMinX(v216);
  objc_msgSend_appendFormat_(v23, v26, @"x=%.*g, ", 17, *&MinX);
  v217.origin.x = v16;
  v217.origin.y = v18;
  v217.size.width = v20;
  v217.size.height = v22;
  MinY = CGRectGetMinY(v217);
  objc_msgSend_appendFormat_(v23, v28, @"y=%.*g, ", 17, *&MinY);
  v218.origin.x = v16;
  v218.origin.y = v18;
  v218.size.width = v20;
  v218.size.height = v22;
  Width = CGRectGetWidth(v218);
  objc_msgSend_appendFormat_(v23, v30, @"w=%.*g, ", 17, *&Width);
  v219.origin.x = v16;
  v219.origin.y = v18;
  v219.size.width = v20;
  v219.size.height = v22;
  Height = CGRectGetHeight(v219);
  objc_msgSend_appendFormat_(v23, v32, @"h=%.*g", 17, *&Height);
  objc_msgSend_appendString_(v23, v33, @""));
  v36 = objc_msgSend_copy(v23, v34, v35);

  objc_msgSend_appendFormat_(v3, v37, @"    boundingBox         %@\n", v36);
  v40 = objc_msgSend_confidence(self, v38, v39);
  objc_msgSend_appendFormat_(v3, v41, @"    confidence          %lu\n\n", v40);
  objc_msgSend_distance(self, v42, v43);
  objc_msgSend_appendFormat_(v3, v45, @"    distance          %f\n\n", v44);
  if (self->_frontal)
  {
    objc_msgSend_appendFormat_(v3, v46, @"    isFrontal           %@\n", @"YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v46, @"    isFrontal           %@\n", @"NO");
  }

  objc_msgSend_appendFormat_(v3, v47, @"    faceMaskConf        %ld\n", self->_faceMaskConfidence);
  objc_msgSend_appendFormat_(v3, v48, @"    eyeCoverConf        %ld\n\n", self->_eyeCoveringConfidence);
  if (self->_poseEstimate)
  {
    v51 = objc_msgSend_poseEstimate(self, v49, v50);
    v54 = objc_msgSend_yaw(v51, v52, v53);
    objc_msgSend_appendFormat_(v3, v55, @"    yaw                 %ld\n", v54);

    v58 = objc_msgSend_poseEstimate(self, v56, v57);
    v61 = objc_msgSend_roll(v58, v59, v60);
    objc_msgSend_appendFormat_(v3, v62, @"    roll                %ld\n", v61);

    v65 = objc_msgSend_poseEstimate(self, v63, v64);
    v68 = objc_msgSend_refinedYaw(v65, v66, v67);
    objc_msgSend_appendFormat_(v3, v69, @"    refinedYaw          %ld\n", v68);

    v72 = objc_msgSend_poseEstimate(self, v70, v71);
    v75 = objc_msgSend_refinedRoll(v72, v73, v74);
    objc_msgSend_appendFormat_(v3, v76, @"    refinedRoll         %ld\n", v75);

    v79 = objc_msgSend_poseEstimate(self, v77, v78);
    v82 = objc_msgSend_refinedPitch(v79, v80, v81);
    objc_msgSend_appendFormat_(v3, v83, @"    refinedPitch        %ld\n\n", v82);
  }

  else
  {
    objc_msgSend_appendString_(v3, v49, @"    poseEstimate        nil\n\n");
  }

  if (self->_skinToneEstimate)
  {
    v86 = objc_msgSend_skinToneEstimate(self, v84, v85);
    v89 = objc_msgSend_typeIConfidence(v86, v87, v88);
    objc_msgSend_appendFormat_(v3, v90, @"    skinToneTypeIConf   %ld\n", v89);

    v93 = objc_msgSend_skinToneEstimate(self, v91, v92);
    v96 = objc_msgSend_typeIIConfidence(v93, v94, v95);
    objc_msgSend_appendFormat_(v3, v97, @"    skinToneTypeIIConf  %ld\n", v96);

    v100 = objc_msgSend_skinToneEstimate(self, v98, v99);
    v103 = objc_msgSend_typeIIIConfidence(v100, v101, v102);
    objc_msgSend_appendFormat_(v3, v104, @"    skinToneTypeIIIConf %ld\n", v103);

    v107 = objc_msgSend_skinToneEstimate(self, v105, v106);
    v110 = objc_msgSend_typeIVConfidence(v107, v108, v109);
    objc_msgSend_appendFormat_(v3, v111, @"    skinToneTypeIVConf  %ld\n", v110);

    v114 = objc_msgSend_skinToneEstimate(self, v112, v113);
    v117 = objc_msgSend_typeVConfidence(v114, v115, v116);
    objc_msgSend_appendFormat_(v3, v118, @"    skinToneTypeVConf   %ld\n", v117);

    v121 = objc_msgSend_skinToneEstimate(self, v119, v120);
    v124 = objc_msgSend_typeVIConfidence(v121, v122, v123);
    objc_msgSend_appendFormat_(v3, v125, @"    skinToneTypeVIConf  %ld\n\n", v124);

    v128 = objc_msgSend_skinToneEstimate(self, v126, v127);
    v131 = objc_msgSend_firmwareConfidence(v128, v129, v130);
    objc_msgSend_appendFormat_(v3, v132, @"    skinToneFWConf      %ld\n\n", v131);
  }

  else
  {
    objc_msgSend_appendString_(v3, v84, @"    skinToneEstimate    nil\n\n");
  }

  if (self->_smileEstimate)
  {
    v135 = objc_msgSend_smileEstimate(self, v133, v134);
    v138 = objc_msgSend_smile(v135, v136, v137);
    objc_msgSend_appendFormat_(v3, v139, @"    smile               %ld\n\n", v138);
  }

  else
  {
    objc_msgSend_appendString_(v3, v133, @"    smileEstimate       nil\n\n");
  }

  if (self->_eyeBlinkEstimate)
  {
    v142 = objc_msgSend_eyeBlinkEstimate(self, v140, v141);
    v145 = objc_msgSend_blinkLeft(v142, v143, v144);
    objc_msgSend_appendFormat_(v3, v146, @"    blinkLeft           %ld\n", v145);

    v149 = objc_msgSend_eyeBlinkEstimate(self, v147, v148);
    v152 = objc_msgSend_blinkRight(v149, v150, v151);
    objc_msgSend_appendFormat_(v3, v153, @"    blinkRight          %ld\n\n", v152);
  }

  else
  {
    objc_msgSend_appendString_(v3, v140, @"    eyeBlinkEstimate    nil\n\n");
  }

  if (self->_eyeRectEstimate)
  {
    v156 = objc_msgSend_eyeRectEstimate(self, v154, v155);
    objc_msgSend_eyeRectLeft(v156, v157, v158);
    v160 = v159;
    v162 = v161;
    v164 = v163;
    v166 = v165;
    v167 = objc_alloc_init(MEMORY[0x277CCAB68]);
    objc_msgSend_appendString_(v167, v168, @"CGRect(");
    v220.origin.x = v160;
    v220.origin.y = v162;
    v220.size.width = v164;
    v220.size.height = v166;
    v169 = CGRectGetMinX(v220);
    objc_msgSend_appendFormat_(v167, v170, @"x=%.*g, ", 17, *&v169);
    v221.origin.x = v160;
    v221.origin.y = v162;
    v221.size.width = v164;
    v221.size.height = v166;
    v171 = CGRectGetMinY(v221);
    objc_msgSend_appendFormat_(v167, v172, @"y=%.*g, ", 17, *&v171);
    v222.origin.x = v160;
    v222.origin.y = v162;
    v222.size.width = v164;
    v222.size.height = v166;
    v173 = CGRectGetWidth(v222);
    objc_msgSend_appendFormat_(v167, v174, @"w=%.*g, ", 17, *&v173);
    v223.origin.x = v160;
    v223.origin.y = v162;
    v223.size.width = v164;
    v223.size.height = v166;
    v175 = CGRectGetHeight(v223);
    objc_msgSend_appendFormat_(v167, v176, @"h=%.*g", 17, *&v175);
    objc_msgSend_appendString_(v167, v177, @""));
    v180 = objc_msgSend_copy(v167, v178, v179);

    objc_msgSend_appendFormat_(v3, v181, @"    eyeRectLeft         %@\n", v180);
    v184 = objc_msgSend_eyeRectEstimate(self, v182, v183);
    objc_msgSend_eyeRectRight(v184, v185, v186);
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v194 = v193;
    v195 = objc_alloc_init(MEMORY[0x277CCAB68]);
    objc_msgSend_appendString_(v195, v196, @"CGRect(");
    v224.origin.x = v188;
    v224.origin.y = v190;
    v224.size.width = v192;
    v224.size.height = v194;
    v197 = CGRectGetMinX(v224);
    objc_msgSend_appendFormat_(v195, v198, @"x=%.*g, ", 17, *&v197);
    v225.origin.x = v188;
    v225.origin.y = v190;
    v225.size.width = v192;
    v225.size.height = v194;
    v199 = CGRectGetMinY(v225);
    objc_msgSend_appendFormat_(v195, v200, @"y=%.*g, ", 17, *&v199);
    v226.origin.x = v188;
    v226.origin.y = v190;
    v226.size.width = v192;
    v226.size.height = v194;
    v201 = CGRectGetWidth(v226);
    objc_msgSend_appendFormat_(v195, v202, @"w=%.*g, ", 17, *&v201);
    v227.origin.x = v188;
    v227.origin.y = v190;
    v227.size.width = v192;
    v227.size.height = v194;
    v203 = CGRectGetHeight(v227);
    objc_msgSend_appendFormat_(v195, v204, @"h=%.*g", 17, *&v203);
    objc_msgSend_appendString_(v195, v205, @""));
    v208 = objc_msgSend_copy(v195, v206, v207);

    objc_msgSend_appendFormat_(v3, v209, @"    eyeRectRight        %@\n", v208);
  }

  else
  {
    objc_msgSend_appendString_(v3, v154, @"    eyeRectEstimate     nil\n\n");
  }

  objc_msgSend_appendString_(v3, v210, @"}");
  v213 = objc_msgSend_copy(v3, v211, v212);

  return v213;
}

- (id)debugJSONDictionary
{
  v156.receiver = self;
  v156.super_class = ANSTFace;
  v3 = [(ANSTObject *)&v156 debugJSONDictionary];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, self->_frontal);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v9, v8, @"isFrontal");

  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, self->_faceMaskConfidence);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v12, v11, @"faceMaskConfidence");

  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, self->_eyeCoveringConfidence);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v15, v14, @"eyeCoveringConfidence");

  v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v16, self->_poseEstimateExists);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v18, v17, @"hasPoseData");

  if (self->_poseEstimateExists)
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = objc_msgSend_yaw(self->_poseEstimate, v19, v20);
    v24 = objc_msgSend_numberWithInteger_(v21, v23, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v25, v24, @"yaw");

    v26 = MEMORY[0x277CCABB0];
    v29 = objc_msgSend_roll(self->_poseEstimate, v27, v28);
    v31 = objc_msgSend_numberWithInteger_(v26, v30, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v32, v31, @"roll");

    v33 = MEMORY[0x277CCABB0];
    v36 = objc_msgSend_refinedYaw(self->_poseEstimate, v34, v35);
    v38 = objc_msgSend_numberWithInteger_(v33, v37, v36);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v39, v38, @"refinedYaw");

    v40 = MEMORY[0x277CCABB0];
    v43 = objc_msgSend_refinedRoll(self->_poseEstimate, v41, v42);
    v45 = objc_msgSend_numberWithInteger_(v40, v44, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v46, v45, @"refinedRoll");

    v47 = MEMORY[0x277CCABB0];
    v50 = objc_msgSend_refinedPitch(self->_poseEstimate, v48, v49);
    v52 = objc_msgSend_numberWithInteger_(v47, v51, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v52, @"refinedPitch");
  }

  v54 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, self->_skinToneEstimateExists);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v55, v54, @"hasSkinToneData");

  if (self->_skinToneEstimateExists)
  {
    v58 = MEMORY[0x277CCABB0];
    v59 = objc_msgSend_typeIConfidence(self->_skinToneEstimate, v56, v57);
    v61 = objc_msgSend_numberWithInteger_(v58, v60, v59);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v62, v61, @"skintoneTypeI");

    v63 = MEMORY[0x277CCABB0];
    v66 = objc_msgSend_typeIIConfidence(self->_skinToneEstimate, v64, v65);
    v68 = objc_msgSend_numberWithInteger_(v63, v67, v66);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v69, v68, @"skintoneTypeII");

    v70 = MEMORY[0x277CCABB0];
    v73 = objc_msgSend_typeIIIConfidence(self->_skinToneEstimate, v71, v72);
    v75 = objc_msgSend_numberWithInteger_(v70, v74, v73);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v76, v75, @"skintoneTypeIII");

    v77 = MEMORY[0x277CCABB0];
    v80 = objc_msgSend_typeIVConfidence(self->_skinToneEstimate, v78, v79);
    v82 = objc_msgSend_numberWithInteger_(v77, v81, v80);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v83, v82, @"skintoneTypeIV");

    v84 = MEMORY[0x277CCABB0];
    v87 = objc_msgSend_typeVConfidence(self->_skinToneEstimate, v85, v86);
    v89 = objc_msgSend_numberWithInteger_(v84, v88, v87);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v90, v89, @"skintoneTypeV");

    v91 = MEMORY[0x277CCABB0];
    v94 = objc_msgSend_typeVIConfidence(self->_skinToneEstimate, v92, v93);
    v96 = objc_msgSend_numberWithInteger_(v91, v95, v94);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v97, v96, @"skintoneTypeVI");

    v98 = MEMORY[0x277CCABB0];
    v101 = objc_msgSend_firmwareConfidence(self->_skinToneEstimate, v99, v100);
    v103 = objc_msgSend_numberWithInteger_(v98, v102, v101);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v104, v103, @"skintoneFWConf");
  }

  v105 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v56, self->_smileEstimateExists);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v106, v105, @"hasSmileData");

  if (self->_smileEstimateExists)
  {
    v109 = MEMORY[0x277CCABB0];
    v110 = objc_msgSend_smile(self->_smileEstimate, v107, v108);
    v112 = objc_msgSend_numberWithInteger_(v109, v111, v110);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v113, v112, @"smile");
  }

  v114 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v107, self->_eyeBlinkEstimateExists);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v115, v114, @"hasBlinkData");

  if (self->_eyeBlinkEstimateExists)
  {
    v118 = MEMORY[0x277CCABB0];
    v119 = objc_msgSend_blinkLeft(self->_eyeBlinkEstimate, v116, v117);
    v121 = objc_msgSend_numberWithInteger_(v118, v120, v119);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v122, v121, @"blinkLeft");

    v123 = MEMORY[0x277CCABB0];
    v126 = objc_msgSend_blinkRight(self->_eyeBlinkEstimate, v124, v125);
    v128 = objc_msgSend_numberWithInteger_(v123, v127, v126);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v129, v128, @"blinkRight");
  }

  v130 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v116, self->_eyeRectEstimateExists);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v131, v130, @"hasEyeData");

  if (self->_eyeRectEstimateExists)
  {
    v134 = objc_msgSend_eyeRectLeft(self->_eyeRectEstimate, v132, v133);
    v141 = sub_22E5FE548(v137, v138, v139, v140, v134, v135, v136);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v142, v141, @"eyeRectLeft");

    v145 = objc_msgSend_eyeRectRight(self->_eyeRectEstimate, v143, v144);
    v152 = sub_22E5FE548(v148, v149, v150, v151, v145, v146, v147);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v153, v152, @"eyeRectRight");
  }

  v154 = objc_msgSend_copy(v6, v132, v133);

  return v154;
}

@end