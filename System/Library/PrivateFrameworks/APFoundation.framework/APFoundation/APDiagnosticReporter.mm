@interface APDiagnosticReporter
- (BOOL)snapshotWithSignature:(id)a3 duration:(double)a4 event:(id)a5 payload:(id)a6 reply:(id)a7;
@end

@implementation APDiagnosticReporter

- (BOOL)snapshotWithSignature:(id)a3 duration:(double)a4 event:(id)a5 payload:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E696AE30];
  v16 = a7;
  v20 = objc_msgSend_processInfo(v15, v17, v18, v19);
  isRunningTests = objc_msgSend_isRunningTests(v20, v21, v22, v23);

  if (isRunningTests)
  {
    v16[2](v16, MEMORY[0x1E695E0F8]);
    v25 = 0;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = APDiagnosticReporter;
    v25 = [(SDRDiagnosticReporter *)&v27 snapshotWithSignature:v12 duration:v13 event:v14 payload:v16 reply:a4];
  }

  return v25;
}

@end