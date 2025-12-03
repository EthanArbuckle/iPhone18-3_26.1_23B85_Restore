@interface ShieldActionExtensionContext
- (_TtC15ManagedSettings28ShieldActionExtensionContext)init;
- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)items;
- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)items contextUUID:(id)d;
- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
@end

@implementation ShieldActionExtensionContext

- (_TtC15ManagedSettings28ShieldActionExtensionContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC15ManagedSettings28ShieldActionExtensionContext____lazy_storage___shieldActionDelegate) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShieldActionExtensionContext();
  return [(ShieldActionExtensionContext *)&v3 init];
}

- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)items
{
  if (items)
  {
    v3 = sub_20E4C65C0();
  }

  else
  {
    v3 = 0;
  }

  return sub_20E432B3C(v3);
}

- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)items contextUUID:(id)d
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v14 - v9;
  if (items)
  {
    items = sub_20E4C65C0();
  }

  if (d)
  {
    sub_20E4C6190();
    v11 = sub_20E4C61A0();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_20E4C61A0();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  return sub_20E432C20(items, v10);
}

- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - v11;
  if (items)
  {
    items = sub_20E4C65C0();
  }

  if (d)
  {
    sub_20E4C6190();
    v13 = sub_20E4C61A0();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_20E4C61A0();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  endpointCopy = endpoint;
  return sub_20E432EF0(items, endpoint, v12);
}

@end