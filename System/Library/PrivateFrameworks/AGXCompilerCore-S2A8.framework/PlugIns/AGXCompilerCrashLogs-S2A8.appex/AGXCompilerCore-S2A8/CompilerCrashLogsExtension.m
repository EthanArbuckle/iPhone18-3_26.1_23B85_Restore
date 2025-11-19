@interface CompilerCrashLogsExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation CompilerCrashLogsExtension

- (id)attachmentsForParameters:(id)a3
{
  v4 = [NSRegularExpression regularExpressionWithPattern:@"*.log" options:1 error:0];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/AGX/" isDirectory:1];
  v6 = [(CompilerCrashLogsExtension *)self filesInDir:v5 matchingPattern:v4 excludingPattern:0];

  v7 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/MTLCompiler/" isDirectory:1];
  v8 = [(CompilerCrashLogsExtension *)self filesInDir:v7 matchingPattern:v4 excludingPattern:0];

  v9 = [v6 arrayByAddingObjectsFromArray:v8];

  return v9;
}

@end