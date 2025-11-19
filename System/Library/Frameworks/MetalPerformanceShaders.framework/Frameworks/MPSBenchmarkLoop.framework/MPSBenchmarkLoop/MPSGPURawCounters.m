@interface MPSGPURawCounters
- (int)requestCountersWithExtraRequestedCounter:(id)a3 fillStats:(id)a4;
- (void)aggregatePerfSamplesForCommandBuffer:(id)a3 firstCommandBuffer:(id)a4;
- (void)dealloc;
- (void)getPStateAndFrequency;
@end

@implementation MPSGPURawCounters

- (void)getPStateAndFrequency
{
  memset(v83, 0, sizeof(v83));
  memset(__p, 0, sizeof(__p));
  v3 = IOServiceMatching("AGXAccelerator");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
  v12 = MatchingService;
  if (!MatchingService)
  {
    goto LABEL_8;
  }

  v13 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"PerfStateValues", *MEMORY[0x277CBECE8], 0);
  v15 = IORegistryEntryCreateCFProperty(v12, @"PerfStateMap", v13, 0);
  BytePtr = CFDataGetBytePtr(CFProperty);
  v17 = BytePtr;
  if (!BytePtr)
  {
    CFRelease(CFProperty);
LABEL_8:
    (off_2814650E8)("Unable to find max frequency or pstate", v5, v6, v7, v8, v9, v10, v11);
    goto LABEL_47;
  }

  if (v15)
  {
    cf = CFProperty;
    v74 = CFDataGetBytePtr(v15);
    v18 = *(v17 + 1);
    v19 = (v17 + 8);
    v71 = self;
    v72 = v15;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    cf = CFProperty;
    v74 = 0;
    v18 = *(BytePtr + 1);
    v19 = (BytePtr + 8);
    v71 = self;
    v72 = 0;
    if (v18)
    {
LABEL_5:
      v78 = 8;
      v20 = *v17;
      if (!*v17)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }
  }

  v18 = *(v17 + 3);
  if (v18)
  {
    v21 = (v17 + 16);
    v78 = 12;
    v22 = v19;
    v19 = v21;
    v20 = *v22;
    if (*v22)
    {
LABEL_12:
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v77 = ((v20 - 2) + 2) * v78 + 4;
      v76 = v20;
      while (1)
      {
        v30 = *v19;
        v31 = v19[1];
        if (v24 >= v25)
        {
          v32 = v24 - v23;
          v33 = (v24 - v23) >> 2;
          v34 = v33 + 1;
          v79 = v26;
          __src = v23;
          if ((v33 + 1) >> 62)
          {
            sub_23990B450();
          }

          v75 = v27;
          if ((v25 - v23) >> 1 > v34)
          {
            v34 = (v25 - v23) >> 1;
          }

          if (v25 - v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v34;
          }

          if (v35)
          {
            if (!(v35 >> 62))
            {
              operator new();
            }

            sub_23990B4F8();
          }

          v36 = v19[1];
          v37 = v28;
          v23 = 0;
          v38 = (4 * v33);
          v25 = 0;
          *v38 = v30;
          v24 = (v38 + 1);
          memcpy(0, __src, v32);
          v20 = v76;
          v28 = v37;
          v27 = v75;
          v31 = v36;
          v26 = v79;
          if (v75 >= v28)
          {
LABEL_31:
            __srca = v23;
            v39 = v27 - v26;
            v40 = (v27 - v26) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              sub_23990B450();
            }

            v42 = v25;
            if ((v28 - v26) >> 1 > v41)
            {
              v41 = (v28 - v26) >> 1;
            }

            if (v28 - v26 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              if (!(v43 >> 62))
              {
                operator new();
              }

              sub_23990B4F8();
            }

            *(4 * v40) = v31;
            v27 = (4 * v40 + 4);
            v29 = 0;
            memcpy(0, v26, v39);
            v23 = __srca;
            v20 = v76;
            v25 = v42;
            v28 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          *v24 = v30;
          v24 += 4;
          if (v27 >= v28)
          {
            goto LABEL_31;
          }
        }

        *v27 = v31;
        v27 += 4;
        v29 = v26;
LABEL_14:
        if (v20 == 1)
        {
          v19 = (v19 + v78 + 4);
        }

        else
        {
          v19 = (v19 + v77);
        }

        v26 = v29;
        if (!--v18)
        {
          goto LABEL_42;
        }
      }
    }
  }

