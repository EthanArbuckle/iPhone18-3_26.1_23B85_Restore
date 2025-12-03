@interface MXCrashDiagnostic
- (MXCrashDiagnostic)initWithCoder:(id)coder;
- (MXCrashDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version signpostData:(id)signpostData pid:(int)pid terminationReason:(id)reason applicationSpecificInfo:(id)info virtualMemoryRegionInfo:(id)regionInfo exceptionType:(id)self0 exceptionCode:(id)self1 exceptionReason:(id)self2 signal:(id)self3 stackTrace:(id)self4;
- (MXCrashDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version terminationReason:(id)reason applicationSpecificInfo:(id)info virtualMemoryRegionInfo:(id)regionInfo exceptionType:(id)type exceptionCode:(id)code signal:(id)self0 stackTrace:(id)self1;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXCrashDiagnostic

- (MXCrashDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version signpostData:(id)signpostData pid:(int)pid terminationReason:(id)reason applicationSpecificInfo:(id)info virtualMemoryRegionInfo:(id)regionInfo exceptionType:(id)self0 exceptionCode:(id)self1 exceptionReason:(id)self2 signal:(id)self3 stackTrace:(id)self4
{
  reasonCopy = reason;
  regionInfoCopy = regionInfo;
  typeCopy = type;
  codeCopy = code;
  exceptionReasonCopy = exceptionReason;
  signalCopy = signal;
  traceCopy = trace;
  v31.receiver = self;
  v31.super_class = MXCrashDiagnostic;
  v20 = [(MXDiagnostic *)&v31 initWithMetaData:data applicationVersion:version signpostData:signpostData andPID:pid];
  p_isa = &v20->super.super.isa;
  if (v20)
  {
    if (!traceCopy)
    {
      v22 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v20->_terminationReason, reason);
    objc_storeStrong(p_isa + 8, regionInfo);
    objc_storeStrong(p_isa + 9, type);
    objc_storeStrong(p_isa + 10, code);
    objc_storeStrong(p_isa + 11, signal);
    objc_storeStrong(p_isa + 6, trace);
    objc_storeStrong(p_isa + 12, exceptionReason);
  }

  v22 = p_isa;
LABEL_6:

  return v22;
}

- (MXCrashDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version terminationReason:(id)reason applicationSpecificInfo:(id)info virtualMemoryRegionInfo:(id)regionInfo exceptionType:(id)type exceptionCode:(id)code signal:(id)self0 stackTrace:(id)self1
{
  reasonCopy = reason;
  regionInfoCopy = regionInfo;
  typeCopy = type;
  codeCopy = code;
  signalCopy = signal;
  traceCopy = trace;
  v27.receiver = self;
  v27.super_class = MXCrashDiagnostic;
  v18 = [(MXDiagnostic *)&v27 initWithMetaData:data applicationVersion:version];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    if (!traceCopy)
    {
      v20 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v18->_terminationReason, reason);
    objc_storeStrong(p_isa + 8, regionInfo);
    objc_storeStrong(p_isa + 9, type);
    objc_storeStrong(p_isa + 10, code);
    objc_storeStrong(p_isa + 11, signal);
    objc_storeStrong(p_isa + 6, trace);
  }

  v20 = p_isa;
LABEL_6:

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXCrashDiagnostic;
  coderCopy = coder;
  [(MXDiagnostic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_terminationReason forKey:{@"terminationReason", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_virtualMemoryRegionInfo forKey:@"virtualMemoryRegionInfo"];
  [coderCopy encodeObject:self->_exceptionType forKey:@"exceptionType"];
  [coderCopy encodeObject:self->_exceptionCode forKey:@"exceptionCode"];
  [coderCopy encodeObject:self->_exceptionReason forKey:@"objectiveCexceptionReason"];
  [coderCopy encodeObject:self->_signal forKey:@"signal"];
  [coderCopy encodeObject:self->_callStackTree forKey:@"callStackTree"];
}

- (MXCrashDiagnostic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MXCrashDiagnostic;
  v5 = [(MXDiagnostic *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminationReason"];
    terminationReason = v5->_terminationReason;
    v5->_terminationReason = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"virtualMemoryRegionInfo"];
    virtualMemoryRegionInfo = v5->_virtualMemoryRegionInfo;
    v5->_virtualMemoryRegionInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exceptionType"];
    exceptionType = v5->_exceptionType;
    v5->_exceptionType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exceptionCode"];
    exceptionCode = v5->_exceptionCode;
    v5->_exceptionCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectiveCexceptionReason"];
    exceptionReason = v5->_exceptionReason;
    v5->_exceptionReason = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signal"];
    signal = v5->_signal;
    v5->_signal = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
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
  toDictionary = [(MXDiagnostic *)&v18 toDictionary];
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
    dictionaryRepresentation = [(MXCrashDiagnosticObjectiveCExceptionReason *)exceptionReason dictionaryRepresentation];
    [v7 setValue:dictionaryRepresentation forKey:@"objectiveCexceptionReason"];
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