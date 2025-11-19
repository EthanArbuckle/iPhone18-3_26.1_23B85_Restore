@interface MPSCounters
- (MPSCounters)initWithCommandQueue:(id)a3 addQeueuPerfSampleHandler:(BOOL)a4;
- (int)requestCountersWithExtraRequestedCounter:(id)a3;
- (int)requestCountersWithExtraRequestedCounter:(id)a3 fillStats:(id)a4;
- (void)dealloc;
- (void)perfSampleHandlerWithCommandBuffer:(id)a3 data:(id)a4 numberOfSamples:(unint64_t)a5;
- (void)printAllAvailableCounters;
@end

@implementation MPSCounters

- (MPSCounters)initWithCommandQueue:(id)a3 addQeueuPerfSampleHandler:(BOOL)a4
{
  v4 = a4;
  v86.receiver = self;
  v86.super_class = MPSCounters;
  v10 = [(MPSCounters *)&v86 init];
  if (v10)
  {
    v10->_device = objc_msgSend_device(a3, v6, v7, v8, v9);
    v10->_commandQueue = a3;
    v10->_commandQueueSPI = a3;
    *&v10->_encoderCoalescing = 256;
    v10->_logEncoderInfo = 1;
    v11 = off_2814650F0();
    if (v11 && *v11 == 49)
    {
      off_2814650E0("MPS_BENCHMARK_LOOP_ENABLE_ENCODER_COALESCING environment variable set\n", v12, v13, v14, v15, v16, v17, v18);
      device = v10->_device;
      if ((*(MPSDevice::GetMPSDevice() + 1477) & 4) != 0)
      {
        *&v10->_encoderCoalescing = 1;
      }

      else if (!v10->_encoderCoalescing)
      {
        off_2814650E0("MPS_BENCHMARK_LOOP_ENABLE_ENCODER_COALESCING environment variable was ignored and encoder coalescing will not occur\n", v20, v21, v22, v23, v24, v25, v26);
      }
    }

    v10->_countingEncoders = 0;
    v10->_iterationsDone = 0;
    v10->_counterStatistics = 0;
    v10->_whileCountingData = 0;
    v10->_timePerEncode = 0.0;
    v10->_countingEncodersSemaphore = dispatch_semaphore_create(1);
    v27 = off_2814650F0();
    if (!v27 || strcmp(v27, "presilicon"))
    {
      if (v4)
      {
        commandQueueSPI = v10->_commandQueueSPI;
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = sub_23990DA64;
        v85[3] = &unk_278AA8AC0;
        v85[4] = v10;
        objc_msgSend_addPerfSampleHandler_(commandQueueSPI, v28, v85, v29, v30);
      }

      v32 = objc_msgSend_conformsToProtocol_(v10->_device, v28, &unk_284C7D428, v29, v30);
      if (v32)
      {
        LOBYTE(v32) = objc_msgSend_conformsToProtocol_(v10->_commandQueue, v33, &unk_284C7DA38, v34, v35);
      }

      v10->_countersSupported = v32;
      v36 = v10->_commandQueueSPI;
      v37 = objc_opt_respondsToSelector();
      v10->_supportsMultipass = v37 & 1;
      if (v10->_countersSupported && (v37 & 1) != 0)
      {
        v38 = v10->_device;
        if ((*(MPSDevice::GetMPSDevice() + 1477) & 4) != 0)
        {
          v48 = 0;
          v10->_allCounters = 0;
        }

        else
        {
          v43 = objc_msgSend_availableCounters(v10->_commandQueueSPI, v39, v40, v41, v42);
          v10->_allCounters = v43;
          v48 = objc_msgSend_count(v43, v44, v45, v46, v47);
        }

        v10->_nAvailableCounters = v48;
        v49 = v10->_device;
        v50 = objc_msgSend_vendorName(v49, v39, v40, v41, v42);
        NSLog(&cfstr_DeviceVendor.isa, v50);
        v55 = objc_msgSend_name(v49, v51, v52, v53, v54);
        NSLog(&cfstr_DeviceName.isa, v55);
        v60 = objc_msgSend_sharedMemorySize(v49, v56, v57, v58, v59);
        NSLog(&cfstr_DeviceMemoryLl.isa, v60 >> 20);
        if ((objc_msgSend_containsString_(v50, v61, @"INTEL", v62, v63) & 1) != 0 || (objc_msgSend_containsString_(v50, v64, @"Intel", v65, v66) & 1) != 0 || objc_msgSend_containsString_(v50, v64, @"intel", v65, v66))
        {
          v10->_vendor = 1;
        }

        if ((objc_msgSend_containsString_(v50, v64, @"AMD", v65, v66) & 1) != 0 || (objc_msgSend_containsString_(v50, v67, @"Amd", v68, v69) & 1) != 0 || objc_msgSend_containsString_(v50, v67, @"amd", v68, v69))
        {
          v10->_vendor = 2;
        }

        if ((objc_msgSend_containsString_(v50, v67, @"NVIDIA", v68, v69) & 1) != 0 || (objc_msgSend_containsString_(v50, v70, @"Nvidia", v71, v72) & 1) != 0 || objc_msgSend_containsString_(v50, v70, @"nvidia", v71, v72))
        {
          v10->_vendor = 3;
          if (!objc_msgSend_supportsFamily_(v49, v70, 1001, v71, v72))
          {
LABEL_32:
            v10->_deviceHasCycleCounter = 0;
            if (!v10->_nAvailableCounters)
            {
              return v10;
            }

            goto LABEL_36;
          }
        }

        else if (!objc_msgSend_supportsFamily_(v49, v70, 1001, v71, v72))
        {
          goto LABEL_32;
        }

        v10->_vendor = 0;
        v10->_deviceHasCycleCounter = 0;
        if (v10->_nAvailableCounters)
        {
LABEL_36:
          for (i = 0; i < v10->_nAvailableCounters; ++i)
          {
            vendor = v10->_vendor;
            v78 = objc_msgSend_objectAtIndexedSubscript_(v10->_allCounters, v73, i, v74, v75);
            v83 = objc_msgSend_UTF8String(v78, v79, v80, v81, v82);
            if (vendor == 2)
            {
              if (!strcmp(v83, "AMDStat_GPU_Engine_Ticks"))
              {
                goto LABEL_42;
              }
            }

            else if (!strcmp(v83, "MTLStatTotalGPUCycles"))
            {
LABEL_42:
              v10->_deviceHasCycleCounter = 1;
            }
          }
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return v10;
}

- (int)requestCountersWithExtraRequestedCounter:(id)a3 fillStats:(id)a4
{
  counterStatistics = self->_counterStatistics;
  if (counterStatistics != a4)
  {
    v7 = a3;
    self->_counterStatistics = a4;

    a3 = v7;
  }

  return objc_msgSend_requestCountersWithExtraRequestedCounter_(self, a2, a3, a4, v4);
}

- (int)requestCountersWithExtraRequestedCounter:(id)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v5, v6, 6, v7, v8);
  if (a3)
  {
    if (!self->_nAvailableCounters)
    {
      goto LABEL_7;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_allCounters, v9, v14, v10, v11);
      v13 |= objc_msgSend_isEqualToString_(v15, v16, a3, v17, v18);
      ++v14;
    }

    while (v14 < self->_nAvailableCounters);
    if ((v13 & 1) == 0)
    {
LABEL_7:
      NSLog(&cfstr_ExtraRequested.isa);

      return -1;
    }

    v19 = a3;
  }

  else
  {
    v19 = @"MTLStatVertexCost";
  }

  self->_extraCounterRequested = &v19->isa;
  objc_msgSend_addObject_(v12, v9, @"MTLStat_nSec", v10, v11);
  objc_msgSend_addObject_(v12, v21, @"MTLStatCommandBufferIndex", v22, v23);
  objc_msgSend_addObject_(v12, v24, @"MTLStatEncoderIndex", v25, v26);
  objc_msgSend_addObject_(v12, v27, @"MTLStatCommandIndex", v28, v29);
  objc_msgSend_addObject_(v12, v30, self->_extraCounterRequested, v31, v32);
  vendor = self->_vendor;
  if (vendor <= 3)
  {
    objc_msgSend_addObject_(v12, v33, off_278AA8B08[vendor], v34, v35);
  }

  self->_counterListsPerPass = objc_msgSend_subdivideCounterList_(self->_commandQueueSPI, v37, v12, v38, v39);
  self->_nPasses = objc_msgSend_count(self->_counterListsPerPass, v40, v41, v42, v43);
  v47 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v44, 0, v45, v46);
  if (!objc_msgSend_count(v47, v48, v49, v50, v51))
  {
    goto LABEL_32;
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v57 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v52, 0, v53, v54);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, v55, v59, v60);
    v66 = objc_msgSend_UTF8String(v61, v62, v63, v64, v65);
    v67 = strcmp(v66, "MTLStatTotalGPUCycles");
    v71 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v68, 0, v69, v70);
    v75 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v55, v73, v74);
    v80 = objc_msgSend_UTF8String(v75, v76, v77, v78, v79);
    v81 = strcmp(v80, "GPU_CoreClocks");
    v85 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v82, 0, v83, v84);
    v89 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, v55, v87, v88);
    v94 = objc_msgSend_UTF8String(v89, v90, v91, v92, v93);
    v95 = strcmp(v94, "AMDStat_GPU_Engine_Ticks");
    v99 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v96, 0, v97, v98);
    v103 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, v55, v101, v102);
    v108 = objc_msgSend_UTF8String(v103, v104, v105, v106, v107);
    v109 = strcmp(v108, "MTLStatHostElapsedCycles");
    if (v67)
    {
      v113 = v81 == 0;
    }

    else
    {
      v113 = 1;
    }

    if (v113 || v95 == 0 || v109 == 0)
    {
      v56 = 1;
    }

    ++v55;
    v116 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v110, 0, v111, v112);
  }

  while (v55 < objc_msgSend_count(v116, v117, v118, v119, v120));
  if (v56)
  {
    v121 = objc_msgSend_objectAtIndex_(self->_counterListsPerPass, v52, 0, v53, v54);
    self->_passList = v121;
    v124 = objc_msgSend_requestCounters_withIndex_(self->_commandQueueSPI, v122, v121, 0, v123);
    if (v124)
    {
      printf("MST: Error %d requesting pass %d\n", v124, 0);
    }

    RequestedCounters = objc_msgSend_getRequestedCounters(self->_commandQueueSPI, v125, v126, v127, v128);
    if (RequestedCounters)
    {
      if (self->_supportsMultipass)
      {
        v133 = objc_msgSend_indexOfObject_(self->_passList, v130, @"MTLStatCommandBufferIndex", v131, v132);
      }

      else
      {
        self->_passList = RequestedCounters;
        v133 = objc_msgSend_indexOfObject_(RequestedCounters, v130, @"MTLStatCommandBufferIndex", v131, v132);
      }

      self->_commandBufferOffset = v133;
      self->_encoderOffset = objc_msgSend_indexOfObject_(self->_passList, v134, @"MTLStatEncoderIndex", v135, v136);
      self->_commandOffset = objc_msgSend_indexOfObject_(self->_passList, v137, @"MTLStatCommandIndex", v138, v139);
      self->_timeOffset = objc_msgSend_indexOfObject_(self->_passList, v140, @"MTLStat_nSec", v141, v142);
      passList = self->_passList;
      v147 = self->_vendor - 1;
      if (v147 > 2)
      {
        v148 = objc_msgSend_indexOfObject_(passList, v143, @"MTLStatTotalGPUCycles", v144, v145);
      }

      else
      {
        v148 = objc_msgSend_indexOfObject_(passList, v143, off_278AA8B28[v147], v144, v145);
      }

      self->_cyclesOffset = v148;
      v152 = objc_msgSend_indexOfObject_(self->_passList, v149, self->_extraCounterRequested, v150, v151);
      result = 0;
      self->_extraOffset = v152;
    }

    else
    {
      puts("ERROR: COULD NOT getRequestedCounters this might mean an unsupported counter was passed in");
      return -1;
    }
  }

  else
  {
LABEL_32:
    puts("Cycle counter not found!!!");
    return -2;
  }

  return result;
}

