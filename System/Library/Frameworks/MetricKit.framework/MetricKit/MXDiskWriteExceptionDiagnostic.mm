@interface MXDiskWriteExceptionDiagnostic
- (MXDiskWriteExceptionDiagnostic)initWithCoder:(id)coder;
- (MXDiskWriteExceptionDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version totalWritesCaused:(id)caused stackTrace:(id)trace;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXDiskWriteExceptionDiagnostic

- (MXDiskWriteExceptionDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version totalWritesCaused:(id)caused stackTrace:(id)trace
{
  causedCopy = caused;
  traceCopy = trace;
  v17.receiver = self;
  v17.super_class = MXDiskWriteExceptionDiagnostic;
  v13 = [(MXDiagnostic *)&v17 initWithMetaData:data applicationVersion:version];
  if (!v13)
  {
    goto LABEL_5;
  }

  [causedCopy doubleValue];
  v15 = 0;
  if (traceCopy && v14 > 0.0)
  {
    objc_storeStrong(&v13->_totalWritesCaused, caused);
    objc_storeStrong(&v13->_callStackTree, trace);
LABEL_5:
    v15 = v13;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXDiskWriteExceptionDiagnostic;
  coderCopy = coder;
  [(MXDiagnostic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_totalWritesCaused forKey:{@"writesCaused", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_callStackTree forKey:@"callStackTree"];
}

- (MXDiskWriteExceptionDiagnostic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXDiskWriteExceptionDiagnostic;
  v5 = [(MXDiagnostic *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"writesCaused"];
    totalWritesCaused = v5->_totalWritesCaused;
    v5->_totalWritesCaused = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v8;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13.receiver = self;
  v13.super_class = MXDiskWriteExceptionDiagnostic;
  toDictionary = [(MXDiagnostic *)&v13 toDictionary];
  [v3 addEntriesFromDictionary:toDictionary];

  callStackTree = self->_callStackTree;
  if (callStackTree)
  {
    toDictionary2 = [(MXCallStackTree *)callStackTree toDictionary];
    [v3 setValue:toDictionary2 forKey:@"callStackTree"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v3 objectForKeyedSubscript:@"diagnosticMetaData"];
  [v7 addEntriesFromDictionary:v8];

  if (self->_totalWritesCaused)
  {
    measurementFormatter = [(MXDiagnostic *)self measurementFormatter];
    v10 = [measurementFormatter stringFromMeasurement:self->_totalWritesCaused];
    [v7 setValue:v10 forKey:@"writesCaused"];
  }

  if ([v7 count])
  {
    v11 = [v7 copy];
    [v3 setObject:v11 forKey:@"diagnosticMetaData"];
  }

  return v3;
}

@end