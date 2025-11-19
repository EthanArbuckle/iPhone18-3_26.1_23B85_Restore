@interface FitnessDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation FitnessDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Fitness"];
  v5 = [v4 URLByAppendingPathComponent:@"Blackbeard/Actions" isDirectory:1];

  v6 = [v5 path];
  v7 = [DEAttachmentItem attachmentWithPath:v6];

  [v7 setDisplayName:@"Blackbeard Journals"];
  [v7 setShouldCompress:&__kCFBooleanTrue];
  [v7 setDeleteOnAttach:&__kCFBooleanTrue];
  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  return v8;
}

@end