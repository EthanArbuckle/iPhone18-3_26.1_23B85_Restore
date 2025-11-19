@interface MPSCounterStatistics
- (BOOL)haveConvergedOn:(unint64_t)a3;
- (NSArray)getRawData;
- (counterStats_t)getCounterResults;
- (id)getGeneralStatistics;
- (id)initializeWithPassList:(id)a3 numberOfEncodersInCurrentWorkload:(unint64_t)a4 numEncodesPerCommandBuffer:(unint64_t)a5 extraRequestedCounter:(id)a6 userSpecifiedIterations:(BOOL)a7 vendor:(unint64_t)a8 useGRC:(BOOL)a9;
- (unint64_t)numberOfDispatches;
- (void)addMPSCounterData:(id)a3;
- (void)clearStatistics;
- (void)dealloc;
- (void)printCounterResults;
- (void)setNumberOfEncodersInCurrentWorkload:(unint64_t)a3;
- (void)updateStatsForScope:(unint64_t)a3 withcurrentSample:(unint64_t *)a4 startSample:(unint64_t *)a5;
@end

@implementation MPSCounterStatistics

- (void)setNumberOfEncodersInCurrentWorkload:(unint64_t)a3
{
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  self->_numberOfEncodersInCurrentWorkload = a3;
  if (numberOfEncodersInCurrentWorkload != a3)
  {

    free(self->_metaDataContainer);
    free(self->_statsContainer);
    self->_metaDataContainer = malloc_type_malloc(88 * self->_numberOfEncodersInCurrentWorkload + 176, 0x1000040931E79F6uLL);
    self->_statsContainer = malloc_type_malloc(88 * self->_numberOfEncodersInCurrentWorkload + 176, 0x1000040931E79F6uLL);
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = objc_msgSend_initWithCapacity_(v5, v6, self->_numberOfEncodersInCurrentWorkload + 2, v7, v8);
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_initWithCapacity_(v10, v11, self->_numberOfEncodersInCurrentWorkload + 2, v12, v13);
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_initWithCapacity_(v15, v16, self->_numberOfEncodersInCurrentWorkload + 2, v17, v18);
    self->_cycleCounterStatistics = v9;
    self->_timingCounterStatistics = v14;
    self->_extraCounterStatistics = v19;
    if (self->_numberOfEncodersInCurrentWorkload != -2)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = &self->_metaDataContainer[v21];
        *&v23->var4 = 0u;
        *&v23->var6 = 0u;
        v23->var10 = 0.0;
        *&v23->var8 = 0u;
        *&v23->var0 = 0u;
        *&v23->var2 = 0u;
        v23->var4 = INFINITY;
        v23->var1 = 1.84467441e19;
        v23->var7 = 1.84467441e19;
        v24 = objc_opt_new();
        objc_msgSend_setObject_atIndexedSubscript_(v9, v25, v24, v22, v26);
        v27 = objc_opt_new();
        objc_msgSend_setObject_atIndexedSubscript_(v14, v28, v27, v22, v29);
        v30 = objc_opt_new();
        objc_msgSend_setObject_atIndexedSubscript_(v20, v31, v30, v22++, v32);
        ++v21;
      }

      while (self->_numberOfEncodersInCurrentWorkload + 2 > v22);
    }
  }
}

