@interface APDiagnosticReporter
- (BOOL)snapshotWithSignature:(id)signature duration:(double)duration event:(id)event payload:(id)payload reply:(id)reply;
@end

@implementation APDiagnosticReporter

- (BOOL)snapshotWithSignature:(id)signature duration:(double)duration event:(id)event payload:(id)payload reply:(id)reply
{
  signatureCopy = signature;
  eventCopy = event;
  payloadCopy = payload;
  v15 = MEMORY[0x1E696AE30];
  replyCopy = reply;
  v20 = objc_msgSend_processInfo(v15, v17, v18, v19);
  isRunningTests = objc_msgSend_isRunningTests(v20, v21, v22, v23);

  if (isRunningTests)
  {
    replyCopy[2](replyCopy, MEMORY[0x1E695E0F8]);
    v25 = 0;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = APDiagnosticReporter;
    v25 = [(SDRDiagnosticReporter *)&v27 snapshotWithSignature:signatureCopy duration:eventCopy event:payloadCopy payload:replyCopy reply:duration];
  }

  return v25;
}

@end