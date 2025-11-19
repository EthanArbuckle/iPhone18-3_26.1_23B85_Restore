@interface AXMVisionFeatureFaceAttributes
+ (id)unitTestingFaceAttributes;
+ (id)unitTestingFaceAttributesForAge:(int64_t)a3 gender:(int64_t)a4 eyes:(int64_t)a5 smiling:(int64_t)a6 facialHair:(int64_t)a7 hairColor:(int64_t)a8 baldness:(int64_t)a9 glasses:(int64_t)a10 eyeMakeup:(int64_t)a11 lipMakeup:(int64_t)a12 faceMask:(int64_t)a13 ethnicity:(int64_t)a14 expression:(int64_t)a15 facialHairV2:(int64_t)a16 hairType:(int64_t)a17 headGear:(int64_t)a18 pose:(int64_t)a19 skinTone:(int64_t)a20 excludeOptions:(int64_t)a21;
- (AXMVisionFeatureFaceAttributes)initWithCoder:(id)a3;
- (AXMVisionFeatureFaceAttributes)initWithVisionFaceAttributes:(id)a3;
- (id)_accessibilityIdentifierForAgeCategory;
- (id)_accessibilityIdentifierForEthnicityCategory;
- (id)_accessibilityIdentifierForExpressionCategory;
- (id)_accessibilityIdentifierForEyesCategory;
- (id)_accessibilityIdentifierForFaceHairV2Category;
- (id)_accessibilityIdentifierForFacemaskCategory;
- (id)_accessibilityIdentifierForGenderCategory;
- (id)_accessibilityIdentifierForGlassesCategory;
- (id)_accessibilityIdentifierForHairColorCategory;
- (id)_accessibilityIdentifierForHairTypeCategory;
- (id)_accessibilityIdentifierForHeadgearCategory;
- (id)_accessibilityIdentifierForMakeupEyesCategory;
- (id)_accessibilityIdentifierForMakeupLipsCategory;
- (id)_accessibilityIdentifierForPoseCategory;
- (id)_accessibilityIdentifierForSkintoneCategory;
- (id)_accessibilityLabelForAccessoryDetails;
- (id)_accessibilityLabelForDemographics;
- (id)_accessibilityLabelForExpressionDetails;
- (id)_accessibilityLabelForFacialHairDetails;
- (id)_accessibilityLabelForHairDetails;
- (id)_accessibilityLabelFormatterForAgeCategory;
- (id)_accessibilityLabelFormatterForExpressionCategory;
- (id)_accessibilityLabelFormatterForFaceHairV2Category;
- (id)_accessibilityLabelFormatterForFaceMaskCategory;
- (id)_accessibilityLabelFormatterForGlassesCategory;
- (id)_accessibilityLabelFormatterForHairColorCategory;
- (id)_accessibilityLabelFormatterForHairTypeCategory;
- (id)_accessibilityLabelFormatterForPoseCategory;
- (id)accessibilityLabelAndConfidenceMappingForAttributes;
- (id)accessibilityLabelForAttributes;
- (int64_t)_AXMAgeCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMEthnicityCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMExpressionCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMEyesCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMFaceHairV2CategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMFacemaskCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMGenderCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMGlassesCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMHairColorCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMHairtypeCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMHeadgearCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMMakeupEyesCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMMakeupLipsCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMPoseCategoryForVisionCategoryIdentifier:(id)a3;
- (int64_t)_AXMSkintoneCategoryForVisionCategoryIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionFeatureFaceAttributes

