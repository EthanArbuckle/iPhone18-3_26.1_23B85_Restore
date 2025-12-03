@interface AXMVisionFeatureFaceAttributes
+ (id)unitTestingFaceAttributes;
+ (id)unitTestingFaceAttributesForAge:(int64_t)age gender:(int64_t)gender eyes:(int64_t)eyes smiling:(int64_t)smiling facialHair:(int64_t)hair hairColor:(int64_t)color baldness:(int64_t)baldness glasses:(int64_t)self0 eyeMakeup:(int64_t)self1 lipMakeup:(int64_t)self2 faceMask:(int64_t)self3 ethnicity:(int64_t)self4 expression:(int64_t)self5 facialHairV2:(int64_t)self6 hairType:(int64_t)self7 headGear:(int64_t)self8 pose:(int64_t)self9 skinTone:(int64_t)tone excludeOptions:(int64_t)options;
- (AXMVisionFeatureFaceAttributes)initWithCoder:(id)coder;
- (AXMVisionFeatureFaceAttributes)initWithVisionFaceAttributes:(id)attributes;
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
- (int64_t)_AXMAgeCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMEthnicityCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMExpressionCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMEyesCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMFaceHairV2CategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMFacemaskCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMGenderCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMGlassesCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMHairColorCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMHairtypeCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMHeadgearCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMMakeupEyesCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMMakeupLipsCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMPoseCategoryForVisionCategoryIdentifier:(id)identifier;
- (int64_t)_AXMSkintoneCategoryForVisionCategoryIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureFaceAttributes

