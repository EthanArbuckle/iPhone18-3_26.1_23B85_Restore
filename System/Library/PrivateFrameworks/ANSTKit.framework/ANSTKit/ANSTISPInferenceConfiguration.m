@interface ANSTISPInferenceConfiguration
+ (id)defaultConfigurationForVersion:(unint64_t)a3 withError:(id *)a4;
+ (id)new;
- (ANSTISPInferenceConfiguration)init;
- (ANSTISPInferenceConfiguration)initWithCoder:(id)a3;
- (ANSTISPInferenceConfiguration)initWithISPAlgorithmConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForVersion:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTISPInferenceConfiguration

- (ANSTISPInferenceConfiguration)init
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

+ (id)defaultConfigurationForVersion:(unint64_t)a3 withError:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3 == 0x10000 || a3 == 196613)
  {
    v5 = [ANSTISPInferenceConfiguration alloc];
    v7 = objc_msgSend_initForVersion_(v5, v6, a3);
  }

  else
  {
    if (a4)
    {
      v9 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA068];
      v15[0] = @"Unrecognized version.";
      v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v15, &v14, 1);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, @"ANSTErrorDomain", 14, v10);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)initForVersion:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ANSTISPInferenceConfiguration;
  result = [(ANSTISPInferenceConfiguration *)&v5 init];
  if (result)
  {
    *(result + 2) = 257;
    *(result + 12) = 0;
    *(result + 3) = 0;
    *(result + 4) = 0;
    *(result + 2) = a3;
  }

  return result;
}

