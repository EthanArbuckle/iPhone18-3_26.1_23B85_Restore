@interface ENExposureWindow
- (ENExposureWindow)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ENExposureWindow

- (ENExposureWindow)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENExposureWindow *)self init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_30;
    }

LABEL_29:
    ENErrorF(2);
    *a4 = v20 = 0;
    goto LABEL_25;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v24 = 0;
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_calibrationConfidence = v24;
  }

  else if (v8 == 5)
  {
    goto LABEL_30;
  }

  v30 = 0.0;
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_30;
  }

  if (v30 != 0.0)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v30];
    date = v7->_date;
    v7->_date = v9;
  }

  v24 = 0;
  v11 = CUXPCDecodeUInt64RangedEx();
  if (v11 == 6)
  {
    v7->_diagnosisReportType = v24;
  }

  else if (v11 == 5)
  {
    goto LABEL_30;
  }

  v24 = 0;
  v12 = CUXPCDecodeUInt64RangedEx();
  if (v12 == 6)
  {
    v7->_infectiousness = v24;
  }

  else if (v12 == 5)
  {
    goto LABEL_30;
  }

  v24 = 0;
  v13 = CUXPCDecodeUInt64RangedEx();
  if (v13 == 6)
  {
    v7->_variantOfConcernType = v24;
    goto LABEL_18;
  }

  if (v13 == 5)
  {
LABEL_30:
    v20 = 0;
    goto LABEL_25;
  }

LABEL_18:
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = xpc_dictionary_get_array(v6, "scanInst");
  v16 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __44__ENExposureWindow_initWithXPCObject_error___block_invoke;
  applier[3] = &unk_278A4B1E8;
  applier[4] = v14;
  applier[5] = &v24;
  xpc_array_apply(v15, applier);
  v17 = v25[5];
  if (v17)
  {
    if (a4)
    {
      v22 = v17;
      *a4 = v17;
    }
  }

  else
  {
    v18 = [v14 copy];
    scanInstances = v7->_scanInstances;
    v7->_scanInstances = v18;
  }

  _Block_object_dispose(&v24, 8);

  if (v17)
  {
    v20 = 0;
  }

  else
  {
LABEL_23:
    v20 = v7;
  }

LABEL_25:
  return v20;
}

BOOL __44__ENExposureWindow_initWithXPCObject_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENScanInstance alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENScanInstance *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __44__ENExposureWindow_initWithXPCObject_error___block_invoke_cold_2();
    }
  }

  else
  {
    __44__ENExposureWindow_initWithXPCObject_error___block_invoke_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithXPCObject:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_calibrationConfidence)
  {
    xpc_dictionary_set_uint64(v4, "caliConf", self->_calibrationConfidence);
  }

  v6 = self->_date;
  v7 = v6;
  if (v6)
  {
    [(NSDate *)v6 timeIntervalSinceReferenceDate];
    if (v8 != 0.0)
    {
      xpc_dictionary_set_double(v5, "tims", v8);
    }
  }

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType)
  {
    xpc_dictionary_set_uint64(v5, "dRT", diagnosisReportType);
  }

  infectiousness = self->_infectiousness;
  if (infectiousness)
  {
    xpc_dictionary_set_uint64(v5, "infect", infectiousness);
  }

  variantOfConcernType = self->_variantOfConcernType;
  if (variantOfConcernType)
  {
    xpc_dictionary_set_uint64(v5, "vcRT", variantOfConcernType);
  }

  v12 = self->_scanInstances;
  if (v12)
  {
    v13 = xpc_array_create(0, 0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_scanInstances;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          v20 = xpc_dictionary_create(0, 0, 0);
          [v19 encodeWithXPCObject:{v20, v22}];
          xpc_array_set_value(v13, 0xFFFFFFFFFFFFFFFFLL, v20);
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    xpc_dictionary_set_value(v5, "scanInst", v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  NSAppendPrintF_safe();
  v20 = 0;
  date = self->_date;
  NSAppendPrintF_safe();
  v3 = v20;

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType <= 5)
  {
    v5 = off_278A4B280[diagnosisReportType];
  }

  NSAppendPrintF_safe();
  v6 = v3;

  infectiousness = self->_infectiousness;
  if (infectiousness <= 2)
  {
    v8 = off_278A4B2B0[infectiousness];
  }

  NSAppendPrintF_safe();
  v9 = v6;

  calibrationConfidence = self->_calibrationConfidence;
  if (calibrationConfidence <= 3)
  {
    v11 = off_278A4B2C8[calibrationConfidence];
  }

  NSAppendPrintF_safe();
  v12 = v9;

  variantOfConcernType = self->_variantOfConcernType;
  if (variantOfConcernType > 4)
  {
    v14 = "?";
  }

  else
  {
    v14 = off_278A4B2E8[variantOfConcernType];
  }

  v19 = v14;
  NSAppendPrintF_safe();
  v15 = v12;

  [(NSArray *)self->_scanInstances count];
  NSAppendPrintF_safe();
  v16 = v15;

  return v15;
}

void __44__ENExposureWindow_initWithXPCObject_error___block_invoke_cold_1()
{
  ENErrorF(15);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

void __44__ENExposureWindow_initWithXPCObject_error___block_invoke_cold_2()
{
  ENErrorF(12);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

@end