- (id)initializeWithPassList:(id)a3 numberOfEncodersInCurrentWorkload:(unint64_t)a4 numEncodesPerCommandBuffer:(unint64_t)a5 extraRequestedCounter:(id)a6 userSpecifiedIterations:(BOOL)a7 vendor:(unint64_t)a8 useGRC:(BOOL)a9
{
  v81.receiver = self;
  v81.super_class = MPSCounterStatistics;
  v15 = [(MPSCounterStatistics *)&v81 init];
  *(v15 + 1) = objc_alloc_init(MEMORY[0x277CBEB18]);
  *(v15 + 2) = a4;
  *(v15 + 3) = a3;
  *(v15 + 10) = 0;
  *(v15 + 20) = a8;
  *(v15 + 18) = a5;
  if (!a9)
  {
    if (a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = @"MTLStatVertexCost";
    }

    *(v15 + 11) = v16;
  }

  v17 = a4 + 2;
  *(v15 + 12) = malloc_type_malloc(88 * (a4 + 2), 0x1000040931E79F6uLL);
  *(v15 + 13) = malloc_type_malloc(88 * (a4 + 2), 0x1000040931E79F6uLL);
  v18 = objc_alloc_init(GeneralStatistics);
  v19 = MEMORY[0x277CBEBF8];
  *(v15 + 14) = v18;
  *(v15 + 15) = v19;
  *(v15 + 16) = v19;
  *(v15 + 17) = v19;
  if (a4 != -2)
  {
    v20 = 0;
    do
    {
      v21 = *(v15 + 12) + v20;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0u;
      *(v21 + 80) = 0;
      *(v21 + 64) = 0u;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0x7FF0000000000000;
      *(v21 + 8) = 0x43F0000000000000;
      *(v21 + 56) = 0x43F0000000000000;
      v22 = *(v15 + 15);
      v23 = objc_opt_new();
      *(v15 + 15) = objc_msgSend_arrayByAddingObject_(v22, v24, v23, v25, v26);
      v27 = *(v15 + 16);
      v28 = objc_opt_new();
      *(v15 + 16) = objc_msgSend_arrayByAddingObject_(v27, v29, v28, v30, v31);
      v32 = *(v15 + 17);
      v33 = objc_opt_new();
      *(v15 + 17) = objc_msgSend_arrayByAddingObject_(v32, v34, v33, v35, v36);
      v20 += 88;
      --v17;
    }

    while (v17);
    v19 = *(v15 + 15);
  }

  v37 = v19;
  v38 = *(v15 + 16);
  v39 = *(v15 + 17);
  if (!a7)
  {
    v43 = objc_msgSend_objectAtIndexedSubscript_(*(v15 + 15), v40, a4 + 1, v41, v42);
    objc_msgSend_ignoreNextNValues_(v43, v44, 5, v45, v46);
    v50 = objc_msgSend_objectAtIndexedSubscript_(*(v15 + 16), v47, a4 + 1, v48, v49);
    objc_msgSend_ignoreNextNValues_(v50, v51, 5, v52, v53);
    v57 = objc_msgSend_objectAtIndexedSubscript_(*(v15 + 17), v54, a4 + 1, v55, v56);
    objc_msgSend_ignoreNextNValues_(v57, v58, 5, v59, v60);
  }

  if (a9)
  {
    *(v15 + 2) = vdupq_n_s64(1uLL);
    *(v15 + 3) = xmmword_239916E20;
    *(v15 + 8) = 2;
    v61 = 4;
  }

  else
  {
    *(v15 + 4) = objc_msgSend_indexOfObject_(*(v15 + 3), v40, @"MTLStatCommandBufferIndex", v41, v42);
    *(v15 + 5) = objc_msgSend_indexOfObject_(*(v15 + 3), v62, @"MTLStatEncoderIndex", v63, v64);
    *(v15 + 6) = objc_msgSend_indexOfObject_(*(v15 + 3), v65, @"MTLStatCommandIndex", v66, v67);
    *(v15 + 7) = objc_msgSend_indexOfObject_(*(v15 + 3), v68, @"MTLStat_nSec", v69, v70);
    v74 = *(v15 + 3);
    v75 = *(v15 + 20) - 1;
    if (v75 > 2)
    {
      v76 = objc_msgSend_indexOfObject_(v74, v71, @"MTLStatTotalGPUCycles", v72, v73);
    }

    else
    {
      v76 = objc_msgSend_indexOfObject_(v74, v71, off_278AA8A80[v75], v72, v73);
    }

    *(v15 + 8) = v76;
    v61 = objc_msgSend_indexOfObject_(*(v15 + 3), v77, *(v15 + 11), v78, v79);
  }

  *(v15 + 9) = v61;
  *(v15 + 19) = dispatch_semaphore_create(1);
  *(v15 + 22) = 0;
  *(v15 + 23) = 0;
  *(v15 + 21) = 0;
  *(v15 + 12) = xmmword_239916E30;
  *(v15 + 13) = xmmword_239916E30;
  *(v15 + 14) = xmmword_239916E30;
  *(v15 + 240) = 0;
  return v15;
}

- (void)clearStatistics
{
  self->_rawData = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_iterationsDone = 0;

  self->_generalContainer = objc_alloc_init(GeneralStatistics);
  if (self->_numberOfEncodersInCurrentWorkload == -2)
  {
    self->_workloadEncodersCyclesTaken = 0.0;
    self->_workloadEncodersTimeTaken = 0.0;
    self->_workloadEncodersExtraTaken = 0.0;
    *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
    *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
    *&self->_workloadEncodersExtraMin = xmmword_239916E30;
    self->_workloadEcoderRunningStatsValid = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = &self->_metaDataContainer[v6];
      *&v8->var4 = 0uLL;
      *&v8->var6 = 0uLL;
      v8->var10 = 0.0;
      *&v8->var8 = 0uLL;
      *&v8->var0 = 0uLL;
      *&v8->var2 = 0uLL;
      v8->var4 = INFINITY;
      v8->var1 = 1.84467441e19;
      v8->var7 = 1.84467441e19;
      ++v7;
      numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
      ++v6;
    }

    while (numberOfEncodersInCurrentWorkload + 2 > v7);
    self->_workloadEncodersCyclesTaken = 0.0;
    self->_workloadEncodersTimeTaken = 0.0;
    self->_workloadEncodersExtraTaken = 0.0;
    *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
    *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
    *&self->_workloadEncodersExtraMin = xmmword_239916E30;
    self->_workloadEcoderRunningStatsValid = 0;
    if (numberOfEncodersInCurrentWorkload != -2)
    {
      v10 = 0;
      do
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v3, v10, v4, v5);
        objc_msgSend_reset(v11, v12, v13, v14, v15);
        v19 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v16, v10, v17, v18);
        objc_msgSend_reset(v19, v20, v21, v22, v23);
        v27 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v24, v10, v25, v26);
        objc_msgSend_reset(v27, v28, v29, v30, v31);
        ++v10;
      }

      while (self->_numberOfEncodersInCurrentWorkload + 2 > v10);
    }
  }
}

