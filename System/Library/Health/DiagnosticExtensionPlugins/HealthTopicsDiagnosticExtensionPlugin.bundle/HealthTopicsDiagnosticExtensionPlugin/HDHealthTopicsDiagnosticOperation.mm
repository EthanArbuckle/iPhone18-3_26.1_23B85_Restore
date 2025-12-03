@interface HDHealthTopicsDiagnosticOperation
- (HDHealthTopicsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (NSString)reportFilename;
- (void)run;
@end

@implementation HDHealthTopicsDiagnosticOperation

- (HDHealthTopicsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  v3 = *(*(sub_31CC() - 8) + 64);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_31BC();
  return sub_11A0(v5);
}

- (NSString)reportFilename
{
  v2 = sub_326C();

  return v2;
}

- (void)run
{
  selfCopy = self;
  sub_155C();
}

@end