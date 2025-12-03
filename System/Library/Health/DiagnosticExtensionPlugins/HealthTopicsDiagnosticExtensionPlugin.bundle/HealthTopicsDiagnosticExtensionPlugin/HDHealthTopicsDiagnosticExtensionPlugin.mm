@interface HDHealthTopicsDiagnosticExtensionPlugin
- (HDHealthTopicsDiagnosticExtensionPlugin)init;
- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)l;
@end

@implementation HDHealthTopicsDiagnosticExtensionPlugin

- (HDHealthTopicsDiagnosticExtensionPlugin)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HDHealthTopicsDiagnosticExtensionPlugin *)&v3 init];
}

- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)l
{
  v3 = sub_31CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_31BC();
  sub_310C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_3780;
  v9 = objc_allocWithZone(type metadata accessor for HealthTopicsDiagnosticOperation());
  sub_31AC(v10);
  v12 = v11;
  v13 = [v9 initWithAttachmentDirectoryURL:v11];

  *(v8 + 32) = v13;
  (*(v4 + 8))(v7, v3);
  sub_3160();
  v14.super.isa = sub_32AC().super.isa;

  return v14.super.isa;
}

@end