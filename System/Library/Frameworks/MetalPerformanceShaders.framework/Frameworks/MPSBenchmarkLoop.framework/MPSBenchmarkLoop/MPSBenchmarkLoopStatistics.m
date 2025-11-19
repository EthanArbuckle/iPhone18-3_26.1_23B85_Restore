@interface MPSBenchmarkLoopStatistics
- (BOOL)hasConverged;
- (MPSBenchmarkLoopStatistics)init;
- (double)getValueAtIndex:(unint64_t)a3;
- (double)standardDeviation;
- (id)debugDescription;
- (void)addSumOfNValues:(double)a3 n:(unint64_t)a4;
- (void)addValue:(double)a3;
- (void)dealloc;
- (void)ignoreNextNValues:(unint64_t)a3;
- (void)removeLastValue;
- (void)reset;
@end

@implementation MPSBenchmarkLoopStatistics

- (MPSBenchmarkLoopStatistics)init
{
  v4.receiver = self;
  v4.super_class = MPSBenchmarkLoopStatistics;
  v2 = [(MPSBenchmarkLoopStatistics *)&v4 init];
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 2) = 0;
  *(v2 + 40) = xmmword_239916E70;
  *(v2 + 9) = 0;
  *(v2 + 10) = 0;
  *(v2 + 7) = 0x3FF0000000000000;
  *(v2 + 8) = 0;
  operator new();
}

- (void)reset
{
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  self->_sum = 0.0;
  self->_sumOfSquares = 0.0;
  self->_mean = 0.0;
  *&self->_min = xmmword_239916E70;
  self->_numOfUniqueSamples = 0;
  values = self->_values;
  if (values)
  {
    v4 = *values;
    if (*values)
    {
      values[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EE7B0D0](values, 0x80C40D6874129);
  }

  operator new();
}

- (void)addValue:(double)a3
{
  v11 = a3;
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  ignoreNextN = self->_ignoreNextN;
  if (ignoreNextN)
  {
    self->_ignoreNextN = ignoreNextN - 1;
    statisticsSemaphore = self->_statisticsSemaphore;
  }

  else
  {
    sub_239911620(self->_values, &v11);
    v6.f64[0] = a3;
    v6.f64[1] = a3 * a3;
    v7 = vaddq_f64(v6, *&self->_sum);
    v8 = ((*(self->_values + 1) - *self->_values) >> 3);
    *&self->_sum = v7;
    self->_mean = v7.f64[0] / v8;
    v9 = fmax(a3, self->_max);
    self->_min = fmin(a3, self->_min);
    self->_max = v9;
    ++self->_numOfUniqueSamples;
    statisticsSemaphore = self->_statisticsSemaphore;
  }

  dispatch_semaphore_signal(statisticsSemaphore);
}

- (void)removeLastValue
{
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  values = self->_values;
  v4 = *values;
  v5 = values[1];
  if (v5 != *values)
  {
    v6 = v5 - 1;
    values[1] = v6;
    self->_mean = 0.0;
    self->_sum = 0.0;
    self->_sumOfSquares = 0.0;
    *&self->_min = xmmword_239916E70;
    if (v6 != v4)
    {
      v7 = (v6 - v4);
      v8 = 0.0;
      v9 = INFINITY;
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        v12 = *v4++;
        v11 = v11 + v12;
        v10 = v10 + v12 * v12;
        self->_mean = v11 / v7;
        self->_sum = v11;
        v9 = fmin(v12, v9);
        self->_sumOfSquares = v10;
        self->_min = v9;
        v8 = fmax(v12, v8);
        self->_max = v8;
      }

      while (v4 != v6);
    }
  }

  statisticsSemaphore = self->_statisticsSemaphore;

  dispatch_semaphore_signal(statisticsSemaphore);
}