- (AXMVisionFeatureFaceAttributes)initWithVisionFaceAttributes:(id)a3
{
  v4 = a3;
  v97.receiver = self;
  v97.super_class = AXMVisionFeatureFaceAttributes;
  v5 = [(AXMVisionFeatureFaceAttributes *)&v97 init];
  if (v5)
  {
    v6 = [v4 ageCategory];
    v7 = [v6 label];
    v8 = [v7 identifier];
    v5->_axAgeCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMAgeCategoryForVisionCategoryIdentifier:v8];

    v9 = [v4 ageCategory];
    v10 = [v9 label];
    [v10 confidence];
    v5->_axAgeCategoryConfidence = v11;

    v12 = [v4 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
    v13 = [v12 label];
    v14 = [v13 identifier];
    v5->_axGenderCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMGenderCategoryForVisionCategoryIdentifier:v14];

    v15 = [v4 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
    v16 = [v15 label];
    [v16 confidence];
    v5->_axGenderCategoryConfidence = v17;

    v18 = [v4 eyesCategory];
    v19 = [v18 label];
    v20 = [v19 identifier];
    v5->_axEyesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMEyesCategoryForVisionCategoryIdentifier:v20];

    v21 = [v4 eyesCategory];
    v22 = [v21 label];
    [v22 confidence];
    v5->_axEyesCategoryConfidence = v23;

    v24 = [v4 hairColorCategory];
    v25 = [v24 label];
    v26 = [v25 identifier];
    v5->_axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHairColorCategoryForVisionCategoryIdentifier:v26];

    v27 = [v4 hairColorCategory];
    v28 = [v27 label];
    [v28 confidence];
    v5->_axHairColorCategoryConfidence = v29;

    v30 = [v4 glassesCategory];
    v31 = [v30 label];
    v32 = [v31 identifier];
    v5->_axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMGlassesCategoryForVisionCategoryIdentifier:v32];

    v33 = [v4 glassesCategory];
    v34 = [v33 label];
    [v34 confidence];
    v5->_axGlassesCategoryConfidence = v35;

    v36 = [v4 makeupEyesCategory];
    v37 = [v36 label];
    v38 = [v37 identifier];
    v5->_axMakeupEyesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMMakeupEyesCategoryForVisionCategoryIdentifier:v38];

    v39 = [v4 makeupEyesCategory];
    v40 = [v39 label];
    [v40 confidence];
    v5->_axMakeupEyesCategoryConfidence = v41;

    v42 = [v4 makeupLipsCategory];
    v43 = [v42 label];
    v44 = [v43 identifier];
    v5->_axMakeupLipsCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMMakeupLipsCategoryForVisionCategoryIdentifier:v44];

    v45 = [v4 makeupLipsCategory];
    v46 = [v45 label];
    [v46 confidence];
    v5->_axMakeupLipsCategoryConfidence = v47;

    v48 = [v4 facemaskCategory];
    v49 = [v48 label];
    v50 = [v49 identifier];
    v5->_axFacemaskCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMFacemaskCategoryForVisionCategoryIdentifier:v50];

    v51 = [v4 facemaskCategory];
    v52 = [v51 label];
    [v52 confidence];
    v5->_axFacemaskCategoryConfidence = v53;

    v54 = [v4 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    v55 = [v54 label];
    v56 = [v55 identifier];
    v5->_axEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMEthnicityCategoryForVisionCategoryIdentifier:v56];

    v57 = [v4 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    v58 = [v57 label];
    [v58 confidence];
    v5->_axEthnicityCategoryConfidence = v59;

    v60 = [v4 VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    v61 = [v60 label];
    v62 = [v61 identifier];
    v5->_axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMExpressionCategoryForVisionCategoryIdentifier:v62];

    v63 = [v4 VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    v64 = [v63 label];
    [v64 confidence];
    v5->_axExpressionCategoryConfidence = v65;

    v66 = [v4 VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    v67 = [v66 label];
    v68 = [v67 identifier];
    v5->_axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)v5 _AXMFaceHairV2CategoryForVisionCategoryIdentifier:v68];

    v69 = [v4 VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    v70 = [v69 label];
    [v70 confidence];
    v5->_axFaceHairV2CategoryConfidence = v71;

    v72 = [v4 VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    v73 = [v72 label];
    v74 = [v73 identifier];
    v5->_axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHairtypeCategoryForVisionCategoryIdentifier:v74];

    v75 = [v4 VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    v76 = [v75 label];
    [v76 confidence];
    v5->_axHairTypeCategoryConfidence = v77;

    v78 = [v4 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    v79 = [v78 label];
    v80 = [v79 identifier];
    v5->_axHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHeadgearCategoryForVisionCategoryIdentifier:v80];

    v81 = [v4 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    v82 = [v81 label];
    [v82 confidence];
    v5->_axHeadgearCategoryConfidence = v83;

    v84 = [v4 VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    v85 = [v84 label];
    v86 = [v85 identifier];
    v5->_axPoseCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMPoseCategoryForVisionCategoryIdentifier:v86];

    v87 = [v4 VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    v88 = [v87 label];
    [v88 confidence];
    v5->_axPoseCategoryConfidence = v89;

    v90 = [v4 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    v91 = [v90 label];
    v92 = [v91 identifier];
    v5->_axSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMSkintoneCategoryForVisionCategoryIdentifier:v92];

    v93 = [v4 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    v94 = [v93 label];
    [v94 confidence];
    v5->_axSkintoneCategoryConfidence = v95;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axAgeCategory](self forKey:{"axAgeCategory"), @"age"}];
  [(AXMVisionFeatureFaceAttributes *)self axAgeCategoryConfidence];
  *&v4 = v4;
  [v19 encodeFloat:@"ageConfidence" forKey:v4];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axGenderCategory](self forKey:{"axGenderCategory"), @"gender"}];
  [(AXMVisionFeatureFaceAttributes *)self axGenderCategoryConfidence];
  *&v5 = v5;
  [v19 encodeFloat:@"genderConfidence" forKey:v5];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axEyesCategory](self forKey:{"axEyesCategory"), @"eyes"}];
  [(AXMVisionFeatureFaceAttributes *)self axEyesCategoryConfidence];
  *&v6 = v6;
  [v19 encodeFloat:@"eyesConfidence" forKey:v6];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axSmilingCategory](self forKey:{"axSmilingCategory"), @"smiling"}];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axFaceHairCategory](self forKey:{"axFaceHairCategory"), @"faceHair"}];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axHairColorCategory](self forKey:{"axHairColorCategory"), @"hairColor"}];
  [(AXMVisionFeatureFaceAttributes *)self axHairColorCategoryConfidence];
  *&v7 = v7;
  [v19 encodeFloat:@"hairColorConfidence" forKey:v7];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axBaldCategory](self forKey:{"axBaldCategory"), @"bald"}];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axGlassesCategory](self forKey:{"axGlassesCategory"), @"glasses"}];
  [(AXMVisionFeatureFaceAttributes *)self axGlassesCategoryConfidence];
  *&v8 = v8;
  [v19 encodeFloat:@"glassesConfidence" forKey:v8];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axMakeupEyesCategory](self forKey:{"axMakeupEyesCategory"), @"makeupEyes"}];
  [(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategoryConfidence];
  *&v9 = v9;
  [v19 encodeFloat:@"makeupEyesConfidence" forKey:v9];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axMakeupLipsCategory](self forKey:{"axMakeupLipsCategory"), @"makeupLips"}];
  [(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategoryConfidence];
  *&v10 = v10;
  [v19 encodeFloat:@"makeupLipsConfidence" forKey:v10];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axFacemaskCategory](self forKey:{"axFacemaskCategory"), @"facemask"}];
  [(AXMVisionFeatureFaceAttributes *)self axFacemaskCategoryConfidence];
  *&v11 = v11;
  [v19 encodeFloat:@"facemaskConfidence" forKey:v11];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axEthnicityCategory](self forKey:{"axEthnicityCategory"), @"ethnicity"}];
  [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategoryConfidence];
  *&v12 = v12;
  [v19 encodeFloat:@"ethnicityConfidence" forKey:v12];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axExpressionCategory](self forKey:{"axExpressionCategory"), @"expression"}];
  [(AXMVisionFeatureFaceAttributes *)self axExpressionCategoryConfidence];
  *&v13 = v13;
  [v19 encodeFloat:@"expressionConfidence" forKey:v13];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axFaceHairV2Category](self forKey:{"axFaceHairV2Category"), @"faceHairV2"}];
  [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2CategoryConfidence];
  *&v14 = v14;
  [v19 encodeFloat:@"faceHairV2Confidence" forKey:v14];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axHairTypeCategory](self forKey:{"axHairTypeCategory"), @"hairType"}];
  [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategoryConfidence];
  *&v15 = v15;
  [v19 encodeFloat:@"hairTypeConfidence" forKey:v15];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axHeadgearCategory](self forKey:{"axHeadgearCategory"), @"headgear"}];
  [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategoryConfidence];
  *&v16 = v16;
  [v19 encodeFloat:@"headgearConfidence" forKey:v16];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axPoseCategory](self forKey:{"axPoseCategory"), @"pose"}];
  [(AXMVisionFeatureFaceAttributes *)self axPoseCategoryConfidence];
  *&v17 = v17;
  [v19 encodeFloat:@"poseConfidence" forKey:v17];
  [v19 encodeInteger:-[AXMVisionFeatureFaceAttributes axSkintoneCategory](self forKey:{"axSkintoneCategory"), @"skintone"}];
  [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategoryConfidence];
  *&v18 = v18;
  [v19 encodeFloat:@"skintoneConfidence" forKey:v18];
}

- (AXMVisionFeatureFaceAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = AXMVisionFeatureFaceAttributes;
  v5 = [(AXMVisionFeatureFaceAttributes *)&v22 init];
  if (v5)
  {
    v5->_axAgeCategory = [v4 decodeIntegerForKey:@"age"];
    [v4 decodeFloatForKey:@"ageConfidence"];
    v5->_axAgeCategoryConfidence = v6;
    v5->_axGenderCategory = [v4 decodeIntegerForKey:@"gender"];
    [v4 decodeFloatForKey:@"genderConfidence"];
    v5->_axGenderCategoryConfidence = v7;
    v5->_axEyesCategory = [v4 decodeIntegerForKey:@"eyes"];
    [v4 decodeFloatForKey:@"eyesConfidence"];
    v5->_axEyesCategoryConfidence = v8;
    v5->_axSmilingCategory = [v4 decodeIntegerForKey:@"smiling"];
    v5->_axFaceHairCategory = [v4 decodeIntegerForKey:@"faceHair"];
    v5->_axHairColorCategory = [v4 decodeIntegerForKey:@"hairColor"];
    [v4 decodeFloatForKey:@"hairColorConfidence"];
    v5->_axHairColorCategoryConfidence = v9;
    v5->_axBaldCategory = [v4 decodeIntegerForKey:@"bald"];
    v5->_axGlassesCategory = [v4 decodeIntegerForKey:@"glasses"];
    [v4 decodeFloatForKey:@"glassesConfidence"];
    v5->_axGlassesCategoryConfidence = v10;
    v5->_axMakeupEyesCategory = [v4 decodeIntegerForKey:@"makeupEyes"];
    [v4 decodeFloatForKey:@"makeupEyesConfidence"];
    v5->_axMakeupEyesCategoryConfidence = v11;
    v5->_axMakeupLipsCategory = [v4 decodeIntegerForKey:@"makeupLips"];
    [v4 decodeFloatForKey:@"makeupLipsConfidence"];
    v5->_axMakeupLipsCategoryConfidence = v12;
    v5->_axFacemaskCategory = [v4 decodeIntegerForKey:@"facemask"];
    [v4 decodeFloatForKey:@"facemaskConfidence"];
    v5->_axFacemaskCategoryConfidence = v13;
    v5->_axEthnicityCategory = [v4 decodeIntegerForKey:@"ethnicity"];
    [v4 decodeFloatForKey:@"ethnicityConfidence"];
    v5->_axEthnicityCategoryConfidence = v14;
    v5->_axExpressionCategory = [v4 decodeIntegerForKey:@"expression"];
    [v4 decodeFloatForKey:@"expressionConfidence"];
    v5->_axExpressionCategoryConfidence = v15;
    v5->_axFaceHairV2Category = [v4 decodeIntegerForKey:@"faceHairV2"];
    [v4 decodeFloatForKey:@"faceHairV2Confidence"];
    v5->_axFaceHairV2CategoryConfidence = v16;
    v5->_axHairTypeCategory = [v4 decodeIntegerForKey:@"hairType"];
    [v4 decodeFloatForKey:@"hairTypeConfidence"];
    v5->_axHairTypeCategoryConfidence = v17;
    v5->_axHeadgearCategory = [v4 decodeIntegerForKey:@"headgear"];
    [v4 decodeFloatForKey:@"headgearConfidence"];
    v5->_axHeadgearCategoryConfidence = v18;
    v5->_axPoseCategory = [v4 decodeIntegerForKey:@"pose"];
    [v4 decodeFloatForKey:@"poseConfidence"];
    v5->_axPoseCategoryConfidence = v19;
    v5->_axSkintoneCategory = [v4 decodeIntegerForKey:@"skintone"];
    [v4 decodeFloatForKey:@"skintoneConfidence"];
    v5->_axSkintoneCategoryConfidence = v20;
  }

  return v5;
}