LABEL_41:
  v27 = 0;
  v29 = 0;
  v24 = 0;
  v23 = 0;
LABEL_42:
  if (v74)
  {
    if (*v74)
    {
      v44 = *(v74 + 1);
      operator new();
    }
  }

  else
  {
    sub_23990B52C(v83, v83[0], v23, v24, (v24 - v23) >> 2);
    sub_23990B52C(__p, 0, v29, v27, (v27 - v29) >> 2);
  }

  CFRelease(cf);
  CFRelease(v72);
  self = v71;
LABEL_47:
  v45 = off_2814650F0();
  if (v45)
  {
    v53 = atol(v45);
    off_2814650E0("\n\n\nMPS_BENCHMARK_LOOP_PSTATE set to %llu ... please make sure agx_util to set p-state to %llu else cycle count will be bogus\n", v54, v55, v56, v57, v58, v59, v60, v53, v53);
    self->_maxPState = *&v83[0][4 * v53];
    maxFrequency = *(__p[0] + v53);
    self->_maxFrequency = maxFrequency;
  }

  else
  {
    self->_maxPState = 6;
    self->_maxFrequency = 1000;
    off_2814650E0("WARNING: MPS_BENCHMARK_LOOP_PSTATE not set. Cycle count will be based on 1GHz. Please use agx_util to set p-state and set MPS_BENCHMARK_LOOP_PSTATE=value env var to let GRC backend know the value you are setting to so that correct cycle count can be computed using timestamp and frequency corresponding to p-state\n", v46, v47, v48, v49, v50, v51, v52, v70);
    maxFrequency = self->_maxFrequency;
  }

  off_2814650E0("Using p-state %llu with frequency %llu\n", v61, v62, v63, v64, v65, v66, v67, self->_maxPState, maxFrequency);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v69 = v83[0];
  if (v83[0])
  {

    operator delete(v69);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSGPURawCounters;
  [(MPSCounters *)&v2 dealloc];
}

- (int)requestCountersWithExtraRequestedCounter:(id)a3 fillStats:(id)a4
{
  counterStatistics = self->super._counterStatistics;
  if (counterStatistics != a4)
  {
    v7 = a3;
    self->super._counterStatistics = a4;

    a3 = v7;
  }

  return objc_msgSend_requestCountersWithExtraRequestedCounter_(self, a2, a3, a4, v4);
}

- (void)aggregatePerfSamplesForCommandBuffer:(id)a3 firstCommandBuffer:(id)a4
{
  self->super._encodersInWorkload = 1;
  v7 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
  objc_msgSend_GPUStartTime(a4, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_GPUEndTime(a3, v14, v15, v16, v17);
  v19 = v18;
  maxFrequency = self->_maxFrequency;
  *v7 = 0;
  v7[1] = 0;
  *(v7 + 2) = xmmword_239916DB0;
  v7[2] = (v13 * maxFrequency * 1000000.0);
  v7[6] = (v19 * maxFrequency * 1000000.0);
  *(v7 + 3) = v13;
  *(v7 + 7) = v19;
  v22 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v21, v7, 64, 1);
  v23 = [MPSCounterData alloc];
  v29 = objc_msgSend_initWithData_numberOfSamples_(v23, v24, v22, 2, v25);
  if (self->super._countingEncoders)
  {
    objc_msgSend_addObject_(self->super._whileCountingData, v26, v29, v27, v28);

    if (!self->super._countingEncoders)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_setNumberOfEncodersInCurrentWorkload_(self->super._counterStatistics, v26, self->super._encodersInWorkload, v27, v28);
    objc_msgSend_addMPSCounterData_(self->super._counterStatistics, v30, v29, v31, v32);

    if (!self->super._countingEncoders)
    {
      return;
    }
  }

  v33 = v19 - v13 + self->super._timePerEncode;
  self->super._timePerEncode = v33;
  v34 = 0.1 / v33;
  if (v34 <= 1.0)
  {
    v34 = 1.0;
  }

  self->super._numEncodesPerCommandBuffer = v34;
}

@end