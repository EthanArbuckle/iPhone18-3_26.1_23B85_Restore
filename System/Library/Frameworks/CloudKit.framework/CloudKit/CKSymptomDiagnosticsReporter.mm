@interface CKSymptomDiagnosticsReporter
+ (CKSymptomDiagnosticsReporter)defaultReporter;
- (CKSymptomDiagnosticsReporter)initWithDiagnosticReporterProvider:(id)provider;
- (void)reportWithType:(NSString *)type subType:(NSString *)subType reason:(NSString *)reason context:(NSString *)context processName:(NSString *)name completionHandler:(id)handler;
@end

@implementation CKSymptomDiagnosticsReporter

+ (CKSymptomDiagnosticsReporter)defaultReporter
{
  v2 = sub_1884C3B6C();

  return v2;
}

- (CKSymptomDiagnosticsReporter)initWithDiagnosticReporterProvider:(id)provider
{
  v3 = _Block_copy(provider);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1884C3C20(sub_1884C4DB0, v4);
}

- (void)reportWithType:(NSString *)type subType:(NSString *)subType reason:(NSString *)reason context:(NSString *)context processName:(NSString *)name completionHandler:(id)handler
{
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = type;
  v15[3] = subType;
  v15[4] = reason;
  v15[5] = context;
  v15[6] = name;
  v15[7] = v14;
  v15[8] = self;
  typeCopy = type;
  subTypeCopy = subType;
  reasonCopy = reason;
  contextCopy = context;
  nameCopy = name;
  selfCopy = self;

  sub_1884C2198(&unk_1886FABC8, v15);
}

@end