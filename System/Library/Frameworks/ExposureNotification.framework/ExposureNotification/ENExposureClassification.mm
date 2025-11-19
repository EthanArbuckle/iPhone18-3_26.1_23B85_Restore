@interface ENExposureClassification
- (ENExposureClassification)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENExposureClassification

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeObject:self->_date forKey:@"date"];
  if (self->_index)
  {
    [v4 encodeInteger:? forKey:?];
  }

  [v4 encodeObject:self->_region forKey:@"reg"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ENExposureClassification_encodeWithCoder___block_invoke;
  v7[3] = &unk_278A4B148;
  v8 = v4;
  v5 = v4;
  v6 = MEMORY[0x2383EE560](v7);
  (v6)[2](v6, self->_confirmedTestPerDaySumERVAboveThreshold, @"ctestS");
  (v6)[2](v6, self->_clinicalDiagnosisPerDaySumERVAboveThreshold, @"cdiagS");
  (v6)[2](v6, self->_selfReportPerDaySumERVAboveThreshold, @"selfS");
  (v6)[2](v6, self->_recursivePerDaySumERVAboveThreshold, @"recurS");
  (v6)[2](v6, self->_perDayMaxERVAboveThreshold, @"pdM");
  (v6)[2](v6, self->_perDaySumERVAboveThreshold, @"pdS");
  (v6)[2](v6, self->_weightedDurationAtAttenuationAboveThreshold, @"wdaa");
}

void __44__ENExposureClassification_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    [a2 doubleValue];
    [v4 encodeDouble:v5 forKey:?];
  }
}

- (id)description
{
  v37 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = self->_name;
  index = self->_index;
  NSAppendPrintF_safe();
  v5 = 0;

  v36 = v5;
  region = self->_region;
  if (!region)
  {
    region = @"<>";
  }

  v25 = region;
  NSAppendPrintF_safe();
  v7 = v36;

  v35[1] = v7;
  [(NSDate *)self->_date timeIntervalSinceReferenceDate:v25];
  v26 = CUPrintDateCF();
  NSAppendPrintF_safe();
  v8 = v7;

  v35[0] = v8;
  __39__ENExposureClassification_description__block_invoke(v9, v35, self->_confirmedTestPerDaySumERVAboveThreshold, @"CTest");
  v10 = v35[0];

  v34 = v10;
  __39__ENExposureClassification_description__block_invoke(v11, &v34, self->_clinicalDiagnosisPerDaySumERVAboveThreshold, @"CClin");
  v12 = v34;

  v33 = v12;
  __39__ENExposureClassification_description__block_invoke(v13, &v33, self->_selfReportPerDaySumERVAboveThreshold, @"SelfRep");
  v14 = v33;

  v32 = v14;
  __39__ENExposureClassification_description__block_invoke(v15, &v32, self->_recursivePerDaySumERVAboveThreshold, @"Recurs");
  v16 = v32;

  v31 = v16;
  __39__ENExposureClassification_description__block_invoke(v17, &v31, self->_perDayMaxERVAboveThreshold, @"PDayMax");
  v18 = v31;

  v30 = v18;
  __39__ENExposureClassification_description__block_invoke(v19, &v30, self->_perDaySumERVAboveThreshold, @"PDaySum");
  v20 = v30;

  v29 = v20;
  __39__ENExposureClassification_description__block_invoke(v21, &v29, self->_weightedDurationAtAttenuationAboveThreshold, @"WDuration");
  v22 = v29;
  v23 = v29;

  return v22;
}

void __39__ENExposureClassification_description__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    [a3 doubleValue];
    NSAppendPrintF_safe();
  }
}

- (ENExposureClassification)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ENExposureClassification;
  v5 = [(ENExposureClassification *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v6)
    {
      objc_storeStrong(&v5->_name, v6);
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      if (v7)
      {
        objc_storeStrong(&v5->_date, v7);
        v15 = 0;
        OUTLINED_FUNCTION_1();
        if (NSDecodeSInt64RangedIfPresent())
        {
          v5->_index = v15;
        }

        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
        if (v8)
        {
          objc_storeStrong(&v5->_region, v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __42__ENExposureClassification_initWithCoder___block_invoke;
          v12[3] = &unk_278A4B120;
          v13 = v4;
          v9 = MEMORY[0x2383EE560](v12);
          (v9)[2](v9, &v5->_confirmedTestPerDaySumERVAboveThreshold, @"ctestS");
          (v9)[2](v9, &v5->_clinicalDiagnosisPerDaySumERVAboveThreshold, @"cdiagS");
          (v9)[2](v9, &v5->_selfReportPerDaySumERVAboveThreshold, @"selfS");
          (v9)[2](v9, &v5->_recursivePerDaySumERVAboveThreshold, @"recurS");
          (v9)[2](v9, &v5->_perDayMaxERVAboveThreshold, @"pdM");
          (v9)[2](v9, &v5->_perDaySumERVAboveThreshold, @"pdS");
          (v9)[2](v9, &v5->_weightedDurationAtAttenuationAboveThreshold, @"wdaa");
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __42__ENExposureClassification_initWithCoder___block_invoke(uint64_t a1, void **a2, void *a3)
{
  v8 = a3;
  if ([*(a1 + 32) containsValueForKey:?])
  {
    v5 = MEMORY[0x277CCABB0];
    [*(a1 + 32) decodeDoubleForKey:v8];
    v6 = [v5 numberWithDouble:?];
    v7 = *a2;
    *a2 = v6;
  }
}

@end