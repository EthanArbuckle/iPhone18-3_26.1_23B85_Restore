@interface AXSSMotionTrackingExpressionConfiguration
+ ($569BC8A4F588CCDEF576D5B50041512B)convertIncomingExpressionsToExclaveBlendshapesOutput:(SEL)a3;
+ (BOOL)_expressionIsActive:(unint64_t)a3 usingExclaveOutput:(id *)a4 expressionConfiguration:(id)a5;
+ (BOOL)_jawOpenStartingWithValue:(float)a3 mouthClose:(float)a4 expressionConfiguration:(id)a5;
+ (float)_minConfidenceExpressionStarted:(unint64_t)a3 usingExpressionConfiguration:(id)a4;
+ (id)_defaultSensitivitiesForAllFacialExpressions;
+ (id)_facialExpressionToSensitivityToValueMapping;
+ (id)_populateExpressionArraysForProcessedExpressions:(id)a3 previousExpressions:(id)a4 startExpressionsOutSet:(id *)a5 endExpressionsOutSet:(id *)a6;
+ (id)defaultExpressionConfiguration;
+ (id)processExclaveDetectedExpressions:(id *)a3 previousExpressions:(id)a4 expressionConfiguration:(id)a5 startExpressionsOutSet:(id *)a6 endExpressionsOutSet:(id *)a7;
+ (id)processIncomingExpressions:(id)a3 previousExpressions:(id)a4 expressionConfiguration:(id)a5 startExpressionsOutSet:(id *)a6 endExpressionsOutSet:(id *)a7;
+ (unint64_t)_activationForFacialExpression:(unint64_t)a3 usingExclaveExpressions:(id *)a4;
- (AXSSMotionTrackingExpressionConfiguration)init;
- (AXSSMotionTrackingExpressionConfiguration)initWithCoder:(id)a3;
- (AXSSMotionTrackingExpressionConfiguration)initWithPlistDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMotionTrackingExpressionConfiguration:(id)a3;
- (NSDictionary)plistDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)sensitivityForFacialExpression:(unint64_t)a3;
- (void)_safelySetSensitivity:(unint64_t)a3 forFacialExpression:(unint64_t)a4 inDictionary:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)plistDictionary;
- (void)setSensitivity:(unint64_t)a3 forFacialExpression:(unint64_t)a4;
@end

@implementation AXSSMotionTrackingExpressionConfiguration

- (AXSSMotionTrackingExpressionConfiguration)init
{
  v7.receiver = self;
  v7.super_class = AXSSMotionTrackingExpressionConfiguration;
  v2 = [(AXSSMotionTrackingExpressionConfiguration *)&v7 init];
  if (v2)
  {
    v3 = [objc_opt_class() _defaultSensitivitiesForAllFacialExpressions];
    v4 = [v3 mutableCopy];
    facialExpressionToSensitivity = v2->__facialExpressionToSensitivity;
    v2->__facialExpressionToSensitivity = v4;
  }

  return v2;
}

+ (id)defaultExpressionConfiguration
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (AXSSMotionTrackingExpressionConfiguration)initWithPlistDictionary:(id)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v5 = [objc_opt_class() _defaultSensitivitiesForAllFacialExpressions];
  v28 = [v5 mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    v7 = [v4 objectForKeyedSubscript:v6];

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
        v20 = self;
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
  v4 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACC8];
    v6 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
    v7 = [v6 copy];
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

- (unint64_t)sensitivityForFacialExpression:(unint64_t)a3
{
  v5 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 unsignedIntegerValue];

  return v11;
}

- (void)setSensitivity:(unint64_t)a3 forFacialExpression:(unint64_t)a4
{
  v7 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
  [(AXSSMotionTrackingExpressionConfiguration *)self _safelySetSensitivity:a3 forFacialExpression:a4 inDictionary:v7];
}