- (NSArray)getRawData
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = objc_msgSend_initWithArray_(v3, v4, self->_rawData, v5, v6);

  return v7;
}

- (void)addMPSCounterData:(id)a3
{
  dispatch_semaphore_wait(self->_updateStatisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_addObject_(self->_rawData, v5, a3, v6, v7);
  v12 = objc_msgSend_rawData(a3, v8, v9, v10, v11);
  v17 = objc_msgSend_bytes(v12, v13, v14, v15, v16);
  v22 = v17;
  if (v17[self->_encoderOffset] % self->_numberOfEncodersInCurrentWorkload)
  {
    v23 = objc_msgSend_count(self->_passList, v18, v19, v20, v21);
    v28 = objc_msgSend_numberOfSamples(a3, v24, v25, v26, v27);
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    self->_workloadFirstSample = v17;
    self->_previousEncoderStartSample = v17;
    self->_previousSample = v17;
    self->_workloadEncodersTimeTaken = 0.0;
    self->_workloadEncodersExtraTaken = 0.0;
    self->_workloadEncodersCyclesTaken = 0.0;
    *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
    *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
    *&self->_workloadEncodersExtraMin = xmmword_239916E30;
    self->_workloadEcoderRunningStatsValid = 1;
    v23 = objc_msgSend_count(self->_passList, v18, v19, v20, v21);
    v28 = objc_msgSend_numberOfSamples(a3, v30, v31, v32, v33);
    if (!v28)
    {
LABEL_7:
      v35 = v22;
      goto LABEL_8;
    }
  }

  if (v22[self->_commandOffset])
  {
    self->_previousSample = v22;
    v34 = v28 - 1;
    if (v28 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    self->_previousEncoderStartSample = v22;
    self->_previousSample = v22;
    v34 = v28 - 1;
    if (v28 == 1)
    {
      goto LABEL_7;
    }
  }

  v38 = v23;
  do
  {
    v35 = &v22[v38];
    if (!v22[self->_commandOffset + v38])
    {
      objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v29, 0, v22, self->_previousEncoderStartSample);
      if (!(v22[self->_encoderOffset + v38] % self->_numberOfEncodersInCurrentWorkload))
      {
        ++self->_iterationsDone;
        objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v29, 1, v22, self->_workloadFirstSample);
        self->_workloadFirstSample = v35;
      }

      self->_previousEncoderStartSample = v35;
    }

    self->_previousSample = v35;
    v22 = (v22 + v38 * 8);
    --v34;
  }

  while (v34);
LABEL_8:
  objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v29, 0, v35, self->_previousEncoderStartSample);
  if (!((v35[self->_encoderOffset] + 1) % self->_numberOfEncodersInCurrentWorkload))
  {
    ++self->_iterationsDone;
    objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v36, 1, v35, self->_workloadFirstSample);
  }

  updateStatisticsSemaphore = self->_updateStatisticsSemaphore;

  dispatch_semaphore_signal(updateStatisticsSemaphore);
}

