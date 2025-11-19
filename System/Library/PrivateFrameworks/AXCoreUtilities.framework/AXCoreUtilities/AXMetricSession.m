@interface AXMetricSession
- (AXMetricSession)initWithCoder:(id)a3;
- (id)generateReport;
- (id)measure:(id)a3 tryExecute:(id)a4;
- (id)startMeasure:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)measure:(id)a3 execute:(id)a4;
@end

@implementation AXMetricSession

- (AXMetricSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeBoolForKey:@"measurementsEnabled"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"enabledByEnvironmentVariables"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"childMetrics"];

  v17 = [(AXMetricSession *)self initWithName:v5 measurementsEnabled:v6 orEnabledByEnvironmentVariables:v10];
  v18 = v17;
  if (v17)
  {
    v19 = [(AXMetricSession *)v17 childMetrics];
    [v19 addObjectsFromArray:v16];
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMetricSession *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  [v4 encodeBool:-[AXMetricSession measurementsEnabled](self forKey:{"measurementsEnabled"), @"measurementsEnabled"}];
  v6 = [(AXMetricSession *)self enabledByEnvironmentVariables];
  [v4 encodeObject:v6 forKey:@"enabledByEnvironmentVariables"];

  v7 = [(AXMetricSession *)self childMetrics];
  [v4 encodeObject:v7 forKey:@"childMetrics"];
}

- (void)measure:(id)a3 execute:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v7 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:v9 session:self];
    v8 = [(AXMetricSession *)self childMetrics];
    [v8 addObject:v7];

    [v7 _startMeasurement];
    v6[2](v6, v7);

    [v7 _endMeasurement];
  }

  else
  {
    v7 = AXSharedInertMetric();
    v6[2](v6, v7);
  }
}

- (id)measure:(id)a3 tryExecute:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v8 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:v6 session:self];
    v9 = [(AXMetricSession *)self childMetrics];
    [v9 addObject:v8];

    [v8 _startMeasurement];
    v10 = v7[2](v7, v8);

    [v8 _endMeasurement];
  }

  else
  {
    v8 = AXSharedInertMetric();
    v10 = v7[2](v7, v8);
  }

  return v10;
}

- (id)startMeasure:(id)a3
{
  v4 = a3;
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v5 = [(AXMetric *)[AXBookendMetric alloc] _initWithName:v4 session:self];
    v6 = [(AXMetricSession *)self childMetrics];
    [v6 addObject:v5];

    [v5 _startMeasurement];
  }

  else
  {
    v5 = AXSharedInertMetric();
  }

  return v5;
}

- (id)generateReport
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v3 = MEMORY[0x1E696AD60];
    v4 = [(AXMetricSession *)self name];
    v5 = [v3 stringWithFormat:@"Perf report for '%@':\n", v4];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(AXMetricSession *)self childMetrics];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v14 + 1) + 8 * i) _appendToReport:v5 withIndentation:1];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v6 = [(AXMetricSession *)self name];
    v5 = [v11 stringWithFormat:@"Measurements are not being collected for: '%@'", v6];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

@end