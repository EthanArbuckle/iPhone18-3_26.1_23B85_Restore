@interface AXSSMotionTrackingExpressionConfiguration
+ ($569BC8A4F588CCDEF576D5B50041512B)convertIncomingExpressionsToExclaveBlendshapesOutput:(SEL)output;
+ (BOOL)_expressionIsActive:(unint64_t)active usingExclaveOutput:(id *)output expressionConfiguration:(id)configuration;
+ (BOOL)_jawOpenStartingWithValue:(float)value mouthClose:(float)close expressionConfiguration:(id)configuration;
+ (float)_minConfidenceExpressionStarted:(unint64_t)started usingExpressionConfiguration:(id)configuration;
+ (id)_defaultSensitivitiesForAllFacialExpressions;
+ (id)_facialExpressionToSensitivityToValueMapping;
+ (id)_populateExpressionArraysForProcessedExpressions:(id)expressions previousExpressions:(id)previousExpressions startExpressionsOutSet:(id *)set endExpressionsOutSet:(id *)outSet;
+ (id)defaultExpressionConfiguration;
+ (id)processExclaveDetectedExpressions:(id *)expressions previousExpressions:(id)previousExpressions expressionConfiguration:(id)configuration startExpressionsOutSet:(id *)set endExpressionsOutSet:(id *)outSet;
+ (id)processIncomingExpressions:(id)expressions previousExpressions:(id)previousExpressions expressionConfiguration:(id)configuration startExpressionsOutSet:(id *)set endExpressionsOutSet:(id *)outSet;
+ (unint64_t)_activationForFacialExpression:(unint64_t)expression usingExclaveExpressions:(id *)expressions;
- (AXSSMotionTrackingExpressionConfiguration)init;
- (AXSSMotionTrackingExpressionConfiguration)initWithCoder:(id)coder;
- (AXSSMotionTrackingExpressionConfiguration)initWithPlistDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMotionTrackingExpressionConfiguration:(id)configuration;
- (NSDictionary)plistDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)sensitivityForFacialExpression:(unint64_t)expression;
- (void)_safelySetSensitivity:(unint64_t)sensitivity forFacialExpression:(unint64_t)expression inDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)plistDictionary;
- (void)setSensitivity:(unint64_t)sensitivity forFacialExpression:(unint64_t)expression;
@end

@implementation AXSSMotionTrackingExpressionConfiguration

- (AXSSMotionTrackingExpressionConfiguration)init
{
  v7.receiver = self;
  v7.super_class = AXSSMotionTrackingExpressionConfiguration;
  v2 = [(AXSSMotionTrackingExpressionConfiguration *)&v7 init];
  if (v2)
  {
    _defaultSensitivitiesForAllFacialExpressions = [objc_opt_class() _defaultSensitivitiesForAllFacialExpressions];
    v4 = [_defaultSensitivitiesForAllFacialExpressions mutableCopy];
    facialExpressionToSensitivity = v2->__facialExpressionToSensitivity;
    v2->__facialExpressionToSensitivity = v4;
  }

  return v2;
}

+ (id)defaultExpressionConfiguration
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (AXSSMotionTrackingExpressionConfiguration)initWithPlistDictionary:(id)dictionary
{
  v29[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  _defaultSensitivitiesForAllFacialExpressions = [objc_opt_class() _defaultSensitivitiesForAllFacialExpressions];
  v28 = [_defaultSensitivitiesForAllFacialExpressions mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    v7 = [dictionaryCopy objectForKeyedSubscript:v6];

    v8 = MEMORY[0x1E696ACD0];
    v9 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v11 = [v9 setWithArray:v10];
    v22 = 0;
    v12 = [v8 unarchivedObjectOfClasses:v11 fromData:v7 error:&v22];
    v13 = v22;

    if (!v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __69__AXSSMotionTrackingExpressionConfiguration_initWithPlistDictionary___block_invoke;
        v19[3] = &unk_1E8134E48;
        v21 = &v23;
        selfCopy = self;
        [v12 enumerateKeysAndObjectsUsingBlock:v19];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = AXSSMotionTrackingExpressionConfiguration;
  v14 = [(AXSSMotionTrackingExpressionConfiguration *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->__facialExpressionToSensitivity, v24[5]);
  }

  _Block_object_dispose(&v23, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __69__AXSSMotionTrackingExpressionConfiguration_initWithPlistDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v6 = [MEMORY[0x1E695DF90] dictionary];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }

      [*(a1 + 32) _safelySetSensitivity:objc_msgSend(v5 forFacialExpression:"unsignedIntegerValue") inDictionary:{objc_msgSend(v9, "unsignedIntegerValue"), *(*(*(a1 + 40) + 8) + 40)}];
    }
  }
}

- (NSDictionary)plistDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _facialExpressionToSensitivity = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];

  if (_facialExpressionToSensitivity)
  {
    v5 = MEMORY[0x1E696ACC8];
    _facialExpressionToSensitivity2 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
    v7 = [_facialExpressionToSensitivity2 copy];
    v14 = 0;
    v8 = [v5 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v14];
    v9 = v14;
    v10 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    [v3 setObject:v8 forKeyedSubscript:v10];

    if (v9)
    {
      v11 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
      }
    }
  }

  v12 = [v3 copy];

  return v12;
}