- (AXMVisionFeatureFaceAttributes)initWithVisionFaceAttributes:(id)attributes
{
  attributesCopy = attributes;
  v97.receiver = self;
  v97.super_class = AXMVisionFeatureFaceAttributes;
  v5 = [(AXMVisionFeatureFaceAttributes *)&v97 init];
  if (v5)
  {
    ageCategory = [attributesCopy ageCategory];
    label = [ageCategory label];
    identifier = [label identifier];
    v5->_axAgeCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMAgeCategoryForVisionCategoryIdentifier:identifier];

    ageCategory2 = [attributesCopy ageCategory];
    label2 = [ageCategory2 label];
    [label2 confidence];
    v5->_axAgeCategoryConfidence = v11;

    vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = [attributesCopy VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
    label3 = [vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE label];
    identifier2 = [label3 identifier];
    v5->_axGenderCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMGenderCategoryForVisionCategoryIdentifier:identifier2];

    vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE2 = [attributesCopy VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
    label4 = [vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE2 label];
    [label4 confidence];
    v5->_axGenderCategoryConfidence = v17;

    eyesCategory = [attributesCopy eyesCategory];
    label5 = [eyesCategory label];
    identifier3 = [label5 identifier];
    v5->_axEyesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMEyesCategoryForVisionCategoryIdentifier:identifier3];

    eyesCategory2 = [attributesCopy eyesCategory];
    label6 = [eyesCategory2 label];
    [label6 confidence];
    v5->_axEyesCategoryConfidence = v23;

    hairColorCategory = [attributesCopy hairColorCategory];
    label7 = [hairColorCategory label];
    identifier4 = [label7 identifier];
    v5->_axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHairColorCategoryForVisionCategoryIdentifier:identifier4];

    hairColorCategory2 = [attributesCopy hairColorCategory];
    label8 = [hairColorCategory2 label];
    [label8 confidence];
    v5->_axHairColorCategoryConfidence = v29;

    glassesCategory = [attributesCopy glassesCategory];
    label9 = [glassesCategory label];
    identifier5 = [label9 identifier];
    v5->_axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMGlassesCategoryForVisionCategoryIdentifier:identifier5];

    glassesCategory2 = [attributesCopy glassesCategory];
    label10 = [glassesCategory2 label];
    [label10 confidence];
    v5->_axGlassesCategoryConfidence = v35;

    makeupEyesCategory = [attributesCopy makeupEyesCategory];
    label11 = [makeupEyesCategory label];
    identifier6 = [label11 identifier];
    v5->_axMakeupEyesCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMMakeupEyesCategoryForVisionCategoryIdentifier:identifier6];

    makeupEyesCategory2 = [attributesCopy makeupEyesCategory];
    label12 = [makeupEyesCategory2 label];
    [label12 confidence];
    v5->_axMakeupEyesCategoryConfidence = v41;

    makeupLipsCategory = [attributesCopy makeupLipsCategory];
    label13 = [makeupLipsCategory label];
    identifier7 = [label13 identifier];
    v5->_axMakeupLipsCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMMakeupLipsCategoryForVisionCategoryIdentifier:identifier7];

    makeupLipsCategory2 = [attributesCopy makeupLipsCategory];
    label14 = [makeupLipsCategory2 label];
    [label14 confidence];
    v5->_axMakeupLipsCategoryConfidence = v47;

    facemaskCategory = [attributesCopy facemaskCategory];
    label15 = [facemaskCategory label];
    identifier8 = [label15 identifier];
    v5->_axFacemaskCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMFacemaskCategoryForVisionCategoryIdentifier:identifier8];

    facemaskCategory2 = [attributesCopy facemaskCategory];
    label16 = [facemaskCategory2 label];
    [label16 confidence];
    v5->_axFacemaskCategoryConfidence = v53;

    vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = [attributesCopy VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    label17 = [vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB label];
    identifier9 = [label17 identifier];
    v5->_axEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMEthnicityCategoryForVisionCategoryIdentifier:identifier9];

    vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB2 = [attributesCopy VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
    label18 = [vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB2 label];
    [label18 confidence];
    v5->_axEthnicityCategoryConfidence = v59;

    vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = [attributesCopy VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    label19 = [vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 label];
    identifier10 = [label19 identifier];
    v5->_axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMExpressionCategoryForVisionCategoryIdentifier:identifier10];

    vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI12 = [attributesCopy VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
    label20 = [vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI12 label];
    [label20 confidence];
    v5->_axExpressionCategoryConfidence = v65;

    vN2riiZbQrloRhCzYW56f0rk4N3ROe151S = [attributesCopy VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    label21 = [vN2riiZbQrloRhCzYW56f0rk4N3ROe151S label];
    identifier11 = [label21 identifier];
    v5->_axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)v5 _AXMFaceHairV2CategoryForVisionCategoryIdentifier:identifier11];

    vN2riiZbQrloRhCzYW56f0rk4N3ROe151S2 = [attributesCopy VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
    label22 = [vN2riiZbQrloRhCzYW56f0rk4N3ROe151S2 label];
    [label22 confidence];
    v5->_axFaceHairV2CategoryConfidence = v71;

    vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk = [attributesCopy VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    label23 = [vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk label];
    identifier12 = [label23 identifier];
    v5->_axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHairtypeCategoryForVisionCategoryIdentifier:identifier12];

    vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk2 = [attributesCopy VN7CbCeAogPS2iHE6VQwu6H96xanljtMqk];
    label24 = [vN7CbCeAogPS2iHE6VQwu6H96xanljtMqk2 label];
    [label24 confidence];
    v5->_axHairTypeCategoryConfidence = v77;

    vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = [attributesCopy VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    label25 = [vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP label];
    identifier13 = [label25 identifier];
    v5->_axHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMHeadgearCategoryForVisionCategoryIdentifier:identifier13];

    vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP2 = [attributesCopy VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
    label26 = [vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP2 label];
    [label26 confidence];
    v5->_axHeadgearCategoryConfidence = v83;

    vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = [attributesCopy VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    label27 = [vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk label];
    identifier14 = [label27 identifier];
    v5->_axPoseCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMPoseCategoryForVisionCategoryIdentifier:identifier14];

    vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk2 = [attributesCopy VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
    label28 = [vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk2 label];
    [label28 confidence];
    v5->_axPoseCategoryConfidence = v89;

    vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = [attributesCopy VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    label29 = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq label];
    identifier15 = [label29 identifier];
    v5->_axSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)v5 _AXMSkintoneCategoryForVisionCategoryIdentifier:identifier15];

    vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq2 = [attributesCopy VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
    label30 = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq2 label];
    [label30 confidence];
    v5->_axSkintoneCategoryConfidence = v95;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axAgeCategory](self forKey:{"axAgeCategory"), @"age"}];
  [(AXMVisionFeatureFaceAttributes *)self axAgeCategoryConfidence];
  *&v4 = v4;
  [coderCopy encodeFloat:@"ageConfidence" forKey:v4];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axGenderCategory](self forKey:{"axGenderCategory"), @"gender"}];
  [(AXMVisionFeatureFaceAttributes *)self axGenderCategoryConfidence];
  *&v5 = v5;
  [coderCopy encodeFloat:@"genderConfidence" forKey:v5];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axEyesCategory](self forKey:{"axEyesCategory"), @"eyes"}];
  [(AXMVisionFeatureFaceAttributes *)self axEyesCategoryConfidence];
  *&v6 = v6;
  [coderCopy encodeFloat:@"eyesConfidence" forKey:v6];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axSmilingCategory](self forKey:{"axSmilingCategory"), @"smiling"}];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axFaceHairCategory](self forKey:{"axFaceHairCategory"), @"faceHair"}];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axHairColorCategory](self forKey:{"axHairColorCategory"), @"hairColor"}];
  [(AXMVisionFeatureFaceAttributes *)self axHairColorCategoryConfidence];
  *&v7 = v7;
  [coderCopy encodeFloat:@"hairColorConfidence" forKey:v7];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axBaldCategory](self forKey:{"axBaldCategory"), @"bald"}];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axGlassesCategory](self forKey:{"axGlassesCategory"), @"glasses"}];
  [(AXMVisionFeatureFaceAttributes *)self axGlassesCategoryConfidence];
  *&v8 = v8;
  [coderCopy encodeFloat:@"glassesConfidence" forKey:v8];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axMakeupEyesCategory](self forKey:{"axMakeupEyesCategory"), @"makeupEyes"}];
  [(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategoryConfidence];
  *&v9 = v9;
  [coderCopy encodeFloat:@"makeupEyesConfidence" forKey:v9];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axMakeupLipsCategory](self forKey:{"axMakeupLipsCategory"), @"makeupLips"}];
  [(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategoryConfidence];
  *&v10 = v10;
  [coderCopy encodeFloat:@"makeupLipsConfidence" forKey:v10];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axFacemaskCategory](self forKey:{"axFacemaskCategory"), @"facemask"}];
  [(AXMVisionFeatureFaceAttributes *)self axFacemaskCategoryConfidence];
  *&v11 = v11;
  [coderCopy encodeFloat:@"facemaskConfidence" forKey:v11];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axEthnicityCategory](self forKey:{"axEthnicityCategory"), @"ethnicity"}];
  [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategoryConfidence];
  *&v12 = v12;
  [coderCopy encodeFloat:@"ethnicityConfidence" forKey:v12];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axExpressionCategory](self forKey:{"axExpressionCategory"), @"expression"}];
  [(AXMVisionFeatureFaceAttributes *)self axExpressionCategoryConfidence];
  *&v13 = v13;
  [coderCopy encodeFloat:@"expressionConfidence" forKey:v13];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axFaceHairV2Category](self forKey:{"axFaceHairV2Category"), @"faceHairV2"}];
  [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2CategoryConfidence];
  *&v14 = v14;
  [coderCopy encodeFloat:@"faceHairV2Confidence" forKey:v14];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axHairTypeCategory](self forKey:{"axHairTypeCategory"), @"hairType"}];
  [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategoryConfidence];
  *&v15 = v15;
  [coderCopy encodeFloat:@"hairTypeConfidence" forKey:v15];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axHeadgearCategory](self forKey:{"axHeadgearCategory"), @"headgear"}];
  [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategoryConfidence];
  *&v16 = v16;
  [coderCopy encodeFloat:@"headgearConfidence" forKey:v16];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axPoseCategory](self forKey:{"axPoseCategory"), @"pose"}];
  [(AXMVisionFeatureFaceAttributes *)self axPoseCategoryConfidence];
  *&v17 = v17;
  [coderCopy encodeFloat:@"poseConfidence" forKey:v17];
  [coderCopy encodeInteger:-[AXMVisionFeatureFaceAttributes axSkintoneCategory](self forKey:{"axSkintoneCategory"), @"skintone"}];
  [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategoryConfidence];
  *&v18 = v18;
  [coderCopy encodeFloat:@"skintoneConfidence" forKey:v18];
}

- (AXMVisionFeatureFaceAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = AXMVisionFeatureFaceAttributes;
  v5 = [(AXMVisionFeatureFaceAttributes *)&v22 init];
  if (v5)
  {
    v5->_axAgeCategory = [coderCopy decodeIntegerForKey:@"age"];
    [coderCopy decodeFloatForKey:@"ageConfidence"];
    v5->_axAgeCategoryConfidence = v6;
    v5->_axGenderCategory = [coderCopy decodeIntegerForKey:@"gender"];
    [coderCopy decodeFloatForKey:@"genderConfidence"];
    v5->_axGenderCategoryConfidence = v7;
    v5->_axEyesCategory = [coderCopy decodeIntegerForKey:@"eyes"];
    [coderCopy decodeFloatForKey:@"eyesConfidence"];
    v5->_axEyesCategoryConfidence = v8;
    v5->_axSmilingCategory = [coderCopy decodeIntegerForKey:@"smiling"];
    v5->_axFaceHairCategory = [coderCopy decodeIntegerForKey:@"faceHair"];
    v5->_axHairColorCategory = [coderCopy decodeIntegerForKey:@"hairColor"];
    [coderCopy decodeFloatForKey:@"hairColorConfidence"];
    v5->_axHairColorCategoryConfidence = v9;
    v5->_axBaldCategory = [coderCopy decodeIntegerForKey:@"bald"];
    v5->_axGlassesCategory = [coderCopy decodeIntegerForKey:@"glasses"];
    [coderCopy decodeFloatForKey:@"glassesConfidence"];
    v5->_axGlassesCategoryConfidence = v10;
    v5->_axMakeupEyesCategory = [coderCopy decodeIntegerForKey:@"makeupEyes"];
    [coderCopy decodeFloatForKey:@"makeupEyesConfidence"];
    v5->_axMakeupEyesCategoryConfidence = v11;
    v5->_axMakeupLipsCategory = [coderCopy decodeIntegerForKey:@"makeupLips"];
    [coderCopy decodeFloatForKey:@"makeupLipsConfidence"];
    v5->_axMakeupLipsCategoryConfidence = v12;
    v5->_axFacemaskCategory = [coderCopy decodeIntegerForKey:@"facemask"];
    [coderCopy decodeFloatForKey:@"facemaskConfidence"];
    v5->_axFacemaskCategoryConfidence = v13;
    v5->_axEthnicityCategory = [coderCopy decodeIntegerForKey:@"ethnicity"];
    [coderCopy decodeFloatForKey:@"ethnicityConfidence"];
    v5->_axEthnicityCategoryConfidence = v14;
    v5->_axExpressionCategory = [coderCopy decodeIntegerForKey:@"expression"];
    [coderCopy decodeFloatForKey:@"expressionConfidence"];
    v5->_axExpressionCategoryConfidence = v15;
    v5->_axFaceHairV2Category = [coderCopy decodeIntegerForKey:@"faceHairV2"];
    [coderCopy decodeFloatForKey:@"faceHairV2Confidence"];
    v5->_axFaceHairV2CategoryConfidence = v16;
    v5->_axHairTypeCategory = [coderCopy decodeIntegerForKey:@"hairType"];
    [coderCopy decodeFloatForKey:@"hairTypeConfidence"];
    v5->_axHairTypeCategoryConfidence = v17;
    v5->_axHeadgearCategory = [coderCopy decodeIntegerForKey:@"headgear"];
    [coderCopy decodeFloatForKey:@"headgearConfidence"];
    v5->_axHeadgearCategoryConfidence = v18;
    v5->_axPoseCategory = [coderCopy decodeIntegerForKey:@"pose"];
    [coderCopy decodeFloatForKey:@"poseConfidence"];
    v5->_axPoseCategoryConfidence = v19;
    v5->_axSkintoneCategory = [coderCopy decodeIntegerForKey:@"skintone"];
    [coderCopy decodeFloatForKey:@"skintoneConfidence"];
    v5->_axSkintoneCategoryConfidence = v20;
  }

  return v5;
}

