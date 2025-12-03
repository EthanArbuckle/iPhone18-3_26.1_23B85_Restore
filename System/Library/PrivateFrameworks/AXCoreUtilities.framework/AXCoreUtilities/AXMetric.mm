@interface AXMetric
- (AXMetric)initWithCoder:(id)coder;
- (AXMetricSession)session;
- (BOOL)measurementsEnabled;
- (id)_formatDeltaKbAsMbString:(int64_t)string;
- (id)_initWithName:(id)name session:(id)session;
- (id)measure:(id)measure tryExecute:(id)execute;
- (id)startMeasure:(id)measure;
- (void)_appendToReport:(id)report withIndentation:(int64_t)indentation;
- (void)_endMeasurement;
- (void)_startMeasurement;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)measure:(id)measure execute:(id)execute;
@end

@implementation AXMetric

- (id)_initWithName:(id)name session:(id)session
{
  nameCopy = name;
  sessionCopy = session;
  v20.receiver = self;
  v20.super_class = AXMetric;
  v8 = [(AXMetric *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(AXMetric *)v8 setName:nameCopy];
    [(AXMetric *)v9 setSession:sessionCopy];
    if ([sessionCopy measurementsEnabled])
    {
      array = [MEMORY[0x1E695DF70] array];
      [(AXMetric *)v9 setChildMetrics:array];

      v9->_perfCheckSession = pc_session_create();
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo processIdentifier];
      pc_session_set_procpid();

      perfCheckSession = v9->_perfCheckSession;
      pc_session_add_metric();
      v13 = v9->_perfCheckSession;
      pc_session_add_metric();
      v14 = v9->_perfCheckSession;
      pc_session_add_metric();
      v15 = v9->_perfCheckSession;
      pc_session_add_metric();
      v16 = v9->_perfCheckSession;
      pc_session_add_metric();
      v17 = v9->_perfCheckSession;
      pc_session_add_metric();
      v18 = v9->_perfCheckSession;
      pc_session_add_metric();
    }
  }

  return v9;
}

- (void)dealloc
{
  if (self->_perfCheckSession)
  {
    pc_session_destroy();
  }

  v3.receiver = self;
  v3.super_class = AXMetric;
  [(AXMetric *)&v3 dealloc];
}

