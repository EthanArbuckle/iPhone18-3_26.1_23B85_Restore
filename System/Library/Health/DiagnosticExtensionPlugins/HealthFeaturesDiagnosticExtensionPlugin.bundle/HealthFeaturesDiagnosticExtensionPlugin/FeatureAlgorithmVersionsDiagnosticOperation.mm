@interface FeatureAlgorithmVersionsDiagnosticOperation
- (FeatureAlgorithmVersionsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (NSString)reportFilename;
- (void)run;
@end

@implementation FeatureAlgorithmVersionsDiagnosticOperation

- (NSString)reportFilename
{
  v2 = sub_28A0();

  return v2;
}

- (void)run
{
  selfCopy = self;
  sub_F38();
}

- (FeatureAlgorithmVersionsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  ObjectType = swift_getObjectType();
  v5 = sub_2790();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2780();
  sub_2770(v10);
  v12 = v11;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(FeatureAlgorithmVersionsDiagnosticOperation *)&v15 initWithAttachmentDirectoryURL:v11];

  (*(v6 + 8))(v9, v5);
  return v13;
}

@end