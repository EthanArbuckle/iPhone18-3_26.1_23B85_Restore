@interface ENExposureDetectionSession
- (ENExposureDetectionSession)init;
- (ENExposureDetectionSession)initWithXPCObject:(id)a3 error:(id *)a4;
- (double)estimateRiskWithExposureInfo:(id)a3 referenceTime:(double)a4 transmissionRiskLevel:(char *)a5 skip:(BOOL *)a6;
- (double)scoreWithExposureInfo:(id)a3 skip:(BOOL *)a4;
- (id)description;
- (void)_activateWithCompletionHandler:(id)a3;
- (void)_invalidated;
- (void)activateWithCompletionHandler:(id)a3;
- (void)addDiagnosisKeys:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)encodeWithXPCObject:(id)a3;
- (void)finishedDiagnosisKeysWithCompletionHandler:(id)a3;
- (void)getExposureInfoWithMaximumCount:(unint64_t)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)updateDaySummary:(id)a3 exposureInfo:(id)a4 score:(double)a5;
@end

@implementation ENExposureDetectionSession

- (ENExposureDetectionSession)init
{
  v7.receiver = self;
  v7.super_class = ENExposureDetectionSession;
  v2 = [(ENExposureDetectionSession *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(ENExposureConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v3;

    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v2->_maximumKeyCount = 1000;
    v5 = v2;
  }

  return v2;
}

- (ENExposureDetectionSession)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENExposureDetectionSession *)self init];
  if (!v7)
  {
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
LABEL_8:
      ENErrorF(2);
      *a4 = v8 = 0;
      goto LABEL_4;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_4;
  }

  [(ENExposureDetectionSession *)v6 initWithXPCObject:a4 error:v7, &v10];
  v8 = v10;
LABEL_4:

  return v8;
}

- (void)encodeWithXPCObject:(id)a3
{
  configuration = self->_configuration;
  if (configuration)
  {
    v5 = configuration;
    v6 = a3;
    value = xpc_dictionary_create(0, 0, 0);
    [(ENExposureConfiguration *)v5 encodeWithXPCObject:value];

    xpc_dictionary_set_value(v6, "expC", value);
  }
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    v2 = [ENExposureDetectionSession dealloc];
    [(ENExposureDetectionSession *)v2 description];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ENExposureDetectionSession;
    [(ENExposureDetectionSession *)&v4 dealloc];
  }
}

- (id)description
{
  NSAppendPrintF_safe();

  return 0;
}

- (void)activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ENExposureDetectionSession_activateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __60__ENExposureDetectionSession_activateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (((*(v2 + 8) & 1) != 0 || *(v2 + 9) == 1) && (ENErrorF(10), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v3;
    if (gLogCategory__ENExposureDetection <= 90 && (gLogCategory__ENExposureDetection != -1 || _LogCategory_Initialize()))
    {
      __60__ENExposureDetectionSession_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
    {
      __60__ENExposureDetectionSession_activateWithCompletionHandler___block_invoke_cold_2();
    }

    *(*(a1 + 32) + 8) = 1;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _activateWithCompletionHandler:v5];
  }
}

- (void)_activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ENManager);
  manager = self->_manager;
  self->_manager = v5;
  v7 = v5;

  [(ENManager *)v7 setDispatchQueue:self->_dispatchQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke;
  v11[3] = &unk_278A4B058;
  v11[4] = self;
  [(ENManager *)v7 setInvalidationHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278A4B080;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(ENManager *)v7 exposureDetectionActivate:self completion:v9];
}

uint64_t __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory__ENExposureDetection <= 90 && (gLogCategory__ENExposureDetection != -1 || _LogCategory_Initialize()))
    {
      __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
  {
    __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke_2_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ENExposureDetectionSession_invalidate__block_invoke;
  block[3] = &unk_278A4B058;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __40__ENExposureDetectionSession_invalidate__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENExposureDetection <= 30)
  {
    if (gLogCategory_ENExposureDetection != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __40__ENExposureDetectionSession_invalidate__block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 32);
  if ((*(v2 + 9) & 1) == 0)
  {
    *(v2 + 9) = 1;
    [*(*(v1 + 32) + 24) invalidate];
    v3 = *(v1 + 32);

    return [v3 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_manager)
  {
    v6 = MEMORY[0x2383EE560](self->_invalidationHandler, a2);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v4 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6);
      v4 = v6;
    }

    self->_invalidateDone = 1;
    if (gLogCategory_ENExposureDetection <= 30)
    {
      if (gLogCategory_ENExposureDetection != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        [ENExposureDetectionSession _invalidated];
        v4 = v6;
      }
    }
  }
}

