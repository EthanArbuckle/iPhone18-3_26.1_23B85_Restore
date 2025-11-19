@interface ENRegionServerExposureClassificationCriteria
+ (BOOL)getCriteria:(id *)a3 fromDictionary:(id)a4 index:(unsigned __int8)a5;
- (ENRegionServerExposureClassificationCriteria)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionServerExposureClassificationCriteria

id __81__ENRegionServerExposureClassificationCriteria_getCriteria_fromDictionary_index___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@_%d", v4, *(a1 + 40)];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_classificationName forKey:@"name"];
  if (self->_index)
  {
    [v4 encodeInteger:? forKey:?];
  }

  [v4 encodeInt64:self->_perDaySumERVThreshold forKey:@"pdsTh"];
  [v4 encodeInt64:self->_perDayMaxERVThreshold forKey:@"pdsMax"];
  [v4 encodeObject:self->_perDaySumERVThresholdsByDiagnosisReportType forKey:@"pdsThDRT"];
  [v4 encodeInt64:self->_weightedDurationAtAttenuationThreshold forKey:@"wdaa"];
}

+ (BOOL)getCriteria:(id *)a3 fromDictionary:(id)a4 index:(unsigned __int8)a5
{
  v7 = a4;
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__ENRegionServerExposureClassificationCriteria_getCriteria_fromDictionary_index___block_invoke;
    v28[3] = &unk_278A4B428;
    v30 = a5;
    v29 = v7;
    v8 = MEMORY[0x2383EE560](v28);
    v9 = (v8)[2](v8, @"classificationName");
    if (v9)
    {
      v10 = (v8)[2](v8, @"perDaySumERVThreshold");
      if (UInt64NumIsInRange(v10))
      {
        v11 = (v8)[2](v8, @"perDayMaxERVThreshold");
        if (UInt64NumIsInRange(v11))
        {
          v24 = a3;
          v25 = v7;
          v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __81__ENRegionServerExposureClassificationCriteria_getCriteria_fromDictionary_index___block_invoke_2;
          v26[3] = &unk_278A4B450;
          v13 = v8;
          v26[4] = v12;
          v27 = v13;
          v14 = MEMORY[0x2383EE560](v26);
          if ((v14)[2](v14, 1, @"confirmedTestPerDaySumERVThreshold") && (v14)[2](v14, 2, @"clinicalDiagnosisPerDaySumERVThreshold") && (v14)[2](v14, 3, @"selfReportPerDaySumERVThreshold") && (v14)[2](v14, 4, @"recursivePerDaySumERVThreshold"))
          {
            v15 = (v8)[2](v13, @"weightedDurationAtAttenuationThreshold");
            v16 = UInt64NumIsInRange(v15);
            if (v16)
            {
              v17 = objc_alloc_init(ENRegionServerExposureClassificationCriteria);
              v18 = [v9 copy];
              classificationName = v17->_classificationName;
              v17->_classificationName = v18;

              v17->_index = a5;
              v17->_perDaySumERVThreshold = [v10 unsignedIntValue];
              v17->_perDayMaxERVThreshold = [v11 unsignedIntValue];
              v20 = [v12 copy];
              perDaySumERVThresholdsByDiagnosisReportType = v17->_perDaySumERVThresholdsByDiagnosisReportType;
              v17->_perDaySumERVThresholdsByDiagnosisReportType = v20;

              v17->_weightedDurationAtAttenuationThreshold = [v15 unsignedIntValue];
              v22 = v17;
              *v24 = v17;
            }
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v7 = v25;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      *a3 = 0;
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

uint64_t __81__ENRegionServerExposureClassificationCriteria_getCriteria_fromDictionary_index___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 40) + 16))();
  v5 = v4;
  if (v4)
  {
    if (!UInt64NumIsInRange(v4))
    {
      v6 = 0;
      goto LABEL_3;
    }

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    [v8 setObject:v5 forKeyedSubscript:v9];
  }

  v6 = 1;
LABEL_3:

  return v6;
}

- (ENRegionServerExposureClassificationCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"pdsThDRT"];
    v14.receiver = self;
    v14.super_class = ENRegionServerExposureClassificationCriteria;
    v10 = [(ENRegionServerExposureClassificationCriteria *)&v14 init];
    self = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_classificationName, v5);
      v15 = 0;
      if (NSDecodeSInt64RangedIfPresent())
      {
        self->_index = v15;
      }

      self->_perDaySumERVThreshold = [v4 decodeInt64ForKey:@"pdsTh"];
      self->_perDayMaxERVThreshold = [v4 decodeInt64ForKey:@"pdsMax"];
      objc_storeStrong(&self->_perDaySumERVThresholdsByDiagnosisReportType, v9);
      self->_weightedDurationAtAttenuationThreshold = [v4 decodeInt64ForKey:@"wdaa"];
      v11 = self;
    }

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end