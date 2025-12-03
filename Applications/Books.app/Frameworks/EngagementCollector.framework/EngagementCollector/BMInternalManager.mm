@interface BMInternalManager
- (BMInternalManager)init;
- (BMInternalManager)initWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)onDidReceiveAppDidBackground:(id)background;
- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration;
- (void)submitEvent:(id)event;
@end

@implementation BMInternalManager

- (BMInternalManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_1A79C(configurationCopy);

  return v4;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem))
  {
    selfCopy = self;

    sub_31290();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for Manager();
  [(BMInternalManager *)&v5 dealloc];
}

- (void)submitEvent:(id)event
{
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = *(&self->super.isa + OBJC_IVAR___BMInternalManager_collector);
  swift_beginAccess();
  v9 = *(v8 + 32);
  selfCopy = self;

  v12 = sub_E3E0(v11);
  v13 = sub_31480();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v12;
  *(v14 + 40) = xmmword_32EC0;
  *(v14 + 56) = sub_F33C;
  *(v14 + 64) = 0;
  sub_10C5C(0, 0, v7, &unk_33008, v14);
}

- (void)onDidReceiveAppDidBackground:(id)background
{
  v4 = sub_31060();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_31050();
  v9 = *(&self->super.isa + OBJC_IVAR___BMInternalManager_configuration);
  if (v9 && *(v9 + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData) == 1)
  {
    selfCopy = self;
    v11 = v9;
    sub_EE58();
  }

  (*(v5 + 8))(v8, v4);
}

- (BMInternalManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  Manager.propertyDidChange(_:propertyConfiguration:)(change, configurationCopy);
  swift_unknownObjectRelease();
}

@end