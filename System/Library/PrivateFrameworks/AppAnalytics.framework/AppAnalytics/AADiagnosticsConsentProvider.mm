@interface AADiagnosticsConsentProvider
+ (id)custom:(id)a3;
- (AADiagnosticsConsentProvider)init;
@end

@implementation AADiagnosticsConsentProvider

+ (id)custom:(id)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B6AAFDAC;
  *(v12 + 24) = v11;

  sub_1B6AB8E30();
  v13 = &v9[*(v6 + 28)];
  *v13 = sub_1B6AB0030;
  v13[1] = v12;
  v14 = objc_allocWithZone(ObjCClassMetadata);
  sub_1B699A394(v9, v14 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v17.receiver = v14;
  v17.super_class = ObjCClassMetadata;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  sub_1B6984DF8(v9, type metadata accessor for DiagnosticsConsentProvider);

  return v15;
}

- (AADiagnosticsConsentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end