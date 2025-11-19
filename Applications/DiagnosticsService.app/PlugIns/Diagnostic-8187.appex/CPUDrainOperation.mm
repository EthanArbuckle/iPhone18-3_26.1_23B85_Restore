@interface CPUDrainOperation
- (CPUDrainOperation)initWithMatrixLength:(id)a3 iterationDelay:(id)a4;
- (void)cancel;
- (void)main;
- (void)thermalSGEMMEnergyObjC;
@end

@implementation CPUDrainOperation

- (CPUDrainOperation)initWithMatrixLength:(id)a3 iterationDelay:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPUDrainOperation;
  v9 = [(CPUDrainOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_matrixLength, a3);
    objc_storeStrong(&v10->_iterationDelay, a4);
  }

  return v10;
}

- (void)main
{
  [(CPUDrainOperation *)self thermalSGEMMEnergyObjC];
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000BAA4(self, v3);
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = CPUDrainOperation;
  [(DrainOperation *)&v2 cancel];
}

- (void)thermalSGEMMEnergyObjC
{
  v3 = [(CPUDrainOperation *)self matrixLength];
  v4 = [v3 unsignedLongValue];

  v5 = detect_cpu();
  PhysicalCPUs = GetPhysicalCPUs();
  v7 = 2048;
  if (v4 < 0x800)
  {
    v7 = v4;
  }

  v33 = PhysicalCPUs;
  if (PhysicalCPUs >= 3)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (v5 != -1829029944 && v5 != 747742334 && v5 != 933271106)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB3C(v9);
    }

    printBestThermalInfo();
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Number of threads: %d", buf, 8u);
  }

  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SGEMM Iterations = infinity.", buf, 2u);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *buf = 0u;
  ConstructRandom(buf, 0);
  v12 = (v8 * v8);
  v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
  v14 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
  v15 = malloc_type_malloc(4 * v12 * v33, 0x100004052888210uLL);
  v16 = v15;
  if (v13 && v14 && v15)
  {
    v30 = v15;
    if (v8)
    {
      v17 = 0;
      if (v12 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = (v8 * v8);
      }

      v19 = v15;
      v31 = vdupq_n_s64(4uLL);
      v32 = vdupq_n_s64(v33 - 1);
      do
      {
        v13[v17] = (UniformFloat(buf) * 2.0) + -1.0;
        v14[v17] = (UniformFloat(buf) * 2.0) + -1.0;
        if (v33)
        {
          v20 = (v33 + 3) & 0x1FFFFFFFCLL;
          v21 = v19;
          v22 = xmmword_100010520;
          v23 = xmmword_100010510;
          do
          {
            v24 = vmovn_s64(vcgeq_u64(v32, v22));
            if (vuzp1_s16(v24, *v22.i8).u8[0])
            {
              *v21 = 0.0;
            }

            if (vuzp1_s16(v24, *&v22).i8[2])
            {
              v21[v12] = 0.0;
            }

            if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v32, *&v23))).i32[1])
            {
              v21[2 * v12] = 0.0;
              v21[3 * v12] = 0.0;
            }

            v23 = vaddq_s64(v23, v31);
            v22 = vaddq_s64(v22, v31);
            v21 += 4 * v12;
            v20 -= 4;
          }

          while (v20);
        }

        ++v17;
        ++v19;
      }

      while (v17 != v18);
    }

    if ([(DrainOperation *)self isFinished])
    {
      v25 = v30;
    }

    else
    {
      do
      {
        cblas_sgemm_NEWLAPACK_ILP64();
        v27 = [(CPUDrainOperation *)self iterationDelay:v14];
        v28 = [v27 unsignedIntegerValue];

        if (v28)
        {
          v29 = [(CPUDrainOperation *)self iterationDelay];
          usleep(1000 * [v29 unsignedIntValue]);
        }

        [(DrainOperation *)self waitIfPaused];
      }

      while (![(DrainOperation *)self isFinished]);
      v25 = v30;
    }

    v16 = v13;
  }

  else
  {
    v26 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB80(v26);
    }

    v25 = v13;
  }

  free(v25);
  free(v14);
  free(v16);
}

@end