- (unint64_t)sensitivityForFacialExpression:(unint64_t)expression
{
  _facialExpressionToSensitivity = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:expression];
  v7 = [_facialExpressionToSensitivity objectForKeyedSubscript:v6];

  if (!v7)
  {
    return 0;
  }

  _facialExpressionToSensitivity2 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:expression];
  v10 = [_facialExpressionToSensitivity2 objectForKeyedSubscript:v9];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSensitivity:(unint64_t)sensitivity forFacialExpression:(unint64_t)expression
{
  _facialExpressionToSensitivity = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
  [(AXSSMotionTrackingExpressionConfiguration *)self _safelySetSensitivity:sensitivity forFacialExpression:expression inDictionary:_facialExpressionToSensitivity];
}

+ (id)processIncomingExpressions:(id)expressions previousExpressions:(id)previousExpressions expressionConfiguration:(id)configuration startExpressionsOutSet:(id *)set endExpressionsOutSet:(id *)outSet
{
  configurationCopy = configuration;
  previousExpressionsCopy = previousExpressions;
  expressionsCopy = expressions;
  v12 = [expressionsCopy objectForKeyedSubscript:@"TongueOut"];
  [v12 floatValue];
  v122 = v13;

  v14 = [expressionsCopy objectForKeyedSubscript:@"MouthSmileLeft"];
  [v14 floatValue];
  v125 = v15;

  v16 = [expressionsCopy objectForKeyedSubscript:@"MouthSmileRight"];
  [v16 floatValue];
  v124 = v17;

  v18 = [expressionsCopy objectForKeyedSubscript:@"JawOpen"];
  [v18 floatValue];
  v20 = v19;

  v21 = [expressionsCopy objectForKeyedSubscript:@"MouthClose"];
  [v21 floatValue];
  v106 = v22;

  v23 = [expressionsCopy objectForKeyedSubscript:@"BrowOuterUpLeft"];
  [v23 floatValue];
  v119 = v24;

  v25 = [expressionsCopy objectForKeyedSubscript:@"BrowOuterUpRight"];
  [v25 floatValue];
  v111 = v26;

  v27 = [expressionsCopy objectForKeyedSubscript:@"EyeBlinkRight"];
  [v27 floatValue];
  v117 = v28;

  v29 = [expressionsCopy objectForKeyedSubscript:@"EyeBlinkLeft"];
  [v29 floatValue];
  v116 = v30;

  v31 = [expressionsCopy objectForKeyedSubscript:@"NoseSneerRight"];
  [v31 floatValue];
  v114 = v32;

  v33 = [expressionsCopy objectForKeyedSubscript:@"NoseSneerLeft"];
  [v33 floatValue];
  v112 = v34;

  v35 = [expressionsCopy objectForKeyedSubscript:@"MouthRight"];
  [v35 floatValue];
  v120 = v36;

  v37 = [expressionsCopy objectForKeyedSubscript:@"MouthLeft"];
  [v37 floatValue];
  v121 = v38;

  v39 = [expressionsCopy objectForKeyedSubscript:@"MouthPucker"];

  [v39 floatValue];
  v118 = v40;

  [objc_opt_class() _minConfidenceExpressionStarted:4 usingExpressionConfiguration:configurationCopy];
  v42 = v41;
  [objc_opt_class() _minConfidenceExpressionStarted:3 usingExpressionConfiguration:configurationCopy];
  v109 = v43;
  [objc_opt_class() _minConfidenceExpressionStarted:2 usingExpressionConfiguration:configurationCopy];
  v45 = v44;
  [objc_opt_class() _minConfidenceExpressionStarted:1 usingExpressionConfiguration:configurationCopy];
  v47 = v46;
  [objc_opt_class() _minConfidenceExpressionStarted:5 usingExpressionConfiguration:configurationCopy];
  v49 = v48;
  [objc_opt_class() _minConfidenceExpressionStarted:6 usingExpressionConfiguration:configurationCopy];
  v51 = v50;
  [objc_opt_class() _minConfidenceExpressionStarted:7 usingExpressionConfiguration:configurationCopy];
  v110 = v52;
  [objc_opt_class() _minConfidenceExpressionStarted:8 usingExpressionConfiguration:configurationCopy];
  v54 = v53;
  [objc_opt_class() _minConfidenceExpressionStarted:9 usingExpressionConfiguration:configurationCopy];
  v56 = v55;
  v113 = configurationCopy;
  *(&v102 + 1) = v20;
  if (v20 <= v45)
  {
    v107 = 0;
  }

  else
  {
    v57 = objc_opt_class();
    *&v58 = v20;
    LODWORD(v59) = v106;
    v107 = [v57 _jawOpenStartingWithValue:configurationCopy mouthClose:v58 expressionConfiguration:v59];
  }

  v60 = [previousExpressionsCopy containsObject:&unk_1F4066708];
  v61 = [previousExpressionsCopy containsObject:&unk_1F4066720];
  v62 = [previousExpressionsCopy containsObject:&unk_1F4066738];
  v63 = [previousExpressionsCopy containsObject:&unk_1F4066750];
  v64 = [previousExpressionsCopy containsObject:&unk_1F4066768];
  v65 = [previousExpressionsCopy containsObject:&unk_1F4066780];
  v66 = [previousExpressionsCopy containsObject:&unk_1F4066798];
  v67 = [previousExpressionsCopy containsObject:&unk_1F40667B0];
  v68 = [previousExpressionsCopy containsObject:&unk_1F40667C8];
  v69 = v47 * 0.375;
  v70 = v49 * 0.95;
  v71 = v51 * 0.65;
  if (v124 > (v109 * 0.61538))
  {
    v72 = v60 & (v125 > (v109 * 0.61538));
  }

  else
  {
    v72 = 0;
  }

  v73 = v63 & (v119 > v69);
  if (v111 <= v69)
  {
    v73 = 0;
  }

  LODWORD(v102) = v73;
  v74 = v64 & (v116 > v70);
  if (v117 <= v70)
  {
    v74 = 0;
  }

  v104 = v74;
  v75 = v65 & (v112 > v71);
  if (v114 <= v71)
  {
    v75 = 0;
  }

  v105 = v75;
  if (v122 > v42)
  {
    v76 = 1;
  }

  else
  {
    v76 = v62 & (v122 > (v42 * 0.1));
  }

  v77 = (v76 ^ 1) & v107;
  v108 = v67 & (v120 > (v54 * 0.6));
  v123 = v68 & (v121 > (v56 * 0.6));
  v78 = v61 & (v20 > (v45 * 0.5));
  v80 = v114 > v51 && v112 > v51;
  v115 = v80;
  v82 = v116 > v49 && v117 > v49;
  v84 = v111 > v47 && v119 > v47;
  v86 = v124 > v109 && v125 > v109;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v76];
  [dictionary setObject:v88 forKey:&unk_1F4066738];

  v89 = [MEMORY[0x1E696AD98] numberWithInt:v86 | v72];
  [dictionary setObject:v89 forKey:&unk_1F4066708];

  v90 = [MEMORY[0x1E696AD98] numberWithInt:v77 | v78];
  [dictionary setObject:v90 forKey:&unk_1F4066720];

  v103 = [MEMORY[0x1E696AD98] numberWithInt:v84 | v103];
  [dictionary setObject:v103 forKey:&unk_1F4066750];

  v104 = [MEMORY[0x1E696AD98] numberWithInt:v82 | v104];
  [dictionary setObject:v104 forKey:&unk_1F4066768];

  v105 = [MEMORY[0x1E696AD98] numberWithInt:v115 | v105];
  [dictionary setObject:v105 forKey:&unk_1F4066780];

  if (v118 > v110)
  {
    v94 = 1;
  }

  else
  {
    v94 = v66 & (v118 > (v110 * 0.6));
  }

  v95 = [MEMORY[0x1E696AD98] numberWithInt:v94];
  [dictionary setObject:v95 forKey:&unk_1F4066798];

  if (v120 > v54)
  {
    v96 = 1;
  }

  else
  {
    v96 = v108;
  }

  v97 = [MEMORY[0x1E696AD98] numberWithInt:v96];
  [dictionary setObject:v97 forKey:&unk_1F40667B0];

  if (v121 > v56)
  {
    v98 = 1;
  }

  else
  {
    v98 = v123;
  }

  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  [dictionary setObject:v99 forKey:&unk_1F40667C8];

  v100 = [objc_opt_class() _populateExpressionArraysForProcessedExpressions:dictionary previousExpressions:previousExpressionsCopy startExpressionsOutSet:set endExpressionsOutSet:outSet];

  return v100;
}