- (void)updateStatsForScope:(unint64_t)a3 withcurrentSample:(unint64_t *)a4 startSample:(unint64_t *)a5
{
  if (a3 == 1)
  {
    numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
    cyclesOffset = self->_cyclesOffset;
    v9 = a4[cyclesOffset];
    workloadEncodersCyclesMin = a5[cyclesOffset];
    v11 = v9 - workloadEncodersCyclesMin;
    if (v9 < workloadEncodersCyclesMin)
    {
      goto LABEL_6;
    }
  }

  else
  {
    numberOfEncodersInCurrentWorkload = a5[self->_encoderOffset] % self->_numberOfEncodersInCurrentWorkload;
    cyclesOffset = self->_cyclesOffset;
    v12 = a4[cyclesOffset];
    workloadEncodersCyclesMin = a5[cyclesOffset];
    v11 = v12 - workloadEncodersCyclesMin;
    if (v12 < workloadEncodersCyclesMin)
    {
LABEL_6:
      self->_workloadEcoderRunningStatsValid = 0;
      return;
    }
  }

  timeOffset = self->_timeOffset;
  v14 = *&a4[timeOffset];
  v15 = *&a5[timeOffset];
  if (*&v14 < *&v15)
  {
    goto LABEL_6;
  }

  if (!self->_timeStampSampleDouble)
  {
    *&v5 = self->_timeStampScaleFactor * (*&v14 - *&v15);
    v95 = v5;
    if (a3 != 1)
    {
      goto LABEL_9;
    }

LABEL_19:
    if (self->_workloadEcoderRunningStatsValid)
    {
      p_workloadEncodersCyclesTaken = &self->_workloadEncodersCyclesTaken;
      v24 = numberOfEncodersInCurrentWorkload + 1;
      v25 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload + 1];
      var2 = v25->var2;
      v25->var3 = self->_workloadEncodersCyclesTaken + v25->var3;
      var1 = v25->var1;
      v28 = var2 + self->_workloadEncodersCyclesTaken * self->_workloadEncodersCyclesTaken;
      ++v25->var0;
      v25->var2 = v28;
      v25->var1 = fmin(self->_workloadEncodersCyclesTaken, var1);
      encoderCoalescing = self->_encoderCoalescing;
      v30 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, a2, numberOfEncodersInCurrentWorkload + 1, a4, a5);
      v35 = *p_workloadEncodersCyclesTaken;
      if (encoderCoalescing)
      {
        objc_msgSend_addSumOfNValues_n_(v30, v31, self->_numEncodesPerCommandBuffer, v33, v34, v35);
      }

      else
      {
        objc_msgSend_addValue_(v30, v31, v32, v33, v34, v35);
      }

      v39 = &self->_metaDataContainer[v24];
      var5 = v39->var5;
      v39->var6 = self->_workloadEncodersTimeTaken + v39->var6;
      var4 = v39->var4;
      v39->var5 = var5 + self->_workloadEncodersTimeTaken * self->_workloadEncodersTimeTaken;
      v39->var4 = fmin(self->_workloadEncodersTimeTaken, var4);
      v42 = self->_encoderCoalescing;
      v43 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v36, numberOfEncodersInCurrentWorkload + 1, v37, v38, v95);
      workloadEncodersTimeTaken = self->_workloadEncodersTimeTaken;
      if (v42)
      {
        objc_msgSend_addSumOfNValues_n_(v43, v44, self->_numEncodesPerCommandBuffer, v46, v47, workloadEncodersTimeTaken);
      }

      else
      {
        objc_msgSend_addValue_(v43, v44, v45, v46, v47, workloadEncodersTimeTaken);
      }

      v52 = &self->_metaDataContainer[v24];
      var9 = v52->var9;
      v52->var10 = self->_workloadEncodersExtraTaken + v52->var10;
      v52->var9 = var9 + self->_workloadEncodersExtraTaken * self->_workloadEncodersExtraTaken;
      var8 = v52->var8;
      v52->var7 = fmin(self->_workloadEncodersExtraTaken, v52->var7);
      v52->var8 = fmax(self->_workloadEncodersExtraTaken, var8);
      v55 = self->_encoderCoalescing;
      v56 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v49, numberOfEncodersInCurrentWorkload + 1, v50, v51);
      workloadEncodersExtraTaken = self->_workloadEncodersExtraTaken;
      if (v55)
      {
        objc_msgSend_addSumOfNValues_n_(v56, v57, self->_numEncodesPerCommandBuffer, v59, v60, workloadEncodersExtraTaken);
      }

      else
      {
        objc_msgSend_addValue_(v56, v57, v58, v59, v60, workloadEncodersExtraTaken);
      }

      *p_workloadEncodersCyclesTaken = 0.0;
      self->_workloadEncodersTimeTaken = 0.0;
      self->_workloadEncodersExtraTaken = 0.0;
      *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
      *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
      *&self->_workloadEncodersExtraMin = xmmword_239916E30;
      self->_workloadEcoderRunningStatsValid = 1;
    }

    goto LABEL_30;
  }

  *&v5 = (v14 - v15) * self->_timeStampScaleFactor;
  v95 = v5;
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  workloadEncodersCyclesMax = self->_workloadEncodersCyclesMax;
  if (self->_workloadEncodersCyclesMin < workloadEncodersCyclesMin)
  {
    workloadEncodersCyclesMin = self->_workloadEncodersCyclesMin;
  }

  *&v17.f64[1] = v5;
  v17.f64[0] = v11;
  *&self->_workloadEncodersCyclesTaken = vaddq_f64(*&self->_workloadEncodersCyclesTaken, v17);
  v18 = self->_workloadEncodersExtraTaken + 0.0;
  self->_workloadEncodersCyclesMin = workloadEncodersCyclesMin;
  v19 = a4[cyclesOffset];
  if (workloadEncodersCyclesMax > v19)
  {
    v19 = workloadEncodersCyclesMax;
  }

  self->_workloadEncodersCyclesMax = v19;
  workloadEncodersTimestampMin = a5[timeOffset];
  workloadEncodersTimestampMax = self->_workloadEncodersTimestampMax;
  if (self->_workloadEncodersTimestampMin < workloadEncodersTimestampMin)
  {
    workloadEncodersTimestampMin = self->_workloadEncodersTimestampMin;
  }

  self->_workloadEncodersTimestampMin = workloadEncodersTimestampMin;
  v22 = a4[timeOffset];
  self->_workloadEncodersExtraTaken = v18;
  if (workloadEncodersTimestampMax > v22)
  {
    v22 = workloadEncodersTimestampMax;
  }

  self->_workloadEncodersTimestampMax = v22;
  self->_workloadEncodersExtraMin = 0;
  self->_workloadEncodersExtraMax = 0;