- (int64_t)_AXMAgeCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMAgeCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMAgeCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMAgeCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMAgeCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke()
{
  v24[5] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v0 = getVNFaceAttributeAgeBabySymbolLoc_ptr;
  v21 = getVNFaceAttributeAgeBabySymbolLoc_ptr;
  if (!getVNFaceAttributeAgeBabySymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v19[3] = dlsym(v1, "VNFaceAttributeAgeBaby");
    getVNFaceAttributeAgeBabySymbolLoc_ptr = v19[3];
    v0 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v0)
  {
    goto LABEL_17;
  }

  v2 = *v0;
  v24[0] = &unk_1F240A690;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v3 = getVNFaceAttributeAgeChildSymbolLoc_ptr;
  v21 = getVNFaceAttributeAgeChildSymbolLoc_ptr;
  v22[0] = v2;
  if (!getVNFaceAttributeAgeChildSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v19[3] = dlsym(v4, "VNFaceAttributeAgeChild");
    getVNFaceAttributeAgeChildSymbolLoc_ptr = v19[3];
    v3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *v3;
  v22[1] = v5;
  v24[1] = &unk_1F240A6A8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr;
  v21 = getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr;
  if (!getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v19[3] = dlsym(v7, "VNFaceAttributeAgeYoungAdult");
    getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr = v19[3];
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = *v6;
  v22[2] = v8;
  v24[2] = &unk_1F240A6C0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getVNFaceAttributeAgeAdultSymbolLoc_ptr;
  v21 = getVNFaceAttributeAgeAdultSymbolLoc_ptr;
  if (!getVNFaceAttributeAgeAdultSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v19[3] = dlsym(v10, "VNFaceAttributeAgeAdult");
    getVNFaceAttributeAgeAdultSymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = *v9;
  v22[3] = v11;
  v24[3] = &unk_1F240A6D8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v12 = getVNFaceAttributeAgeSeniorSymbolLoc_ptr;
  v21 = getVNFaceAttributeAgeSeniorSymbolLoc_ptr;
  if (!getVNFaceAttributeAgeSeniorSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v19[3] = dlsym(v13, "VNFaceAttributeAgeSenior");
    getVNFaceAttributeAgeSeniorSymbolLoc_ptr = v19[3];
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v12)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v23 = *v12;
  v24[4] = &unk_1F240A6F0;
  v14 = MEMORY[0x1E695DF20];
  v15 = v23;
  v16 = [v14 dictionaryWithObjects:v24 forKeys:v22 count:5];
  v17 = _AXMAgeCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMAgeCategoryForVisionCategoryIdentifier__categoryMap = v16;
}

- (int64_t)_AXMGenderCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMGenderCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMGenderCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __80__AXMVisionFeatureFaceAttributes__AXMGenderCategoryForVisionCategoryIdentifier___block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v0 = getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr;
  v12 = getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr;
  if (!getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v10[3] = dlsym(v1, "VN1yPD9G185LIMKFd9RgandG6vUu4B3DZk");
    getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr = v10[3];
    v0 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v0)
  {
    goto LABEL_8;
  }

  v2 = *v0;
  v15[0] = &unk_1F240A690;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr;
  v12 = getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr;
  v13 = v2;
  if (!getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v10[3] = dlsym(v4, "VN6cM1E1jfvMnUZoEeDjinPOtJKpacqIpr");
    getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
LABEL_8:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v14 = *v3;
  v15[1] = &unk_1F240A6A8;
  v5 = MEMORY[0x1E695DF20];
  v6 = v14;
  v7 = [v5 dictionaryWithObjects:v15 forKeys:&v13 count:2];
  v8 = _AXMGenderCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMGenderCategoryForVisionCategoryIdentifier__categoryMap = v7;
}

- (int64_t)_AXMEyesCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMEyesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMEyesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMEyesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMEyesCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __78__AXMVisionFeatureFaceAttributes__AXMEyesCategoryForVisionCategoryIdentifier___block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v0 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
  v12 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
  if (!getVNFaceAttributeEyesClosedSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v10[3] = dlsym(v1, "VNFaceAttributeEyesClosed");
    getVNFaceAttributeEyesClosedSymbolLoc_ptr = v10[3];
    v0 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v0)
  {
    goto LABEL_8;
  }

  v2 = *v0;
  v15[0] = &unk_1F240A690;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getVNFaceAttributeEyesOpenSymbolLoc_ptr;
  v12 = getVNFaceAttributeEyesOpenSymbolLoc_ptr;
  v13 = v2;
  if (!getVNFaceAttributeEyesOpenSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v10[3] = dlsym(v4, "VNFaceAttributeEyesOpen");
    getVNFaceAttributeEyesOpenSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
LABEL_8:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v14 = *v3;
  v15[1] = &unk_1F240A6A8;
  v5 = MEMORY[0x1E695DF20];
  v6 = v14;
  v7 = [v5 dictionaryWithObjects:v15 forKeys:&v13 count:2];
  v8 = _AXMEyesCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMEyesCategoryForVisionCategoryIdentifier__categoryMap = v7;
}

- (int64_t)_AXMHairColorCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMHairColorCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHairColorCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHairColorCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __83__AXMVisionFeatureFaceAttributes__AXMHairColorCategoryForVisionCategoryIdentifier___block_invoke()
{
  v27[6] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v0 = getVNFaceAttributeHairColorBlackSymbolLoc_ptr;
  v24 = getVNFaceAttributeHairColorBlackSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorBlackSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v22[3] = dlsym(v1, "VNFaceAttributeHairColorBlack");
    getVNFaceAttributeHairColorBlackSymbolLoc_ptr = v22[3];
    v0 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v0)
  {
    goto LABEL_20;
  }

  v2 = *v0;
  v27[0] = &unk_1F240A690;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getVNFaceAttributeHairColorBlondeSymbolLoc_ptr;
  v24 = getVNFaceAttributeHairColorBlondeSymbolLoc_ptr;
  v25[0] = v2;
  if (!getVNFaceAttributeHairColorBlondeSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v22[3] = dlsym(v4, "VNFaceAttributeHairColorBlonde");
    getVNFaceAttributeHairColorBlondeSymbolLoc_ptr = v22[3];
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = *v3;
  v25[1] = v5;
  v27[1] = &unk_1F240A6A8;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v6 = getVNFaceAttributeHairColorBrownSymbolLoc_ptr;
  v24 = getVNFaceAttributeHairColorBrownSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorBrownSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v22[3] = dlsym(v7, "VNFaceAttributeHairColorBrown");
    getVNFaceAttributeHairColorBrownSymbolLoc_ptr = v22[3];
    v6 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v8 = *v6;
  v25[2] = v8;
  v27[2] = &unk_1F240A6C0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v9 = getVNFaceAttributeHairColorGraySymbolLoc_ptr;
  v24 = getVNFaceAttributeHairColorGraySymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorGraySymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v22[3] = dlsym(v10, "VNFaceAttributeHairColorGray");
    getVNFaceAttributeHairColorGraySymbolLoc_ptr = v22[3];
    v9 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v9)
  {
    goto LABEL_20;
  }

  v11 = *v9;
  v25[3] = v11;
  v27[3] = &unk_1F240A6D8;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = getVNFaceAttributeHairColorRedSymbolLoc_ptr;
  v24 = getVNFaceAttributeHairColorRedSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorRedSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v22[3] = dlsym(v13, "VNFaceAttributeHairColorRed");
    getVNFaceAttributeHairColorRedSymbolLoc_ptr = v22[3];
    v12 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v12)
  {
    goto LABEL_20;
  }

  v14 = *v12;
  v25[4] = v14;
  v27[4] = &unk_1F240A6F0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v15 = getVNFaceAttributeHairColorWhiteSymbolLoc_ptr;
  v24 = getVNFaceAttributeHairColorWhiteSymbolLoc_ptr;
  if (!getVNFaceAttributeHairColorWhiteSymbolLoc_ptr)
  {
    v16 = VisionLibrary();
    v22[3] = dlsym(v16, "VNFaceAttributeHairColorWhite");
    getVNFaceAttributeHairColorWhiteSymbolLoc_ptr = v22[3];
    v15 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v15)
  {
LABEL_20:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v26 = *v15;
  v27[5] = &unk_1F240A708;
  v17 = MEMORY[0x1E695DF20];
  v18 = v26;
  v19 = [v17 dictionaryWithObjects:v27 forKeys:v25 count:6];
  v20 = _AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap = v19;
}

- (int64_t)_AXMGlassesCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMGlassesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMGlassesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMGlassesCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __81__AXMVisionFeatureFaceAttributes__AXMGlassesCategoryForVisionCategoryIdentifier___block_invoke()
{
  v18[3] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr;
  v15 = getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr;
  if (!getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v13[3] = dlsym(v1, "VNFaceAttributeGlassesPrescription");
    getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr = v13[3];
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    goto LABEL_11;
  }

  v2 = *v0;
  v18[0] = &unk_1F240A690;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr;
  v15 = getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr;
  v16[0] = v2;
  if (!getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v13[3] = dlsym(v4, "VNFaceAttributeGlassesSunglasses");
    getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = *v3;
  v16[1] = v5;
  v18[1] = &unk_1F240A6A8;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getVNFaceAttributeGlassesNoneSymbolLoc_ptr;
  v15 = getVNFaceAttributeGlassesNoneSymbolLoc_ptr;
  if (!getVNFaceAttributeGlassesNoneSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v13[3] = dlsym(v7, "VNFaceAttributeGlassesNone");
    getVNFaceAttributeGlassesNoneSymbolLoc_ptr = v13[3];
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
LABEL_11:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v17 = *v6;
  v18[2] = &unk_1F240A6C0;
  v8 = MEMORY[0x1E695DF20];
  v9 = v17;
  v10 = [v8 dictionaryWithObjects:v18 forKeys:v16 count:3];
  v11 = _AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap = v10;
}

- (int64_t)_AXMMakeupEyesCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMMakeupEyesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMMakeupEyesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMMakeupEyesCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __84__AXMVisionFeatureFaceAttributes__AXMMakeupEyesCategoryForVisionCategoryIdentifier___block_invoke()
{
  v18[3] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr;
  v15 = getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v13[3] = dlsym(v1, "VNFaceAttributeMakeupEyesUnsure");
    getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr = v13[3];
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    goto LABEL_11;
  }

  v2 = *v0;
  v18[0] = &unk_1F240A720;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr;
  v15 = getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr;
  v16[0] = v2;
  if (!getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v13[3] = dlsym(v4, "VNFaceAttributeMakeupEyesNone");
    getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = *v3;
  v16[1] = v5;
  v18[1] = &unk_1F240A690;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getVNFaceAttributeMakeupEyesSymbolLoc_ptr;
  v15 = getVNFaceAttributeMakeupEyesSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupEyesSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v13[3] = dlsym(v7, "VNFaceAttributeMakeupEyes");
    getVNFaceAttributeMakeupEyesSymbolLoc_ptr = v13[3];
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
LABEL_11:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v17 = *v6;
  v18[2] = &unk_1F240A6A8;
  v8 = MEMORY[0x1E695DF20];
  v9 = v17;
  v10 = [v8 dictionaryWithObjects:v18 forKeys:v16 count:3];
  v11 = _AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap = v10;
}

- (int64_t)_AXMMakeupLipsCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMMakeupLipsCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMMakeupLipsCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMMakeupLipsCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __84__AXMVisionFeatureFaceAttributes__AXMMakeupLipsCategoryForVisionCategoryIdentifier___block_invoke()
{
  v18[3] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr;
  v15 = getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v13[3] = dlsym(v1, "VNFaceAttributeMakeupLipsUnsure");
    getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr = v13[3];
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    goto LABEL_11;
  }

  v2 = *v0;
  v18[0] = &unk_1F240A720;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr;
  v15 = getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr;
  v16[0] = v2;
  if (!getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v13[3] = dlsym(v4, "VNFaceAttributeMakeupLipsNone");
    getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = *v3;
  v16[1] = v5;
  v18[1] = &unk_1F240A690;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getVNFaceAttributeMakeupLipsSymbolLoc_ptr;
  v15 = getVNFaceAttributeMakeupLipsSymbolLoc_ptr;
  if (!getVNFaceAttributeMakeupLipsSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v13[3] = dlsym(v7, "VNFaceAttributeMakeupLips");
    getVNFaceAttributeMakeupLipsSymbolLoc_ptr = v13[3];
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
LABEL_11:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v17 = *v6;
  v18[2] = &unk_1F240A6A8;
  v8 = MEMORY[0x1E695DF20];
  v9 = v17;
  v10 = [v8 dictionaryWithObjects:v18 forKeys:v16 count:3];
  v11 = _AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap = v10;
}

- (int64_t)_AXMFacemaskCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMFacemaskCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMFacemaskCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMFacemaskCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __82__AXMVisionFeatureFaceAttributes__AXMFacemaskCategoryForVisionCategoryIdentifier___block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v0 = getVNFaceAttributeFacemaskNoneSymbolLoc_ptr;
  v12 = getVNFaceAttributeFacemaskNoneSymbolLoc_ptr;
  if (!getVNFaceAttributeFacemaskNoneSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v10[3] = dlsym(v1, "VNFaceAttributeFacemaskNone");
    getVNFaceAttributeFacemaskNoneSymbolLoc_ptr = v10[3];
    v0 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v0)
  {
    goto LABEL_8;
  }

  v2 = *v0;
  v15[0] = &unk_1F240A690;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getVNFaceAttributeFacemaskSymbolLoc_ptr;
  v12 = getVNFaceAttributeFacemaskSymbolLoc_ptr;
  v13 = v2;
  if (!getVNFaceAttributeFacemaskSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v10[3] = dlsym(v4, "VNFaceAttributeFacemask");
    getVNFaceAttributeFacemaskSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
LABEL_8:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v14 = *v3;
  v15[1] = &unk_1F240A6A8;
  v5 = MEMORY[0x1E695DF20];
  v6 = v14;
  v7 = [v5 dictionaryWithObjects:v15 forKeys:&v13 count:2];
  v8 = _AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap = v7;
}

- (int64_t)_AXMEthnicityCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMEthnicityCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMEthnicityCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMEthnicityCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __83__AXMVisionFeatureFaceAttributes__AXMEthnicityCategoryForVisionCategoryIdentifier___block_invoke()
{
  v24[5] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v0 = getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr;
  v21 = getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr;
  if (!getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v19[3] = dlsym(v1, "VN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2p");
    getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr = v19[3];
    v0 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v0)
  {
    goto LABEL_17;
  }

  v2 = *v0;
  v24[0] = &unk_1F240A690;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v3 = getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr;
  v21 = getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr;
  v22[0] = v2;
  if (!getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v19[3] = dlsym(v4, "VN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIp");
    getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr = v19[3];
    v3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *v3;
  v22[1] = v5;
  v24[1] = &unk_1F240A6A8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr;
  v21 = getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr;
  if (!getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v19[3] = dlsym(v7, "VN2AhEqI0IOCJAaCX6zovlg85aFZ80JfES");
    getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr = v19[3];
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = *v6;
  v22[2] = v8;
  v24[2] = &unk_1F240A6C0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr;
  v21 = getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr;
  if (!getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v19[3] = dlsym(v10, "VN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2");
    getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = *v9;
  v22[3] = v11;
  v24[3] = &unk_1F240A6D8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v12 = getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr;
  v21 = getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr;
  if (!getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v19[3] = dlsym(v13, "VN6pbJdmseepvIGYzcDyryle1xGdZEWhHN");
    getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr = v19[3];
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v12)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v23 = *v12;
  v24[4] = &unk_1F240A6F0;
  v14 = MEMORY[0x1E695DF20];
  v15 = v23;
  v16 = [v14 dictionaryWithObjects:v24 forKeys:v22 count:5];
  v17 = _AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap = v16;
}

- (int64_t)_AXMExpressionCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMExpressionCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMExpressionCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMExpressionCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __84__AXMVisionFeatureFaceAttributes__AXMExpressionCategoryForVisionCategoryIdentifier___block_invoke()
{
  v27[6] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v0 = getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr;
  v24 = getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr;
  if (!getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v22[3] = dlsym(v1, "VN607hNga4JKRc1ljftiy9QfPCqbXQmLP4");
    getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr = v22[3];
    v0 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v0)
  {
    goto LABEL_20;
  }

  v2 = *v0;
  v27[0] = &unk_1F240A690;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr;
  v24 = getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr;
  v25[0] = v2;
  if (!getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v22[3] = dlsym(v4, "VN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQIS");
    getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr = v22[3];
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = *v3;
  v25[1] = v5;
  v27[1] = &unk_1F240A6A8;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v6 = getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr;
  v24 = getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr;
  if (!getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v22[3] = dlsym(v7, "VN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRX");
    getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr = v22[3];
    v6 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v8 = *v6;
  v25[2] = v8;
  v27[2] = &unk_1F240A6C0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v9 = getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr;
  v24 = getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr;
  if (!getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v22[3] = dlsym(v10, "VN4lC1NTVMt6oWugtej0fqgS3z5p60aMup");
    getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr = v22[3];
    v9 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v9)
  {
    goto LABEL_20;
  }

  v11 = *v9;
  v25[3] = v11;
  v27[3] = &unk_1F240A6D8;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr;
  v24 = getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr;
  if (!getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v22[3] = dlsym(v13, "VN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmI");
    getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr = v22[3];
    v12 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v12)
  {
    goto LABEL_20;
  }

  v14 = *v12;
  v25[4] = v14;
  v27[4] = &unk_1F240A6F0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v15 = getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr;
  v24 = getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr;
  if (!getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr)
  {
    v16 = VisionLibrary();
    v22[3] = dlsym(v16, "VN6i04vrZluouTItkCUMtS916cLgTyvODX");
    getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr = v22[3];
    v15 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v15)
  {
LABEL_20:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v26 = *v15;
  v27[5] = &unk_1F240A720;
  v17 = MEMORY[0x1E695DF20];
  v18 = v26;
  v19 = [v17 dictionaryWithObjects:v27 forKeys:v25 count:6];
  v20 = _AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap = v19;
}

- (int64_t)_AXMFaceHairV2CategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMFaceHairV2CategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMFaceHairV2CategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMFaceHairV2CategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __84__AXMVisionFeatureFaceAttributes__AXMFaceHairV2CategoryForVisionCategoryIdentifier___block_invoke()
{
  v30[7] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v0 = getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr;
  v27 = getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr;
  if (!getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v25[3] = dlsym(v1, "VN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjm");
    getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr = v25[3];
    v0 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v0)
  {
    goto LABEL_23;
  }

  v2 = *v0;
  v30[0] = &unk_1F240A6A8;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v3 = getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr;
  v27 = getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr;
  v28[0] = v2;
  if (!getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v25[3] = dlsym(v4, "VN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cF");
    getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr = v25[3];
    v3 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = *v3;
  v28[1] = v5;
  v30[1] = &unk_1F240A6C0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v6 = getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr;
  v27 = getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr;
  if (!getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v25[3] = dlsym(v7, "VN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00");
    getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr = v25[3];
    v6 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = *v6;
  v28[2] = v8;
  v30[2] = &unk_1F240A6F0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v9 = getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr;
  v27 = getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr;
  if (!getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v25[3] = dlsym(v10, "VN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmR");
    getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr = v25[3];
    v9 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v9)
  {
    goto LABEL_23;
  }

  v11 = *v9;
  v28[3] = v11;
  v30[3] = &unk_1F240A708;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v12 = getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr;
  v27 = getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr;
  if (!getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v25[3] = dlsym(v13, "VN4lCLwxDV30rFLSeoihd8yM1zdbka3cVu");
    getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr = v25[3];
    v12 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v12)
  {
    goto LABEL_23;
  }

  v14 = *v12;
  v28[4] = v14;
  v30[4] = &unk_1F240A738;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v15 = getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr;
  v27 = getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr;
  if (!getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr)
  {
    v16 = VisionLibrary();
    v25[3] = dlsym(v16, "VN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epx");
    getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr = v25[3];
    v15 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v15)
  {
    goto LABEL_23;
  }

  v17 = *v15;
  v28[5] = v17;
  v30[5] = &unk_1F240A6D8;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v18 = getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr;
  v27 = getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr;
  if (!getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr)
  {
    v19 = VisionLibrary();
    v25[3] = dlsym(v19, "VN31UxDngUK44hDexm8CSuZnlLxECLb0yU");
    getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr = v25[3];
    v18 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v18)
  {
LABEL_23:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v29 = *v18;
  v30[6] = &unk_1F240A690;
  v20 = MEMORY[0x1E695DF20];
  v21 = v29;
  v22 = [v20 dictionaryWithObjects:v30 forKeys:v28 count:7];
  v23 = _AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap;
  _AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap = v22;
}

- (int64_t)_AXMHairtypeCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMHairtypeCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHairtypeCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHairtypeCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __82__AXMVisionFeatureFaceAttributes__AXMHairtypeCategoryForVisionCategoryIdentifier___block_invoke()
{
  v30[7] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v0 = getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr;
  v27 = getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr;
  if (!getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v25[3] = dlsym(v1, "VN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTg");
    getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr = v25[3];
    v0 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v0)
  {
    goto LABEL_23;
  }

  v2 = *v0;
  v30[0] = &unk_1F240A6C0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v3 = getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr;
  v27 = getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr;
  v28[0] = v2;
  if (!getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v25[3] = dlsym(v4, "VN7CY11MLEimaE8WoiQ4opgi5HOi84j0UH");
    getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr = v25[3];
    v3 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = *v3;
  v28[1] = v5;
  v30[1] = &unk_1F240A708;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v6 = getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr;
  v27 = getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr;
  if (!getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v25[3] = dlsym(v7, "VN5SpoOVxahuTheCrHGepAYKTVB1baFLhQ");
    getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr = v25[3];
    v6 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = *v6;
  v28[2] = v8;
  v30[2] = &unk_1F240A6D8;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v9 = getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr;
  v27 = getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr;
  if (!getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v25[3] = dlsym(v10, "VN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5Qd");
    getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr = v25[3];
    v9 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v9)
  {
    goto LABEL_23;
  }

  v11 = *v9;
  v28[3] = v11;
  v30[3] = &unk_1F240A738;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v12 = getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr;
  v27 = getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr;
  if (!getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v25[3] = dlsym(v13, "VN21VM8NbCJMJjpepNo1kZkxteFybpDwlB");
    getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr = v25[3];
    v12 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v12)
  {
    goto LABEL_23;
  }

  v14 = *v12;
  v28[4] = v14;
  v30[4] = &unk_1F240A6F0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v15 = getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr;
  v27 = getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr;
  if (!getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr)
  {
    v16 = VisionLibrary();
    v25[3] = dlsym(v16, "VN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5");
    getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr = v25[3];
    v15 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v15)
  {
    goto LABEL_23;
  }

  v17 = *v15;
  v28[5] = v17;
  v30[5] = &unk_1F240A690;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v18 = getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr;
  v27 = getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr;
  if (!getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr)
  {
    v19 = VisionLibrary();
    v25[3] = dlsym(v19, "VN2X5h7waRTqk71pInqK4dnT6sZ6dRElxe");
    getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr = v25[3];
    v18 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v18)
  {
LABEL_23:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v29 = *v18;
  v30[6] = &unk_1F240A6A8;
  v20 = MEMORY[0x1E695DF20];
  v21 = v29;
  v22 = [v20 dictionaryWithObjects:v30 forKeys:v28 count:7];
  v23 = _AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap = v22;
}

- (int64_t)_AXMHeadgearCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMHeadgearCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHeadgearCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHeadgearCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __82__AXMVisionFeatureFaceAttributes__AXMHeadgearCategoryForVisionCategoryIdentifier___block_invoke()
{
  v24[5] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v0 = getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr;
  v21 = getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr;
  if (!getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v19[3] = dlsym(v1, "VNPdH78Lr962vQvRIq2JApX2QJZtbR3fvi");
    getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr = v19[3];
    v0 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v0)
  {
    goto LABEL_17;
  }

  v2 = *v0;
  v24[0] = &unk_1F240A6A8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v3 = getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr;
  v21 = getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr;
  v22[0] = v2;
  if (!getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v19[3] = dlsym(v4, "VN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKi");
    getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr = v19[3];
    v3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *v3;
  v22[1] = v5;
  v24[1] = &unk_1F240A690;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr;
  v21 = getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr;
  if (!getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v19[3] = dlsym(v7, "VN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJw");
    getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr = v19[3];
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = *v6;
  v22[2] = v8;
  v24[2] = &unk_1F240A6D8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr;
  v21 = getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr;
  if (!getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v19[3] = dlsym(v10, "VN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6p");
    getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = *v9;
  v22[3] = v11;
  v24[3] = &unk_1F240A6C0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v12 = getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr;
  v21 = getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr;
  if (!getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v19[3] = dlsym(v13, "VN34LMYSFC7onytwsvH0y6uz2QaYvqY9qi");
    getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr = v19[3];
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v12)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v23 = *v12;
  v24[4] = &unk_1F240A6F0;
  v14 = MEMORY[0x1E695DF20];
  v15 = v23;
  v16 = [v14 dictionaryWithObjects:v24 forKeys:v22 count:5];
  v17 = _AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap = v16;
}

- (int64_t)_AXMPoseCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMPoseCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMPoseCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMPoseCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMPoseCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __78__AXMVisionFeatureFaceAttributes__AXMPoseCategoryForVisionCategoryIdentifier___block_invoke()
{
  v24[5] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v0 = getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr;
  v21 = getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr;
  if (!getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v19[3] = dlsym(v1, "VN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxY");
    getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr = v19[3];
    v0 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v0)
  {
    goto LABEL_17;
  }

  v2 = *v0;
  v24[0] = &unk_1F240A690;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v3 = getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr;
  v21 = getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr;
  v22[0] = v2;
  if (!getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v19[3] = dlsym(v4, "VN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXR");
    getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr = v19[3];
    v3 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *v3;
  v22[1] = v5;
  v24[1] = &unk_1F240A6A8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr;
  v21 = getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr;
  if (!getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v19[3] = dlsym(v7, "VN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grk");
    getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr = v19[3];
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v8 = *v6;
  v22[2] = v8;
  v24[2] = &unk_1F240A6C0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr;
  v21 = getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr;
  if (!getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v19[3] = dlsym(v10, "VN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1Ut");
    getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = *v9;
  v22[3] = v11;
  v24[3] = &unk_1F240A6D8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v12 = getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr;
  v21 = getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr;
  if (!getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v19[3] = dlsym(v13, "VN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7c");
    getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr = v19[3];
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v12)
  {
LABEL_17:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v23 = *v12;
  v24[4] = &unk_1F240A6F0;
  v14 = MEMORY[0x1E695DF20];
  v15 = v23;
  v16 = [v14 dictionaryWithObjects:v24 forKeys:v22 count:5];
  v17 = _AXMPoseCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMPoseCategoryForVisionCategoryIdentifier__categoryMap = v16;
}

- (int64_t)_AXMSkintoneCategoryForVisionCategoryIdentifier:(id)a3
{
  v3 = a3;
  if (_AXMSkintoneCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMSkintoneCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMSkintoneCategoryForVisionCategoryIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

void __82__AXMVisionFeatureFaceAttributes__AXMSkintoneCategoryForVisionCategoryIdentifier___block_invoke()
{
  v27[6] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v0 = getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr;
  v24 = getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr;
  if (!getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v22[3] = dlsym(v1, "VNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGN");
    getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr = v22[3];
    v0 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v0)
  {
    goto LABEL_20;
  }

  v2 = *v0;
  v27[0] = &unk_1F240A690;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr;
  v24 = getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr;
  v25[0] = v2;
  if (!getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr)
  {
    v4 = VisionLibrary();
    v22[3] = dlsym(v4, "VN6LhAjooMZpZkrkhS48XbQt7602EpEAxv");
    getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr = v22[3];
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = *v3;
  v25[1] = v5;
  v27[1] = &unk_1F240A6A8;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v6 = getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr;
  v24 = getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr;
  if (!getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr)
  {
    v7 = VisionLibrary();
    v22[3] = dlsym(v7, "VN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYS");
    getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr = v22[3];
    v6 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v8 = *v6;
  v25[2] = v8;
  v27[2] = &unk_1F240A6C0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v9 = getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr;
  v24 = getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr;
  if (!getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr)
  {
    v10 = VisionLibrary();
    v22[3] = dlsym(v10, "VN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgtt");
    getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr = v22[3];
    v9 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v9)
  {
    goto LABEL_20;
  }

  v11 = *v9;
  v25[3] = v11;
  v27[3] = &unk_1F240A6D8;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr;
  v24 = getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr;
  if (!getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr)
  {
    v13 = VisionLibrary();
    v22[3] = dlsym(v13, "VN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9p");
    getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr = v22[3];
    v12 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v12)
  {
    goto LABEL_20;
  }

  v14 = *v12;
  v25[4] = v14;
  v27[4] = &unk_1F240A6F0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v15 = getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr;
  v24 = getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr;
  if (!getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr)
  {
    v16 = VisionLibrary();
    v22[3] = dlsym(v16, "VN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1Pv");
    getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr = v22[3];
    v15 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v15)
  {
LABEL_20:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v26 = *v15;
  v27[5] = &unk_1F240A708;
  v17 = MEMORY[0x1E695DF20];
  v18 = v26;
  v19 = [v17 dictionaryWithObjects:v27 forKeys:v25 count:6];
  v20 = _AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap;
  _AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap = v19;
}

- (id)_accessibilityIdentifierForPoseCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x20) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axPoseCategory];
  if ((v3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C780[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForSkintoneCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 8) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategory];
  if ((v3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C7A8[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForEthnicityCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x10) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategory];
  if ((v3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C7D8[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForGenderCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 4) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axGenderCategory];
  v4 = @"Gender_Female";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    return @"Gender_Male";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityIdentifierForAgeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 2) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axAgeCategory];
  if ((v3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C800[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForHairColorCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x40) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axHairColorCategory];
  if ((v3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C828[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForHairTypeCategory
{
  v2 = [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategory];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C858[v2 - 1];
  }
}

- (id)_accessibilityIdentifierForFaceHairV2Category
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x100) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2Category];
  if ((v3 - 2) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C890[v3 - 2];
  }
}

- (id)_accessibilityIdentifierForGlassesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x200) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axGlassesCategory];
  v4 = @"Glasses_Sunglasses";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    return @"Glasses_Prescription";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityIdentifierForFacemaskCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x400) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axFacemaskCategory]== 2)
  {
    return @"Facemask_Available";
  }

  return 0;
}

- (id)_accessibilityIdentifierForHeadgearCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x800) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategory];
  if ((v3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C8C0[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForMakeupEyesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x1000) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategory]== 2)
  {
    return @"MakeupEyes_Available";
  }

  return 0;
}

- (id)_accessibilityIdentifierForMakeupLipsCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x1000) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategory]== 2)
  {
    return @"MakeupLips_Available";
  }

  return 0;
}

- (id)_accessibilityIdentifierForExpressionCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x2000) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axExpressionCategory];
  if ((v3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C8E0[v3 - 1];
  }
}

- (id)_accessibilityIdentifierForEyesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x4000) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axEyesCategory];
  v4 = @"Eyes_Open";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    return @"Eyes_Closed";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityLabelFormatterForPoseCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x20) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axPoseCategory];
  if ((v3 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C908[v3 - 2];
  }
}

- (id)_accessibilityLabelFormatterForAgeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 2) != 0)
  {
    return @".age.person";
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axAgeCategory];
  if (v3 > 5)
  {
    return @".age.baby";
  }

  else
  {
    return off_1E7A1C928[v3];
  }
}

- (id)_accessibilityLabelFormatterForHairColorCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x40) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axHairColorCategory];
  if ((v3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C958[v3 - 1];
  }
}

- (id)_accessibilityLabelFormatterForHairTypeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x80) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategory];
  if ((v3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C988[v3 - 1];
  }
}

- (id)_accessibilityLabelFormatterForFaceHairV2Category
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x100) != 0)
  {
    v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
    v5 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
    v10 = 0;
  }

  else
  {
    v3 = [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2Category];
    v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
    v5 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
    if (v5 | v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = @".facehair.present";
    if (v5 | v4)
    {
      v7 = @".facehair.included";
    }

    if (((1 << v3) & 0xEC) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    if (((1 << v3) & 0xEC) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v3 > 7)
    {
      v10 = 0;
    }

    else
    {
      v5 = v8;
      v10 = v9;
    }
  }

  return v10;
}

- (id)_accessibilityLabelFormatterForGlassesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x200) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axGlassesCategory];
  v4 = @".sunglasses";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    return @".prescription";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityLabelFormatterForFaceMaskCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x400) != 0)
  {
    return 0;
  }

  if ([(AXMVisionFeatureFaceAttributes *)self axFacemaskCategory]== 2)
  {
    return @".facemask";
  }

  return 0;
}