+ (id)_populateExpressionArraysForProcessedExpressions:(id)expressions previousExpressions:(id)previousExpressions startExpressionsOutSet:(id *)set endExpressionsOutSet:(id *)outSet
{
  v7 = MEMORY[0x1E695DFA8];
  previousExpressionsCopy = previousExpressions;
  expressionsCopy = expressions;
  v10 = [v7 set];
  v11 = [MEMORY[0x1E695DFA8] set];
  v67 = [MEMORY[0x1E695DFA8] set];
  v68 = v11;
  if (_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__onceToken != -1)
  {
    +[AXSSMotionTrackingExpressionConfiguration _populateExpressionArraysForProcessedExpressions:previousExpressions:startExpressionsOutSet:endExpressionsOutSet:];
  }

  v12 = [expressionsCopy objectForKey:&unk_1F4066738];
  bOOLValue = [v12 BOOLValue];

  v13 = [expressionsCopy objectForKey:&unk_1F4066708];
  bOOLValue2 = [v13 BOOLValue];

  v14 = [expressionsCopy objectForKey:&unk_1F4066720];
  bOOLValue3 = [v14 BOOLValue];

  v15 = [expressionsCopy objectForKey:&unk_1F4066750];
  bOOLValue4 = [v15 BOOLValue];

  v16 = [expressionsCopy objectForKey:&unk_1F4066768];
  bOOLValue5 = [v16 BOOLValue];

  v17 = [expressionsCopy objectForKey:&unk_1F4066780];
  bOOLValue6 = [v17 BOOLValue];

  v18 = [expressionsCopy objectForKey:&unk_1F4066798];
  LODWORD(v55) = [v18 BOOLValue];

  v19 = [expressionsCopy objectForKey:&unk_1F40667B0];
  bOOLValue7 = [v19 BOOLValue];

  v20 = [expressionsCopy objectForKey:&unk_1F40667C8];

  bOOLValue8 = [v20 BOOLValue];
  v21 = [previousExpressionsCopy containsObject:&unk_1F4066708];
  v22 = [previousExpressionsCopy containsObject:&unk_1F4066720];
  v23 = [previousExpressionsCopy containsObject:&unk_1F4066738];
  v24 = [previousExpressionsCopy containsObject:&unk_1F4066750];
  HIDWORD(v55) = [previousExpressionsCopy containsObject:&unk_1F4066768];
  v25 = [previousExpressionsCopy containsObject:&unk_1F4066780];
  v26 = [previousExpressionsCopy containsObject:&unk_1F4066798];
  v63 = [previousExpressionsCopy containsObject:&unk_1F40667B0];
  v61 = [previousExpressionsCopy containsObject:&unk_1F40667C8];

  if (!bOOLValue2)
  {
    v28 = v67;
    v27 = v68;
    v29 = v67;
    if (!v21)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v10 addObject:&unk_1F4066708];
  v28 = v67;
  v27 = v68;
  v29 = v68;
  if ((v21 & 1) == 0)
  {
LABEL_7:
    [v29 addObject:{&unk_1F4066708, v55}];
  }

LABEL_8:
  if (!bOOLValue3)
  {
    v30 = v28;
    if (!v22)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v10 addObject:&unk_1F4066720];
  v30 = v27;
  if ((v22 & 1) == 0)
  {
LABEL_12:
    [v30 addObject:{&unk_1F4066720, v55}];
  }

LABEL_13:
  if (!bOOLValue)
  {
    v31 = v28;
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [v10 addObject:&unk_1F4066738];
  v31 = v27;
  if ((v23 & 1) == 0)
  {
LABEL_17:
    [v31 addObject:{&unk_1F4066738, v55}];
  }

LABEL_18:
  if (!bOOLValue4)
  {
    v32 = v28;
    if (!v24)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [v10 addObject:&unk_1F4066750];
  v32 = v27;
  if ((v24 & 1) == 0)
  {
LABEL_22:
    [v32 addObject:{&unk_1F4066750, v55}];
  }

LABEL_23:
  if (bOOLValue5)
  {
    [v10 addObject:&unk_1F4066768];
    if ((v55 & 0x100000000) == 0)
    {
      date = [MEMORY[0x1E695DF00] date];
      v34 = _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate;
      _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate = date;
    }
  }

  else if (HIDWORD(v55))
  {
    [MEMORY[0x1E695DF00] date];
    v36 = v35 = v26;
    [v36 timeIntervalSinceDate:_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate];
    v38 = v37;

    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate];
    v41 = v40;

    v26 = v35;
    if (v38 >= 0.3 && v41 <= 2.0)
    {
      [v27 addObject:&unk_1F4066768];
      v26 = v35;
      [v28 addObject:&unk_1F4066768];
    }
  }

  if (!bOOLValue6)
  {
    v42 = v28;
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  [v10 addObject:&unk_1F4066780];
  v42 = v27;
  if ((v25 & 1) == 0)
  {
LABEL_34:
    [v42 addObject:{&unk_1F4066780, v55}];
  }

LABEL_35:
  if (!bOOLValue8)
  {
    v43 = v28;
    setCopy2 = set;
    outSetCopy2 = outSet;
    if (!v61)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  [v10 addObject:&unk_1F40667C8];
  v43 = v27;
  setCopy2 = set;
  outSetCopy2 = outSet;
  if ((v61 & 1) == 0)
  {
LABEL_39:
    [v43 addObject:{&unk_1F40667C8, v55}];
  }

LABEL_40:
  if (bOOLValue7)
  {
    [v10 addObject:&unk_1F40667B0];
    v46 = v27;
    if (v63)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v46 = v28;
  if (v63)
  {
LABEL_44:
    [v46 addObject:{&unk_1F40667B0, v55}];
  }

LABEL_45:
  if ([v10 containsObject:{&unk_1F40667B0, v55}] & 1) != 0 || (objc_msgSend(v10, "containsObject:", &unk_1F40667C8) & 1) != 0 || ((v56 ^ 1))
  {
    if (!v26)
    {
      goto LABEL_55;
    }

    v47 = v28;
    goto LABEL_48;
  }

  [v10 addObject:&unk_1F4066798];
  date3 = [MEMORY[0x1E695DF00] date];
  v49 = v26;
  v50 = date3;
  v51 = _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate;
  if (v49)
  {
    [date3 timeIntervalSinceDate:_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate];
    v53 = v52;

    if (v53 > 0.15)
    {
      v47 = v27;
LABEL_48:
      [v47 addObject:&unk_1F4066798];
    }
  }

  else
  {
    _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate = date3;
  }

LABEL_55:
  if (setCopy2)
  {
    *setCopy2 = [v27 copy];
  }

  if (outSetCopy2)
  {
    *outSetCopy2 = [v28 copy];
  }

  return v10;
}

uint64_t __158__AXSSMotionTrackingExpressionConfiguration__populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet___block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate;
  _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate = v0;

  _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate = [MEMORY[0x1E695DF00] date];

  return MEMORY[0x1EEE66BB8]();
}

+ ($569BC8A4F588CCDEF576D5B50041512B)convertIncomingExpressionsToExclaveBlendshapesOutput:(SEL)output
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"TongueOut"];
  [v6 floatValue];
  v48 = v7;

  v8 = [v5 objectForKeyedSubscript:@"MouthSmileLeft"];
  [v8 floatValue];
  v47 = v9;

  v10 = [v5 objectForKeyedSubscript:@"MouthSmileRight"];
  [v10 floatValue];
  v46 = v11;

  v12 = [v5 objectForKeyedSubscript:@"JawOpen"];
  [v12 floatValue];
  v45 = v13;

  v14 = [v5 objectForKeyedSubscript:@"MouthClose"];
  [v14 floatValue];
  v44 = v15;

  v16 = [v5 objectForKeyedSubscript:@"BrowOuterUpLeft"];
  [v16 floatValue];
  v43 = v17;

  v18 = [v5 objectForKeyedSubscript:@"BrowOuterUpRight"];
  [v18 floatValue];
  v20 = v19;

  v21 = [v5 objectForKeyedSubscript:@"EyeBlinkRight"];
  [v21 floatValue];
  v23 = v22;

  v24 = [v5 objectForKeyedSubscript:@"EyeBlinkLeft"];
  [v24 floatValue];
  v26 = v25;

  v27 = [v5 objectForKeyedSubscript:@"NoseSneerRight"];
  [v27 floatValue];
  v29 = v28;

  v30 = [v5 objectForKeyedSubscript:@"NoseSneerLeft"];
  [v30 floatValue];
  v32 = v31;

  v33 = [v5 objectForKeyedSubscript:@"MouthRight"];
  [v33 floatValue];
  v35 = v34;

  v36 = [v5 objectForKeyedSubscript:@"MouthLeft"];
  [v36 floatValue];
  v38 = v37;

  v39 = [v5 objectForKeyedSubscript:@"MouthPucker"];

  [v39 floatValue];
  v41 = v40;

  retstr->var0 = v48;
  retstr->var1 = v47;
  retstr->var2 = v46;
  retstr->var3 = v45;
  retstr->var4 = v44;
  retstr->var5 = v43;
  retstr->var6 = v20;
  retstr->var7 = v23;
  retstr->var8 = v26;
  retstr->var9 = v29;
  retstr->var10 = v32;
  retstr->var11 = v35;
  retstr->var12 = v38;
  retstr->var13 = v41;
  return result;
}

+ (id)processExclaveDetectedExpressions:(id *)expressions previousExpressions:(id)previousExpressions expressionConfiguration:(id)configuration startExpressionsOutSet:(id *)set endExpressionsOutSet:(id *)outSet
{
  v11 = MEMORY[0x1E695DF90];
  configurationCopy = configuration;
  previousExpressionsCopy = previousExpressions;
  dictionary = [v11 dictionary];
  v15 = objc_opt_class();
  v16 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v16;
  var8 = expressions->var8;
  v17 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v17;
  v18 = [v15 _expressionIsActive:4 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
  [dictionary setObject:v19 forKey:&unk_1F4066738];

  v20 = objc_opt_class();
  v21 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v21;
  var8 = expressions->var8;
  v22 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v22;
  v23 = [v20 _expressionIsActive:3 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  [dictionary setObject:v24 forKey:&unk_1F4066708];

  v25 = objc_opt_class();
  v26 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v26;
  var8 = expressions->var8;
  v27 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v27;
  v28 = [v25 _expressionIsActive:2 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:v28];
  [dictionary setObject:v29 forKey:&unk_1F4066720];

  v30 = objc_opt_class();
  v31 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v31;
  var8 = expressions->var8;
  v32 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v32;
  v33 = [v30 _expressionIsActive:1 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:v33];
  [dictionary setObject:v34 forKey:&unk_1F4066750];

  v35 = objc_opt_class();
  v36 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v36;
  var8 = expressions->var8;
  v37 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v37;
  v38 = [v35 _expressionIsActive:5 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:v38];
  [dictionary setObject:v39 forKey:&unk_1F4066768];

  v40 = objc_opt_class();
  v41 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v41;
  var8 = expressions->var8;
  v42 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v42;
  v43 = [v40 _expressionIsActive:6 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v44 = [MEMORY[0x1E696AD98] numberWithBool:v43];
  [dictionary setObject:v44 forKey:&unk_1F4066780];

  v45 = objc_opt_class();
  v46 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v46;
  var8 = expressions->var8;
  v47 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v47;
  v48 = [v45 _expressionIsActive:7 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v49 = [MEMORY[0x1E696AD98] numberWithBool:v48];
  [dictionary setObject:v49 forKey:&unk_1F4066798];

  v50 = objc_opt_class();
  v51 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v51;
  var8 = expressions->var8;
  v52 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v52;
  v53 = [v50 _expressionIsActive:8 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:v53];
  [dictionary setObject:v54 forKey:&unk_1F40667B0];

  v55 = objc_opt_class();
  v56 = *&expressions->var6;
  v64 = *&expressions->var4;
  v65 = v56;
  var8 = expressions->var8;
  v57 = *&expressions->var2;
  v62 = *&expressions->var0;
  v63 = v57;
  v58 = [v55 _expressionIsActive:9 usingExclaveOutput:&v62 expressionConfiguration:configurationCopy];

  v59 = [MEMORY[0x1E696AD98] numberWithBool:v58];
  [dictionary setObject:v59 forKey:&unk_1F40667C8];

  v60 = [objc_opt_class() _populateExpressionArraysForProcessedExpressions:dictionary previousExpressions:previousExpressionsCopy startExpressionsOutSet:set endExpressionsOutSet:outSet];

  return v60;
}

+ (BOOL)_expressionIsActive:(unint64_t)active usingExclaveOutput:(id *)output expressionConfiguration:(id)configuration
{
  v7 = [configuration sensitivityForFacialExpression:?];
  v8 = objc_opt_class();
  v9 = *&output->var6;
  v15[2] = *&output->var4;
  v15[3] = v9;
  var8 = output->var8;
  v10 = *&output->var2;
  v15[0] = *&output->var0;
  v15[1] = v10;
  v11 = [v8 _activationForFacialExpression:active usingExclaveExpressions:v15];
  v12 = v11 > 1;
  v13 = v11 != 0;
  if (v7 != 1)
  {
    v13 = 0;
  }

  if (v7 != 2)
  {
    v12 = v13;
  }

  if (v7 == 3)
  {
    return v11 > 2;
  }

  else
  {
    return v12;
  }
}

+ (unint64_t)_activationForFacialExpression:(unint64_t)expression usingExclaveExpressions:(id *)expressions
{
  result = 0;
  if (expression <= 4)
  {
    if (expression > 2)
    {
      if (expression == 3)
      {
        expressions = (expressions + 16);
      }

      else
      {
        expressions = (expressions + 24);
      }
    }

    else if (expression != 1)
    {
      if (expression != 2)
      {
        return result;
      }

      expressions = (expressions + 8);
    }
  }

  else if (expression <= 6)
  {
    if (expression == 5)
    {
      expressions = (expressions + 32);
    }

    else
    {
      expressions = (expressions + 40);
    }
  }

  else
  {
    switch(expression)
    {
      case 7uLL:
        expressions = (expressions + 48);
        break;
      case 8uLL:
        expressions = (expressions + 64);
        break;
      case 9uLL:
        expressions = (expressions + 56);
        break;
      default:
        return result;
    }
  }

  return expressions->var0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _facialExpressionToSensitivity = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];

  if (_facialExpressionToSensitivity)
  {
    _facialExpressionToSensitivity2 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
    v6 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    [coderCopy encodeObject:_facialExpressionToSensitivity2 forKey:v6];
  }
}

- (AXSSMotionTrackingExpressionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AXSSMotionTrackingExpressionConfiguration *)self init];
  if (v5)
  {
    _defaultSensitivitiesForAllFacialExpressions = [objc_opt_class() _defaultSensitivitiesForAllFacialExpressions];
    v7 = [_defaultSensitivitiesForAllFacialExpressions mutableCopy];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

    if (v12)
    {
      v13 = v12;

      v7 = v13;
    }

    v14 = [v7 mutableCopy];
    facialExpressionToSensitivity = v5->__facialExpressionToSensitivity;
    v5->__facialExpressionToSensitivity = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  plistDictionary = [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
  v4 = [[AXSSMotionTrackingExpressionConfiguration alloc] initWithPlistDictionary:plistDictionary];

  return v4;
}

- (BOOL)isEqualToMotionTrackingExpressionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  plistDictionary = [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
  plistDictionary2 = [configurationCopy plistDictionary];

  LOBYTE(configurationCopy) = [plistDictionary isEqual:plistDictionary2];
  return configurationCopy;
}

- (unint64_t)hash
{
  plistDictionary = [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
  v3 = [plistDictionary hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSMotionTrackingExpressionConfiguration *)self isEqualToMotionTrackingExpressionConfiguration:equalCopy];

  return v5;
}

+ (id)_defaultSensitivitiesForAllFacialExpressions
{
  if (_defaultSensitivitiesForAllFacialExpressions_onceToken != -1)
  {
    +[AXSSMotionTrackingExpressionConfiguration _defaultSensitivitiesForAllFacialExpressions];
  }

  v3 = _defaultSensitivitiesForAllFacialExpressions_facialExpressionToSensitivity;

  return v3;
}

void __89__AXSSMotionTrackingExpressionConfiguration__defaultSensitivitiesForAllFacialExpressions__block_invoke()
{
  v9[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DF90];
  v8[0] = &unk_1F4066750;
  v8[1] = &unk_1F4066720;
  v9[0] = &unk_1F4066720;
  v9[1] = &unk_1F4066720;
  v8[2] = &unk_1F4066708;
  v1 = MEMORY[0x1E696AD98];
  if (_AXSMossdeepEnabled())
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [v1 numberWithUnsignedInteger:v2];
  v9[2] = v3;
  v9[3] = &unk_1F4066720;
  v8[3] = &unk_1F4066738;
  v8[4] = &unk_1F4066768;
  v9[4] = &unk_1F4066720;
  v9[5] = &unk_1F4066720;
  v8[5] = &unk_1F4066780;
  v8[6] = &unk_1F4066798;
  v9[6] = &unk_1F4066720;
  v9[7] = &unk_1F4066720;
  v8[7] = &unk_1F40667C8;
  v8[8] = &unk_1F40667B0;
  v9[8] = &unk_1F4066720;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:9];
  v5 = [v0 dictionaryWithDictionary:v4];
  v6 = _defaultSensitivitiesForAllFacialExpressions_facialExpressionToSensitivity;
  _defaultSensitivitiesForAllFacialExpressions_facialExpressionToSensitivity = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_safelySetSensitivity:(unint64_t)sensitivity forFacialExpression:(unint64_t)expression inDictionary:(id)dictionary
{
  if (sensitivity - 1 <= 2 && expression - 1 <= 8)
  {
    v9 = MEMORY[0x1E696AD98];
    dictionaryCopy = dictionary;
    v12 = [v9 numberWithUnsignedInteger:sensitivity];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:expression];
    [dictionaryCopy setObject:v12 forKeyedSubscript:v11];
  }
}

+ (float)_minConfidenceExpressionStarted:(unint64_t)started usingExpressionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _facialExpressionToSensitivityToValueMapping = [objc_opt_class() _facialExpressionToSensitivityToValueMapping];
  v7 = [configurationCopy sensitivityForFacialExpression:started];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:started];
  v9 = [_facialExpressionToSensitivityToValueMapping objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v11 = [v9 objectForKeyedSubscript:v10];
  [v11 floatValue];
  v13 = v12;

  return v13;
}

+ (id)_facialExpressionToSensitivityToValueMapping
{
  if (_facialExpressionToSensitivityToValueMapping_onceToken != -1)
  {
    +[AXSSMotionTrackingExpressionConfiguration _facialExpressionToSensitivityToValueMapping];
  }

  v3 = _facialExpressionToSensitivityToValueMapping_facialExpressionToSensitivityToValueMapping;

  return v3;
}

void __89__AXSSMotionTrackingExpressionConfiguration__facialExpressionToSensitivityToValueMapping__block_invoke()
{
  v31[9] = *MEMORY[0x1E69E9840];
  v30[0] = &unk_1F4066750;
  v28[0] = &unk_1F4066750;
  v28[1] = &unk_1F4066720;
  v29[0] = &unk_1F4067058;
  v29[1] = &unk_1F4067068;
  v28[2] = &unk_1F4066708;
  v29[2] = &unk_1F4067078;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v11;
  v30[1] = &unk_1F4066720;
  v26[0] = &unk_1F4066750;
  v26[1] = &unk_1F4066720;
  v27[0] = &unk_1F4067088;
  v27[1] = &unk_1F4067068;
  v26[2] = &unk_1F4066708;
  v27[2] = &unk_1F4067098;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v31[1] = v10;
  v30[2] = &unk_1F4066708;
  v24[0] = &unk_1F4066750;
  v24[1] = &unk_1F4066720;
  v25[0] = &unk_1F40670A8;
  v25[1] = &unk_1F40670B8;
  v24[2] = &unk_1F4066708;
  v25[2] = &unk_1F40670C8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v31[2] = v9;
  v30[3] = &unk_1F4066738;
  v22[0] = &unk_1F4066750;
  v22[1] = &unk_1F4066720;
  v23[0] = &unk_1F4067058;
  v23[1] = &unk_1F40670C8;
  v22[2] = &unk_1F4066708;
  v23[2] = &unk_1F40670D8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v31[3] = v8;
  v30[4] = &unk_1F4066768;
  v20[0] = &unk_1F4066750;
  v20[1] = &unk_1F4066720;
  v21[0] = &unk_1F4067068;
  v21[1] = &unk_1F40670C8;
  v20[2] = &unk_1F4066708;
  v21[2] = &unk_1F40670E8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v31[4] = v7;
  v30[5] = &unk_1F4066780;
  v18[0] = &unk_1F4066750;
  v18[1] = &unk_1F4066720;
  v19[0] = &unk_1F40670F8;
  v19[1] = &unk_1F40670B8;
  v18[2] = &unk_1F4066708;
  v19[2] = &unk_1F4067098;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v31[5] = v0;
  v30[6] = &unk_1F4066798;
  v16[0] = &unk_1F4066750;
  v16[1] = &unk_1F4066720;
  v17[0] = &unk_1F4067108;
  v17[1] = &unk_1F4067068;
  v16[2] = &unk_1F4066708;
  v17[2] = &unk_1F4067118;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v31[6] = v1;
  v30[7] = &unk_1F40667C8;
  v14[0] = &unk_1F4066750;
  v14[1] = &unk_1F4066720;
  v15[0] = &unk_1F4067128;
  v15[1] = &unk_1F4067068;
  v14[2] = &unk_1F4066708;
  v15[2] = &unk_1F4067098;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v31[7] = v2;
  v30[8] = &unk_1F40667B0;
  v12[0] = &unk_1F4066750;
  v12[1] = &unk_1F4066720;
  v13[0] = &unk_1F4067128;
  v13[1] = &unk_1F4067068;
  v12[2] = &unk_1F4066708;
  v13[2] = &unk_1F4067098;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v31[8] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:9];
  v5 = _facialExpressionToSensitivityToValueMapping_facialExpressionToSensitivityToValueMapping;
  _facialExpressionToSensitivityToValueMapping_facialExpressionToSensitivityToValueMapping = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_jawOpenStartingWithValue:(float)value mouthClose:(float)close expressionConfiguration:(id)configuration
{
  v7 = [configuration sensitivityForFacialExpression:2];
  v8 = value - close;
  if ((v7 - 1) <= 1)
  {
    return v8 >= 0.05;
  }

  return v7 == 3 && v8 >= 0.1;
}

void __96__AXSSMotionTrackingExpressionConfiguration_Exclave__facialExpressionToActivationToValueMapping__block_invoke()
{
  v31[9] = *MEMORY[0x1E69E9840];
  v30[0] = &unk_1F4066828;
  v28[0] = &unk_1F40667E0;
  v28[1] = &unk_1F40667F8;
  v29[0] = &unk_1F4067138;
  v29[1] = &unk_1F4067148;
  v28[2] = &unk_1F4066810;
  v29[2] = &unk_1F4067158;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v11;
  v30[1] = &unk_1F40667E0;
  v26[0] = &unk_1F40667E0;
  v26[1] = &unk_1F40667F8;
  v27[0] = &unk_1F4067168;
  v27[1] = &unk_1F4067148;
  v26[2] = &unk_1F4066810;
  v27[2] = &unk_1F4067178;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v31[1] = v10;
  v30[2] = &unk_1F40667F8;
  v24[0] = &unk_1F40667E0;
  v24[1] = &unk_1F40667F8;
  v25[0] = &unk_1F4067188;
  v25[1] = &unk_1F4067198;
  v24[2] = &unk_1F4066810;
  v25[2] = &unk_1F40671A8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v31[2] = v9;
  v30[3] = &unk_1F4066810;
  v22[0] = &unk_1F40667E0;
  v22[1] = &unk_1F40667F8;
  v23[0] = &unk_1F4067138;
  v23[1] = &unk_1F40671A8;
  v22[2] = &unk_1F4066810;
  v23[2] = &unk_1F40671B8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v31[3] = v8;
  v30[4] = &unk_1F4066840;
  v20[0] = &unk_1F40667E0;
  v20[1] = &unk_1F40667F8;
  v21[0] = &unk_1F4067148;
  v21[1] = &unk_1F40671A8;
  v20[2] = &unk_1F4066810;
  v21[2] = &unk_1F40671C8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v31[4] = v7;
  v30[5] = &unk_1F4066858;
  v18[0] = &unk_1F40667E0;
  v18[1] = &unk_1F40667F8;
  v19[0] = &unk_1F40671D8;
  v19[1] = &unk_1F4067198;
  v18[2] = &unk_1F4066810;
  v19[2] = &unk_1F4067178;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v31[5] = v0;
  v30[6] = &unk_1F4066870;
  v16[0] = &unk_1F40667E0;
  v16[1] = &unk_1F40667F8;
  v17[0] = &unk_1F40671E8;
  v17[1] = &unk_1F4067148;
  v16[2] = &unk_1F4066810;
  v17[2] = &unk_1F40671F8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v31[6] = v1;
  v30[7] = &unk_1F4066888;
  v14[0] = &unk_1F40667E0;
  v14[1] = &unk_1F40667F8;
  v15[0] = &unk_1F4067208;
  v15[1] = &unk_1F4067148;
  v14[2] = &unk_1F4066810;
  v15[2] = &unk_1F4067178;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v31[7] = v2;
  v30[8] = &unk_1F40668A0;
  v12[0] = &unk_1F40667E0;
  v12[1] = &unk_1F40667F8;
  v13[0] = &unk_1F4067208;
  v13[1] = &unk_1F4067148;
  v12[2] = &unk_1F4066810;
  v13[2] = &unk_1F4067178;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v31[8] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:9];
  v5 = _facialExpressionToActivationToValueMapping_facialExpressionToSensitivityToValueMapping;
  _facialExpressionToActivationToValueMapping_facialExpressionToSensitivityToValueMapping = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (void)plistDictionary
{
  v11 = *MEMORY[0x1E69E9840];
  _facialExpressionToSensitivity = [self _facialExpressionToSensitivity];
  v7 = 138412546;
  v8 = _facialExpressionToSensitivity;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1C0E8A000, a3, OS_LOG_TYPE_ERROR, "ERROR: Couldn't encode object %@, encountered error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end