- (AXMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AXMetric;
  v5 = [(AXMetric *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AXMetric *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    [(AXMetric *)v5 setSession:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"childMetrics"];
    [(AXMetric *)v5 setChildMetrics:v13];

    [coderCopy decodeDoubleForKey:@"startTime"];
    [(AXMetric *)v5 setStartTime:?];
    [coderCopy decodeDoubleForKey:@"endTime"];
    [(AXMetric *)v5 setEndTime:?];
    -[AXMetric setDirtyMemory:](v5, "setDirtyMemory:", [coderCopy decodeInt64ForKey:@"dirtyMemory"]);
    -[AXMetric setDirtyMemoryDelta:](v5, "setDirtyMemoryDelta:", [coderCopy decodeInt64ForKey:@"dirtyMemoryDelta"]);
    -[AXMetric setDirtyMemoryPeak:](v5, "setDirtyMemoryPeak:", [coderCopy decodeInt64ForKey:@"dirtyMemoryPeak"]);
    -[AXMetric setDirtyMemoryPeakDelta:](v5, "setDirtyMemoryPeakDelta:", [coderCopy decodeInt64ForKey:@"dirtyMemoryPeakDelta"]);
    -[AXMetric setDirtyMemoryPeakLifetime:](v5, "setDirtyMemoryPeakLifetime:", [coderCopy decodeInt64ForKey:@"dirtyMemoryPeakLifetime"]);
    -[AXMetric setCpuTime:](v5, "setCpuTime:", [coderCopy decodeInt64ForKey:@"cpuTime"]);
    -[AXMetric setCpuInstructions:](v5, "setCpuInstructions:", [coderCopy decodeInt64ForKey:@"cpuInstructions"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AXMetric *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  childMetrics = [(AXMetric *)self childMetrics];
  [coderCopy encodeObject:childMetrics forKey:@"childMetrics"];

  [(AXMetric *)self startTime];
  [coderCopy encodeDouble:@"startTime" forKey:?];
  [(AXMetric *)self endTime];
  [coderCopy encodeDouble:@"endTime" forKey:?];
  [coderCopy encodeInt64:-[AXMetric dirtyMemory](self forKey:{"dirtyMemory"), @"dirtyMemory"}];
  [coderCopy encodeInt64:-[AXMetric dirtyMemoryDelta](self forKey:{"dirtyMemoryDelta"), @"dirtyMemoryDelta"}];
  [coderCopy encodeInt64:-[AXMetric dirtyMemoryPeak](self forKey:{"dirtyMemoryPeak"), @"dirtyMemoryPeak"}];
  [coderCopy encodeInt64:-[AXMetric dirtyMemoryPeakDelta](self forKey:{"dirtyMemoryPeakDelta"), @"dirtyMemoryPeakDelta"}];
  [coderCopy encodeInt64:-[AXMetric dirtyMemoryPeakLifetime](self forKey:{"dirtyMemoryPeakLifetime"), @"dirtyMemoryPeakLifetime"}];
  [coderCopy encodeInt64:-[AXMetric cpuTime](self forKey:{"cpuTime"), @"cpuTime"}];
  [coderCopy encodeInt64:-[AXMetric cpuInstructions](self forKey:{"cpuInstructions"), @"cpuInstructions"}];
  NSClassFromString(&cfstr_Nsxpcencoder.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    session = [(AXMetric *)self session];
    [coderCopy encodeConditionalObject:session forKey:@"session"];
  }
}

- (void)_startMeasurement
{
  session = [(AXMetric *)self session];
  if ([session measurementsEnabled])
  {
    perfCheckSession = self->_perfCheckSession;

    if (perfCheckSession)
    {
      v4 = self->_perfCheckSession;
      pc_session_begin();
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      self->_startTime = v5;
    }
  }

  else
  {
  }
}

- (void)_endMeasurement
{
  session = [(AXMetric *)self session];
  if ([session measurementsEnabled])
  {
    perfCheckSession = self->_perfCheckSession;

    if (perfCheckSession)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      self->_endTime = v4;
      v5 = self->_perfCheckSession;
      pc_session_end();
      v6 = self->_perfCheckSession;
      pc_session_get_value();
      v7 = self->_perfCheckSession;
      pc_session_get_value();
      v8 = self->_perfCheckSession;
      pc_session_get_value();
      v9 = self->_perfCheckSession;
      pc_session_get_value();
      v10 = self->_perfCheckSession;
      pc_session_get_value();
      v11 = self->_perfCheckSession;
      pc_session_get_value();
      v12 = self->_perfCheckSession;
      pc_session_get_value();
      self->_dirtyMemory = 0.0;
      self->_dirtyMemoryDelta = 0.0;
      self->_dirtyMemoryPeak = 0.0;
      self->_dirtyMemoryPeakDelta = 0.0;
      self->_dirtyMemoryPeakLifetime = 0.0;
      self->_cpuTime = 0.0 / 0xF4240uLL;
      self->_cpuInstructions = 0.0;
      v13 = self->_perfCheckSession;
      pc_session_destroy();
      self->_perfCheckSession = 0;
    }
  }

  else
  {
  }
}

- (id)_formatDeltaKbAsMbString:(int64_t)string
{
  v3 = @"▼";
  if (string > 0)
  {
    v3 = @"▲";
  }

  if (!string)
  {
    v3 = @"=";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%.2fMB", v3, vcvtd_n_f64_s64(string, 0xAuLL)];
}

- (void)_appendToReport:(id)report withIndentation:(int64_t)indentation
{
  v28 = *MEMORY[0x1E69E9840];
  reportCopy = report;
  session = [(AXMetric *)self session];
  measurementsEnabled = [session measurementsEnabled];

  if (measurementsEnabled)
  {
    v9 = [&stru_1F0579798 stringByPaddingToLength:2 * indentation withString:@" " startingAtIndex:0];
    [reportCopy appendString:v9];

    name = [(AXMetric *)self name];
    [(AXMetric *)self elapsedTime];
    [reportCopy appendFormat:@"%@: [Time:%.3fs]", name, v11];

    [reportCopy appendFormat:@" [CPU:%lldms istrCnt:%lld]", -[AXMetric cpuTime](self, "cpuTime"), -[AXMetric cpuInstructions](self, "cpuInstructions")];
    v12 = [(AXMetric *)self _formatKbAsMbString:[(AXMetric *)self dirtyMemory]];
    v13 = [(AXMetric *)self _formatDeltaKbAsMbString:[(AXMetric *)self dirtyMemoryDelta]];
    [reportCopy appendFormat:@" [Dirty Memory:%@ %@]", v12, v13];

    v14 = [(AXMetric *)self _formatKbAsMbString:[(AXMetric *)self dirtyMemoryPeak]];
    v15 = [(AXMetric *)self _formatDeltaKbAsMbString:[(AXMetric *)self dirtyMemoryPeakDelta]];
    [reportCopy appendFormat:@" [Metric Peak:%@ %@]", v14, v15];

    v16 = [(AXMetric *)self _formatKbAsMbString:[(AXMetric *)self dirtyMemoryPeakLifetime]];
    [reportCopy appendFormat:@" [Global Peak:%@]\n", v16];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    childMetrics = [(AXMetric *)self childMetrics];
    v18 = [childMetrics countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(childMetrics);
          }

          [*(*(&v23 + 1) + 8 * v21++) _appendToReport:reportCopy withIndentation:indentation + 1];
        }

        while (v19 != v21);
        v19 = [childMetrics countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)measure:(id)measure execute:(id)execute
{
  measureCopy = measure;
  executeCopy = execute;
  session = [(AXMetric *)self session];
  if ([session measurementsEnabled] && self->_perfCheckSession)
  {
    v8 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:measureCopy session:session];
    childMetrics = [(AXMetric *)self childMetrics];
    [childMetrics addObject:v8];

    [v8 _startMeasurement];
    executeCopy[2](executeCopy, v8);
    [v8 _endMeasurement];
  }

  else
  {
    v8 = AXSharedInertMetric();
    executeCopy[2](executeCopy, v8);
  }
}

- (id)measure:(id)measure tryExecute:(id)execute
{
  measureCopy = measure;
  executeCopy = execute;
  session = [(AXMetric *)self session];
  if ([session measurementsEnabled] && self->_perfCheckSession)
  {
    v9 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:measureCopy session:session];
    childMetrics = [(AXMetric *)self childMetrics];
    [childMetrics addObject:v9];

    [v9 _startMeasurement];
    v11 = executeCopy[2](executeCopy, v9);
    [v9 _endMeasurement];
  }

  else
  {
    v9 = AXSharedInertMetric();
    v11 = executeCopy[2](executeCopy, v9);
  }

  return v11;
}

- (id)startMeasure:(id)measure
{
  measureCopy = measure;
  session = [(AXMetric *)self session];
  if ([session measurementsEnabled] && self->_perfCheckSession)
  {
    v6 = [(AXMetric *)[AXBookendMetric alloc] _initWithName:measureCopy session:session];
    childMetrics = [(AXMetric *)self childMetrics];
    [childMetrics addObject:v6];

    [v6 _startMeasurement];
  }

  else
  {
    v6 = AXSharedInertMetric();
  }

  return v6;
}

- (BOOL)measurementsEnabled
{
  session = [(AXMetric *)self session];
  measurementsEnabled = [session measurementsEnabled];

  return measurementsEnabled;
}

- (AXMetricSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end