- (ANSTISPInferenceConfiguration)initWithISPAlgorithmConfiguration:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_version(v4, v5, v6);
  v9 = v7;
  if (v7 == 196613 || v7 == 0x10000)
  {
    self = objc_msgSend_initForVersion_(self, v8, v7);
  }

  self->_objectTrackingEnabled = objc_msgSend_enableObjectTracking(v4, v8, v9);
  self->_segmentationEnabled = objc_msgSend_enableSegmentation(v4, v10, v11);
  self->_skinToneEnabled = objc_msgSend_enableSkinTone(v4, v12, v13);
  self->_bodyKeypointsEnabled = objc_msgSend_enableBodyKeypoints(v4, v14, v15);
  self->_depthEnabled = objc_msgSend_enableDepth(v4, v16, v17);
  v20 = objc_msgSend_networkResolution(v4, v18, v19);
  if (v20 <= 1)
  {
    self->_resolution = v20;
  }

  v23 = objc_msgSend_runningFrameRate(v4, v21, v22);

  if (v23 <= 1)
  {
    self->_frameRate = v23;
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      version = self->_version;
      if (version == objc_msgSend_version(v5, v7, v8) && (objectTrackingEnabled = self->_objectTrackingEnabled, objectTrackingEnabled == objc_msgSend_isObjectTrackingEnabled(v5, v9, v10)) && (segmentationEnabled = self->_segmentationEnabled, segmentationEnabled == objc_msgSend_isSegmentationEnabled(v5, v12, v13)) && (skinToneEnabled = self->_skinToneEnabled, skinToneEnabled == objc_msgSend_isSkinToneEnabled(v5, v15, v16)) && (bodyKeypointsEnabled = self->_bodyKeypointsEnabled, bodyKeypointsEnabled == objc_msgSend_isBodyKeypointsEnabled(v5, v18, v19)) && (depthEnabled = self->_depthEnabled, depthEnabled == objc_msgSend_isDepthEnabled(v5, v21, v22)) && (resolution = self->_resolution, resolution == objc_msgSend_resolution(v5, v24, v25)))
      {
        frameRate = self->_frameRate;
        v30 = frameRate == objc_msgSend_frameRate(v5, v27, v28);
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (unint64_t)hash
{
  v2 = self->_objectTrackingEnabled - self->_version + 32 * self->_version;
  v3 = self->_segmentationEnabled - v2 + 32 * v2;
  v4 = self->_skinToneEnabled - v3 + 32 * v3;
  v5 = self->_bodyKeypointsEnabled - v4 + 32 * v4;
  v6 = self->_depthEnabled - v5 + 32 * v5;
  v7 = self->_resolution - v6 + 32 * v6;
  return self->_frameRate - v7 + 32 * v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p> {\n", v5, self);

  v9 = objc_msgSend_version(self, v7, v8);
  v11 = ANSTISPInferenceVersionToNSString(v9, v10);
  objc_msgSend_appendFormat_(v3, v12, @"  version %@\n", v11);

  if (self->_objectTrackingEnabled)
  {
    objc_msgSend_appendFormat_(v3, v13, @"  isObjectTrackingEnabled %@\n", @"YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v13, @"  isObjectTrackingEnabled %@\n", @"NO");
  }

  if (self->_segmentationEnabled)
  {
    objc_msgSend_appendFormat_(v3, v14, @"  isSegmentationEnabled %@\n", @"YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v14, @"  isSegmentationEnabled %@\n", @"NO");
  }

  if (self->_skinToneEnabled)
  {
    objc_msgSend_appendFormat_(v3, v15, @"  isSkinToneEnabled %@\n", @"YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v15, @"  isSkinToneEnabled %@\n", @"NO");
  }

  if (self->_bodyKeypointsEnabled)
  {
    objc_msgSend_appendFormat_(v3, v16, @"  isBodyKeypointsEnabled %@\n", @"YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v16, @"  isBodyKeypointsEnabled %@\n", @"NO");
  }

  if (self->_depthEnabled)
  {
    objc_msgSend_appendFormat_(v3, v17, @"  isDepthEnabled %@\n", @"YES");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v17, @"  isDepthEnabled %@\n", @"NO");
  }

  v20 = objc_msgSend_resolution(self, v18, v19);
  v22 = ANSTISPInferenceResolutionToNSString(v20, v21);
  objc_msgSend_appendFormat_(v3, v23, @"  resolution %@\n", v22);

  v26 = objc_msgSend_frameRate(self, v24, v25);
  v28 = ANSTISPInferenceFrameRateToNSString(v26, v27);
  objc_msgSend_appendFormat_(v3, v29, @"  frameRate %@\n", v28);

  objc_msgSend_appendFormat_(v3, v30, @"  useE5 %d\n", self->_useE5);
  objc_msgSend_appendString_(v3, v31, @"}");
  v34 = objc_msgSend_copy(v3, v32, v33);

  return v34;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_version(self, v8, v9);
  v12 = objc_msgSend_initForVersion_(v7, v11, v10);
  objc_msgSend_setObjectTrackingEnabled_(v12, v13, self->_objectTrackingEnabled);
  objc_msgSend_setSegmentationEnabled_(v12, v14, self->_segmentationEnabled);
  objc_msgSend_setSkinToneEnabled_(v12, v15, self->_skinToneEnabled);
  objc_msgSend_setBodyKeypointsEnabled_(v12, v16, self->_bodyKeypointsEnabled);
  objc_msgSend_setDepthEnabled_(v12, v17, self->_depthEnabled);
  objc_msgSend_setResolution_(v12, v18, self->_resolution);
  objc_msgSend_setFrameRate_(v12, v19, self->_frameRate);
  objc_msgSend_setUseE5_(v12, v20, self->_useE5);
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  version = self->_version;
  v6 = a3;
  v8 = objc_msgSend_numberWithUnsignedInteger_(v4, v7, version);
  v9 = NSStringFromSelector(sel_version);
  objc_msgSend_encodeObject_forKey_(v6, v10, v8, v9);

  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, self->_objectTrackingEnabled);
  v13 = NSStringFromSelector(sel_isObjectTrackingEnabled);
  objc_msgSend_encodeObject_forKey_(v6, v14, v12, v13);

  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, self->_segmentationEnabled);
  v17 = NSStringFromSelector(sel_isSegmentationEnabled);
  objc_msgSend_encodeObject_forKey_(v6, v18, v16, v17);

  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, self->_skinToneEnabled);
  v21 = NSStringFromSelector(sel_isSkinToneEnabled);
  objc_msgSend_encodeObject_forKey_(v6, v22, v20, v21);

  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, self->_bodyKeypointsEnabled);
  v25 = NSStringFromSelector(sel_isBodyKeypointsEnabled);
  objc_msgSend_encodeObject_forKey_(v6, v26, v24, v25);

  v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, self->_depthEnabled);
  v29 = NSStringFromSelector(sel_isDepthEnabled);
  objc_msgSend_encodeObject_forKey_(v6, v30, v28, v29);

  v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, self->_resolution);
  v33 = NSStringFromSelector(sel_resolution);
  objc_msgSend_encodeObject_forKey_(v6, v34, v32, v33);

  v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, self->_frameRate);
  v37 = NSStringFromSelector(sel_frameRate);
  objc_msgSend_encodeObject_forKey_(v6, v38, v36, v37);

  useE5 = self->_useE5;
  v41 = NSStringFromSelector(sel_useE5);
  objc_msgSend_encodeBool_forKey_(v6, v40, useE5, v41);
}

