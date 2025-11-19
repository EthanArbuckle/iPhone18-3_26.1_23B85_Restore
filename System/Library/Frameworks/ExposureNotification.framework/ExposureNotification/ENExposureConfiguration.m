@interface ENExposureConfiguration
- (ENExposureConfiguration)init;
- (ENExposureConfiguration)initWithDictionary:(id)a3 error:(id *)a4;
- (ENExposureConfiguration)initWithXPCObject:(id)a3 error:(id *)a4;
- (double)daysSinceLastExposureLevelValueWithDays:(int64_t)a3;
- (double)durationLevelValueWithDuration:(double)a3;
- (double)infectiousnessWeightWithDaysSinceOnsetOfSymptoms:(int64_t)a3 skip:(BOOL *)a4;
- (double)transmissionLevelValueWithTransmissionRiskLevel:(unsigned __int8)a3;
- (double)weightedDurationWithExposureInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)infectiousnessWithDaysSinceOnsetOfSymptoms:(int64_t)a3;
- (unsigned)mappedDiagnosisReportType:(unsigned int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ENExposureConfiguration

- (ENExposureConfiguration)init
{
  v13.receiver = self;
  v13.super_class = ENExposureConfiguration;
  v2 = [(ENExposureConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = vdupq_n_s64(0x807060504030201uLL);
    *(v2 + 8) = v4;
    *(v2 + 24) = v4;
    v5 = *(v2 + 18);
    *(v2 + 18) = &unk_284B0F180;

    v6 = *(v3 + 21);
    *(v3 + 21) = &unk_284B0F198;

    v7 = *(v3 + 23);
    *(v3 + 22) = 0x3FF0000000000000;
    *(v3 + 23) = &unk_284B0F1B0;

    v8 = *(v3 + 25);
    *(v3 + 24) = 0x3FF0000000000000;
    *(v3 + 25) = &unk_284B0F1C8;

    v9 = vdupq_n_s64(0x4059000000000000uLL);
    *(v3 + 26) = 0x3FF0000000000000;
    *(v3 + 56) = v9;
    *(v3 + 72) = v9;
    *(v3 + 7) = v9;
    *(v3 + 8) = v9;
    *(v3 + 6) = v9;
    *(v3 + 11) = 1;
    v10 = *(v3 + 28);
    *(v3 + 28) = &unk_284B0F1E0;

    *(v3 + 29) = 0x3FF0000000000000;
    v11 = v3;
  }

  return v3;
}

- (ENExposureConfiguration)initWithDictionary:(id)a3 error:(id *)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ENExposureConfiguration *)self init];
  if (!v6)
  {
    if (a4)
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  v6->_flags = CFDictionaryGetInt64Ranged();
  CFDictionaryGetDouble();
  v6->_immediateDurationWeight = v7;
  if (v7 < 0.0 || v7 > 250.0)
  {
    if (a4)
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  CFDictionaryGetDouble();
  v6->_nearDurationWeight = v8;
  if (v8 < 0.0 || v8 > 250.0)
  {
    if (a4)
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  CFDictionaryGetDouble();
  v6->_mediumDurationWeight = v9;
  if (v9 < 0.0 || v9 > 250.0)
  {
    if (a4)
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  CFDictionaryGetDouble();
  v6->_otherDurationWeight = v10;
  if (v10 < 0.0 || v10 > 250.0)
  {
    if (a4)
    {
LABEL_148:
      ENErrorF(2);
      *a4 = v12 = 0;
      goto LABEL_108;
    }

LABEL_149:
    v12 = 0;
    goto LABEL_108;
  }

  CFDictionaryGetTypeID();
  obj = CFDictionaryGetTypedValue();
  if (obj)
  {
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy_;
    v97 = __Block_byref_object_dispose_;
    v98 = 0;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __52__ENExposureConfiguration_initWithDictionary_error___block_invoke;
    v92[3] = &unk_278A4B170;
    v92[4] = &v93;
    [obj enumerateKeysAndObjectsUsingBlock:v92];
    v11 = v94[5];
    if (v11)
    {
      if (a4)
      {
        v57 = v11;
        *a4 = v11;
      }
    }

    else
    {
      objc_storeStrong(&v6->_infectiousnessForDaysSinceOnsetOfSymptoms, obj);
    }

    _Block_object_dispose(&v93, 8);

    if (v11)
    {
      goto LABEL_14;
    }
  }

  CFDictionaryGetDouble();
  v6->_infectiousnessStandardWeight = v13;
  if (v13 < 0.0 || v13 > 250.0)
  {
    if (a4)
    {
      goto LABEL_165;
    }

    goto LABEL_14;
  }

  CFDictionaryGetDouble();
  v6->_infectiousnessHighWeight = v14;
  if (v14 < 0.0 || v14 > 250.0)
  {
    if (a4)
    {
      goto LABEL_165;
    }

    goto LABEL_14;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeConfirmedTestWeight = v15;
  if (v15 < 0.0 || v15 > 250.0)
  {
    if (a4)
    {
      goto LABEL_165;
    }

    goto LABEL_14;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeConfirmedClinicalDiagnosisWeight = v16;
  if (v16 < 0.0 || v16 > 250.0)
  {
    if (a4)
    {
      goto LABEL_165;
    }

    goto LABEL_14;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeSelfReportedWeight = v17;
  if (v17 < 0.0 || v17 > 250.0)
  {
    if (a4)
    {
      goto LABEL_165;
    }

    goto LABEL_14;
  }

  CFDictionaryGetDouble();
  v6->_reportTypeRecursiveWeight = v18;
  if (v18 < 0.0 || v18 > 250.0)
  {
    if (a4)
    {
      goto LABEL_165;
    }

    goto LABEL_14;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v6->_reportTypeNoneMap = Int64Ranged;
  if (Int64Ranged >= 5)
  {
    if (a4)
    {
LABEL_165:
      ENErrorF(2);
      *a4 = v12 = 0;
      goto LABEL_107;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_107;
  }

  CFArrayGetTypeID();
  v70 = CFDictionaryGetTypedValue();
  if (v70)
  {
    if (([v70 count] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v20 = v70;
      v21 = [v20 countByEnumeratingWithState:&v88 objects:v103 count:16];
      if (!v21)
      {
        goto LABEL_39;
      }

      v22 = *v89;
      while (1)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v89 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v88 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
LABEL_112:
              *a4 = ENErrorF(2);
            }

LABEL_113:

LABEL_114:
            v12 = 0;
            goto LABEL_106;
          }

          if ([v24 longLongValue] >= 0x100)
          {
            if (a4)
            {
              goto LABEL_112;
            }

            goto LABEL_113;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v88 objects:v103 count:16];
        if (!v21)
        {
LABEL_39:

          objc_storeStrong(&v6->_attenuationDurationThresholds, v70);
          goto LABEL_40;
        }
      }
    }

    if (!a4)
    {
      goto LABEL_114;
    }

    [v70 count];
    v58 = ENErrorF(2);
LABEL_172:
    v12 = 0;
    *a4 = v58;
    goto LABEL_106;
  }

LABEL_40:
  v6->_daysSinceLastExposureThreshold = CFDictionaryGetInt64Ranged();
  CFDictionaryGetDouble();
  v6->_minimumRiskScoreFullRange = v25;
  if (v25 < 0.0 || v25 > 4096.0)
  {
    if (!a4)
    {
      goto LABEL_114;
    }

    v58 = ENErrorF(2);
    goto LABEL_172;
  }

  CFArrayGetTypeID();
  v69 = CFDictionaryGetTypedValue();
  if (v69)
  {
    if ([v69 count] == 8)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v26 = v69;
      v27 = [v26 countByEnumeratingWithState:&v84 objects:v102 count:16];
      if (!v27)
      {
        goto LABEL_53;
      }

      v28 = *v85;
      while (1)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v85 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v84 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
LABEL_118:
              *a4 = ENErrorF(2);
            }

LABEL_119:

LABEL_120:
            v12 = 0;
            goto LABEL_105;
          }

          if ([v30 longLongValue] >= 9)
          {
            if (a4)
            {
              goto LABEL_118;
            }

            goto LABEL_119;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v84 objects:v102 count:16];
        if (!v27)
        {
LABEL_53:

          objc_storeStrong(&v6->_attenuationLevelValues, v69);
          goto LABEL_54;
        }
      }
    }

    if (!a4)
    {
      goto LABEL_120;
    }

    [v69 count];
    v59 = ENErrorF(2);
LABEL_177:
    v12 = 0;
    *a4 = v59;
    goto LABEL_105;
  }

LABEL_54:
  attenuationWeight = v6->_attenuationWeight;
  if (attenuationWeight < 0.0 || attenuationWeight > 100.0)
  {
    if (!a4)
    {
      goto LABEL_120;
    }

    v63 = v6->_attenuationWeight;
    v59 = ENErrorF(2);
    goto LABEL_177;
  }

  CFArrayGetTypeID();
  v68 = CFDictionaryGetTypedValue();
  if (v68)
  {
    if ([v68 count] == 8)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v32 = v68;
      v33 = [v32 countByEnumeratingWithState:&v80 objects:v101 count:16];
      if (!v33)
      {
        goto LABEL_67;
      }

      v34 = *v81;
      while (1)
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v81 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v80 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
LABEL_124:
              *a4 = ENErrorF(2);
            }

LABEL_125:

LABEL_126:
            v12 = 0;
            goto LABEL_104;
          }

          if ([v36 longLongValue] >= 9)
          {
            if (a4)
            {
              goto LABEL_124;
            }

            goto LABEL_125;
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v80 objects:v101 count:16];
        if (!v33)
        {
LABEL_67:

          objc_storeStrong(&v6->_daysSinceLastExposureLevelValues, v68);
          goto LABEL_68;
        }
      }
    }

    if (!a4)
    {
      goto LABEL_126;
    }

    [v68 count];
    v60 = ENErrorF(2);