+ (id)processIncomingExpressions:(id)a3 previousExpressions:(id)a4 expressionConfiguration:(id)a5 startExpressionsOutSet:(id *)a6 endExpressionsOutSet:(id *)a7
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v11 objectForKeyedSubscript:@"TongueOut"];
  [v12 floatValue];
  v122 = v13;

  v14 = [v11 objectForKeyedSubscript:@"MouthSmileLeft"];
  [v14 floatValue];
  v125 = v15;

  v16 = [v11 objectForKeyedSubscript:@"MouthSmileRight"];
  [v16 floatValue];
  v124 = v17;

  v18 = [v11 objectForKeyedSubscript:@"JawOpen"];
  [v18 floatValue];
  v20 = v19;

  v21 = [v11 objectForKeyedSubscript:@"MouthClose"];
  [v21 floatValue];
  v106 = v22;

  v23 = [v11 objectForKeyedSubscript:@"BrowOuterUpLeft"];
  [v23 floatValue];
  v119 = v24;

  v25 = [v11 objectForKeyedSubscript:@"BrowOuterUpRight"];
  [v25 floatValue];
  v111 = v26;

  v27 = [v11 objectForKeyedSubscript:@"EyeBlinkRight"];
  [v27 floatValue];
  v117 = v28;

  v29 = [v11 objectForKeyedSubscript:@"EyeBlinkLeft"];
  [v29 floatValue];
  v116 = v30;

  v31 = [v11 objectForKeyedSubscript:@"NoseSneerRight"];
  [v31 floatValue];
  v114 = v32;

  v33 = [v11 objectForKeyedSubscript:@"NoseSneerLeft"];
  [v33 floatValue];
  v112 = v34;

  v35 = [v11 objectForKeyedSubscript:@"MouthRight"];
  [v35 floatValue];
  v120 = v36;

  v37 = [v11 objectForKeyedSubscript:@"MouthLeft"];
  [v37 floatValue];
  v121 = v38;

  v39 = [v11 objectForKeyedSubscript:@"MouthPucker"];

  [v39 floatValue];
  v118 = v40;

  [objc_opt_class() _minConfidenceExpressionStarted:4 usingExpressionConfiguration:v9];
  v42 = v41;
  [objc_opt_class() _minConfidenceExpressionStarted:3 usingExpressionConfiguration:v9];
  v109 = v43;
  [objc_opt_class() _minConfidenceExpressionStarted:2 usingExpressionConfiguration:v9];
  v45 = v44;
  [objc_opt_class() _minConfidenceExpressionStarted:1 usingExpressionConfiguration:v9];
  v47 = v46;
  [objc_opt_class() _minConfidenceExpressionStarted:5 usingExpressionConfiguration:v9];
  v49 = v48;
  [objc_opt_class() _minConfidenceExpressionStarted:6 usingExpressionConfiguration:v9];
  v51 = v50;
  [objc_opt_class() _minConfidenceExpressionStarted:7 usingExpressionConfiguration:v9];
  v110 = v52;
  [objc_opt_class() _minConfidenceExpressionStarted:8 usingExpressionConfiguration:v9];
  v54 = v53;
  [objc_opt_class() _minConfidenceExpressionStarted:9 usingExpressionConfiguration:v9];
  v56 = v55;
  v113 = v9;
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
    v107 = [v57 _jawOpenStartingWithValue:v9 mouthClose:v58 expressionConfiguration:v59];
  }

  v60 = [v10 containsObject:&unk_1F4066708];
  v61 = [v10 containsObject:&unk_1F4066720];
  v62 = [v10 containsObject:&unk_1F4066738];
  v63 = [v10 containsObject:&unk_1F4066750];
  v64 = [v10 containsObject:&unk_1F4066768];
  v65 = [v10 containsObject:&unk_1F4066780];
  v66 = [v10 containsObject:&unk_1F4066798];
  v67 = [v10 containsObject:&unk_1F40667B0];
  v68 = [v10 containsObject:&unk_1F40667C8];
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
  v87 = [MEMORY[0x1E695DF90] dictionary];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v76];
  [v87 setObject:v88 forKey:&unk_1F4066738];

  v89 = [MEMORY[0x1E696AD98] numberWithInt:v86 | v72];
  [v87 setObject:v89 forKey:&unk_1F4066708];

  v90 = [MEMORY[0x1E696AD98] numberWithInt:v77 | v78];
  [v87 setObject:v90 forKey:&unk_1F4066720];

  v91 = [MEMORY[0x1E696AD98] numberWithInt:v84 | v103];
  [v87 setObject:v91 forKey:&unk_1F4066750];

  v92 = [MEMORY[0x1E696AD98] numberWithInt:v82 | v104];
  [v87 setObject:v92 forKey:&unk_1F4066768];

  v93 = [MEMORY[0x1E696AD98] numberWithInt:v115 | v105];
  [v87 setObject:v93 forKey:&unk_1F4066780];

  if (v118 > v110)
  {
    v94 = 1;
  }

  else
  {
    v94 = v66 & (v118 > (v110 * 0.6));
  }

  v95 = [MEMORY[0x1E696AD98] numberWithInt:v94];
  [v87 setObject:v95 forKey:&unk_1F4066798];

  if (v120 > v54)
  {
    v96 = 1;
  }

  else
  {
    v96 = v108;
  }

  v97 = [MEMORY[0x1E696AD98] numberWithInt:v96];
  [v87 setObject:v97 forKey:&unk_1F40667B0];

  if (v121 > v56)
  {
    v98 = 1;
  }

  else
  {
    v98 = v123;
  }

  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  [v87 setObject:v99 forKey:&unk_1F40667C8];

  v100 = [objc_opt_class() _populateExpressionArraysForProcessedExpressions:v87 previousExpressions:v10 startExpressionsOutSet:a6 endExpressionsOutSet:a7];

  return v100;
}

