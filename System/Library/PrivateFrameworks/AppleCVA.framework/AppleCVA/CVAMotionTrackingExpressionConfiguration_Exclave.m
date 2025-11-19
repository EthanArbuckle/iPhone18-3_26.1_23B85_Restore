@interface CVAMotionTrackingExpressionConfiguration_Exclave
+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)_emptyAccessibilityExpressions;
+ (BOOL)_jawOpenStartingWithValue:(float)a3 mouthClose:(float)a4 forActivation:(unint64_t)a5;
+ (float)_minConfidenceExpressionStarted:(unint64_t)a3 forActivation:(unint64_t)a4;
+ (id)_facialExpressionToActivationToValueMapping;
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)previousExpressions;
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)processIncomingExpressions:(SEL)a3;
- (void)setPreviousExpressions:(id *)a3;
@end

@implementation CVAMotionTrackingExpressionConfiguration_Exclave

+ (BOOL)_jawOpenStartingWithValue:(float)a3 mouthClose:(float)a4 forActivation:(unint64_t)a5
{
  v5 = a3 - a4;
  v7 = v5 >= 0.1 && a5 == 3;
  if (a5 - 1 <= 1)
  {
    return v5 >= 0.05;
  }

  else
  {
    return v7;
  }
}

+ (id)_facialExpressionToActivationToValueMapping
{
  if (qword_27E3C89B8 != -1)
  {
    dispatch_once(&qword_27E3C89B8, &unk_285227DB0);
  }

  v3 = qword_27E3C89B0;

  return v3;
}

+ (float)_minConfidenceExpressionStarted:(unint64_t)a3 forActivation:(unint64_t)a4
{
  v6 = [objc_opt_class() _facialExpressionToActivationToValueMapping];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v10 floatValue];
  v12 = v11;

  return v12;
}

+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)_emptyAccessibilityExpressions
{
  retstr->var8 = 0;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return result;
}