- (id)_accessibilityLabelFormatterForExpressionCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x2000) != 0)
  {
    return 0;
  }

  v3 = [(AXMVisionFeatureFaceAttributes *)self axExpressionCategory];
  v4 = @".smiling";
  if (v3 != 5)
  {
    v4 = 0;
  }

  if (v3 == 2)
  {
    return @".laughing";
  }

  else
  {
    return v4;
  }
}

- (id)_accessibilityLabelForDemographics
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:v4];

  v6 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForPoseCategory];
  if (v6)
  {
    [v5 appendString:v6];
  }

  v7 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForAgeCategory];
  if (v7)
  {
    [v5 appendString:v7];
LABEL_6:
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_accessibilityLabelForHairDetails
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:v4];

  v6 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
  v7 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
  v8 = v7;
  if (v6 && v7)
  {
    [v5 appendString:v6];
    v9 = v8;
LABEL_8:
    [v5 appendString:v9];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v11 = [v10 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_10;
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v6 | v7)
  {
    goto LABEL_8;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)_accessibilityLabelForFacialHairDetails
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:v4];

  v6 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForFaceHairV2Category];
  if (v6)
  {
    [v5 appendString:v6];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v7 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_accessibilityLabelForAccessoryDetails
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:v4];

  [v5 appendString:@".accessories"];
  v6 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForGlassesCategory];
  if (v6)
  {
    [v5 appendString:v6];
  }

  v7 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForFaceMaskCategory];
  if (v7)
  {
    [v5 appendString:v7];
LABEL_6:
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_accessibilityLabelForExpressionDetails
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:v4];

  [v5 appendString:@".expression"];
  v6 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForExpressionCategory];
  if (v6)
  {
    [v5 appendString:v6];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v7 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accessibilityLabelForAttributes
{
  v3 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForDemographics];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForHairDetails];
  v5 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForFacialHairDetails];
  v6 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForAccessoryDetails];
  v7 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForExpressionDetails];
  v8 = [MEMORY[0x1E695DEC8] axmArrayByIgnoringNilElementsWithCount:{5, v3, v4, v5, v6, v7}];
  v9 = AXMLabelForNSStringElements(v8, 1, 0);
  v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  return v11;
}