- (void)addDiagnosisKeys:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ENExposureDetectionSession_addDiagnosisKeys_completionHandler___block_invoke;
  block[3] = &unk_278A4B0D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __65__ENExposureDetectionSession_addDiagnosisKeys_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = v2;
  v4 = *(a1 + 40);
  if ((*(v4 + 8) != 1 || !*(v4 + 24) || *(v4 + 9) == 1 || *(v4 + 11) == 1 || v2 > *(v4 + 64) - *(v4 + 16)) && (ENErrorF(10), v5 = objc_claimAutoreleasedReturnValue(), (v8 = v5) != 0))
  {
    v13 = v5;
    if (gLogCategory__ENExposureDetection <= 90)
    {
      if (gLogCategory__ENExposureDetection != -1 || (v9 = _LogCategory_Initialize(), v8 = v13, v9))
      {
        __65__ENExposureDetectionSession_addDiagnosisKeys_completionHandler___block_invoke_cold_1();
        v8 = v13;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v8, v6, v7);
  }

  else
  {
    if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
    {
      __65__ENExposureDetectionSession_addDiagnosisKeys_completionHandler___block_invoke_cold_2();
    }

    *(*(a1 + 40) + 16) += v3;
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(v10 + 24);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__ENExposureDetectionSession_addDiagnosisKeys_completionHandler___block_invoke_2;
    v14[3] = &unk_278A4B0A8;
    v14[4] = v10;
    v16 = v3;
    v15 = *(a1 + 48);
    [v12 exposureDetectionAddKeys:v11 completion:v14];
    *(*(a1 + 40) + 32) += v3;
  }
}

- (void)finishedDiagnosisKeysWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ENExposureDetectionSession_finishedDiagnosisKeysWithCompletionHandler___block_invoke;
  v7[3] = &unk_278A4B030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __73__ENExposureDetectionSession_finishedDiagnosisKeysWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if ((*(v2 + 8) != 1 || !*(v2 + 24) || (*(v2 + 9) & 1) != 0 || *(v2 + 11) == 1) && (ENErrorF(10), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    if (gLogCategory__ENExposureDetection <= 90 && (gLogCategory__ENExposureDetection != -1 || _LogCategory_Initialize()))
    {
      __73__ENExposureDetectionSession_finishedDiagnosisKeysWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
    {
      __73__ENExposureDetectionSession_finishedDiagnosisKeysWithCompletionHandler___block_invoke_cold_2(v3);
    }

    *(*(a1 + 32) + 11) = 1;
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);

    [v6 exposureDetectionFinishWithCompletion:v5];
  }
}

- (void)getExposureInfoWithMaximumCount:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ENExposureDetectionSession_getExposureInfoWithMaximumCount_completionHandler___block_invoke;
  block[3] = &unk_278A4B0F8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void __80__ENExposureDetectionSession_getExposureInfoWithMaximumCount_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 8) != 1 || (v3 = *(v2 + 24)) == 0 || (*(v2 + 9) & 1) != 0 || (*(v2 + 11) & 1) == 0)
  {
    v4 = ENErrorF(10);
    if (v4)
    {
      v7 = v4;
      (*(a1[5] + 16))();

      return;
    }

    v3 = *(a1[4] + 24);
  }

  v6 = a1[5];
  v5 = a1[6];

  [v3 exposureDetectionGetExposureInfoWithMaximumCount:v5 completion:v6];
}

- (double)estimateRiskWithExposureInfo:(id)a3 referenceTime:(double)a4 transmissionRiskLevel:(char *)a5 skip:(BOOL *)a6
{
  v10 = a3;
  v11 = self->_configuration;
  if (([(ENExposureConfiguration *)v11 flags]& 2) != 0)
  {
    [(ENExposureDetectionSession *)self scoreWithExposureInfo:v10 skip:a6];
    v20 = v19;
  }

  else
  {
    -[ENExposureConfiguration attenuationLevelValueWithAttenuation:](v11, "attenuationLevelValueWithAttenuation:", [v10 attenuationValue]);
    v13 = v12;
    v14 = [v10 date];
    v15 = v14;
    if (v14)
    {
      [v14 timeIntervalSinceReferenceDate];
      v17 = a4 - v16;
      if (v17 > 9.22337204e18)
      {
        v17 = 9.22337204e18;
      }

      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      v18 = (v17 / 86400.0);
    }

    else
    {
      v18 = 0;
    }

    [(ENExposureConfiguration *)v11 daysSinceLastExposureLevelValueWithDays:v18];
    v22 = v21;
    [v10 duration];
    [(ENExposureConfiguration *)v11 durationLevelValueWithDuration:?];
    v24 = v23;
    -[ENExposureConfiguration transmissionLevelValueWithTransmissionRiskLevel:](v11, "transmissionLevelValueWithTransmissionRiskLevel:", [v10 transmissionRiskLevel]);
    v26 = v25;
    if (a5)
    {
      *a5 = [v10 transmissionRiskLevel];
    }

    v20 = v13 * v22 * v24 * v26;
    *a6 = 0;
  }

  return v20;
}