- (int64_t)_AXMAgeCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMAgeCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMAgeCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMAgeCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMAgeCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMGenderCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMGenderCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMGenderCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMGenderCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMEyesCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMEyesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMEyesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMEyesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMEyesCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMHairColorCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMHairColorCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHairColorCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHairColorCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHairColorCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMGlassesCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMGlassesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMGlassesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMGlassesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMGlassesCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMMakeupEyesCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMMakeupEyesCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMMakeupEyesCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMMakeupEyesCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMMakeupEyesCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMMakeupLipsCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMMakeupLipsCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMMakeupLipsCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMMakeupLipsCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMMakeupLipsCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMFacemaskCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMFacemaskCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMFacemaskCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMFacemaskCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMFacemaskCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMEthnicityCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMEthnicityCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMEthnicityCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMEthnicityCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMEthnicityCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMExpressionCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMExpressionCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMExpressionCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMExpressionCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMExpressionCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMFaceHairV2CategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMFaceHairV2CategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMFaceHairV2CategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMFaceHairV2CategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMFaceHairV2CategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMHairtypeCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMHairtypeCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHairtypeCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHairtypeCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHairtypeCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMHeadgearCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMHeadgearCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMHeadgearCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMHeadgearCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMHeadgearCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMPoseCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMPoseCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMPoseCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMPoseCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMPoseCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