LABEL_30:
  v62 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload];
  v63 = v62->var3 + v11;
  v64 = v62->var1;
  v65 = v62->var2 + (v11 * v11);
  ++v62->var0;
  v62->var2 = v65;
  v62->var3 = v63;
  v62->var1 = fmin(v11, v64);
  v66 = self->_encoderCoalescing;
  v67 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, a2, numberOfEncodersInCurrentWorkload, a4, a5, v95);
  if (v66)
  {
    objc_msgSend_addSumOfNValues_n_(v67, v68, self->_numEncodesPerCommandBuffer, v70, v71, v11);
  }

  else
  {
    objc_msgSend_addValue_(v67, v68, v69, v70, v71, v11);
  }

  v75.f64[0] = v96 * v96;
  v76 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload];
  v75.f64[1] = v96;
  *&v76->var5 = vaddq_f64(v75, *&v76->var5);
  v76->var4 = fmin(v96, v76->var4);
  v77 = self->_encoderCoalescing;
  v78 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v72, numberOfEncodersInCurrentWorkload, v73, v74);
  if (v77)
  {
    objc_msgSend_addSumOfNValues_n_(v78, v79, self->_numEncodesPerCommandBuffer, v81, v82, v96);
  }

  else
  {
    objc_msgSend_addValue_(v78, v79, v80, v81, v82, v96);
  }

  v86 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload];
  *&v86->var9 = vaddq_f64(*&v86->var9, 0);
  v87 = fmax(v86->var8, 0.0);
  v86->var7 = fmin(v86->var7, 0.0);
  v86->var8 = v87;
  v88 = self->_encoderCoalescing;
  v89 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v83, numberOfEncodersInCurrentWorkload, v84, v85);
  if (v88)
  {
    numEncodesPerCommandBuffer = self->_numEncodesPerCommandBuffer;

    objc_msgSend_addSumOfNValues_n_(v89, v90, numEncodesPerCommandBuffer, v92, v93, 0.0);
  }

  else
  {

    objc_msgSend_addValue_(v89, v90, v91, v92, v93, 0.0);
  }
}

- (counterStats_t)getCounterResults
{
  dispatch_semaphore_wait(self->_updateStatisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  metaDataContainer = self->_metaDataContainer;
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  if (!objc_msgSend_count(self->_rawData, v5, v6, v7, v8))
  {
LABEL_9:
    v103 = 0;
    goto LABEL_10;
  }

  v12 = numberOfEncodersInCurrentWorkload + 2;
  if (numberOfEncodersInCurrentWorkload != -2)
  {
    v13 = 0;
    p_var5 = &self->_statsContainer->var5;
    do
    {
      *(p_var5 - 1) = 0u;
      *(p_var5 - 3) = 0u;
      *(p_var5 + 3) = 0u;
      p_var5[5] = 0.0;
      *(p_var5 + 1) = 0u;
      *(p_var5 - 5) = 0u;
      *p_var5 = INFINITY;
      *(p_var5 - 3) = NAN;
      p_var5[3] = NAN;
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v9, v13, v10, v11);
      *(p_var5 - 5) = objc_msgSend_numberOfSamples(v15, v16, v17, v18, v19);
      var0 = metaDataContainer->var0;
      ++metaDataContainer;
      if (!var0)
      {
        goto LABEL_9;
      }

      v24 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v20, v13, v21, v22);
      objc_msgSend_mean(v24, v25, v26, v27, v28);
      *(p_var5 - 4) = v29;
      v33 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v30, v13, v31, v32);
      objc_msgSend_min(v33, v34, v35, v36, v37);
      *(p_var5 - 3) = v38;
      v42 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v39, v13, v40, v41);
      objc_msgSend_standardDeviationOfMean(v42, v43, v44, v45, v46);
      *(p_var5 - 2) = v47;
      v51 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v48, v13, v49, v50);
      objc_msgSend_mean(v51, v52, v53, v54, v55);
      *(p_var5 - 1) = v56;
      v60 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v57, v13, v58, v59);
      objc_msgSend_min(v60, v61, v62, v63, v64);
      *p_var5 = v65;
      v69 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v66, v13, v67, v68);
      objc_msgSend_standardDeviationOfMean(v69, v70, v71, v72, v73);
      *(p_var5 + 1) = v74;
      v78 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v75, v13, v76, v77);
      objc_msgSend_mean(v78, v79, v80, v81, v82);
      *(p_var5 + 2) = v83;
      v87 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v84, v13, v85, v86);
      objc_msgSend_min(v87, v88, v89, v90, v91);
      *(p_var5 + 3) = v92;
      v96 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v93, v13, v94, v95);
      objc_msgSend_standardDeviationOfMean(v96, v97, v98, v99, v100);
      *(p_var5 + 5) = v101;
      ++v13;
      p_var5 += 11;
    }

    while (v12 != v13);
  }

  if (self->_vendor == 3)
  {
    NSLog(&cfstr_NvidiaResetsTh.isa);
  }

  v102 = 88 * v12;
  v103 = malloc_type_malloc(v102, 0x1000040931E79F6uLL);
  memcpy(v103, self->_statsContainer, v102);