- (double)scoreWithExposureInfo:(id)a3 skip:(BOOL *)a4
{
  v6 = a3;
  v7 = self->_configuration;
  v17 = 0;
  -[ENExposureConfiguration infectiousnessWeightWithDaysSinceOnsetOfSymptoms:skip:](v7, "infectiousnessWeightWithDaysSinceOnsetOfSymptoms:skip:", [v6 daysSinceOnsetOfSymptoms], &v17);
  v9 = v17;
  *a4 = v17;
  v10 = 0.0;
  if (!v9)
  {
    v11 = v8;
    -[ENExposureConfiguration reportTypeWeightWithReportType:skip:](v7, "reportTypeWeightWithReportType:skip:", [v6 diagnosisReportType], &v17);
    v13 = v17;
    *a4 = v17;
    if (!v13)
    {
      v14 = v12;
      [(ENExposureConfiguration *)v7 weightedDurationWithExposureInfo:v6];
      v10 = v14 / 100.0 * (v11 / 100.0 * v15);
    }
  }

  return v10;
}

- (void)updateDaySummary:(id)a3 exposureInfo:(id)a4 score:(double)a5
{
  v21 = a3;
  v8 = a4;
  v9 = [v21 daySummary];
  if (!v9)
  {
    v9 = objc_alloc_init(ENExposureSummaryItem);
    [v21 setDaySummary:v9];
  }

  [(ENExposureConfiguration *)self->_configuration weightedDurationWithExposureInfo:v8];
  v11 = v10;
  [(ENExposureSummaryItem *)v9 maximumScore];
  if (v12 < a5)
  {
    [(ENExposureSummaryItem *)v9 setMaximumScore:a5];
  }

  [(ENExposureSummaryItem *)v9 scoreSum];
  [(ENExposureSummaryItem *)v9 setScoreSum:v13 + a5];
  [(ENExposureSummaryItem *)v9 weightedDurationSum];
  [(ENExposureSummaryItem *)v9 setWeightedDurationSum:v11 + v14];
  v15 = -[ENExposureConfiguration mappedDiagnosisReportType:](self->_configuration, "mappedDiagnosisReportType:", [v8 diagnosisReportType]);
  v16 = 0;
  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      v17 = [v21 confirmedTestSummary];
      if (!v17)
      {
        v16 = objc_alloc_init(ENExposureSummaryItem);
        [v21 setConfirmedTestSummary:v16];
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_18;
      }

      v17 = [v21 confirmedClinicalDiagnosisSummary];
      if (!v17)
      {
        v16 = objc_alloc_init(ENExposureSummaryItem);
        [v21 setConfirmedClinicalDiagnosisSummary:v16];
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (v15 != 3)
  {
    if (v15 != 4)
    {
      goto LABEL_18;
    }

    v17 = [v21 recursiveSummary];
    if (!v17)
    {
      v16 = objc_alloc_init(ENExposureSummaryItem);
      [v21 setRecursiveSummary:v16];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = [v21 selfReportedSummary];
  if (v17)
  {
LABEL_17:
    v16 = v17;
    goto LABEL_18;
  }

  v16 = objc_alloc_init(ENExposureSummaryItem);
  [v21 setSelfReportedSummary:v16];
LABEL_18:
  [(ENExposureSummaryItem *)v16 maximumScore];
  if (v18 < a5)
  {
    [(ENExposureSummaryItem *)v16 setMaximumScore:a5];
  }

  [(ENExposureSummaryItem *)v16 scoreSum];
  [(ENExposureSummaryItem *)v16 setScoreSum:v19 + a5];
  [(ENExposureSummaryItem *)v16 weightedDurationSum];
  [(ENExposureSummaryItem *)v16 setWeightedDurationSum:v11 + v20];
}

- (void)initWithXPCObject:(void *)a3 error:(ENExposureConfiguration *)a4 .cold.1(void *a1, uint64_t a2, void *a3, ENExposureConfiguration **a4)
{
  v9 = xpc_dictionary_get_value(a1, "expC");
  if (v9)
  {
    v7 = [[ENExposureConfiguration alloc] initWithXPCObject:v9 error:a2];
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = a3[7];
    a3[7] = v7;
  }

  v7 = a3;
LABEL_5:
  *a4 = v7;
}

void __60__ENExposureDetectionSession_activateWithCompletionHandler___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __61__ENExposureDetectionSession__activateWithCompletionHandler___block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __65__ENExposureDetectionSession_addDiagnosisKeys_completionHandler___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __73__ENExposureDetectionSession_finishedDiagnosisKeysWithCompletionHandler___block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

@end