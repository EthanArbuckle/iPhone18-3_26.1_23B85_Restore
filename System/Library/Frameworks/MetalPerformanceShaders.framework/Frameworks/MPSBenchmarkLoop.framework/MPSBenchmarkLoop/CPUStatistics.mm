@interface CPUStatistics
- (CPUStatistics)init;
- (void)addCPUPerformanceIntervalStart:(id *)a3 end:(id *)a4;
- (void)dealloc;
- (void)printCPUStatistics;
@end

@implementation CPUStatistics

- (CPUStatistics)init
{
  v4.receiver = self;
  v4.super_class = CPUStatistics;
  v2 = [(CPUStatistics *)&v4 init];
  v2->_InitTime = objc_opt_new();
  v2->_CPUWorkloadTime = objc_opt_new();
  v2->_CPUWorkloadCycles = objc_opt_new();
  v2->_SystemResidentMemory = objc_opt_new();
  return v2;
}

- (void)printCPUStatistics
{
  puts("\n==============================================================================\n");
  if ((objc_msgSend_hasConverged(self->_CPUWorkloadCycles, v3, v4, v5, v6) & 1) == 0)
  {
    fflush(*MEMORY[0x277D85E08]);
    v15 = objc_msgSend_numberOfSamples(self->_CPUWorkloadCycles, v11, v12, v13, v14);
    NSLog(&cfstr_DidNotCovergeT_0.isa, v15);
  }

  objc_msgSend_mean(self->_InitTime, v7, v8, v9, v10);
  v17 = v16 * 1000.0;
  objc_msgSend_mean(self->_CPUWorkloadTime, v18, v19, v20, v21);
  v23 = v22 * 1000.0;
  objc_msgSend_mean(self->_CPUWorkloadCycles, v24, v25, v26, v27);
  v29 = v28;
  objc_msgSend_mean(self->_SystemResidentMemory, v30, v31, v32, v33);
  v35 = v34 * 0.000000953674316;
  objc_msgSend_mean(self->_CPUWorkloadCycles, v36, v37, v38, v39);
  v41 = v40;
  objc_msgSend_mean(self->_CPUWorkloadTime, v42, v43, v44, v45);
  v47 = v41 / v46 / 1000000000.0;
  v52 = objc_msgSend_numberOfSamples(self->_CPUWorkloadTime, v48, v49, v50, v51);
  printf("\tInit Time %f ms \n\tCPU Workload Time %f ms \n\tCPU Workload Cycles %f \n\tSystem Resident Memory = %f MB\n\tCPU Frequency = %f GHz\nfor: \n\titerations = %lu\n", v17, v23, v29, v35, v47, v52);
}

- (void)addCPUPerformanceIntervalStart:(id *)a3 end:(id *)a4
{
  CPUWorkloadCycles = self->_CPUWorkloadCycles;
  v8 = kpc_cycle_diff(a3, a4);
  objc_msgSend_addValue_(CPUWorkloadCycles, v9, v10, v11, v12, v8);
  CPUWorkloadTime = self->_CPUWorkloadTime;
  v18 = a4->var1 - a3->var1;

  objc_msgSend_addValue_(CPUWorkloadTime, v13, v14, v15, v16, v18);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPUStatistics;
  [(CPUStatistics *)&v3 dealloc];
}

@end