- (int64_t)_AXMSkintoneCategoryForVisionCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_AXMSkintoneCategoryForVisionCategoryIdentifier__onceToken != -1)
  {
    [AXMVisionFeatureFaceAttributes _AXMSkintoneCategoryForVisionCategoryIdentifier:];
  }

  v4 = [_AXMSkintoneCategoryForVisionCategoryIdentifier__categoryMap objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXMVisionFeatureFaceAttributes _AXMSkintoneCategoryForVisionCategoryIdentifier:];
    }

    integerValue = 0;
  }

  return integerValue;
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

  axPoseCategory = [(AXMVisionFeatureFaceAttributes *)self axPoseCategory];
  if ((axPoseCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C780[axPoseCategory - 1];
  }
}

- (id)_accessibilityIdentifierForSkintoneCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 8) != 0)
  {
    return 0;
  }

  axSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategory];
  if ((axSkintoneCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C7A8[axSkintoneCategory - 1];
  }
}

- (id)_accessibilityIdentifierForEthnicityCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x10) != 0)
  {
    return 0;
  }

  axEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategory];
  if ((axEthnicityCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C7D8[axEthnicityCategory - 1];
  }
}

- (id)_accessibilityIdentifierForGenderCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 4) != 0)
  {
    return 0;
  }

  axGenderCategory = [(AXMVisionFeatureFaceAttributes *)self axGenderCategory];
  v4 = @"Gender_Female";
  if (axGenderCategory != 2)
  {
    v4 = 0;
  }

  if (axGenderCategory == 1)
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

  axAgeCategory = [(AXMVisionFeatureFaceAttributes *)self axAgeCategory];
  if ((axAgeCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C800[axAgeCategory - 1];
  }
}

- (id)_accessibilityIdentifierForHairColorCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x40) != 0)
  {
    return 0;
  }

  axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self axHairColorCategory];
  if ((axHairColorCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C828[axHairColorCategory - 1];
  }
}

- (id)_accessibilityIdentifierForHairTypeCategory
{
  axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategory];
  if ((axHairTypeCategory - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C858[axHairTypeCategory - 1];
  }
}

- (id)_accessibilityIdentifierForFaceHairV2Category
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x100) != 0)
  {
    return 0;
  }

  axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2Category];
  if ((axFaceHairV2Category - 2) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C890[axFaceHairV2Category - 2];
  }
}

- (id)_accessibilityIdentifierForGlassesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x200) != 0)
  {
    return 0;
  }

  axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self axGlassesCategory];
  v4 = @"Glasses_Sunglasses";
  if (axGlassesCategory != 2)
  {
    v4 = 0;
  }

  if (axGlassesCategory == 1)
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

  axHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategory];
  if ((axHeadgearCategory - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C8C0[axHeadgearCategory - 1];
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

  axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self axExpressionCategory];
  if ((axExpressionCategory - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C8E0[axExpressionCategory - 1];
  }
}

- (id)_accessibilityIdentifierForEyesCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x4000) != 0)
  {
    return 0;
  }

  axEyesCategory = [(AXMVisionFeatureFaceAttributes *)self axEyesCategory];
  v4 = @"Eyes_Open";
  if (axEyesCategory != 2)
  {
    v4 = 0;
  }

  if (axEyesCategory == 1)
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

  axPoseCategory = [(AXMVisionFeatureFaceAttributes *)self axPoseCategory];
  if ((axPoseCategory - 2) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C908[axPoseCategory - 2];
  }
}

- (id)_accessibilityLabelFormatterForAgeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 2) != 0)
  {
    return @".age.person";
  }

  axAgeCategory = [(AXMVisionFeatureFaceAttributes *)self axAgeCategory];
  if (axAgeCategory > 5)
  {
    return @".age.baby";
  }

  else
  {
    return off_1E7A1C928[axAgeCategory];
  }
}