LABEL_10:
  dispatch_semaphore_signal(self->_updateStatisticsSemaphore);
  return v103;
}

- (id)getGeneralStatistics
{
  v2 = self->_generalContainer;

  return v2;
}

- (BOOL)haveConvergedOn:(unint64_t)a3
{
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  if (a3 == 2)
  {
    v10 = 136;
  }

  else if (a3 == 1)
  {
    v10 = 128;
  }

  else
  {
    if (a3)
    {
      return 0;
    }

    if (self->_vendor == 3)
    {
      v9 = self;
      off_2814650E0("NVIDIA resets their cycle counter every encoder so total cycles are not trustworthy", a2, 0, v3, v4, v5, v6, v7);
      self = v9;
    }

    v10 = 120;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.isa + v10), a2, numberOfEncodersInCurrentWorkload + 1, v3, v4);

  return objc_msgSend_hasConverged(v11, v12, v13, v14, v15);
}

- (void)printCounterResults
{
  off_2814650E0("\nCounter Statistics Collected\n", a2, v2, v3, v4, v5, v6, v7);
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  if (numberOfEncodersInCurrentWorkload)
  {
    v12 = 0;
    v499 = self;
    for (i = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v9, 0, v10, v11); ; i = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v9, v12, v10, v11))
    {
      objc_msgSend_mean(i, v14, v15, v16, v17);
      v72 = v71;
      v76 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v73, v12, v74, v75);
      objc_msgSend_mean(v76, v77, v78, v79, v80);
      v82 = v81;
      v86 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v83, v12, v84, v85);
      objc_msgSend_mean(v86, v87, v88, v89, v90);
      off_2814650E0("==============================================================================\n", v91, v92, v93, v94, v95, v96, v97);
      if (self->_useInterposer)
      {
        v105 = objc_msgSend_allEncoders(self->_infoCapture, v98, v99, v100, v101);
        v109 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, v12, v107, v108);
        v114 = objc_msgSend_encoderLabel(v109, v110, v111, v112, v113);
        v119 = objc_msgSend_UTF8String(v114, v115, v116, v117, v118);
        printf("encoderName: %s\n", v119);
        v124 = objc_msgSend_allEncoders(self->_infoCapture, v120, v121, v122, v123);
        v128 = objc_msgSend_objectAtIndexedSubscript_(v124, v125, v12, v126, v127);
        v133 = objc_msgSend_dispatches(v128, v129, v130, v131, v132);
        if (objc_msgSend_count(v133, v134, v135, v136, v137))
        {
          v138 = 0;
          do
          {
            v165 = objc_msgSend_allEncoders(self->_infoCapture, v98, v99, v100, v101);
            v166 = v12;
            v170 = objc_msgSend_objectAtIndexedSubscript_(v165, v167, v12, v168, v169);
            v175 = objc_msgSend_dispatches(v170, v171, v172, v173, v174);
            v179 = objc_msgSend_objectAtIndexedSubscript_(v175, v176, v138, v177, v178);
            v184 = objc_msgSend_computePipelineStateLabel(v179, v180, v181, v182, v183);
            v189 = objc_msgSend_UTF8String(v184, v185, v186, v187, v188);
            printf("\tdispatch %lu : computePipelineStateLabel: %s\n", v138, v189);
            if (v179)
            {
              objc_msgSend_threadgroupsPerGrid(v179, v190, v191, v192, v193);
              v142 = v508;
              objc_msgSend_threadgroupsPerGrid(v179, v194, v195, v196, v197);
              v141 = v507;
              objc_msgSend_threadgroupsPerGrid(v179, v198, v199, v200, v201);
              v143 = v506;
              objc_msgSend_threadsPerThreadgroup(v179, v202, v203, v204, v205);
              v140 = v505;
              objc_msgSend_threadsPerThreadgroup(v179, v206, v207, v208, v209);
              v144 = v504;
              objc_msgSend_threadsPerThreadgroup(v179, v210, v211, v212, v213);
              v139 = v503;
              objc_msgSend_threadsPerThreadgroup(v179, v214, v215, v216, v217);
              objc_msgSend_threadsPerThreadgroup(v179, v218, v219, v220, v221);
              objc_msgSend_threadsPerThreadgroup(v179, v222, v223, v224, v225);
              v145 = v501 * v502 * v500;
            }

            else
            {
              v139 = 0;
              v140 = 0;
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v144 = 0;
              v145 = 0;
              v508 = 0;
              v507 = 0;
              v506 = 0;
              v505 = 0;
              v504 = 0;
              v503 = 0;
              v502 = 0;
              v501 = 0;
              v500 = 0;
            }

            v146 = objc_msgSend_threadsgroupMemoryLength(v179, v190, v191, v192, v193);
            printf("\tthreadgroupsPerGrid {%lu x %lu x %lu} threadsPerThreadgroup {%lu x %lu x %lu} totalThreads: %lu threadgroupMemoryLength: %lu\n", v142, v141, v143, v140, v144, v139, v145, v146);
            ++v138;
            self = v499;
            v151 = objc_msgSend_allEncoders(v499->_infoCapture, v147, v148, v149, v150);
            v12 = v166;
            v155 = objc_msgSend_objectAtIndexedSubscript_(v151, v152, v166, v153, v154);
            v160 = objc_msgSend_dispatches(v155, v156, v157, v158, v159);
          }

          while (v138 < objc_msgSend_count(v160, v161, v162, v163, v164));
        }
      }

      off_2814650E0("encoder: %lu cycle count: %f\n", v98, v99, v100, v101, v102, v103, v104, v12, *&v82);
      v18 = off_2814650E0;
      v22 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v19, v12, v20, v21);
      objc_msgSend_standardDeviationOfMean(v22, v23, v24, v25, v26);
      v18("encoder: %lu cycle count standard deviation: %f\n", v27, v28, v29, v30, v31, v32, v33, v12);
      off_2814650E0("encoder: %lu time: %f ms\n", v34, v35, v36, v37, v38, v39, v40, v12);
      v41 = off_2814650E0;
      v45 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v42, v12, v43, v44);
      objc_msgSend_standardDeviationOfMean(v45, v46, v47, v48, v49);
      v41("encoder: %lu time standard deviation: %f ms\n", v50, v51, v52, v53, v54, v55, v56, v12);
      v493 = v82 / v72 * 0.000000001;
      off_2814650E0("Mean frequency %f GHz\n", v57, v58, v59, v60, v61, v62, v63, SLOBYTE(v493));
      off_2814650E0("==============================================================================\n", v64, v65, v66, v67, v68, v69, v70);
      if (++v12 == numberOfEncodersInCurrentWorkload)
      {
        break;
      }
    }
  }

  v226 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v9, numberOfEncodersInCurrentWorkload, v10, v11);
  objc_msgSend_mean(v226, v227, v228, v229, v230);
  v232 = v231;
  v236 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v233, numberOfEncodersInCurrentWorkload, v234, v235);
  objc_msgSend_mean(v236, v237, v238, v239, v240);
  v242 = v241;
  v246 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v243, numberOfEncodersInCurrentWorkload, v244, v245);
  objc_msgSend_mean(v246, v247, v248, v249, v250);
  if (self->_vendor == 3)
  {
    NSLog(&cfstr_NvidiaResetsTh.isa);
  }

  off_2814650E0("==============================================================================\n", v251, v252, v253, v254, v255, v256, v257);
  v258 = off_2814650E0;
  v262 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v259, numberOfEncodersInCurrentWorkload, v260, v261);
  v267 = objc_msgSend_numberOfSamples(v262, v263, v264, v265, v266);
  v258("outer iterations : %lu inner iterations : %lu\n", v268, v269, v270, v271, v272, v273, v274, v267 / self->_numEncodesPerCommandBuffer);
  off_2814650E0("Workload total with overhead cycle count: %f\n", v275, v276, v277, v278, v279, v280, v281, SLOBYTE(v242));
  v282 = off_2814650E0;
  v286 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v283, numberOfEncodersInCurrentWorkload, v284, v285);
  objc_msgSend_standardDeviationOfMean(v286, v287, v288, v289, v290);
  v292 = v291 + v291;
  v282("Workload total with overhead cycle count standard deviation: %f\n", v293, v294, v295, v296, v297, v298, v299, SLOBYTE(v292));
  v494 = v232 * 1000.0;
  off_2814650E0("Workload total with overhead time: %f ms\n", v300, v301, v302, v303, v304, v305, v306, SLOBYTE(v494));
  v307 = off_2814650E0;
  v311 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v308, numberOfEncodersInCurrentWorkload, v309, v310);
  objc_msgSend_standardDeviationOfMean(v311, v312, v313, v314, v315);
  v317 = v316 + v316;
  v307("Workload total with overhead time standard deviation: %f ms\n", v318, v319, v320, v321, v322, v323, v324, SLOBYTE(v317));
  v495 = v242 / v232 * 0.000000001;
  off_2814650E0("Mean frequency %f GHz\n", v325, v326, v327, v328, v329, v330, v331, SLOBYTE(v495));
  off_2814650E0("==============================================================================\n\n", v332, v333, v334, v335, v336, v337, v338);
  v342 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v339, numberOfEncodersInCurrentWorkload + 1, v340, v341);
  objc_msgSend_mean(v342, v343, v344, v345, v346);
  v348 = v347;
  v352 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v349, numberOfEncodersInCurrentWorkload + 1, v350, v351);
  objc_msgSend_mean(v352, v353, v354, v355, v356);
  v358 = v357;
  v362 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v359, numberOfEncodersInCurrentWorkload + 1, v360, v361);
  objc_msgSend_mean(v362, v363, v364, v365, v366);
  off_2814650E0("Workload total Without overhead cycle count: %f\n", v367, v368, v369, v370, v371, v372, v373, SLOBYTE(v358));
  v374 = off_2814650E0;
  v378 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v375, numberOfEncodersInCurrentWorkload + 1, v376, v377);
  objc_msgSend_standardDeviationOfMean(v378, v379, v380, v381, v382);
  v384 = v383 + v383;
  v374("Workload total Without overhead cycle count standard deviation: %f\n", v385, v386, v387, v388, v389, v390, v391, SLOBYTE(v384));
  v496 = v348 * 1000.0;
  off_2814650E0("Workload total Without overhead time: %f ms\n", v392, v393, v394, v395, v396, v397, v398, SLOBYTE(v496));
  v399 = off_2814650E0;
  v403 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v400, numberOfEncodersInCurrentWorkload + 1, v401, v402);
  objc_msgSend_standardDeviationOfMean(v403, v404, v405, v406, v407);
  v409 = v408 + v408;
  v399("Workload total Without overhead time standard deviation: %f ms\n", v410, v411, v412, v413, v414, v415, v416, SLOBYTE(v409));
  v497 = v358 / v348 * 0.000000001;
  off_2814650E0("Mean frequency %f GHz\n", v417, v418, v419, v420, v421, v422, v423, SLOBYTE(v497));
  off_2814650E0("==============================================================================\n\n", v424, v425, v426, v427, v428, v429, v430);
  v431 = off_2814650E0;
  inited = objc_msgSend_InitTime(self->_generalContainer, v432, v433, v434, v435);
  objc_msgSend_mean(inited, v437, v438, v439, v440);
  v442 = v441 * 1000.0;
  v447 = objc_msgSend_EncodeTime(self->_generalContainer, v443, v444, v445, v446);
  objc_msgSend_mean(v447, v448, v449, v450, v451);
  v456 = objc_msgSend_QueueTime(self->_generalContainer, v452, v453, v454, v455);
  objc_msgSend_mean(v456, v457, v458, v459, v460);
  v465 = objc_msgSend_WallClockTime(self->_generalContainer, v461, v462, v463, v464);
  objc_msgSend_mean(v465, v466, v467, v468, v469);
  v431("Counter Overhead involved :\n\nMean Init Time  : %f ms\nMean Encode Time: %f ms\nMean Queue Time: %f ms\nMean WallClock Time: %f ms\n", v470, v471, v472, v473, v474, v475, v476, SLOBYTE(v442));
  if (self->_useInterposer)
  {
    v484 = off_2814650E0;
    v485 = objc_msgSend_numberOfDispatches(self->_infoCapture, v477, v478, v479, v480);
    v484("\nTotal number of dispatches = %lu\n", v486, v487, v488, v489, v490, v491, v492, v485);
  }

  off_2814650E0("==============================================================================\n\n", v477, v478, v479, v480, v481, v482, v483);
}

- (unint64_t)numberOfDispatches
{
  if (self->_useInterposer)
  {
    return objc_msgSend_numberOfDispatches(self->_infoCapture, a2, v2, v3, v4);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  updateStatisticsSemaphore = self->_updateStatisticsSemaphore;
  if (updateStatisticsSemaphore)
  {
    dispatch_release(updateStatisticsSemaphore);
  }

  free(self->_metaDataContainer);

  free(self->_statsContainer);
  v4.receiver = self;
  v4.super_class = MPSCounterStatistics;
  [(MPSCounterStatistics *)&v4 dealloc];
}

@end