@interface AXMetric
- (AXMetric)initWithCoder:(id)a3;
- (AXMetricSession)session;
- (BOOL)measurementsEnabled;
- (id)_formatDeltaKbAsMbString:(int64_t)a3;
- (id)_initWithName:(id)a3 session:(id)a4;
- (id)measure:(id)a3 tryExecute:(id)a4;
- (id)startMeasure:(id)a3;
- (void)_appendToReport:(id)a3 withIndentation:(int64_t)a4;
- (void)_endMeasurement;
- (void)_startMeasurement;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)measure:(id)a3 execute:(id)a4;
@end

@implementation AXMetric

- (id)_initWithName:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = AXMetric;
  v8 = [(AXMetric *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(AXMetric *)v8 setName:v6];
    [(AXMetric *)v9 setSession:v7];
    if ([v7 measurementsEnabled])
    {
      v10 = [MEMORY[0x1E695DF70] array];
      [(AXMetric *)v9 setChildMetrics:v10];

      v9->_perfCheckSession = pc_session_create();
      v11 = [MEMORY[0x1E696AE30] processInfo];
      [v11 processIdentifier];
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

- (AXMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AXMetric;
  v5 = [(AXMetric *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AXMetric *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    [(AXMetric *)v5 setSession:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"childMetrics"];
    [(AXMetric *)v5 setChildMetrics:v13];

    [v4 decodeDoubleForKey:@"startTime"];
    [(AXMetric *)v5 setStartTime:?];
    [v4 decodeDoubleForKey:@"endTime"];
    [(AXMetric *)v5 setEndTime:?];
    -[AXMetric setDirtyMemory:](v5, "setDirtyMemory:", [v4 decodeInt64ForKey:@"dirtyMemory"]);
    -[AXMetric setDirtyMemoryDelta:](v5, "setDirtyMemoryDelta:", [v4 decodeInt64ForKey:@"dirtyMemoryDelta"]);
    -[AXMetric setDirtyMemoryPeak:](v5, "setDirtyMemoryPeak:", [v4 decodeInt64ForKey:@"dirtyMemoryPeak"]);
    -[AXMetric setDirtyMemoryPeakDelta:](v5, "setDirtyMemoryPeakDelta:", [v4 decodeInt64ForKey:@"dirtyMemoryPeakDelta"]);
    -[AXMetric setDirtyMemoryPeakLifetime:](v5, "setDirtyMemoryPeakLifetime:", [v4 decodeInt64ForKey:@"dirtyMemoryPeakLifetime"]);
    -[AXMetric setCpuTime:](v5, "setCpuTime:", [v4 decodeInt64ForKey:@"cpuTime"]);
    -[AXMetric setCpuInstructions:](v5, "setCpuInstructions:", [v4 decodeInt64ForKey:@"cpuInstructions"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(AXMetric *)self name];
  [v7 encodeObject:v4 forKey:@"name"];

  v5 = [(AXMetric *)self childMetrics];
  [v7 encodeObject:v5 forKey:@"childMetrics"];

  [(AXMetric *)self startTime];
  [v7 encodeDouble:@"startTime" forKey:?];
  [(AXMetric *)self endTime];
  [v7 encodeDouble:@"endTime" forKey:?];
  [v7 encodeInt64:-[AXMetric dirtyMemory](self forKey:{"dirtyMemory"), @"dirtyMemory"}];
  [v7 encodeInt64:-[AXMetric dirtyMemoryDelta](self forKey:{"dirtyMemoryDelta"), @"dirtyMemoryDelta"}];
  [v7 encodeInt64:-[AXMetric dirtyMemoryPeak](self forKey:{"dirtyMemoryPeak"), @"dirtyMemoryPeak"}];
  [v7 encodeInt64:-[AXMetric dirtyMemoryPeakDelta](self forKey:{"dirtyMemoryPeakDelta"), @"dirtyMemoryPeakDelta"}];
  [v7 encodeInt64:-[AXMetric dirtyMemoryPeakLifetime](self forKey:{"dirtyMemoryPeakLifetime"), @"dirtyMemoryPeakLifetime"}];
  [v7 encodeInt64:-[AXMetric cpuTime](self forKey:{"cpuTime"), @"cpuTime"}];
  [v7 encodeInt64:-[AXMetric cpuInstructions](self forKey:{"cpuInstructions"), @"cpuInstructions"}];
  NSClassFromString(&cfstr_Nsxpcencoder.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [(AXMetric *)self session];
    [v7 encodeConditionalObject:v6 forKey:@"session"];
  }
}

- (void)_startMeasurement
{
  v6 = [(AXMetric *)self session];
  if ([v6 measurementsEnabled])
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
  v14 = [(AXMetric *)self session];
  if ([v14 measurementsEnabled])
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

- (id)_formatDeltaKbAsMbString:(int64_t)a3
{
  v3 = @"▼";
  if (a3 > 0)
  {
    v3 = @"▲";
  }

  if (!a3)
  {
    v3 = @"=";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%.2fMB", v3, vcvtd_n_f64_s64(a3, 0xAuLL)];
}

- (void)_appendToReport:(id)a3 withIndentation:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AXMetric *)self session];
  v8 = [v7 measurementsEnabled];

  if (v8)
  {
    v9 = [&stru_1F0579798 stringByPaddingToLength:2 * a4 withString:@" " startingAtIndex:0];
    [v6 appendString:v9];

    v10 = [(AXMetric *)self name];
    [(AXMetric *)self elapsedTime];
    [v6 appendFormat:@"%@: [Time:%.3fs]", v10, v11];

    [v6 appendFormat:@" [CPU:%lldms istrCnt:%lld]", -[AXMetric cpuTime](self, "cpuTime"), -[AXMetric cpuInstructions](self, "cpuInstructions")];
    v12 = [(AXMetric *)self _formatKbAsMbString:[(AXMetric *)self dirtyMemory]];
    v13 = [(AXMetric *)self _formatDeltaKbAsMbString:[(AXMetric *)self dirtyMemoryDelta]];
    [v6 appendFormat:@" [Dirty Memory:%@ %@]", v12, v13];

    v14 = [(AXMetric *)self _formatKbAsMbString:[(AXMetric *)self dirtyMemoryPeak]];
    v15 = [(AXMetric *)self _formatDeltaKbAsMbString:[(AXMetric *)self dirtyMemoryPeakDelta]];
    [v6 appendFormat:@" [Metric Peak:%@ %@]", v14, v15];

    v16 = [(AXMetric *)self _formatKbAsMbString:[(AXMetric *)self dirtyMemoryPeakLifetime]];
    [v6 appendFormat:@" [Global Peak:%@]\n", v16];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [(AXMetric *)self childMetrics];
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v17);
          }

          [*(*(&v23 + 1) + 8 * v21++) _appendToReport:v6 withIndentation:a4 + 1];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)measure:(id)a3 execute:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AXMetric *)self session];
  if ([v7 measurementsEnabled] && self->_perfCheckSession)
  {
    v8 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:v10 session:v7];
    v9 = [(AXMetric *)self childMetrics];
    [v9 addObject:v8];

    [v8 _startMeasurement];
    v6[2](v6, v8);
    [v8 _endMeasurement];
  }

  else
  {
    v8 = AXSharedInertMetric();
    v6[2](v6, v8);
  }
}

- (id)measure:(id)a3 tryExecute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXMetric *)self session];
  if ([v8 measurementsEnabled] && self->_perfCheckSession)
  {
    v9 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:v6 session:v8];
    v10 = [(AXMetric *)self childMetrics];
    [v10 addObject:v9];

    [v9 _startMeasurement];
    v11 = v7[2](v7, v9);
    [v9 _endMeasurement];
  }

  else
  {
    v9 = AXSharedInertMetric();
    v11 = v7[2](v7, v9);
  }

  return v11;
}

- (id)startMeasure:(id)a3
{
  v4 = a3;
  v5 = [(AXMetric *)self session];
  if ([v5 measurementsEnabled] && self->_perfCheckSession)
  {
    v6 = [(AXMetric *)[AXBookendMetric alloc] _initWithName:v4 session:v5];
    v7 = [(AXMetric *)self childMetrics];
    [v7 addObject:v6];

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
  v2 = [(AXMetric *)self session];
  v3 = [v2 measurementsEnabled];

  return v3;
}

- (AXMetricSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end