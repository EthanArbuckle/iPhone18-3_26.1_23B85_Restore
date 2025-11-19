@interface MXCPUExceptionDiagnostic
- (MXCPUExceptionDiagnostic)initWithCoder:(id)a3;
- (MXCPUExceptionDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 callStack:(id)a5 totalCpuTime:(id)a6 totalSampledTime:(id)a7;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXCPUExceptionDiagnostic

- (MXCPUExceptionDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 callStack:(id)a5 totalCpuTime:(id)a6 totalSampledTime:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = MXCPUExceptionDiagnostic;
  v16 = [(MXDiagnostic *)&v21 initWithMetaData:a3 applicationVersion:a4];
  if (v16)
  {
    if (!v13 || ([v14 doubleValue], v17 <= 0.0) || (objc_msgSend(v15, "doubleValue"), v18 <= 0.0))
    {
      v19 = 0;
      goto LABEL_8;
    }

    objc_storeStrong(&v16->_callStackTree, a5);
    objc_storeStrong(&v16->_totalCPUTime, a6);
    objc_storeStrong(&v16->_totalSampledTime, a7);
  }

  v19 = v16;
LABEL_8:

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXCPUExceptionDiagnostic;
  v4 = a3;
  [(MXDiagnostic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_totalCPUTime forKey:{@"totalCPUTime", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_callStackTree forKey:@"callStackTree"];
  [v4 encodeObject:self->_totalSampledTime forKey:@"totalSampledTime"];
}

- (MXCPUExceptionDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MXCPUExceptionDiagnostic;
  v5 = [(MXDiagnostic *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalCPUTime"];
    totalCPUTime = v5->_totalCPUTime;
    v5->_totalCPUTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalSampledTime"];
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
  v4 = [(MXDiagnostic *)&v15 toDictionary];
  [v3 addEntriesFromDictionary:v4];

  callStackTree = self->_callStackTree;
  if (callStackTree)
  {
    v6 = [(MXCallStackTree *)callStackTree toDictionary];
    [v3 setObject:v6 forKey:@"callStackTree"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v3 objectForKeyedSubscript:@"diagnosticMetaData"];
  [v7 addEntriesFromDictionary:v8];

  if (self->_totalCPUTime)
  {
    v9 = [(MXDiagnostic *)self measurementFormatter];
    v10 = [v9 stringFromMeasurement:self->_totalCPUTime];
    [v7 setObject:v10 forKey:@"totalCPUTime"];
  }

  if (self->_totalSampledTime)
  {
    v11 = [(MXDiagnostic *)self measurementFormatter];
    v12 = [v11 stringFromMeasurement:self->_totalSampledTime];
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