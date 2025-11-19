@interface AMSAutoBugCaptureDiagnosticActionOptions
- (AMSAutoBugCaptureDiagnosticActionOptions)initWithLogArchive:(BOOL)a3 getNetworkInfo:(BOOL)a4 crashAndSpinLogs:(BOOL)a5 diagnosticExtensionOptions:(id)a6 probeOptions:(id)a7;
@end

@implementation AMSAutoBugCaptureDiagnosticActionOptions

- (AMSAutoBugCaptureDiagnosticActionOptions)initWithLogArchive:(BOOL)a3 getNetworkInfo:(BOOL)a4 crashAndSpinLogs:(BOOL)a5 diagnosticExtensionOptions:(id)a6 probeOptions:(id)a7
{
  v8 = a6;
  v9 = a7;
  return DiagnosticActionOptions.init(logArchive:getNetworkInfo:crashAndSpinLogs:diagnosticExtensionOptions:probeOptions:)();
}

@end