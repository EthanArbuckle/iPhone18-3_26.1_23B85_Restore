@interface MXDiskWriteExceptionDiagnostic
- (MXDiskWriteExceptionDiagnostic)initWithCoder:(id)a3;
- (MXDiskWriteExceptionDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 totalWritesCaused:(id)a5 stackTrace:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXDiskWriteExceptionDiagnostic

- (MXDiskWriteExceptionDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 totalWritesCaused:(id)a5 stackTrace:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MXDiskWriteExceptionDiagnostic;
  v13 = [(MXDiagnostic *)&v17 initWithMetaData:a3 applicationVersion:a4];
  if (!v13)
  {
    goto LABEL_5;
  }

  [v11 doubleValue];
  v15 = 0;
  if (v12 && v14 > 0.0)
  {
    objc_storeStrong(&v13->_totalWritesCaused, a5);
    objc_storeStrong(&v13->_callStackTree, a6);
LABEL_5:
    v15 = v13;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXDiskWriteExceptionDiagnostic;
  v4 = a3;
  [(MXDiagnostic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_totalWritesCaused forKey:{@"writesCaused", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_callStackTree forKey:@"callStackTree"];
}

- (MXDiskWriteExceptionDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXDiskWriteExceptionDiagnostic;
  v5 = [(MXDiagnostic *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"writesCaused"];
    totalWritesCaused = v5->_totalWritesCaused;
    v5->_totalWritesCaused = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
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
  v4 = [(MXDiagnostic *)&v13 toDictionary];
  [v3 addEntriesFromDictionary:v4];

  callStackTree = self->_callStackTree;
  if (callStackTree)
  {
    v6 = [(MXCallStackTree *)callStackTree toDictionary];
    [v3 setValue:v6 forKey:@"callStackTree"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v3 objectForKeyedSubscript:@"diagnosticMetaData"];
  [v7 addEntriesFromDictionary:v8];

  if (self->_totalWritesCaused)
  {
    v9 = [(MXDiagnostic *)self measurementFormatter];
    v10 = [v9 stringFromMeasurement:self->_totalWritesCaused];
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