@interface HealthAppDaemonOrchestrationDiagnosticOperation
- (NSString)reportFilename;
- (_TtC34HealthAppDiagnosticExtensionPluginP33_11F9AD07514107A6A0C1146F6D81808E47HealthAppDaemonOrchestrationDiagnosticOperation)initWithAttachmentDirectoryURL:(id)a3;
- (void)run;
@end

@implementation HealthAppDaemonOrchestrationDiagnosticOperation

- (_TtC34HealthAppDiagnosticExtensionPluginP33_11F9AD07514107A6A0C1146F6D81808E47HealthAppDaemonOrchestrationDiagnosticOperation)initWithAttachmentDirectoryURL:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = sub_1B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B00();
  sub_1AF0(v10);
  v12 = v11;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(HealthAppDaemonOrchestrationDiagnosticOperation *)&v15 initWithAttachmentDirectoryURL:v11];

  (*(v6 + 8))(v9, v5);
  return v13;
}

- (NSString)reportFilename
{
  v2 = sub_1B90();

  return v2;
}

- (void)run
{
  v2 = self;
  sub_12D0();
}

@end