- (void)addSumOfNValues:(double)a3 n:(unint64_t)a4
{
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v13 = a3 / a4;
  v14 = v13;
  if (a4)
  {
    v7.f64[0] = a3 / a4;
    v7.f64[1] = v7.f64[0] * v7.f64[0];
    v12 = v7;
    while (1)
    {
      ignoreNextN = self->_ignoreNextN;
      if (ignoreNextN)
      {
        break;
      }

      sub_239911620(self->_values, &v14);
      v9 = vaddq_f64(v12, *&self->_sum);
      *&self->_sum = v9;
      self->_mean = v9.f64[0] / ((*(self->_values + 1) - *self->_values) >> 3);
      v10 = fmax(v13, self->_max);
      self->_min = fmin(v13, self->_min);
      self->_max = v10;
      if (!--a4)
      {
        goto LABEL_5;
      }
    }

    self->_ignoreNextN = ignoreNextN - 1;
  }

  else
  {
LABEL_5:
    ++self->_numOfUniqueSamples;
  }

  statisticsSemaphore = self->_statisticsSemaphore;

  dispatch_semaphore_signal(statisticsSemaphore);
}

- (double)getValueAtIndex:(unint64_t)a3
{
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(*self->_values + 8 * a3);
  dispatch_semaphore_signal(self->_statisticsSemaphore);
  return v5;
}

- (void)ignoreNextNValues:(unint64_t)a3
{
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  self->_ignoreNextN = a3;
  statisticsSemaphore = self->_statisticsSemaphore;

  dispatch_semaphore_signal(statisticsSemaphore);
}

- (double)standardDeviation
{
  values = self->_values;
  v4 = *values;
  v3 = values[1];
  v5 = v3 - *values;
  if (v3 == *values)
  {
    return 0.0;
  }

  v6 = v5 >> 3;
  v7 = *&self->_mean;
  v8 = v5 - 8;
  if (v8 > 0x17)
  {
    v12 = (v8 >> 3) + 1;
    v10 = &v4->f64[v12 & 0x3FFFFFFFFFFFFFFCLL];
    v13 = vdupq_lane_s64(v7, 0);
    v14 = v4 + 1;
    v9 = 0.0;
    v15 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vsubq_f64(v14[-1], v13);
      v17 = vsubq_f64(*v14, v13);
      v18 = vmulq_f64(v16, v16);
      v19 = vmulq_f64(v17, v17);
      v9 = v9 + v18.f64[0] + v18.f64[1] + v19.f64[0] + v19.f64[1];
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
      return sqrt(v9 / v6);
    }
  }

  else
  {
    v9 = 0.0;
    v10 = v4;
  }

  do
  {
    v20 = *v10++;
    v9 = v9 + (v20 - *&v7) * (v20 - *&v7);
  }

  while (v10 != v3);
  return sqrt(v9 / v6);
}

- (BOOL)hasConverged
{
  dispatch_semaphore_wait(self->_statisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_numOfUniqueSamples < 0xB || *(self->_values + 1) == *self->_values)
  {
    dispatch_semaphore_signal(self->_statisticsSemaphore);
    return 0;
  }

  else
  {
    objc_msgSend_standardDeviationOfMean(self, v3, v4, v5, v6);
    v8 = v7 * 200.0 / self->_mean < self->_convergenceAtStandardDeviation;
    dispatch_semaphore_signal(self->_statisticsSemaphore);
    return v8;
  }
}

