@interface FitnessDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation FitnessDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Fitness"];
  v5 = [v4 URLByAppendingPathComponent:@"Blackbeard/Actions" isDirectory:1];

  path = [v5 path];
  v7 = [DEAttachmentItem attachmentWithPath:path];

  [v7 setDisplayName:@"Blackbeard Journals"];
  [v7 setShouldCompress:&__kCFBooleanTrue];
  [v7 setDeleteOnAttach:&__kCFBooleanTrue];
  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  return v8;
}

@end