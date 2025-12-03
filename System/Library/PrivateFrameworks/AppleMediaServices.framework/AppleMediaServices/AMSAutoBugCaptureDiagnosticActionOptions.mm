@interface AMSAutoBugCaptureDiagnosticActionOptions
- (AMSAutoBugCaptureDiagnosticActionOptions)initWithLogArchive:(BOOL)archive getNetworkInfo:(BOOL)info crashAndSpinLogs:(BOOL)logs diagnosticExtensionOptions:(id)options probeOptions:(id)probeOptions;
@end

@implementation AMSAutoBugCaptureDiagnosticActionOptions

- (AMSAutoBugCaptureDiagnosticActionOptions)initWithLogArchive:(BOOL)archive getNetworkInfo:(BOOL)info crashAndSpinLogs:(BOOL)logs diagnosticExtensionOptions:(id)options probeOptions:(id)probeOptions
{
  optionsCopy = options;
  probeOptionsCopy = probeOptions;
  return DiagnosticActionOptions.init(logArchive:getNetworkInfo:crashAndSpinLogs:diagnosticExtensionOptions:probeOptions:)();
}

@end