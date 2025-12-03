@interface AAUserIDStorage
- (AAUserIDStorage)init;
- (AAUserIDStorage)initWithAccessGroup:(id)group legacyStorage:(id)storage;
- (AAUserIDStorage)initWithAccessGroup:(id)group legacyStorage:(id)storage syncRequiresDiagnosticConsent:(BOOL)consent syncRequiresTrackingConsent:(BOOL)trackingConsent;
- (AAUserIDStorage)initWithNewStorage:(id)storage legacyStorage:(id)legacyStorage;
- (AAUserIDStorage)initWithStorage:(id)storage;
@end

@implementation AAUserIDStorage

- (AAUserIDStorage)initWithAccessGroup:(id)group legacyStorage:(id)storage
{
  v5 = sub_1B6AB92E0();
  v7 = v6;
  swift_unknownObjectRetain();
  v8 = sub_1B6A59C8C(v5, v7, storage);
  swift_unknownObjectRelease();
  return v8;
}

- (AAUserIDStorage)initWithAccessGroup:(id)group legacyStorage:(id)storage syncRequiresDiagnosticConsent:(BOOL)consent syncRequiresTrackingConsent:(BOOL)trackingConsent
{
  v9 = sub_1B6AB92E0();
  v11 = v10;
  swift_unknownObjectRetain();
  v12 = sub_1B6A59E04(v9, v11, storage, consent, trackingConsent);
  swift_unknownObjectRelease();
  return v12;
}

- (AAUserIDStorage)initWithNewStorage:(id)storage legacyStorage:(id)legacyStorage
{
  ObjectType = swift_getObjectType();
  v8 = (&self->super.isa + OBJC_IVAR___AAUserIDStorage_storage);
  v8[3] = &type metadata for MigrationUserIDStorage;
  v8[4] = &protocol witness table for MigrationUserIDStorage;
  v9 = swift_allocObject();
  *v8 = v9;
  v9[5] = &type metadata for ProxyUserIDStorage;
  v9[6] = &off_1F2E7DAA8;
  v9[2] = storage;
  v9[10] = &type metadata for ProxyMigrationUserIDStorage;
  v9[11] = &off_1F2E7BA80;
  v9[7] = legacyStorage;
  v11.receiver = self;
  v11.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AAUserIDStorage *)&v11 init];
}

- (AAUserIDStorage)initWithStorage:(id)storage
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.isa + OBJC_IVAR___AAUserIDStorage_storage);
  v6[3] = &type metadata for ProxyUserIDStorage;
  v6[4] = &off_1F2E7DAA8;
  *v6 = storage;
  v8.receiver = self;
  v8.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(AAUserIDStorage *)&v8 init];
}

- (AAUserIDStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end