- (id)accessibilityLabelAndConfidenceMappingForAttributes
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForPoseCategory];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axPoseCategoryConfidence];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForAgeCategory];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axAgeCategoryConfidence];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:v7];
  }

  v10 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForGenderCategory];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axGenderCategoryConfidence];
    v12 = [v11 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:v10];
  }

  v13 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForGlassesCategory];
  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axGlassesCategoryConfidence];
    v15 = [v14 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:v13];
  }

  v55 = v10;
  v16 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHairColorCategory];
  if (v16)
  {
    v17 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHairColorCategoryConfidence];
    v18 = [v17 numberWithDouble:?];
    [v3 setObject:v18 forKeyedSubscript:v16];
  }

  v19 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHairTypeCategory];
  if (v19)
  {
    v20 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategoryConfidence];
    v21 = [v20 numberWithDouble:?];
    [v3 setObject:v21 forKeyedSubscript:v19];
  }

  v22 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForFaceHairV2Category];
  if (v22)
  {
    v23 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2CategoryConfidence];
    v24 = [v23 numberWithDouble:?];
    [v3 setObject:v24 forKeyedSubscript:v22];
  }

  v51 = v22;
  v57 = v4;
  v25 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHeadgearCategory];
  if (v25)
  {
    v26 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategoryConfidence];
    v27 = [v26 numberWithDouble:?];
    [v3 setObject:v27 forKeyedSubscript:v25];
  }

  v56 = v7;
  v28 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForFacemaskCategory];
  if (v28)
  {
    v29 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axFacemaskCategoryConfidence];
    v30 = [v29 numberWithDouble:?];
    [v3 setObject:v30 forKeyedSubscript:v28];
  }

  v31 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForExpressionCategory];
  if (v31)
  {
    v32 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axExpressionCategoryConfidence];
    v33 = [v32 numberWithDouble:?];
    [v3 setObject:v33 forKeyedSubscript:v31];
  }

  v54 = v13;
  v34 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForEthnicityCategory];
  if (v34)
  {
    v35 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategoryConfidence];
    v36 = [v35 numberWithDouble:?];
    [v3 setObject:v36 forKeyedSubscript:v34];
  }

  v53 = v16;
  v37 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForEyesCategory];
  if (v37)
  {
    v38 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axEyesCategoryConfidence];
    v39 = [v38 numberWithDouble:?];
    [v3 setObject:v39 forKeyedSubscript:v37];
  }

  v52 = v19;
  v40 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForMakeupEyesCategory];
  if (v40)
  {
    v41 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategoryConfidence];
    v42 = [v41 numberWithDouble:?];
    [v3 setObject:v42 forKeyedSubscript:v40];
  }

  v43 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForMakeupLipsCategory];
  if (v43)
  {
    v44 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategoryConfidence];
    v45 = [v44 numberWithDouble:?];
    [v3 setObject:v45 forKeyedSubscript:v43];
  }

  v46 = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForSkintoneCategory];
  if (v46)
  {
    v47 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategoryConfidence];
    v48 = [v47 numberWithDouble:?];
    [v3 setObject:v48 forKeyedSubscript:v46];
  }

  return v3;
}