LABEL_182:
    v12 = 0;
    *a4 = v60;
    goto LABEL_104;
  }

LABEL_68:
  daysSinceLastExposureWeight = v6->_daysSinceLastExposureWeight;
  if (daysSinceLastExposureWeight < 0.0 || daysSinceLastExposureWeight > 100.0)
  {
    if (!a4)
    {
      goto LABEL_126;
    }

    v64 = v6->_daysSinceLastExposureWeight;
    v60 = ENErrorF(2);
    goto LABEL_182;
  }

  CFArrayGetTypeID();
  v38 = CFDictionaryGetTypedValue();
  v39 = v38;
  if (!v38)
  {
    goto LABEL_82;
  }

  if ([v38 count] != 8)
  {
    if (!a4)
    {
      goto LABEL_132;
    }

    [v39 count];
    v61 = ENErrorF(2);
    goto LABEL_192;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v40 = v39;
  v41 = [v40 countByEnumeratingWithState:&v76 objects:v100 count:16];
  if (!v41)
  {
    goto LABEL_81;
  }

  v42 = *v77;
  while (2)
  {
    for (m = 0; m != v41; ++m)
    {
      if (*v77 != v42)
      {
        objc_enumerationMutation(v40);
      }

      v44 = *(*(&v76 + 1) + 8 * m);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if ([v44 longLongValue] >= 9)
      {
        if (a4)
        {
LABEL_130:
          *a4 = ENErrorF(2);
        }

LABEL_131:

        goto LABEL_132;
      }
    }

    v41 = [v40 countByEnumeratingWithState:&v76 objects:v100 count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_81:

  objc_storeStrong(&v6->_durationLevelValues, v39);
LABEL_82:
  durationWeight = v6->_durationWeight;
  if (durationWeight < 0.0 || durationWeight > 100.0)
  {
    if (!a4)
    {
      goto LABEL_132;
    }

    v65 = v6->_durationWeight;
    v61 = ENErrorF(2);
LABEL_192:
    v12 = 0;
    *a4 = v61;
    goto LABEL_103;
  }

  LODWORD(v93) = 0;
  Int64 = CFDictionaryGetInt64();
  if (v93)
  {
    goto LABEL_87;
  }

  if (Int64 >= 0x100)
  {
    if (a4)
    {
      v61 = ENErrorF(2);
      goto LABEL_192;
    }

LABEL_132:
    v12 = 0;
    goto LABEL_103;
  }

  v6->_minimumRiskScore = Int64;
LABEL_87:
  CFArrayGetTypeID();
  v47 = CFDictionaryGetTypedValue();
  v48 = v47;
  if (!v47)
  {
    goto LABEL_99;
  }

  if ([v47 count] == 8)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v72 objects:v99 count:16];
    if (!v50)
    {
      goto LABEL_98;
    }

    v51 = *v73;
LABEL_91:
    v52 = 0;
    while (1)
    {
      if (*v73 != v51)
      {
        objc_enumerationMutation(v49);
      }

      v53 = *(*(&v72 + 1) + 8 * v52);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if ([v53 longLongValue] >= 9)
      {
        if (a4)
        {
          goto LABEL_136;
        }

        goto LABEL_137;
      }

      if (v50 == ++v52)
      {
        v50 = [v49 countByEnumeratingWithState:&v72 objects:v99 count:16];
        if (v50)
        {
          goto LABEL_91;
        }

LABEL_98:

        objc_storeStrong(&v6->_transmissionRiskLevelValues, v48);
LABEL_99:
        transmissionRiskWeight = v6->_transmissionRiskWeight;
        if (transmissionRiskWeight >= 0.0 && transmissionRiskWeight <= 100.0)
        {
          v12 = v6;
          goto LABEL_102;
        }

        if (a4)
        {
          v66 = v6->_transmissionRiskWeight;
          v62 = ENErrorF(2);
          goto LABEL_189;
        }

LABEL_138:
        v12 = 0;
        goto LABEL_102;
      }
    }

    if (a4)
    {
LABEL_136:
      *a4 = ENErrorF(2);
    }

LABEL_137:

    goto LABEL_138;
  }

  if (!a4)
  {
    goto LABEL_138;
  }

  [v48 count];
  v62 = ENErrorF(2);
LABEL_189:
  v12 = 0;
  *a4 = v62;
LABEL_102:

LABEL_103:
LABEL_104:

LABEL_105:
LABEL_106:

LABEL_107:
LABEL_108:

  v55 = *MEMORY[0x277D85DE8];
  return v12;
}

