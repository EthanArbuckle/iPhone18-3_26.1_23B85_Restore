@interface MXCPUExceptionDiagnostic
- (MXCPUExceptionDiagnostic)initWithCoder:(id)coder;
- (MXCPUExceptionDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version callStack:(id)stack totalCpuTime:(id)time totalSampledTime:(id)sampledTime;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXCPUExceptionDiagnostic

- (MXCPUExceptionDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version callStack:(id)stack totalCpuTime:(id)time totalSampledTime:(id)sampledTime
{
  stackCopy = stack;
  timeCopy = time;
  sampledTimeCopy = sampledTime;
  v21.receiver = self;
  v21.super_class = MXCPUExceptionDiagnostic;
  v16 = [(MXDiagnostic *)&v21 initWithMetaData:data applicationVersion:version];
  if (v16)
  {
    if (!stackCopy || ([timeCopy doubleValue], v17 <= 0.0) || (objc_msgSend(sampledTimeCopy, "doubleValue"), v18 <= 0.0))
    {
      v19 = 0;
      goto LABEL_8;
    }

    objc_storeStrong(&v16->_callStackTree, stack);
    objc_storeStrong(&v16->_totalCPUTime, time);
    objc_storeStrong(&v16->_totalSampledTime, sampledTime);
  }

  v19 = v16;
LABEL_8:

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXCPUExceptionDiagnostic;
  coderCopy = coder;
  [(MXDiagnostic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_totalCPUTime forKey:{@"totalCPUTime", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_callStackTree forKey:@"callStackTree"];
  [coderCopy encodeObject:self->_totalSampledTime forKey:@"totalSampledTime"];
}

- (MXCPUExceptionDiagnostic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MXCPUExceptionDiagnostic;
  v5 = [(MXDiagnostic *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalCPUTime"];
    totalCPUTime = v5->_totalCPUTime;
    v5->_totalCPUTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalSampledTime"];
    totalSampledTime = v5->_totalSampledTime;
    v5->_totalSampledTime = v10;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15.receiver = self;
  v15.super_class = MXCPUExceptionDiagnostic;
  toDictionary = [(MXDiagnostic *)&v15 toDictionary];
  [v3 addEntriesFromDictionary:toDictionary];

  callStackTree = self->_callStackTree;
  if (callStackTree)
  {
    toDictionary2 = [(MXCallStackTree *)callStackTree toDictionary];
    [v3 setObject:toDictionary2 forKey:@"callStackTree"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v3 objectForKeyedSubscript:@"diagnosticMetaData"];
  [v7 addEntriesFromDictionary:v8];

  if (self->_totalCPUTime)
  {
    measurementFormatter = [(MXDiagnostic *)self measurementFormatter];
    v10 = [measurementFormatter stringFromMeasurement:self->_totalCPUTime];
    [v7 setObject:v10 forKey:@"totalCPUTime"];
  }

  if (self->_totalSampledTime)
  {
    measurementFormatter2 = [(MXDiagnostic *)self measurementFormatter];
    v12 = [measurementFormatter2 stringFromMeasurement:self->_totalSampledTime];
    [v7 setObject:v12 forKey:@"totalSampledTime"];
  }

  if ([v7 count])
  {
    v13 = [v7 copy];
    [v3 setObject:v13 forKey:@"diagnosticMetaData"];
  }

  return v3;
}

@end