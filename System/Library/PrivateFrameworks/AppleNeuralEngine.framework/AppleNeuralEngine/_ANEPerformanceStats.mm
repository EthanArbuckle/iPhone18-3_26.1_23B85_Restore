@interface _ANEPerformanceStats
+ (_ANEPerformanceStats)statsWithHardwareExecutionNS:(unint64_t)s;
+ (_ANEPerformanceStats)statsWithReconstructed:(id)reconstructed hardwareExecutionNS:(unint64_t)s aneStatsRawData:(id)data;
+ (_ANEPerformanceStats)statsWithRequestPerformanceBuffer:(void *)buffer statsBufferSize:(unsigned int *)size;
+ (unsigned)driverMaskForANEFMask:(unsigned int)mask;
- (_ANEPerformanceStats)initWithHardwareExecution:(unint64_t)execution perfCounterData:(id)data ANEStatsRawData:(id)rawData;
- (_ANEPerformanceStats)initWithRequestPerformanceBuffer:(void *)buffer statsBufferSize:(unsigned int *)size;
- (id)description;
- (id)performanceCounters;
- (id)stringForPerfCounter:(int)counter;
- (void)emitPerfcounterSignpostsWithModelStringID:(unint64_t)d;
@end

@implementation _ANEPerformanceStats

+ (unsigned)driverMaskForANEFMask:(unsigned int)mask
{
  v3 = mask & 1;
  if (mask >= 8)
  {
    v3 = mask & 1 | 2;
  }

  v4 = v3 & 0xFFFFFFF3 | (4 * ((mask >> 1) & 3));
  if (mask <= 0xF)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)stringForPerfCounter:(int)counter
{
  if (counter > 0x17)
  {
    return @"kANE_UKNOWN";
  }

  else
  {
    return off_1E79BA2F0[counter];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  hwExecutionTime = [(_ANEPerformanceStats *)self hwExecutionTime];
  performanceCounters = [(_ANEPerformanceStats *)self performanceCounters];
  v8 = [v3 stringWithFormat:@"%@: { hwExecutionTime=%llu : perfCounterData=%@} ", v5, hwExecutionTime, performanceCounters];

  return v8;
}

- (_ANEPerformanceStats)initWithHardwareExecution:(unint64_t)execution perfCounterData:(id)data ANEStatsRawData:(id)rawData
{
  dataCopy = data;
  rawDataCopy = rawData;
  v14.receiver = self;
  v14.super_class = _ANEPerformanceStats;
  v11 = [(_ANEPerformanceStats *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_hwExecutionTime = execution;
    objc_storeStrong(&v11->_perfCounterData, data);
    objc_storeStrong(&v12->_pStatsRawData, rawData);
  }

  return v12;
}

- (_ANEPerformanceStats)initWithRequestPerformanceBuffer:(void *)buffer statsBufferSize:(unsigned int *)size
{
  v30 = *MEMORY[0x1E69E9840];
  if (!buffer || !size)
  {
    v10 = +[_ANELog common];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = v22;
      v26 = 2048;
      bufferCopy = buffer;
      v28 = 2048;
      v29 = *&size;
      _os_log_error_impl(&dword_1AD246000, v10, OS_LOG_TYPE_ERROR, "%@: Invalid argument. requestPerfStatsBuffer=%p : requestStatsBufferSize=%p", buf, 0x20u);
    }

    selfCopy = 0;
    goto LABEL_24;
  }

  v8 = *size;
  if (*size >= 0x10)
  {
    v9 = *(*buffer + 1);
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = v13;
      v26 = 2048;
      bufferCopy = v9;
      v28 = 2048;
      v29 = (v9 / 1000000.0);
      _os_log_impl(&dword_1AD246000, v12, OS_LOG_TYPE_INFO, "%@: HW Execution time: %llu ns (%.2f ms)", buf, 0x20u);
    }
  }

  else
  {
    v9 = 0;
  }

  if (size[2] >= 0xF0)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:buffer[2] + 8 length:232];
    v16 = +[_ANELog common];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = NSStringFromSelector(a2);
      [(_ANEPerformanceStats *)v17 initWithRequestPerformanceBuffer:buf statsBufferSize:v16];
    }

    v14 = size[1];
    if (v14 < 0x228)
    {
      v15 = 0;
      goto LABEL_23;
    }