void __52__ENExposureConfiguration_initWithDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v12 unsignedIntValue] >= 3)
  {
    v9 = ENErrorF(2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ENExposureConfiguration alloc];
  v5 = [(ENExposureConfiguration *)self dictionaryRepresentation];
  v10 = 0;
  v6 = [(ENExposureConfiguration *)v4 initWithDictionary:v5 error:&v10];
  v7 = v10;

  v8 = 0;
  if (!v7)
  {
    v8 = v6;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_flags];
  [v3 setObject:v4 forKeyedSubscript:@"exposureFlags"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_immediateDurationWeight];
  [v3 setObject:v5 forKeyedSubscript:@"immediateDurationWeight"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_nearDurationWeight];
  [v3 setObject:v6 forKeyedSubscript:@"nearDurationWeight"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mediumDurationWeight];
  [v3 setObject:v7 forKeyedSubscript:@"mediumDurationWeight"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_otherDurationWeight];
  [v3 setObject:v8 forKeyedSubscript:@"otherDurationWeight"];

  [v3 setObject:self->_infectiousnessForDaysSinceOnsetOfSymptoms forKeyedSubscript:@"infectiousnessForDaysSinceOnsetOfSymptoms"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_infectiousnessStandardWeight];
  [v3 setObject:v9 forKeyedSubscript:@"infectiousnessStandardWeight"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_infectiousnessHighWeight];
  [v3 setObject:v10 forKeyedSubscript:@"infectiousnessHighWeight"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeConfirmedTestWeight];
  [v3 setObject:v11 forKeyedSubscript:@"reportTypeConfirmedTestWeight"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeConfirmedClinicalDiagnosisWeight];
  [v3 setObject:v12 forKeyedSubscript:@"reportTypeConfirmedClinicalDiagnosisWeight"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeSelfReportedWeight];
  [v3 setObject:v13 forKeyedSubscript:@"reportTypeSelfReportedWeight"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reportTypeRecursiveWeight];
  [v3 setObject:v14 forKeyedSubscript:@"reportTypeRecursiveWeight"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_reportTypeNoneMap];
  [v3 setObject:v15 forKeyedSubscript:@"reportTypeNoneMap"];

  [v3 setObject:self->_attenuationDurationThresholds forKeyedSubscript:@"attenuationDurationThresholds"];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_daysSinceLastExposureThreshold];
  [v3 setObject:v16 forKeyedSubscript:@"daysSinceLastExposureThreshold"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_minimumRiskScore];
  [v3 setObject:v17 forKeyedSubscript:@"minimumRiskScore"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumRiskScoreFullRange];
  [v3 setObject:v18 forKeyedSubscript:@"minimumRiskScoreFullRange"];

  [v3 setObject:self->_attenuationLevelValues forKeyedSubscript:@"attenuationLevelValues"];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_attenuationWeight];
  [v3 setObject:v19 forKeyedSubscript:@"attenuationWeight"];

  [v3 setObject:self->_daysSinceLastExposureLevelValues forKeyedSubscript:@"daysSinceLastExposureLevelValues"];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_daysSinceLastExposureWeight];
  [v3 setObject:v20 forKeyedSubscript:@"daysSinceLastExposureWeight"];

  [v3 setObject:self->_durationLevelValues forKeyedSubscript:@"durationLevelValues"];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_durationWeight];
  [v3 setObject:v21 forKeyedSubscript:@"durationWeight"];

  [v3 setObject:self->_transmissionRiskLevelValues forKeyedSubscript:@"transmissionRiskLevelValues"];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_transmissionRiskWeight];
  [v3 setObject:v22 forKeyedSubscript:@"transmissionRiskWeight"];

  v23 = [v3 copy];

  return v23;
}