- (void)dealloc
{
  values = self->_values;
  if (values)
  {
    v4 = *values;
    if (*values)
    {
      values[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EE7B0D0](values, 0x80C40D6874129);
  }

  dispatch_release(self->_statisticsSemaphore);

  v5.receiver = self;
  v5.super_class = MPSBenchmarkLoopStatistics;
  [(MPSBenchmarkLoopStatistics *)&v5 dealloc];
}

- (id)debugDescription
{
  label = self->_label;
  if (label)
  {
    v6 = objc_msgSend_stringByAppendingString_(label, a2, @"\nValues:\n", v2, v3);
    values = self->_values;
    v8 = *values;
    v9 = values[1];
    v10 = 0x277CCA000;
    if (*values == v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = @"\nValues:\n";
    v11 = self->_values;
    v8 = *v11;
    v9 = v11[1];
    v10 = 0x277CCA000uLL;
    if (*v11 == v9)
    {
      goto LABEL_7;
    }
  }

  v12 = 0;
  do
  {
    v13 = *v8++;
    v14 = objc_msgSend_stringWithFormat_(*(v10 + 3240), a2, @"\n\t%d %f"), v2, v3, v12, v13);
    v6 = objc_msgSend_stringByAppendingString_(v6, v15, v14, v16, v17);
    v12 = (v12 + 1);
  }

  while (v8 != v9);
LABEL_7:
  v18 = objc_msgSend_stringWithFormat_(*(v10 + 3240), a2, @"\n\nMean :  %f", v2, v3, *&self->_mean);
  v22 = objc_msgSend_stringByAppendingString_(v6, v19, v18, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(*(v10 + 3240), v23, @"\nMin :  %f", v24, v25, *&self->_min);
  v30 = objc_msgSend_stringByAppendingString_(v22, v27, v26, v28, v29);
  v34 = objc_msgSend_stringWithFormat_(*(v10 + 3240), v31, @"\nMax :  %f", v32, v33, *&self->_max);
  v38 = objc_msgSend_stringByAppendingString_(v30, v35, v34, v36, v37);
  v42 = objc_msgSend_stringWithFormat_(*(v10 + 3240), v39, @"\nSum :  %f", v40, v41, *&self->_sum);
  v46 = objc_msgSend_stringByAppendingString_(v38, v43, v42, v44, v45);
  v47 = *(v10 + 3240);
  objc_msgSend_standardDeviation(self, v48, v49, v50, v51);
  v56 = objc_msgSend_stringWithFormat_(v47, v52, @"\nStandard Deviation:  %f", v53, v54, v55);
  v60 = objc_msgSend_stringByAppendingString_(v46, v57, v56, v58, v59);
  v61 = *(v10 + 3240);
  objc_msgSend_min(self, v62, v63, v64, v65);
  v67 = v66 * 100.0;
  objc_msgSend_max(self, v68, v69, v70, v71);
  v76 = objc_msgSend_stringWithFormat_(v61, v73, @"\nMin/Max %% :  %f %%", v74, v75, v67 / v72);
  v80 = objc_msgSend_stringByAppendingString_(v60, v77, v76, v78, v79);
  v81 = *(v10 + 3240);
  objc_msgSend_standardDeviation(self, v82, v83, v84, v85);
  v91 = v90 / sqrt(objc_msgSend_numberOfSamples(self, v86, v87, v88, v89)) * 200.0 / self->_mean;
  v95 = objc_msgSend_stringWithFormat_(v81, v92, @"\nHas Converged :  %i", v93, v94, v91 < 2.0);
  v99 = objc_msgSend_stringByAppendingString_(v80, v96, v95, v97, v98);
  v100 = *(v10 + 3240);
  objc_msgSend_standardDeviation(self, v101, v102, v103, v104);
  v106 = v105;
  v111 = objc_msgSend_numberOfSamples(self, v107, v108, v109, v110);
  v115 = objc_msgSend_stringWithFormat_(v100, v112, @"\n95%% Confidence Interval : ± %f %%", v113, v114, v106 / sqrt(v111) * 200.0 / self->_mean);
  v119 = objc_msgSend_stringByAppendingString_(v99, v116, v115, v117, v118);
  v120 = *(v10 + 3240);
  v126.receiver = self;
  v126.super_class = MPSBenchmarkLoopStatistics;
  v121 = [(MPSBenchmarkLoopStatistics *)&v126 debugDescription];
  return objc_msgSend_stringWithFormat_(v120, v122, @"%@\n\t %@\n\n", v123, v124, v121, v119);
}

@end