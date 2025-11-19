@interface CKSymptomDiagnosticsReporter
+ (CKSymptomDiagnosticsReporter)defaultReporter;
- (CKSymptomDiagnosticsReporter)initWithDiagnosticReporterProvider:(id)a3;
- (void)reportWithType:(NSString *)a3 subType:(NSString *)a4 reason:(NSString *)a5 context:(NSString *)a6 processName:(NSString *)a7 completionHandler:(id)a8;
@end

@implementation CKSymptomDiagnosticsReporter

+ (CKSymptomDiagnosticsReporter)defaultReporter
{
  v2 = sub_1884C3B6C();

  return v2;
}

- (CKSymptomDiagnosticsReporter)initWithDiagnosticReporterProvider:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1884C3C20(sub_1884C4DB0, v4);
}

- (void)reportWithType:(NSString *)a3 subType:(NSString *)a4 reason:(NSString *)a5 context:(NSString *)a6 processName:(NSString *)a7 completionHandler:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = v14;
  v15[8] = self;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = self;

  sub_1884C2198(&unk_1886FABC8, v15);
}

@end