- (id)_accessibilityLabelFormatterForHairColorCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x40) != 0)
  {
    return 0;
  }

  axHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self axHairColorCategory];
  if ((axHairColorCategory - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C958[axHairColorCategory - 1];
  }
}

- (id)_accessibilityLabelFormatterForHairTypeCategory
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x80) != 0)
  {
    return 0;
  }

  axHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategory];
  if ((axHairTypeCategory - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7A1C988[axHairTypeCategory - 1];
  }
}

- (id)_accessibilityLabelFormatterForFaceHairV2Category
{
  if (([(AXMVisionFeatureFaceAttributes *)self excludeOptions]& 0x100) != 0)
  {
    _accessibilityLabelFormatterForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
    _accessibilityLabelFormatterForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
    v10 = 0;
  }

  else
  {
    axFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2Category];
    _accessibilityLabelFormatterForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
    _accessibilityLabelFormatterForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
    if (_accessibilityLabelFormatterForHairTypeCategory | _accessibilityLabelFormatterForHairColorCategory)
    {
      v6 = _accessibilityLabelFormatterForHairTypeCategory;
    }

    else
    {
      v6 = 0;
    }

    v7 = @".facehair.present";
    if (_accessibilityLabelFormatterForHairTypeCategory | _accessibilityLabelFormatterForHairColorCategory)
    {
      v7 = @".facehair.included";
    }

    if (((1 << axFaceHairV2Category) & 0xEC) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = _accessibilityLabelFormatterForHairTypeCategory;
    }

    if (((1 << axFaceHairV2Category) & 0xEC) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (axFaceHairV2Category > 7)
    {
      v10 = 0;
    }

    else
    {
      _accessibilityLabelFormatterForHairTypeCategory = v8;
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

  axGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self axGlassesCategory];
  v4 = @".sunglasses";
  if (axGlassesCategory != 2)
  {
    v4 = 0;
  }

  if (axGlassesCategory == 1)
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

  axExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self axExpressionCategory];
  v4 = @".smiling";
  if (axExpressionCategory != 5)
  {
    v4 = 0;
  }

  if (axExpressionCategory == 2)
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
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  _accessibilityLabelFormatterForPoseCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForPoseCategory];
  if (_accessibilityLabelFormatterForPoseCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForPoseCategory];
  }

  _accessibilityLabelFormatterForAgeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForAgeCategory];
  if (_accessibilityLabelFormatterForAgeCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForAgeCategory];
LABEL_6:
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_7;
  }

  if (_accessibilityLabelFormatterForPoseCategory)
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
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  _accessibilityLabelFormatterForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairColorCategory];
  _accessibilityLabelFormatterForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForHairTypeCategory];
  v8 = _accessibilityLabelFormatterForHairTypeCategory;
  if (_accessibilityLabelFormatterForHairColorCategory && _accessibilityLabelFormatterForHairTypeCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForHairColorCategory];
    v9 = v8;
LABEL_8:
    [v5 appendString:v9];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v11 = [v10 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_10;
  }

  if (_accessibilityLabelFormatterForHairColorCategory)
  {
    v9 = _accessibilityLabelFormatterForHairColorCategory;
  }

  else
  {
    v9 = _accessibilityLabelFormatterForHairTypeCategory;
  }

  if (_accessibilityLabelFormatterForHairColorCategory | _accessibilityLabelFormatterForHairTypeCategory)
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
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  _accessibilityLabelFormatterForFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForFaceHairV2Category];
  if (_accessibilityLabelFormatterForFaceHairV2Category)
  {
    [v5 appendString:_accessibilityLabelFormatterForFaceHairV2Category];
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
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  [v5 appendString:@".accessories"];
  _accessibilityLabelFormatterForGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForGlassesCategory];
  if (_accessibilityLabelFormatterForGlassesCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForGlassesCategory];
  }

  _accessibilityLabelFormatterForFaceMaskCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForFaceMaskCategory];
  if (_accessibilityLabelFormatterForFaceMaskCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForFaceMaskCategory];