- (void)perfSampleHandlerWithCommandBuffer:(id)a3 data:(id)a4 numberOfSamples:(unint64_t)a5
{
  if (!a5)
  {
    NSLog(&cfstr_NoCounterSampl.isa, a2, a3, a4);
    return;
  }

  v8 = [MPSCounterData alloc];
  v12 = objc_msgSend_initWithData_numberOfSamples_(v8, v9, a4, a5, v10);
  if (self->_countingEncoders)
  {
    objc_msgSend_addObject_(self->_whileCountingData, v11, v12, v13, v14);
    if (!self->_countingEncoders)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_addMPSCounterData_(self->_counterStatistics, v11, v12, v13, v14);
    if (!self->_countingEncoders)
    {
      return;
    }
  }

  if (objc_msgSend_count(self->_passList, v15, v16, v17, v18) >= 7)
  {
    puts("Pass list has more counters than expected");
    NSLog(&stru_284C655A8.isa, self->_passList);
  }

  v23 = objc_msgSend_bytes(a4, v19, v20, v21, v22);
  v28 = objc_msgSend_count(self->_passList, v24, v25, v26, v27);
  if (self->_countingEncoders)
  {
    v29 = v23 + (8 * a5 - 8) * v28;
    v30 = *(v29 + 8 * self->_encoderOffset);
    timeOffset = self->_timeOffset;
    v32 = *(v29 + 8 * timeOffset);
    v33 = *(v23 + 8 * timeOffset);
    self->_encodersInWorkload = v30 + 1;
    v34 = self->_timePerEncode + (v32 - v33) * 0.000000001;
    self->_timePerEncode = v34;
    v35 = 0.1 / v34;
    if (v35 <= 1.0)
    {
      v35 = 1.0;
    }

    self->_numEncodesPerCommandBuffer = v35;
  }
}

- (void)printAllAvailableCounters
{
  NSLog(&cfstr_NumberOfAvaila.isa, a2, self->_nAvailableCounters);
  if (self->_nAvailableCounters)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(self->_allCounters, v3, v6, v4, v5);
      v12 = objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
      NSLog(&cfstr_Availablecount.isa, v6++, v12);
    }

    while (v6 < self->_nAvailableCounters);
  }
}

- (void)dealloc
{
  countingEncodersSemaphore = self->_countingEncodersSemaphore;
  if (countingEncodersSemaphore)
  {
    dispatch_release(countingEncodersSemaphore);
  }

  v4.receiver = self;
  v4.super_class = MPSCounters;
  [(MPSCounters *)&v4 dealloc];
}

@end