LABEL_20:
    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:buffer[1] length:v14];
    v18 = +[_ANELog common];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(a2);
      [(_ANEPerformanceStats *)v19 initWithRequestPerformanceBuffer:v23 statsBufferSize:v18];
    }

    goto LABEL_23;
  }

  v14 = size[1];
  if (v14 >= 0x228)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v10 = 0;
  v15 = 0;
  if (v8 >= 0x10)
  {
LABEL_23:
    self = [(_ANEPerformanceStats *)self initWithHardwareExecution:v9 perfCounterData:v10 ANEStatsRawData:v15];

    selfCopy = self;
LABEL_24:

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_25:

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (_ANEPerformanceStats)statsWithRequestPerformanceBuffer:(void *)buffer statsBufferSize:(unsigned int *)size
{
  v4 = [[self alloc] initWithRequestPerformanceBuffer:buffer statsBufferSize:size];

  return v4;
}

+ (_ANEPerformanceStats)statsWithHardwareExecutionNS:(unint64_t)s
{
  v3 = [[self alloc] initWithHardwareExecution:s perfCounterData:0 ANEStatsRawData:0];

  return v3;
}

+ (_ANEPerformanceStats)statsWithReconstructed:(id)reconstructed hardwareExecutionNS:(unint64_t)s aneStatsRawData:(id)data
{
  reconstructedCopy = reconstructed;
  dataCopy = data;
  v10 = [[self alloc] initWithHardwareExecution:s perfCounterData:reconstructedCopy ANEStatsRawData:dataCopy];

  return v10;
}

- (id)performanceCounters
{
  perfCounterData = [(_ANEPerformanceStats *)self perfCounterData];

  if (perfCounterData)
  {
    perfCounterData2 = [(_ANEPerformanceStats *)self perfCounterData];
    bytes = [perfCounterData2 bytes];

    v6 = [MEMORY[0x1E695E0F8] mutableCopy];
    perfCounterData3 = [(_ANEPerformanceStats *)self perfCounterData];
    v8 = [perfCounterData3 length];

    if (v8 >= 8)
    {
      v9 = 0;
      v10 = v8 >> 3;
      do
      {
        v11 = [(_ANEPerformanceStats *)self stringForPerfCounter:v9];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bytes + 8 * v9)];
        [v6 setObject:v12 forKeyedSubscript:v11];

        ++v9;
      }

      while (v10 != v9);
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)emitPerfcounterSignpostsWithModelStringID:(unint64_t)d
{
  v46 = *MEMORY[0x1E69E9840];
  v34 = mach_continuous_time();
  v4 = +[_ANELog common];
  spid = os_signpost_id_generate(v4);

  if (kdebug_is_enabled())
  {
    perfCounterData = [(_ANEPerformanceStats *)self perfCounterData];

    if (perfCounterData)
    {
      perfCounterData2 = [(_ANEPerformanceStats *)self perfCounterData];
      bytes = [perfCounterData2 bytes];

      perfCounterData3 = [(_ANEPerformanceStats *)self perfCounterData];
      v8 = [perfCounterData3 length] >> 3;

      v35 = v8 - 3 * ((v8 * 0x5555555555555556uLL) >> 64);
      if (v8 >= v35)
      {
        v9 = 3 * ((v8 * 0x5555555555555556uLL) >> 64);
      }

      else
      {
        v9 = 0;
      }

      kdebug_trace();
      v10 = +[_ANELog common];
      v11 = v10;
      v12 = spid - 1;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 134218496;
        dCopy = d;
        v40 = 2048;
        v41 = v8;
        v42 = 2048;
        v43 = 1;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v11, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_EVAL_PERFCOUNTER_SAMPLE", "modelStringID:%llu numCounters:%lu perfCounterDataVersion:%llu", buf, 0x20u);
      }

      if (v8 > v35)
      {
        v13 = (bytes + 16);
        v14 = 1;
        do
        {
          v15 = *(v13 - 2);
          v16 = *(v13 - 1);
          v17 = *v13;
          kdebug_trace();
          v18 = +[_ANELog common];
          v19 = v18;
          if (v12 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
          {
            v20 = *(v13 - 2);
            v21 = *(v13 - 1);
            v22 = *v13;
            *buf = 134218752;
            dCopy = v14 - 1;
            v40 = 2048;
            v41 = v20;
            v42 = 2048;
            v43 = v21;
            v44 = 2048;
            v45 = v22;
            _os_signpost_emit_with_name_impl(&dword_1AD246000, v19, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_EVAL_PERFCOUNTER_SAMPLE", "i:%lu, counters[i]:%llu, counters[i+1]:%llu, counters[i+2]:%llu", buf, 0x2Au);
          }

          v23 = v14 + 2;
          v14 += 3;
          v13 += 3;
        }

        while (v23 < v9);
      }

      if (v35)
      {
        v24 = (bytes + 8 * v9);
        v25 = *v24;
        if (v35 == 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24[1];
        }

        v27 = *v24;
        kdebug_trace();
        v28 = +[_ANELog common];
        v29 = v28;
        if (v12 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
        {
          *buf = 134218752;
          dCopy = v9;
          v40 = 2048;
          v41 = v25;
          v42 = 2048;
          v43 = v26;
          v44 = 2048;
          v45 = 0;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v29, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_EVAL_PERFCOUNTER_SAMPLE", "numWrittenCounters:%lu self:%llu a2:%llu d:%llu", buf, 0x2Au);
        }
      }

      kdebug_trace();
      v30 = +[_ANELog common];
      v31 = v30;
      if (v12 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
      {
        *buf = 134349056;
        dCopy = v34;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v31, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_EVAL_PERFCOUNTER_SAMPLE", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)initWithRequestPerformanceBuffer:(os_log_t)log statsBufferSize:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1AD246000, log, OS_LOG_TYPE_DEBUG, "%@: Write perf counters", buf, 0xCu);
}

- (void)initWithRequestPerformanceBuffer:(os_log_t)log statsBufferSize:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1AD246000, log, OS_LOG_TYPE_DEBUG, "%@: Write ane stats raw data", buf, 0xCu);
}

@end