- (ENExposureConfiguration)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENExposureConfiguration *)self init];
  if (!v7)
  {
    if (a4)
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  v64 = 0;
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_flags = v64;
  }

  else if (v8 == 5)
  {
    goto LABEL_109;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_109;
  }

  if (([(NSArray *)v7->_attenuationDurationThresholds count]& 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (a4)
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  immediateDurationWeight = v7->_immediateDurationWeight;
  if (immediateDurationWeight < 0.0 || immediateDurationWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_109;
    }

    v49 = v7->_immediateDurationWeight;
LABEL_108:
    ENErrorF(2);
    *a4 = v16 = 0;
    goto LABEL_93;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  nearDurationWeight = v7->_nearDurationWeight;
  if (nearDurationWeight < 0.0 || nearDurationWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_109;
    }

    v50 = v7->_nearDurationWeight;
    goto LABEL_108;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  mediumDurationWeight = v7->_mediumDurationWeight;
  if (mediumDurationWeight < 0.0 || mediumDurationWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_109;
    }

    v51 = v7->_mediumDurationWeight;
    goto LABEL_108;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_109;
  }

  otherDurationWeight = v7->_otherDurationWeight;
  if (otherDurationWeight < 0.0 || otherDurationWeight > 250.0)
  {
    if (a4)
    {
      v52 = v7->_otherDurationWeight;
      goto LABEL_108;
    }

LABEL_109:
    v16 = 0;
    goto LABEL_93;
  }

  v13 = xpc_dictionary_get_dictionary(v6, "infectLV");
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy_;
    v68 = __Block_byref_object_dispose_;
    v69 = 0;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __51__ENExposureConfiguration_initWithXPCObject_error___block_invoke;
    applier[3] = &unk_278A4B198;
    applier[4] = v14;
    applier[5] = &v64;
    xpc_dictionary_apply(v13, applier);
    v15 = v65[5];
    if (v15)
    {
      if (a4)
      {
        v48 = v15;
        *a4 = v15;
      }
    }

    else
    {
      objc_storeStrong(&v7->_infectiousnessForDaysSinceOnsetOfSymptoms, v14);
    }

    _Block_object_dispose(&v64, 8);

    if (v15)
    {
      goto LABEL_24;
    }
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  infectiousnessStandardWeight = v7->_infectiousnessStandardWeight;
  if (infectiousnessStandardWeight < 0.0 || infectiousnessStandardWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v53 = v7->_infectiousnessStandardWeight;
LABEL_141:
    ENErrorF(2);
    *a4 = v16 = 0;
    goto LABEL_92;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  infectiousnessHighWeight = v7->_infectiousnessHighWeight;
  if (infectiousnessHighWeight < 0.0 || infectiousnessHighWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v54 = v7->_infectiousnessHighWeight;
    goto LABEL_141;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeConfirmedTestWeight = v7->_reportTypeConfirmedTestWeight;
  if (reportTypeConfirmedTestWeight < 0.0 || reportTypeConfirmedTestWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v55 = v7->_reportTypeConfirmedTestWeight;
    goto LABEL_141;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeConfirmedClinicalDiagnosisWeight = v7->_reportTypeConfirmedClinicalDiagnosisWeight;
  if (reportTypeConfirmedClinicalDiagnosisWeight < 0.0 || reportTypeConfirmedClinicalDiagnosisWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v56 = v7->_reportTypeConfirmedClinicalDiagnosisWeight;
    goto LABEL_141;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeSelfReportedWeight = v7->_reportTypeSelfReportedWeight;
  if (reportTypeSelfReportedWeight < 0.0 || reportTypeSelfReportedWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v57 = v7->_reportTypeSelfReportedWeight;
    goto LABEL_141;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  reportTypeRecursiveWeight = v7->_reportTypeRecursiveWeight;
  if (reportTypeRecursiveWeight < 0.0 || reportTypeRecursiveWeight > 250.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v58 = v7->_reportTypeRecursiveWeight;
    goto LABEL_141;
  }

  v64 = 0;
  v23 = CUXPCDecodeUInt64RangedEx();
  if (v23 == 6)
  {
    reportTypeNoneMap = v64;
    v7->_reportTypeNoneMap = v64;
  }

  else
  {
    if (v23 == 5)
    {
      goto LABEL_24;
    }

    reportTypeNoneMap = v7->_reportTypeNoneMap;
  }

  if (reportTypeNoneMap >= 5)
  {
    if (a4)
    {
      goto LABEL_141;
    }

    goto LABEL_24;
  }

  v64 = 0;
  v25 = CUXPCDecodeUInt64RangedEx();
  if (v25 == 6)
  {
    v7->_minimumRiskScore = v64;
  }

  else if (v25 == 5)
  {
    goto LABEL_24;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_24;
  }

  v64 = 0;
  v26 = CUXPCDecodeSInt64RangedEx();
  if (v26 == 6)
  {
    v7->_daysSinceLastExposureThreshold = v64;
  }

  else if (v26 == 5)
  {
    goto LABEL_24;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  attenuationLevelValues = v7->_attenuationLevelValues;
  if (attenuationLevelValues)
  {
    if ([(NSArray *)attenuationLevelValues count]!= 8)
    {
      if (a4)
      {
        goto LABEL_141;
      }

      goto LABEL_24;
    }

    for (i = 0; i != 8; ++i)
    {
      v29 = [(NSArray *)v7->_attenuationLevelValues objectAtIndexedSubscript:i];
      v7->_attenuationLevelValuesMap[i] = [v29 unsignedIntValue];
    }
  }

  attenuationWeight = v7->_attenuationWeight;
  if (attenuationWeight < 0.0 || attenuationWeight > 100.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v59 = v7->_attenuationWeight;
    goto LABEL_141;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  durationLevelValues = v7->_durationLevelValues;
  if (durationLevelValues)
  {
    if ([(NSArray *)durationLevelValues count]!= 8)
    {
      if (a4)
      {
        goto LABEL_141;
      }

      goto LABEL_24;
    }

    for (j = 0; j != 8; ++j)
    {
      v34 = [(NSArray *)v7->_durationLevelValues objectAtIndexedSubscript:j];
      v7->_durationLevelValuesMap[j] = [v34 unsignedIntValue];
    }
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  daysSinceLastExposureLevelValues = v7->_daysSinceLastExposureLevelValues;
  if (daysSinceLastExposureLevelValues)
  {
    if ([(NSArray *)daysSinceLastExposureLevelValues count]!= 8)
    {
      if (a4)
      {
        goto LABEL_141;
      }

      goto LABEL_24;
    }

    for (k = 0; k != 8; ++k)
    {
      v37 = [(NSArray *)v7->_daysSinceLastExposureLevelValues objectAtIndexedSubscript:k];
      v7->_daysSinceLastExposureLevelValuesMap[k] = [v37 unsignedIntValue];
    }
  }

  daysSinceLastExposureWeight = v7->_daysSinceLastExposureWeight;
  if (daysSinceLastExposureWeight < 0.0 || daysSinceLastExposureWeight > 100.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v60 = v7->_daysSinceLastExposureWeight;
    goto LABEL_141;
  }

  durationWeight = v7->_durationWeight;
  if (durationWeight < 0.0 || durationWeight > 100.0)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v61 = v7->_durationWeight;
    goto LABEL_141;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_24;
  }

  transmissionRiskLevelValues = v7->_transmissionRiskLevelValues;
  if (transmissionRiskLevelValues)
  {
    if ([(NSArray *)transmissionRiskLevelValues count]!= 8)
    {
      if (a4)
      {
        goto LABEL_141;
      }

      goto LABEL_24;
    }

    for (m = 0; m != 8; ++m)
    {
      v44 = [(NSArray *)v7->_transmissionRiskLevelValues objectAtIndexedSubscript:m];
      v7->_transmissionRiskLevelValuesMap[m] = [v44 unsignedIntValue];
    }
  }

  transmissionRiskWeight = v7->_transmissionRiskWeight;
  if (transmissionRiskWeight >= 0.0 && transmissionRiskWeight <= 100.0)
  {
    v16 = v7;
    goto LABEL_92;
  }

  if (a4)
  {
    v62 = v7->_transmissionRiskWeight;
    goto LABEL_141;
  }

LABEL_24:
  v16 = 0;
LABEL_92:

LABEL_93:
  return v16;
}

uint64_t __51__ENExposureConfiguration_initWithXPCObject_error___block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = atoll(a2);
  if (MEMORY[0x2383EE9C0](v5) == MEMORY[0x277D86498] && (value = xpc_int64_get_value(v5), value < 3))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:value];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v11 = 1;
  }

  else
  {
    v12 = ENErrorF(2);
    v11 = 0;
    v13 = *(*(a1 + 40) + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return v11;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(v4, "expF", flags);
  }

  xpc_dictionary_set_double(v5, "immediateDurW", self->_immediateDurationWeight);
  xpc_dictionary_set_double(v5, "nearDurW", self->_nearDurationWeight);
  xpc_dictionary_set_double(v5, "medDurW", self->_mediumDurationWeight);
  xpc_dictionary_set_double(v5, "otherDurW", self->_otherDurationWeight);
  v7 = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  if (v7)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__ENExposureConfiguration_encodeWithXPCObject___block_invoke;
    v19[3] = &unk_278A4B1C0;
    v19[4] = v8;
    [(NSDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v19];
    xpc_dictionary_set_value(v5, "infectLV", v8);
  }

  xpc_dictionary_set_double(v5, "infWStd", self->_infectiousnessStandardWeight);
  xpc_dictionary_set_double(v5, "infWHigh", self->_infectiousnessHighWeight);
  xpc_dictionary_set_double(v5, "rtWCTest", self->_reportTypeConfirmedTestWeight);
  xpc_dictionary_set_double(v5, "rtWCClin", self->_reportTypeConfirmedClinicalDiagnosisWeight);
  xpc_dictionary_set_double(v5, "rtWSelfR", self->_reportTypeSelfReportedWeight);
  xpc_dictionary_set_double(v5, "rtWRecurs", self->_reportTypeRecursiveWeight);
  xpc_dictionary_set_uint64(v5, "rtNM", self->_reportTypeNoneMap);
  metadata = self->_metadata;
  CFArrayGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    attenuationDurationThresholds = self->_attenuationDurationThresholds;
  }

  CUXPCEncodeNSArrayOfNSNumber();
  daysSinceLastExposureThreshold = self->_daysSinceLastExposureThreshold;
  if (daysSinceLastExposureThreshold)
  {
    xpc_dictionary_set_int64(v5, "dsleTh", daysSinceLastExposureThreshold);
  }

  minimumRiskScoreFullRange = self->_minimumRiskScoreFullRange;
  if (minimumRiskScoreFullRange == 0.0)
  {
    v14 = self->_metadata;
    CFDictionaryGetDouble();
  }

  if (minimumRiskScoreFullRange != 0.0)
  {
    xpc_dictionary_set_double(v5, "mnRSFR", minimumRiskScoreFullRange);
  }

  if (self->_minimumRiskScore)
  {
    xpc_dictionary_set_uint64(v5, "mnRS", self->_minimumRiskScore);
  }

  attenuationLevelValues = self->_attenuationLevelValues;
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "attW", self->_attenuationWeight);
  durationLevelValues = self->_durationLevelValues;
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "durW", self->_durationWeight);
  daysSinceLastExposureLevelValues = self->_daysSinceLastExposureLevelValues;
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "dleW", self->_daysSinceLastExposureWeight);
  transmissionRiskLevelValues = self->_transmissionRiskLevelValues;
  CUXPCEncodeNSArrayOfNSNumber();
  xpc_dictionary_set_double(v5, "trRW", self->_transmissionRiskWeight);
}

void __47__ENExposureConfiguration_encodeWithXPCObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *__str = 0u;
  v10 = 0u;
  v5 = a3;
  snprintf(__str, 0x20uLL, "%lld", [a2 longLongValue]);
  v6 = *(a1 + 32);
  v7 = [v5 longLongValue];

  xpc_dictionary_set_int64(v6, __str, v7);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  NSAppendPrintF_safe();
  v27 = 0;
  flags = self->_flags;
  NSAppendPrintF();
  v3 = v27;

  mediumDurationWeight = self->_mediumDurationWeight;
  otherDurationWeight = self->_otherDurationWeight;
  v19 = *&self->_immediateDurationWeight;
  NSAppendPrintF_safe();
  v4 = v3;

  v5 = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  if (v5)
  {
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  infectiousnessStandardWeight = self->_infectiousnessStandardWeight;
  infectiousnessHighWeight = self->_infectiousnessHighWeight;
  NSAppendPrintF_safe();
  v7 = v4;

  reportTypeSelfReportedWeight = self->_reportTypeSelfReportedWeight;
  reportTypeRecursiveWeight = self->_reportTypeRecursiveWeight;
  v21 = *&self->_reportTypeConfirmedTestWeight;
  NSAppendPrintF_safe();
  v8 = v7;

  *&v21 = self->_reportTypeNoneMap;
  NSAppendPrintF_safe();
  v9 = v8;

  *&v21 = self->_attenuationDurationThresholds;
  NSAppendPrintF();
  v10 = v9;

  *&v21 = self->_daysSinceLastExposureThreshold;
  NSAppendPrintF_safe();
  v11 = v10;

  *(&v21 + 1) = *&self->_minimumRiskScoreFullRange;
  *&v21 = self->_minimumRiskScore;
  NSAppendPrintF_safe();
  v12 = v11;

  *&v21 = self->_attenuationLevelValues;
  NSAppendPrintF();
  v13 = v12;

  *&v21 = self->_daysSinceLastExposureLevelValues;
  NSAppendPrintF();
  v14 = v13;

  *&v21 = self->_durationLevelValues;
  NSAppendPrintF();
  v15 = v14;

  *&v21 = self->_transmissionRiskLevelValues;
  NSAppendPrintF();
  v16 = v15;

  return v15;
}

- (double)daysSinceLastExposureLevelValueWithDays:(int64_t)a3
{
  v4 = 16;
  v5 = 17;
  v6 = 18;
  v7 = 19;
  v8 = 20;
  v9 = 21;
  v10 = 22;
  if (a3 <= 1)
  {
    v10 = 23;
  }

  if (a3 <= 3)
  {
    v9 = v10;
  }

  if (a3 <= 5)
  {
    v8 = v9;
  }

  if (a3 <= 7)
  {
    v7 = v8;
  }

  if (a3 <= 9)
  {
    v6 = v7;
  }

  if (a3 <= 11)
  {
    v5 = v6;
  }

  if (a3 <= 13)
  {
    v4 = v5;
  }

  LOBYTE(v3) = *(&self->super.isa + v4);
  return self->_daysSinceLastExposureWeight * v3;
}

- (double)durationLevelValueWithDuration:(double)a3
{
  v3 = a3 / 60.0;
  if (v3 <= 0.0)
  {
    v4 = 24;
  }

  else if (v3 <= 5.0)
  {
    v4 = 25;
  }

  else if (v3 <= 10.0)
  {
    v4 = 26;
  }

  else if (v3 <= 15.0)
  {
    v4 = 27;
  }

  else if (v3 <= 20.0)
  {
    v4 = 28;
  }

  else if (v3 <= 25.0)
  {
    v4 = 29;
  }

  else
  {
    v4 = 30;
    if (v3 > 30.0)
    {
      v4 = 31;
    }
  }

  LOBYTE(v3) = *(&self->super.isa + v4);
  return self->_durationWeight * *&v3;
}

- (unsigned)infectiousnessWithDaysSinceOnsetOfSymptoms:(int64_t)a3
{
  infectiousnessForDaysSinceOnsetOfSymptoms = self->_infectiousnessForDaysSinceOnsetOfSymptoms;
  [MEMORY[0x277CCABB0] numberWithInteger:a3];
  return CFDictionaryGetInt64Ranged();
}

- (double)infectiousnessWeightWithDaysSinceOnsetOfSymptoms:(int64_t)a3 skip:(BOOL *)a4
{
  v6 = [(ENExposureConfiguration *)self infectiousnessWithDaysSinceOnsetOfSymptoms:a3];
  if (v6 == 2)
  {
    return self->_infectiousnessHighWeight;
  }

  if (v6 == 1)
  {
    return self->_infectiousnessStandardWeight;
  }

  *a4 = 1;
  return 0.0;
}

- (unsigned)mappedDiagnosisReportType:(unsigned int)a3
{
  if (a3 - 5 <= 0xFFFFFFFB)
  {
    return self->_reportTypeNoneMap;
  }

  return a3;
}

- (double)transmissionLevelValueWithTransmissionRiskLevel:(unsigned __int8)a3
{
  if (a3 >= 7u)
  {
    v4 = 7;
  }

  else
  {
    v4 = a3;
  }

  LOBYTE(v3) = self->_transmissionRiskLevelValuesMap[v4];
  return self->_transmissionRiskWeight * v3;
}

- (double)weightedDurationWithExposureInfo:(id)a3
{
  v4 = [a3 attenuationDurations];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectAtIndexedSubscript:0];
    [v7 doubleValue];
    v9 = v8 * (self->_immediateDurationWeight / 100.0) + 0.0;

    if (v6 != 1)
    {
      v10 = [v4 objectAtIndexedSubscript:1];
      [v10 doubleValue];
      v9 = v9 + v11 * (self->_nearDurationWeight / 100.0);

      if (v6 >= 3)
      {
        v12 = [v4 objectAtIndexedSubscript:2];
        [v12 doubleValue];
        v9 = v9 + v13 * (self->_mediumDurationWeight / 100.0);

        if (v6 != 3)
        {
          v14 = [v4 objectAtIndexedSubscript:3];
          [v14 doubleValue];
          v9 = v9 + v15 * (self->_otherDurationWeight / 100.0);
        }
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end