@interface HDMedicationsDiagnosticExtensionPlugin
- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)a3;
@end

@implementation HDMedicationsDiagnosticExtensionPlugin

- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)a3
{
  v3 = [HDMedicationsDiagnosticOperation operationWithAttachmentDirectoryURL:a3];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end