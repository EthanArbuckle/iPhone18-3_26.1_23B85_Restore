@interface HDMedicationsDiagnosticExtensionPlugin
- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)l;
@end

@implementation HDMedicationsDiagnosticExtensionPlugin

- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)l
{
  v3 = [HDMedicationsDiagnosticOperation operationWithAttachmentDirectoryURL:l];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end