LABEL_6:
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F23EA908 table:@"Accessibility"];

    goto LABEL_7;
  }

  if (_accessibilityLabelFormatterForGlassesCategory)
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
  _accessibilityLabelFormatterBeginning = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterBeginning];
  v5 = [v3 stringWithString:_accessibilityLabelFormatterBeginning];

  [v5 appendString:@".expression"];
  _accessibilityLabelFormatterForExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelFormatterForExpressionCategory];
  if (_accessibilityLabelFormatterForExpressionCategory)
  {
    [v5 appendString:_accessibilityLabelFormatterForExpressionCategory];
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
  _accessibilityLabelForDemographics = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForDemographics];
  _accessibilityLabelForHairDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForHairDetails];
  _accessibilityLabelForFacialHairDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForFacialHairDetails];
  _accessibilityLabelForAccessoryDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForAccessoryDetails];
  _accessibilityLabelForExpressionDetails = [(AXMVisionFeatureFaceAttributes *)self _accessibilityLabelForExpressionDetails];
  v8 = [MEMORY[0x1E695DEC8] axmArrayByIgnoringNilElementsWithCount:{5, _accessibilityLabelForDemographics, _accessibilityLabelForHairDetails, _accessibilityLabelForFacialHairDetails, _accessibilityLabelForAccessoryDetails, _accessibilityLabelForExpressionDetails}];
  v9 = AXMLabelForNSStringElements(v8, 1, 0);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v11;
}

- (id)accessibilityLabelAndConfidenceMappingForAttributes
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _accessibilityIdentifierForPoseCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForPoseCategory];
  if (_accessibilityIdentifierForPoseCategory)
  {
    v5 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axPoseCategoryConfidence];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:_accessibilityIdentifierForPoseCategory];
  }

  _accessibilityIdentifierForAgeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForAgeCategory];
  if (_accessibilityIdentifierForAgeCategory)
  {
    v8 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axAgeCategoryConfidence];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:_accessibilityIdentifierForAgeCategory];
  }

  _accessibilityIdentifierForGenderCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForGenderCategory];
  if (_accessibilityIdentifierForGenderCategory)
  {
    v11 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axGenderCategoryConfidence];
    v12 = [v11 numberWithDouble:?];
    [dictionary setObject:v12 forKeyedSubscript:_accessibilityIdentifierForGenderCategory];
  }

  _accessibilityIdentifierForGlassesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForGlassesCategory];
  if (_accessibilityIdentifierForGlassesCategory)
  {
    v14 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axGlassesCategoryConfidence];
    v15 = [v14 numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:_accessibilityIdentifierForGlassesCategory];
  }

  v55 = _accessibilityIdentifierForGenderCategory;
  _accessibilityIdentifierForHairColorCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHairColorCategory];
  if (_accessibilityIdentifierForHairColorCategory)
  {
    v17 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHairColorCategoryConfidence];
    v18 = [v17 numberWithDouble:?];
    [dictionary setObject:v18 forKeyedSubscript:_accessibilityIdentifierForHairColorCategory];
  }

  _accessibilityIdentifierForHairTypeCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHairTypeCategory];
  if (_accessibilityIdentifierForHairTypeCategory)
  {
    v20 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHairTypeCategoryConfidence];
    v21 = [v20 numberWithDouble:?];
    [dictionary setObject:v21 forKeyedSubscript:_accessibilityIdentifierForHairTypeCategory];
  }

  _accessibilityIdentifierForFaceHairV2Category = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForFaceHairV2Category];
  if (_accessibilityIdentifierForFaceHairV2Category)
  {
    v23 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axFaceHairV2CategoryConfidence];
    v24 = [v23 numberWithDouble:?];
    [dictionary setObject:v24 forKeyedSubscript:_accessibilityIdentifierForFaceHairV2Category];
  }

  v51 = _accessibilityIdentifierForFaceHairV2Category;
  v57 = _accessibilityIdentifierForPoseCategory;
  _accessibilityIdentifierForHeadgearCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForHeadgearCategory];
  if (_accessibilityIdentifierForHeadgearCategory)
  {
    v26 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axHeadgearCategoryConfidence];
    v27 = [v26 numberWithDouble:?];
    [dictionary setObject:v27 forKeyedSubscript:_accessibilityIdentifierForHeadgearCategory];
  }

  v56 = _accessibilityIdentifierForAgeCategory;
  _accessibilityIdentifierForFacemaskCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForFacemaskCategory];
  if (_accessibilityIdentifierForFacemaskCategory)
  {
    v29 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axFacemaskCategoryConfidence];
    v30 = [v29 numberWithDouble:?];
    [dictionary setObject:v30 forKeyedSubscript:_accessibilityIdentifierForFacemaskCategory];
  }

  _accessibilityIdentifierForExpressionCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForExpressionCategory];
  if (_accessibilityIdentifierForExpressionCategory)
  {
    v32 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axExpressionCategoryConfidence];
    v33 = [v32 numberWithDouble:?];
    [dictionary setObject:v33 forKeyedSubscript:_accessibilityIdentifierForExpressionCategory];
  }

  v54 = _accessibilityIdentifierForGlassesCategory;
  _accessibilityIdentifierForEthnicityCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForEthnicityCategory];
  if (_accessibilityIdentifierForEthnicityCategory)
  {
    v35 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axEthnicityCategoryConfidence];
    v36 = [v35 numberWithDouble:?];
    [dictionary setObject:v36 forKeyedSubscript:_accessibilityIdentifierForEthnicityCategory];
  }

  v53 = _accessibilityIdentifierForHairColorCategory;
  _accessibilityIdentifierForEyesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForEyesCategory];
  if (_accessibilityIdentifierForEyesCategory)
  {
    v38 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axEyesCategoryConfidence];
    v39 = [v38 numberWithDouble:?];
    [dictionary setObject:v39 forKeyedSubscript:_accessibilityIdentifierForEyesCategory];
  }

  v52 = _accessibilityIdentifierForHairTypeCategory;
  _accessibilityIdentifierForMakeupEyesCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForMakeupEyesCategory];
  if (_accessibilityIdentifierForMakeupEyesCategory)
  {
    v41 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axMakeupEyesCategoryConfidence];
    v42 = [v41 numberWithDouble:?];
    [dictionary setObject:v42 forKeyedSubscript:_accessibilityIdentifierForMakeupEyesCategory];
  }

  _accessibilityIdentifierForMakeupLipsCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForMakeupLipsCategory];
  if (_accessibilityIdentifierForMakeupLipsCategory)
  {
    v44 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axMakeupLipsCategoryConfidence];
    v45 = [v44 numberWithDouble:?];
    [dictionary setObject:v45 forKeyedSubscript:_accessibilityIdentifierForMakeupLipsCategory];
  }

  _accessibilityIdentifierForSkintoneCategory = [(AXMVisionFeatureFaceAttributes *)self _accessibilityIdentifierForSkintoneCategory];
  if (_accessibilityIdentifierForSkintoneCategory)
  {
    v47 = MEMORY[0x1E696AD98];
    [(AXMVisionFeatureFaceAttributes *)self axSkintoneCategoryConfidence];
    v48 = [v47 numberWithDouble:?];
    [dictionary setObject:v48 forKeyedSubscript:_accessibilityIdentifierForSkintoneCategory];
  }

  return dictionary;
}

