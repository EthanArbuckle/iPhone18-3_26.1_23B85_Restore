@interface ENExposureDetectionSummary
- (ENExposureDetectionSummary)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ENExposureDetectionSummary

- (ENExposureDetectionSummary)initWithXPCObject:(id)a3 error:(id *)a4
{
  v35[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33.receiver = self;
  v33.super_class = ENExposureDetectionSummary;
  v7 = [(ENExposureDetectionSummary *)&v33 init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_29;
    }

LABEL_28:
    ENErrorF(2);
    *a4 = v17 = 0;
    goto LABEL_24;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_29;
  }

  v27 = 0;
  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_daysSinceLastExposure = v27;
  }

  else if (v8 == 5)
  {
    goto LABEL_29;
  }

  v27 = 0;
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_matchedKeyCount = v27;
  }

  else if (v9 == 5)
  {
    goto LABEL_29;
  }

  v27 = 0;
  v10 = CUXPCDecodeUInt64RangedEx();
  if (v10 != 6)
  {
    if (v10 != 5)
    {
      goto LABEL_13;
    }

LABEL_29:
    v17 = 0;
    goto LABEL_24;
  }

  v7->_maximumRiskScore = v27;
LABEL_13:
  if (!CUXPCDecodeDouble() || !CUXPCDecodeDouble())
  {
    goto LABEL_29;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = xpc_dictionary_get_array(v6, "daySummaries");
  v13 = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke;
  applier[3] = &unk_278A4B1E8;
  applier[4] = v11;
  applier[5] = &v27;
  xpc_array_apply(v12, applier);
  v14 = v28[5];
  if (v14)
  {
    if (a4)
    {
      v25 = v14;
      *a4 = v14;
    }
  }

  else
  {
    v15 = [v11 copy];
    daySummaries = v7->_daySummaries;
    v7->_daySummaries = v15;
  }

  _Block_object_dispose(&v27, 8);

  if (v14)
  {
    v17 = 0;
  }

  else
  {
LABEL_20:
    attenuationDurations = v7->_attenuationDurations;
    if (!attenuationDurations)
    {
      attenuationDurations = MEMORY[0x277CBEBF8];
    }

    v35[0] = attenuationDurations;
    v34[0] = @"attenuationDurations";
    v34[1] = @"maximumRiskScoreFullRange";
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v7->_maximumRiskScoreFullRange];
    v35[1] = v19;
    v34[2] = @"riskScoreSumFullRange";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v7->_riskScoreSumFullRange];
    v35[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    metadata = v7->_metadata;
    v7->_metadata = v21;

    v17 = v7;
  }

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureDaySummary alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureDaySummary *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_2();
    }
  }

  else
  {
    __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithXPCObject:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  attenuationDurations = self->_attenuationDurations;
  CUXPCEncodeNSArrayOfNSNumber();
  daysSinceLastExposure = self->_daysSinceLastExposure;
  if (daysSinceLastExposure)
  {
    xpc_dictionary_set_int64(v4, "daLE", daysSinceLastExposure);
  }

  matchedKeyCount = self->_matchedKeyCount;
  if (matchedKeyCount)
  {
    xpc_dictionary_set_uint64(v4, "mtKC", matchedKeyCount);
  }

  if (self->_maximumRiskScore)
  {
    xpc_dictionary_set_uint64(v4, "mxRS", self->_maximumRiskScore);
  }

  maximumRiskScoreFullRange = self->_maximumRiskScoreFullRange;
  if (maximumRiskScoreFullRange != 0.0)
  {
    xpc_dictionary_set_double(v4, "mxRSFR", maximumRiskScoreFullRange);
  }

  riskScoreSumFullRange = self->_riskScoreSumFullRange;
  if (riskScoreSumFullRange != 0.0)
  {
    xpc_dictionary_set_double(v4, "rssFR", riskScoreSumFullRange);
  }

  v10 = self->_daySummaries;
  if (v10)
  {
    v11 = xpc_array_create(0, 0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_daySummaries;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = xpc_dictionary_create(0, 0, 0);
          [v17 encodeWithXPCObject:{v18, v20}];
          xpc_array_set_value(v11, 0xFFFFFFFFFFFFFFFFLL, v18);
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    xpc_dictionary_set_value(v4, "daySummaries", v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  NSAppendPrintF_safe();
  v3 = 0;
  v4 = self->_attenuationDurations;
  if ([(NSArray *)v4 count])
  {
    attenuationDurations = self->_attenuationDurations;
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  daysSinceLastExposure = self->_daysSinceLastExposure;
  NSAppendPrintF_safe();
  v6 = v3;

  matchedKeyCount = self->_matchedKeyCount;
  NSAppendPrintF_safe();
  v7 = v6;

  maximumRiskScoreFullRange = self->_maximumRiskScoreFullRange;
  maximumRiskScore = self->_maximumRiskScore;
  NSAppendPrintF_safe();
  v8 = v7;

  riskScoreSumFullRange = self->_riskScoreSumFullRange;
  NSAppendPrintF_safe();
  v9 = v8;

  [(NSArray *)self->_daySummaries count:*&riskScoreSumFullRange];
  NSAppendPrintF_safe();
  v10 = v9;

  return v9;
}

void __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_1()
{
  ENErrorF(15);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

void __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_2()
{
  ENErrorF(12);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

@end