@interface AXMetricSession
- (AXMetricSession)initWithCoder:(id)coder;
- (id)generateReport;
- (id)measure:(id)measure tryExecute:(id)execute;
- (id)startMeasure:(id)measure;
- (void)encodeWithCoder:(id)coder;
- (void)measure:(id)measure execute:(id)execute;
@end

@implementation AXMetricSession

- (AXMetricSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeBoolForKey:@"measurementsEnabled"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"enabledByEnvironmentVariables"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"childMetrics"];

  v17 = [(AXMetricSession *)self initWithName:v5 measurementsEnabled:v6 orEnabledByEnvironmentVariables:v10];
  v18 = v17;
  if (v17)
  {
    childMetrics = [(AXMetricSession *)v17 childMetrics];
    [childMetrics addObjectsFromArray:v16];
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AXMetricSession *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeBool:-[AXMetricSession measurementsEnabled](self forKey:{"measurementsEnabled"), @"measurementsEnabled"}];
  enabledByEnvironmentVariables = [(AXMetricSession *)self enabledByEnvironmentVariables];
  [coderCopy encodeObject:enabledByEnvironmentVariables forKey:@"enabledByEnvironmentVariables"];

  childMetrics = [(AXMetricSession *)self childMetrics];
  [coderCopy encodeObject:childMetrics forKey:@"childMetrics"];
}

- (void)measure:(id)measure execute:(id)execute
{
  measureCopy = measure;
  executeCopy = execute;
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v7 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:measureCopy session:self];
    childMetrics = [(AXMetricSession *)self childMetrics];
    [childMetrics addObject:v7];

    [v7 _startMeasurement];
    executeCopy[2](executeCopy, v7);

    [v7 _endMeasurement];
  }

  else
  {
    v7 = AXSharedInertMetric();
    executeCopy[2](executeCopy, v7);
  }
}

- (id)measure:(id)measure tryExecute:(id)execute
{
  measureCopy = measure;
  executeCopy = execute;
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v8 = [(AXMetric *)[AXBlockMetric alloc] _initWithName:measureCopy session:self];
    childMetrics = [(AXMetricSession *)self childMetrics];
    [childMetrics addObject:v8];

    [v8 _startMeasurement];
    v10 = executeCopy[2](executeCopy, v8);

    [v8 _endMeasurement];
  }

  else
  {
    v8 = AXSharedInertMetric();
    v10 = executeCopy[2](executeCopy, v8);
  }

  return v10;
}

- (id)startMeasure:(id)measure
{
  measureCopy = measure;
  if ([(AXMetricSession *)self measurementsEnabled])
  {
    v5 = [(AXMetric *)[AXBookendMetric alloc] _initWithName:measureCopy session:self];
    childMetrics = [(AXMetricSession *)self childMetrics];
    [childMetrics addObject:v5];

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
    name = [(AXMetricSession *)self name];
    v5 = [v3 stringWithFormat:@"Perf report for '%@':\n", name];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    childMetrics = [(AXMetricSession *)self childMetrics];
    v7 = [childMetrics countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(childMetrics);
          }

          [*(*(&v14 + 1) + 8 * i) _appendToReport:v5 withIndentation:1];
        }

        v8 = [childMetrics countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    childMetrics = [(AXMetricSession *)self name];
    v5 = [v11 stringWithFormat:@"Measurements are not being collected for: '%@'", childMetrics];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

@end