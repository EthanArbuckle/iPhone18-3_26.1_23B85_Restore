@interface ENRegionServerExposureConfiguration
- (ENRegionServerExposureConfiguration)initWithCoder:(id)a3;
- (ENRegionServerExposureConfiguration)initWithServerResponseDictionary:(id)a3;
- (id)classificationCriteriaForName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionServerExposureConfiguration

- (ENRegionServerExposureConfiguration)initWithServerResponseDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = 0;
    goto LABEL_25;
  }

  v5 = [v4 objectForKeyedSubscript:@"config"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53.receiver = self;
    v53.super_class = ENRegionServerExposureConfiguration;
    v6 = [(ENRegionServerExposureConfiguration *)&v53 init];
    if (v6)
    {
      v48 = v6;
      v52 = 0;
      CFStringGetTypeID();
      v49 = v4;
      v47 = CFDictionaryGetTypedValue();
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = 12;
      v9 = &qword_278A4B480;
      do
      {
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v13 = NSDictionaryGetNSNumber();
        [v7 setObject:v13 forKeyedSubscript:v11];
        v9 += 3;

        --v8;
      }

      while (v8);
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      Int64 = CFDictionaryGetInt64();
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __72__ENRegionServerExposureConfiguration_initWithServerResponseDictionary___block_invoke;
      v51[3] = &unk_278A4B598;
      v51[4] = v14;
      v51[5] = Int64;
      v16 = MEMORY[0x2383EE560](v51);
      v17 = 0;
      for (i = -14; i != 15; ++i)
      {
        v16[2](v16, i, v17);
        v17 += 2;
      }

      v16[2](v16, 0x7FFFFFFFFFFFFFFFLL, 58);
      v46 = v14;
      v19 = [v14 copy];
      v20 = v7;
      [v7 setObject:v19 forKeyedSubscript:@"infectiousnessForDaysSinceOnsetOfSymptoms"];

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = &byte_278A4B5C0;
      v23 = 3;
      do
      {
        v24 = *(v22 - 1);
        v25 = *v22;
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (v52)
        {
          [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithUnsignedChar:Int64Ranged];
        }
        v27 = ;
        [v21 addObject:v27];
        v22 += 16;

        --v23;
      }

      while (v23);
      v28 = [v21 copy];
      [v7 setObject:v28 forKeyedSubscript:@"attenuationDurationThresholds"];

      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v30 = 1;
      do
      {
        v31 = objc_autoreleasePoolPush();
        v50 = 0;
        v32 = [ENRegionServerExposureClassificationCriteria getCriteria:&v50 fromDictionary:v5 index:v30];
        v33 = v50;
        objc_autoreleasePoolPop(v31);
        if (!v32)
        {

          v44 = 0;
          v35 = v47;
          self = v48;
          goto LABEL_23;
        }

        if (v33)
        {
          [v29 addObject:v33];
        }

        v34 = v30++;
      }

      while (v34 <= 3);
      v35 = v47;
      v36 = [v47 copy];
      self = v48;
      appBundleIdentifier = v48->_appBundleIdentifier;
      v48->_appBundleIdentifier = v36;

      v38 = [v29 copy];
      classificationCriteria = v48->_classificationCriteria;
      v48->_classificationCriteria = v38;

      v40 = [v20 copy];
      exposureConfigurationValues = v48->_exposureConfigurationValues;
      v48->_exposureConfigurationValues = v40;

      v48->_enableRecursiveReportType = CFDictionaryGetInt64() != 0;
      v42 = 86400 * CFDictionaryGetInt64Ranged();
      if (v52)
      {
        v43 = 604800;
      }

      else
      {
        v43 = v42;
      }

      v48->_privacyParameterInputCandenceInterval = v43;
      v48->_matchingRestrictedToRegion = CFDictionaryGetInt64() != 0;
      v44 = v48;
LABEL_23:

      v4 = v49;
      goto LABEL_24;
    }

    self = 0;
  }

  v44 = 0;
LABEL_24:

LABEL_25:
  return v44;
}

void __72__ENRegionServerExposureConfiguration_initWithServerResponseDictionary___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (((*(a1 + 40) >> a3) & 3) - 1 <= 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

- (id)classificationCriteriaForName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ENRegionServerExposureConfiguration *)self classificationCriteria];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 classificationName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ENRegionServerExposureConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  if (![v4 containsValueForKey:@"cfgv"])
  {
    v10 = MEMORY[0x277CBEC10];
LABEL_5:
    if ([v4 containsValueForKey:@"clsf"])
    {
      v12 = objc_alloc(MEMORY[0x277CBEB98]);
      v13 = objc_opt_class();
      v11 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v11 forKey:@"clsf"];

      if (!v11)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v19.receiver = self;
    v19.super_class = ENRegionServerExposureConfiguration;
    self = [(ENRegionServerExposureConfiguration *)&v19 init];
    if (self)
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
      appBundleIdentifier = self->_appBundleIdentifier;
      self->_appBundleIdentifier = v15;

      objc_storeStrong(&self->_classificationCriteria, v14);
      objc_storeStrong(&self->_exposureConfigurationValues, v10);
      self->_enableRecursiveReportType = [v4 decodeBoolForKey:@"enableRecursiveType"];
      [v4 decodeDoubleForKey:@"privacyParameterInputCandence"];
      self->_privacyParameterInputCandenceInterval = v17;
      self->_matchingRestrictedToRegion = [v4 decodeBoolForKey:@"isMatchingRestrictedRegion"];
      self = self;
      v11 = self;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_12;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 initWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"cfgv"];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  appBundleIdentifier = self->_appBundleIdentifier;
  v5 = a3;
  [v5 encodeObject:appBundleIdentifier forKey:@"appBundleId"];
  [v5 encodeObject:self->_classificationCriteria forKey:@"clsf"];
  [v5 encodeObject:self->_exposureConfigurationValues forKey:@"cfgv"];
  [v5 encodeBool:self->_enableRecursiveReportType forKey:@"enableRecursiveType"];
  [v5 encodeDouble:@"privacyParameterInputCandence" forKey:self->_privacyParameterInputCandenceInterval];
  [v5 encodeBool:self->_matchingRestrictedToRegion forKey:@"isMatchingRestrictedRegion"];
}

@end