- (void)setPreviousExpressions:(id *)a3
{
  *&self->_previousExpressions.raiseEyebrows = *&a3->var0;
  v3 = *&a3->var2;
  v4 = *&a3->var4;
  v5 = *&a3->var6;
  self->_previousExpressions.puckerLipsRight = a3->var8;
  *&self->_previousExpressions.mouthPuckerCenter = v5;
  *&self->_previousExpressions.eyeBlink = v4;
  *&self->_previousExpressions.smile = v3;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)previousExpressions
{
  v3 = *&self->var3;
  v4 = *&self->var7;
  *&retstr->var4 = *&self->var5;
  *&retstr->var6 = v4;
  retstr->var8 = self[1].var0;
  *&retstr->var0 = *&self->var1;
  *&retstr->var2 = v3;
  return self;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)processIncomingExpressions:(SEL)a3
{
  v5 = retstr;
  v109 = *MEMORY[0x277D85DE8];
  var0 = a4->var0;
  var3 = a4->var3;
  var2 = a4->var2;
  var1 = a4->var1;
  var4 = a4->var4;
  var6 = a4->var6;
  var5 = a4->var5;
  var8 = a4->var8;
  var7 = a4->var7;
  var11 = a4->var11;
  var10 = a4->var10;
  var9 = a4->var9;
  var12 = a4->var12;
  var13 = a4->var13;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var8 = 0;
  v10 = objc_opt_class();
  if (v10)
  {
    [v10 _emptyAccessibilityExpressions];
  }

  else
  {
    v5->var8 = 0;
    *&v5->var4 = 0u;
    *&v5->var6 = 0u;
    *&v5->var0 = 0u;
    *&v5->var2 = 0u;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v74 = [&unk_28522C090 countByEnumeratingWithState:&v104 objects:v108 count:16];
  if (v74)
  {
    v68 = *v105;
    v72 = v5;
    v70 = var12;
    v71 = var11;
    v69 = var13;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v105 != v68)
        {
          objc_enumerationMutation(&unk_28522C090);
        }

        v12 = [*(*(&v104 + 1) + 8 * i) unsignedIntegerValue];
        [objc_opt_class() _minConfidenceExpressionStarted:3 forActivation:v12];
        v82 = v13;
        [objc_opt_class() _minConfidenceExpressionStarted:2 forActivation:v12];
        v15 = v14;
        [objc_opt_class() _minConfidenceExpressionStarted:1 forActivation:v12];
        v17 = v16;
        [objc_opt_class() _minConfidenceExpressionStarted:0 forActivation:v12];
        v19 = v18;
        [objc_opt_class() _minConfidenceExpressionStarted:4 forActivation:v12];
        v21 = v20;
        [objc_opt_class() _minConfidenceExpressionStarted:5 forActivation:v12];
        v23 = v22;
        [objc_opt_class() _minConfidenceExpressionStarted:6 forActivation:v12];
        v84 = v24;
        [objc_opt_class() _minConfidenceExpressionStarted:7 forActivation:v12];
        v83 = v25;
        [objc_opt_class() _minConfidenceExpressionStarted:8 forActivation:v12];
        v26 = 0;
        v81 = v27;
        v29 = var2 > v15 && var1 > v15;
        v31 = var6 > v19 && var5 > v19;
        v77 = v29;
        v78 = v31;
        v33 = var8 > v21 && var7 > v21;
        v35 = var9 > v23 && var10 > v23;
        v79 = v33;
        v80 = v35;
        if (var3 > v17)
        {
          v36 = objc_opt_class();
          *&v37 = var3;
          *&v38 = var4;
          v26 = [v36 _jawOpenStartingWithValue:v12 mouthClose:v37 forActivation:v38];
        }

        v76 = v26;
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        v75 = v100 >= v12;
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        v39 = v99 >= v12;
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        v40 = v98 >= v12;
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        [(CVAMotionTrackingExpressionConfiguration_Exclave *)self previousExpressions];
        v41 = v19 * 0.375;
        v42 = v21 * 0.95;
        v43 = v23 * 0.65;
        v45 = var2 > (v15 * 0.61538) && var1 > (v15 * 0.61538);
        v47 = var3 > (v17 * 0.5) && v102 >= v12;
        v49 = var6 > v41 && var5 > v41;
        v51 = var7 > v42 && var8 > v42;
        v53 = var9 > v43 && var10 > v43;
        v55 = v69 > (v84 * 0.6) && v97 >= v12;
        v57 = v70 > (v81 * 0.6) && v95 >= v12;
        v59 = v71 > (v83 * 0.6) && v96 >= v12;
        v60 = var0 > (v82 * 0.1) && v101 >= v12;
        v61 = v45 && v103 >= v12;
        v62 = var0 <= v82;
        if (v60)
        {
          v62 = 0;
        }

        v5 = v72;
        if ((v77 | v61))
        {
          v72->var2 = v12;
        }

        if ((v62 & v76 | v47))
        {
          v72->var1 = v12;
        }

        if (!v62)
        {
          v72->var3 = v12;
        }

        if (v78 || v49 && v75)
        {
          v72->var0 = v12;
        }

        if (v79 || v51 && v39)
        {
          v72->var4 = v12;
        }

        if (v80 || v53 && v40)
        {
          v72->var5 = v12;
        }

        if (v70 > v81 || v57)
        {
          v72->var7 = v12;
        }

        if (v71 > v83 || v59)
        {
          v72->var8 = v12;
          v63 = v12;
        }

        else
        {
          v63 = v72->var8;
        }

        if (!v72->var7 && !v63 && (v69 > v84 || v55))
        {
          v72->var6 = v12;
        }
      }

      v74 = [&unk_28522C090 countByEnumeratingWithState:&v104 objects:v108 count:16];
    }

    while (v74);
  }

  v64 = *&v5->var6;
  v93[2] = *&v5->var4;
  v93[3] = v64;
  v94 = v5->var8;
  v65 = *&v5->var2;
  v93[0] = *&v5->var0;
  v93[1] = v65;
  return [(CVAMotionTrackingExpressionConfiguration_Exclave *)self setPreviousExpressions:v93];
}

@end