+ (id)_populateExpressionArraysForProcessedExpressions:(id)a3 previousExpressions:(id)a4 startExpressionsOutSet:(id *)a5 endExpressionsOutSet:(id *)a6
{
  v7 = MEMORY[0x1E695DFA8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 set];
  v11 = [MEMORY[0x1E695DFA8] set];
  v67 = [MEMORY[0x1E695DFA8] set];
  v68 = v11;
  if (_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__onceToken != -1)
  {
    +[AXSSMotionTrackingExpressionConfiguration _populateExpressionArraysForProcessedExpressions:previousExpressions:startExpressionsOutSet:endExpressionsOutSet:];
  }

  v12 = [v9 objectForKey:&unk_1F4066738];
  v62 = [v12 BOOLValue];

  v13 = [v9 objectForKey:&unk_1F4066708];
  v57 = [v13 BOOLValue];

  v14 = [v9 objectForKey:&unk_1F4066720];
  v58 = [v14 BOOLValue];

  v15 = [v9 objectForKey:&unk_1F4066750];
  v59 = [v15 BOOLValue];

  v16 = [v9 objectForKey:&unk_1F4066768];
  v60 = [v16 BOOLValue];

  v17 = [v9 objectForKey:&unk_1F4066780];
  v65 = [v17 BOOLValue];

  v18 = [v9 objectForKey:&unk_1F4066798];
  LODWORD(v55) = [v18 BOOLValue];

  v19 = [v9 objectForKey:&unk_1F40667B0];
  v66 = [v19 BOOLValue];

  v20 = [v9 objectForKey:&unk_1F40667C8];

  v64 = [v20 BOOLValue];
  v21 = [v8 containsObject:&unk_1F4066708];
  v22 = [v8 containsObject:&unk_1F4066720];
  v23 = [v8 containsObject:&unk_1F4066738];
  v24 = [v8 containsObject:&unk_1F4066750];
  HIDWORD(v55) = [v8 containsObject:&unk_1F4066768];
  v25 = [v8 containsObject:&unk_1F4066780];
  v26 = [v8 containsObject:&unk_1F4066798];
  v63 = [v8 containsObject:&unk_1F40667B0];
  v61 = [v8 containsObject:&unk_1F40667C8];

  if (!v57)
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
  if (!v58)
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
  if (!v62)
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
  if (!v59)
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
  if (v60)
  {
    [v10 addObject:&unk_1F4066768];
    if ((v55 & 0x100000000) == 0)
    {
      v33 = [MEMORY[0x1E695DF00] date];
      v34 = _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate;
      _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate = v33;
    }
  }

  else if (HIDWORD(v55))
  {
    [MEMORY[0x1E695DF00] date];
    v36 = v35 = v26;
    [v36 timeIntervalSinceDate:_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate];
    v38 = v37;

    v39 = [MEMORY[0x1E695DF00] date];
    [v39 timeIntervalSinceDate:_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_blinkEyesStartDate];
    v41 = v40;

    v26 = v35;
    if (v38 >= 0.3 && v41 <= 2.0)
    {
      [v27 addObject:&unk_1F4066768];
      v26 = v35;
      [v28 addObject:&unk_1F4066768];
    }
  }

  if (!v65)
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
  if (!v64)
  {
    v43 = v28;
    v45 = a5;
    v44 = a6;
    if (!v61)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  [v10 addObject:&unk_1F40667C8];
  v43 = v27;
  v45 = a5;
  v44 = a6;
  if ((v61 & 1) == 0)
  {
LABEL_39:
    [v43 addObject:{&unk_1F40667C8, v55}];
  }

LABEL_40:
  if (v66)
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
  v48 = [MEMORY[0x1E695DF00] date];
  v49 = v26;
  v50 = v48;
  v51 = _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate;
  if (v49)
  {
    [v48 timeIntervalSinceDate:_populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate];
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
    _populateExpressionArraysForProcessedExpressions_previousExpressions_startExpressionsOutSet_endExpressionsOutSet__s_puckerCenterStartDate = v48;
  }

LABEL_55:
  if (v45)
  {
    *v45 = [v27 copy];
  }

  if (v44)
  {
    *v44 = [v28 copy];
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

+ ($569BC8A4F588CCDEF576D5B50041512B)convertIncomingExpressionsToExclaveBlendshapesOutput:(SEL)a3
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

+ (id)processExclaveDetectedExpressions:(id *)a3 previousExpressions:(id)a4 expressionConfiguration:(id)a5 startExpressionsOutSet:(id *)a6 endExpressionsOutSet:(id *)a7
{
  v11 = MEMORY[0x1E695DF90];
  v12 = a5;
  v13 = a4;
  v14 = [v11 dictionary];
  v15 = objc_opt_class();
  v16 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v16;
  var8 = a3->var8;
  v17 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v17;
  v18 = [v15 _expressionIsActive:4 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
  [v14 setObject:v19 forKey:&unk_1F4066738];

  v20 = objc_opt_class();
  v21 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v21;
  var8 = a3->var8;
  v22 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v22;
  v23 = [v20 _expressionIsActive:3 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  [v14 setObject:v24 forKey:&unk_1F4066708];

  v25 = objc_opt_class();
  v26 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v26;
  var8 = a3->var8;
  v27 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v27;
  v28 = [v25 _expressionIsActive:2 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:v28];
  [v14 setObject:v29 forKey:&unk_1F4066720];

  v30 = objc_opt_class();
  v31 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v31;
  var8 = a3->var8;
  v32 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v32;
  v33 = [v30 _expressionIsActive:1 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:v33];
  [v14 setObject:v34 forKey:&unk_1F4066750];

  v35 = objc_opt_class();
  v36 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v36;
  var8 = a3->var8;
  v37 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v37;
  v38 = [v35 _expressionIsActive:5 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:v38];
  [v14 setObject:v39 forKey:&unk_1F4066768];

  v40 = objc_opt_class();
  v41 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v41;
  var8 = a3->var8;
  v42 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v42;
  v43 = [v40 _expressionIsActive:6 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v44 = [MEMORY[0x1E696AD98] numberWithBool:v43];
  [v14 setObject:v44 forKey:&unk_1F4066780];

  v45 = objc_opt_class();
  v46 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v46;
  var8 = a3->var8;
  v47 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v47;
  v48 = [v45 _expressionIsActive:7 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v49 = [MEMORY[0x1E696AD98] numberWithBool:v48];
  [v14 setObject:v49 forKey:&unk_1F4066798];

  v50 = objc_opt_class();
  v51 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v51;
  var8 = a3->var8;
  v52 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v52;
  v53 = [v50 _expressionIsActive:8 usingExclaveOutput:&v62 expressionConfiguration:v12];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:v53];
  [v14 setObject:v54 forKey:&unk_1F40667B0];

  v55 = objc_opt_class();
  v56 = *&a3->var6;
  v64 = *&a3->var4;
  v65 = v56;
  var8 = a3->var8;
  v57 = *&a3->var2;
  v62 = *&a3->var0;
  v63 = v57;
  v58 = [v55 _expressionIsActive:9 usingExclaveOutput:&v62 expressionConfiguration:v12];

  v59 = [MEMORY[0x1E696AD98] numberWithBool:v58];
  [v14 setObject:v59 forKey:&unk_1F40667C8];

  v60 = [objc_opt_class() _populateExpressionArraysForProcessedExpressions:v14 previousExpressions:v13 startExpressionsOutSet:a6 endExpressionsOutSet:a7];

  return v60;
}

+ (BOOL)_expressionIsActive:(unint64_t)a3 usingExclaveOutput:(id *)a4 expressionConfiguration:(id)a5
{
  v7 = [a5 sensitivityForFacialExpression:?];
  v8 = objc_opt_class();
  v9 = *&a4->var6;
  v15[2] = *&a4->var4;
  v15[3] = v9;
  var8 = a4->var8;
  v10 = *&a4->var2;
  v15[0] = *&a4->var0;
  v15[1] = v10;
  v11 = [v8 _activationForFacialExpression:a3 usingExclaveExpressions:v15];
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

+ (unint64_t)_activationForFacialExpression:(unint64_t)a3 usingExclaveExpressions:(id *)a4
{
  result = 0;
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        a4 = (a4 + 16);
      }

      else
      {
        a4 = (a4 + 24);
      }
    }

    else if (a3 != 1)
    {
      if (a3 != 2)
      {
        return result;
      }

      a4 = (a4 + 8);
    }
  }

  else if (a3 <= 6)
  {
    if (a3 == 5)
    {
      a4 = (a4 + 32);
    }

    else
    {
      a4 = (a4 + 40);
    }
  }

  else
  {
    switch(a3)
    {
      case 7uLL:
        a4 = (a4 + 48);
        break;
      case 8uLL:
        a4 = (a4 + 64);
        break;
      case 9uLL:
        a4 = (a4 + 56);
        break;
      default:
        return result;
    }
  }

  return a4->var0;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];

  if (v4)
  {
    v5 = [(AXSSMotionTrackingExpressionConfiguration *)self _facialExpressionToSensitivity];
    v6 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    [v7 encodeObject:v5 forKey:v6];
  }
}

- (AXSSMotionTrackingExpressionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSSMotionTrackingExpressionConfiguration *)self init];
  if (v5)
  {
    v6 = [objc_opt_class() _defaultSensitivitiesForAllFacialExpressions];
    v7 = [v6 mutableCopy];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel__facialExpressionToSensitivity);
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
  v4 = [[AXSSMotionTrackingExpressionConfiguration alloc] initWithPlistDictionary:v3];

  return v4;
}

- (BOOL)isEqualToMotionTrackingExpressionConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
  v6 = [v4 plistDictionary];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(AXSSMotionTrackingExpressionConfiguration *)self plistDictionary];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSMotionTrackingExpressionConfiguration *)self isEqualToMotionTrackingExpressionConfiguration:v4];

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

- (void)_safelySetSensitivity:(unint64_t)a3 forFacialExpression:(unint64_t)a4 inDictionary:(id)a5
{
  if (a3 - 1 <= 2 && a4 - 1 <= 8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = a5;
    v12 = [v9 numberWithUnsignedInteger:a3];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v10 setObject:v12 forKeyedSubscript:v11];
  }
}

+ (float)_minConfidenceExpressionStarted:(unint64_t)a3 usingExpressionConfiguration:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() _facialExpressionToSensitivityToValueMapping];
  v7 = [v5 sensitivityForFacialExpression:a3];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [v6 objectForKeyedSubscript:v8];
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

+ (BOOL)_jawOpenStartingWithValue:(float)a3 mouthClose:(float)a4 expressionConfiguration:(id)a5
{
  v7 = [a5 sensitivityForFacialExpression:2];
  v8 = a3 - a4;
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
  v5 = [a1 _facialExpressionToSensitivity];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1C0E8A000, a3, OS_LOG_TYPE_ERROR, "ERROR: Couldn't encode object %@, encountered error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end