+ (id)unitTestingFaceAttributesForAge:(int64_t)a3 gender:(int64_t)a4 eyes:(int64_t)a5 smiling:(int64_t)a6 facialHair:(int64_t)a7 hairColor:(int64_t)a8 baldness:(int64_t)a9 glasses:(int64_t)a10 eyeMakeup:(int64_t)a11 lipMakeup:(int64_t)a12 faceMask:(int64_t)a13 ethnicity:(int64_t)a14 expression:(int64_t)a15 facialHairV2:(int64_t)a16 hairType:(int64_t)a17 headGear:(int64_t)a18 pose:(int64_t)a19 skinTone:(int64_t)a20 excludeOptions:(int64_t)a21
{
  v24 = objc_alloc_init(AXMVisionFeatureFaceAttributes);
  [(AXMVisionFeatureFaceAttributes *)v24 setExcludeOptions:a21];
  v24->_axAgeCategory = a3;
  v24->_axGenderCategory = a4;
  v24->_axEyesCategory = a5;
  v24->_axSmilingCategory = a6;
  v24->_axFaceHairCategory = a7;
  v24->_axHairColorCategory = a8;
  v24->_axBaldCategory = a9;
  v24->_axGlassesCategory = a10;
  v24->_axMakeupEyesCategory = a11;
  v24->_axMakeupLipsCategory = a12;
  v24->_axFacemaskCategory = a13;
  v24->_axEthnicityCategory = a14;
  v24->_axExpressionCategory = a15;
  v24->_axFaceHairV2Category = a16;
  v24->_axHairTypeCategory = a17;
  v24->_axHeadgearCategory = a18;
  v24->_axPoseCategory = a19;
  v24->_axSkintoneCategory = a20;

  return v24;
}

+ (id)unitTestingFaceAttributes
{
  v2 = objc_alloc_init(AXMVisionFeatureFaceAttributes);
  v2->_axAgeCategory = 3;
  *&v2->_axSmilingCategory = vdupq_n_s64(2uLL);
  v2->_axHairColorCategory = 3;
  *&v2->_axBaldCategory = vdupq_n_s64(1uLL);

  return v2;
}

uint64_t __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:v0];
}

@end