@interface MXCrashDiagnostic
- (MXCrashDiagnostic)initWithCoder:(id)a3;
- (MXCrashDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 signpostData:(id)a5 pid:(int)a6 terminationReason:(id)a7 applicationSpecificInfo:(id)a8 virtualMemoryRegionInfo:(id)a9 exceptionType:(id)a10 exceptionCode:(id)a11 exceptionReason:(id)a12 signal:(id)a13 stackTrace:(id)a14;
- (MXCrashDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 terminationReason:(id)a5 applicationSpecificInfo:(id)a6 virtualMemoryRegionInfo:(id)a7 exceptionType:(id)a8 exceptionCode:(id)a9 signal:(id)a10 stackTrace:(id)a11;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXCrashDiagnostic

- (MXCrashDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 signpostData:(id)a5 pid:(int)a6 terminationReason:(id)a7 applicationSpecificInfo:(id)a8 virtualMemoryRegionInfo:(id)a9 exceptionType:(id)a10 exceptionCode:(id)a11 exceptionReason:(id)a12 signal:(id)a13 stackTrace:(id)a14
{
  v30 = a7;
  v29 = a9;
  v28 = a10;
  v27 = a11;
  v26 = a12;
  v18 = a13;
  v19 = a14;
  v31.receiver = self;
  v31.super_class = MXCrashDiagnostic;
  v20 = [(MXDiagnostic *)&v31 initWithMetaData:a3 applicationVersion:a4 signpostData:a5 andPID:a6];
  p_isa = &v20->super.super.isa;
  if (v20)
  {
    if (!v19)
    {
      v22 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v20->_terminationReason, a7);
    objc_storeStrong(p_isa + 8, a9);
    objc_storeStrong(p_isa + 9, a10);
    objc_storeStrong(p_isa + 10, a11);
    objc_storeStrong(p_isa + 11, a13);
    objc_storeStrong(p_isa + 6, a14);
    objc_storeStrong(p_isa + 12, a12);
  }

  v22 = p_isa;
LABEL_6:

  return v22;
}

- (MXCrashDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 terminationReason:(id)a5 applicationSpecificInfo:(id)a6 virtualMemoryRegionInfo:(id)a7 exceptionType:(id)a8 exceptionCode:(id)a9 signal:(id)a10 stackTrace:(id)a11
{
  v26 = a5;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v17 = a11;
  v27.receiver = self;
  v27.super_class = MXCrashDiagnostic;
  v18 = [(MXDiagnostic *)&v27 initWithMetaData:a3 applicationVersion:a4];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    if (!v17)
    {
      v20 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v18->_terminationReason, a5);
    objc_storeStrong(p_isa + 8, a7);
    objc_storeStrong(p_isa + 9, a8);
    objc_storeStrong(p_isa + 10, a9);
    objc_storeStrong(p_isa + 11, a10);
    objc_storeStrong(p_isa + 6, a11);
  }

  v20 = p_isa;
LABEL_6:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXCrashDiagnostic;
  v4 = a3;
  [(MXDiagnostic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_terminationReason forKey:{@"terminationReason", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_virtualMemoryRegionInfo forKey:@"virtualMemoryRegionInfo"];
  [v4 encodeObject:self->_exceptionType forKey:@"exceptionType"];
  [v4 encodeObject:self->_exceptionCode forKey:@"exceptionCode"];
  [v4 encodeObject:self->_exceptionReason forKey:@"objectiveCexceptionReason"];
  [v4 encodeObject:self->_signal forKey:@"signal"];
  [v4 encodeObject:self->_callStackTree forKey:@"callStackTree"];
}

- (MXCrashDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MXCrashDiagnostic;
  v5 = [(MXDiagnostic *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"terminationReason"];
    terminationReason = v5->_terminationReason;
    v5->_terminationReason = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"virtualMemoryRegionInfo"];
    virtualMemoryRegionInfo = v5->_virtualMemoryRegionInfo;
    v5->_virtualMemoryRegionInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exceptionType"];
    exceptionType = v5->_exceptionType;
    v5->_exceptionType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exceptionCode"];
    exceptionCode = v5->_exceptionCode;
    v5->_exceptionCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectiveCexceptionReason"];
    exceptionReason = v5->_exceptionReason;
    v5->_exceptionReason = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signal"];
    signal = v5->_signal;
    v5->_signal = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v18;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18.receiver = self;
  v18.super_class = MXCrashDiagnostic;
  v4 = [(MXDiagnostic *)&v18 toDictionary];
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

  terminationReason = self->_terminationReason;
  if (terminationReason)
  {
    [v7 setValue:terminationReason forKey:@"terminationReason"];
  }

  virtualMemoryRegionInfo = self->_virtualMemoryRegionInfo;
  if (virtualMemoryRegionInfo)
  {
    [v7 setValue:virtualMemoryRegionInfo forKey:@"virtualMemoryRegionInfo"];
  }

  exceptionType = self->_exceptionType;
  if (exceptionType)
  {
    [v7 setValue:exceptionType forKey:@"exceptionType"];
  }

  exceptionCode = self->_exceptionCode;
  if (exceptionCode)
  {
    [v7 setValue:exceptionCode forKey:@"exceptionCode"];
  }

  exceptionReason = self->_exceptionReason;
  if (exceptionReason)
  {
    v14 = [(MXCrashDiagnosticObjectiveCExceptionReason *)exceptionReason dictionaryRepresentation];
    [v7 setValue:v14 forKey:@"objectiveCexceptionReason"];
  }

  signal = self->_signal;
  if (signal)
  {
    [v7 setValue:signal forKey:@"signal"];
  }

  if ([v7 count])
  {
    v16 = [v7 copy];
    [v3 setObject:v16 forKey:@"diagnosticMetaData"];
  }

  return v3;
}

@end