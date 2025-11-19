@interface BMInternalManagerConfiguration
- (BMInternalManagerConfiguration)init;
- (BMInternalManagerConfiguration)initWithDirectory:(id)a3 shouldRunUpdatesOnSchedule:(BOOL)a4 shouldPurgeOutdatedData:(BOOL)a5;
- (NSString)description;
@end

@implementation BMInternalManagerConfiguration

- (BMInternalManagerConfiguration)initWithDirectory:(id)a3 shouldRunUpdatesOnSchedule:(BOOL)a4 shouldPurgeOutdatedData:(BOOL)a5
{
  v8 = sub_310D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_310A0();
  (*(v9 + 16))(self + OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory, v12, v8);
  *(&self->super.isa + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule) = a4;
  *(&self->super.isa + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData) = a5;
  v13 = type metadata accessor for ManagerConfiguration();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(BMInternalManagerConfiguration *)&v16 init];
  (*(v9 + 8))(v12, v8);
  return v14;
}

- (NSString)description
{
  v2 = self;
  sub_E978();

  v3 = sub_31300();

  return v3;
}

- (BMInternalManagerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end