+ (id)unitTestingFaceAttributesForAge:(int64_t)age gender:(int64_t)gender eyes:(int64_t)eyes smiling:(int64_t)smiling facialHair:(int64_t)hair hairColor:(int64_t)color baldness:(int64_t)baldness glasses:(int64_t)self0 eyeMakeup:(int64_t)self1 lipMakeup:(int64_t)self2 faceMask:(int64_t)self3 ethnicity:(int64_t)self4 expression:(int64_t)self5 facialHairV2:(int64_t)self6 hairType:(int64_t)self7 headGear:(int64_t)self8 pose:(int64_t)self9 skinTone:(int64_t)tone excludeOptions:(int64_t)options
{
  v24 = objc_alloc_init(AXMVisionFeatureFaceAttributes);
  [(AXMVisionFeatureFaceAttributes *)v24 setExcludeOptions:options];
  v24->_axAgeCategory = age;
  v24->_axGenderCategory = gender;
  v24->_axEyesCategory = eyes;
  v24->_axSmilingCategory = smiling;
  v24->_axFaceHairCategory = hair;
  v24->_axHairColorCategory = color;
  v24->_axBaldCategory = baldness;
  v24->_axGlassesCategory = glasses;
  v24->_axMakeupEyesCategory = makeup;
  v24->_axMakeupLipsCategory = lipMakeup;
  v24->_axFacemaskCategory = mask;
  v24->_axEthnicityCategory = ethnicity;
  v24->_axExpressionCategory = expression;
  v24->_axFaceHairV2Category = v2;
  v24->_axHairTypeCategory = type;
  v24->_axHeadgearCategory = gear;
  v24->_axPoseCategory = pose;
  v24->_axSkintoneCategory = tone;

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