- (ANSTISPInferenceConfiguration)initWithCoder:(id)a3
{
  v126[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_version);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_isObjectTrackingEnabled);
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v10, v11);

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromSelector(sel_isSegmentationEnabled);
      v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v15, v16);

      if (v18)
      {
        v20 = objc_opt_class();
        v21 = NSStringFromSelector(sel_isSkinToneEnabled);
        v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v20, v21);

        if (v23)
        {
          v109 = self;
          v25 = objc_opt_class();
          v26 = NSStringFromSelector(sel_isBodyKeypointsEnabled);
          v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v25, v26);

          if (v28)
          {
            v30 = objc_opt_class();
            v31 = NSStringFromSelector(sel_isDepthEnabled);
            v33 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v32, v30, v31);

            v108 = v33;
            if (v33)
            {
              v35 = objc_opt_class();
              v36 = NSStringFromSelector(sel_resolution);
              v38 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v37, v35, v36);

              v107 = v38;
              if (v38)
              {
                v40 = objc_opt_class();
                v41 = NSStringFromSelector(sel_frameRate);
                v43 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v42, v40, v41);

                v106 = v43;
                if (v43)
                {
                  v45 = NSStringFromSelector(sel_useE5);
                  v47 = objc_msgSend_decodeBoolForKey_(v4, v46, v45);

                  v110.receiver = v109;
                  v110.super_class = ANSTISPInferenceConfiguration;
                  v50 = [(ANSTISPInferenceConfiguration *)&v110 init];
                  if (v50)
                  {
                    v50->_version = objc_msgSend_unsignedIntegerValue(v8, v48, v49);
                    v50->_objectTrackingEnabled = objc_msgSend_BOOLValue(v13, v51, v52);
                    v50->_segmentationEnabled = objc_msgSend_BOOLValue(v18, v53, v54);
                    v50->_skinToneEnabled = objc_msgSend_BOOLValue(v23, v55, v56);
                    v50->_bodyKeypointsEnabled = objc_msgSend_BOOLValue(v28, v57, v58);
                    v50->_depthEnabled = objc_msgSend_BOOLValue(v33, v59, v60);
                    v50->_resolution = objc_msgSend_integerValue(v107, v61, v62);
                    v50->_frameRate = objc_msgSend_integerValue(v106, v63, v64);
                    v50->_useE5 = v47;
                  }

                  self = v50;
                  v65 = self;
                }

                else
                {
                  v98 = MEMORY[0x277CCA9B8];
                  v99 = *MEMORY[0x277CCA050];
                  v111 = *MEMORY[0x277CCA068];
                  v112 = @"-frameRate was not encoded.";
                  v100 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, &v112, &v111, 1);
                  v102 = objc_msgSend_errorWithDomain_code_userInfo_(v98, v101, v99, 4865, v100);
                  objc_msgSend_failWithError_(v4, v103, v102);

                  v65 = 0;
                  self = v109;
                }

                v91 = v106;
                v86 = v107;
              }

              else
              {
                v93 = MEMORY[0x277CCA9B8];
                v94 = *MEMORY[0x277CCA050];
                v113 = *MEMORY[0x277CCA068];
                v114 = @"-resolution was not encoded.";
                v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v114, &v113, 1);
                v96 = objc_msgSend_errorWithDomain_code_userInfo_(v93, v95, v94, 4865, v91);
                objc_msgSend_failWithError_(v4, v97, v96);

                v65 = 0;
                self = v109;
                v86 = 0;
              }
            }

            else
            {
              v88 = MEMORY[0x277CCA9B8];
              v89 = *MEMORY[0x277CCA050];
              v115 = *MEMORY[0x277CCA068];
              v116 = @"-isDepthEnabled was not encoded.";
              v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, &v116, &v115, 1);
              v91 = objc_msgSend_errorWithDomain_code_userInfo_(v88, v90, v89, 4865, v86);
              objc_msgSend_failWithError_(v4, v92, v91);
              v65 = 0;
              self = v109;
            }

            v81 = v108;
          }

          else
          {
            v83 = MEMORY[0x277CCA9B8];
            v84 = *MEMORY[0x277CCA050];
            v117 = *MEMORY[0x277CCA068];
            v118 = @"-isBodyKeypointsEnabled was not encoded.";
            v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, &v118, &v117, 1);
            v86 = objc_msgSend_errorWithDomain_code_userInfo_(v83, v85, v84, 4865, v81);
            objc_msgSend_failWithError_(v4, v87, v86);
            v65 = 0;
            self = v109;
          }
        }

        else
        {
          v78 = MEMORY[0x277CCA9B8];
          v79 = *MEMORY[0x277CCA050];
          v119 = *MEMORY[0x277CCA068];
          v120 = @"-isSkinToneEnabled was not encoded.";
          v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v120, &v119, 1);
          v81 = objc_msgSend_errorWithDomain_code_userInfo_(v78, v80, v79, 4865, v28);
          objc_msgSend_failWithError_(v4, v82, v81);
          v65 = 0;
        }
      }

      else
      {
        v74 = MEMORY[0x277CCA9B8];
        v75 = *MEMORY[0x277CCA050];
        v121 = *MEMORY[0x277CCA068];
        v122 = @"-isSegmentationEnabled was not encoded.";
        v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v122, &v121, 1);
        v28 = objc_msgSend_errorWithDomain_code_userInfo_(v74, v76, v75, 4865, v23);
        objc_msgSend_failWithError_(v4, v77, v28);
        v65 = 0;
      }
    }

    else
    {
      v70 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA050];
      v123 = *MEMORY[0x277CCA068];
      v124 = @"-isObjectTrackingEnabled was not encoded.";
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, &v124, &v123, 1);
      v23 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v72, v71, 4865, v18);
      objc_msgSend_failWithError_(v4, v73, v23);
      v65 = 0;
    }
  }

  else
  {
    v66 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA050];
    v125 = *MEMORY[0x277CCA068];
    v126[0] = @"ISP inference configuration version was not encoded.";
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v126, &v125, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v66, v68, v67, 4865, v13);
    objc_msgSend_failWithError_(v4, v69, v18);
    v65 = 0;
  }

  v104 = *MEMORY[0x277D85DE8];
  return v65;
}

@end