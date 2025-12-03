@interface DeviceActivityMonitorContext
- (_TtC14DeviceActivity28DeviceActivityMonitorContext)init;
- (_TtC14DeviceActivity28DeviceActivityMonitorContext)initWithInputItems:(id)items;
- (_TtC14DeviceActivity28DeviceActivityMonitorContext)initWithInputItems:(id)items contextUUID:(id)d;
- (_TtC14DeviceActivity28DeviceActivityMonitorContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
@end

@implementation DeviceActivityMonitorContext

- (_TtC14DeviceActivity28DeviceActivityMonitorContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC14DeviceActivity28DeviceActivityMonitorContext____lazy_storage___monitor) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceActivityMonitorContext();
  return [(DeviceActivityMonitorContext *)&v3 init];
}

- (_TtC14DeviceActivity28DeviceActivityMonitorContext)initWithInputItems:(id)items
{
  if (items)
  {
    v3 = sub_238031F94();
  }

  else
  {
    v3 = 0;
  }

  return sub_238019718(v3);
}

- (_TtC14DeviceActivity28DeviceActivityMonitorContext)initWithInputItems:(id)items contextUUID:(id)d
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE56C8, "&%");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (items)
  {
    items = sub_238031F94();
  }

  if (d)
  {
    sub_238031A94();
    v10 = sub_238031AB4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_238031AB4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  return sub_2380197FC(items, v9);
}

- (_TtC14DeviceActivity28DeviceActivityMonitorContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE56C8, "&%");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  if (items)
  {
    items = sub_238031F94();
  }

  if (d)
  {
    sub_238031A94();
    v12 = sub_238031AB4();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_238031AB4();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  endpointCopy = endpoint;
  return sub_238019ACC(items, endpoint, v11);
}

@end