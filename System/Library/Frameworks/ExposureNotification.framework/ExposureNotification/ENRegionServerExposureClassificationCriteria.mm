@interface ENRegionServerExposureClassificationCriteria
+ (BOOL)getCriteria:(id *)criteria fromDictionary:(id)dictionary index:(unsigned __int8)index;
- (ENRegionServerExposureClassificationCriteria)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_classificationName forKey:@"name"];
  if (self->_index)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  [coderCopy encodeInt64:self->_perDaySumERVThreshold forKey:@"pdsTh"];
  [coderCopy encodeInt64:self->_perDayMaxERVThreshold forKey:@"pdsMax"];
  [coderCopy encodeObject:self->_perDaySumERVThresholdsByDiagnosisReportType forKey:@"pdsThDRT"];
  [coderCopy encodeInt64:self->_weightedDurationAtAttenuationThreshold forKey:@"wdaa"];
}

+ (BOOL)getCriteria:(id *)criteria fromDictionary:(id)dictionary index:(unsigned __int8)index
{
  dictionaryCopy = dictionary;
  if (criteria && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__ENRegionServerExposureClassificationCriteria_getCriteria_fromDictionary_index___block_invoke;
    v28[3] = &unk_278A4B428;
    indexCopy = index;
    v29 = dictionaryCopy;
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
          criteriaCopy = criteria;
          v25 = dictionaryCopy;
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

              v17->_index = index;
              v17->_perDaySumERVThreshold = [v10 unsignedIntValue];
              v17->_perDayMaxERVThreshold = [v11 unsignedIntValue];
              v20 = [v12 copy];
              perDaySumERVThresholdsByDiagnosisReportType = v17->_perDaySumERVThresholdsByDiagnosisReportType;
              v17->_perDaySumERVThresholdsByDiagnosisReportType = v20;

              v17->_weightedDurationAtAttenuationThreshold = [v15 unsignedIntValue];
              v22 = v17;
              *criteriaCopy = v17;
            }
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          dictionaryCopy = v25;
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
      *criteria = 0;
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

- (ENRegionServerExposureClassificationCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"pdsThDRT"];
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

      self->_perDaySumERVThreshold = [coderCopy decodeInt64ForKey:@"pdsTh"];
      self->_perDayMaxERVThreshold = [coderCopy decodeInt64ForKey:@"pdsMax"];
      objc_storeStrong(&self->_perDaySumERVThresholdsByDiagnosisReportType, v9);
      self->_weightedDurationAtAttenuationThreshold = [coderCopy decodeInt64ForKey:@"wdaa"];
      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end