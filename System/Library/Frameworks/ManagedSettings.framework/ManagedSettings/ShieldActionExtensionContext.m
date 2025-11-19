@interface ShieldActionExtensionContext
- (_TtC15ManagedSettings28ShieldActionExtensionContext)init;
- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)a3;
- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)a3 contextUUID:(id)a4;
- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
@end

@implementation ShieldActionExtensionContext

- (_TtC15ManagedSettings28ShieldActionExtensionContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC15ManagedSettings28ShieldActionExtensionContext____lazy_storage___shieldActionDelegate) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShieldActionExtensionContext();
  return [(ShieldActionExtensionContext *)&v3 init];
}

- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)a3
{
  if (a3)
  {
    v3 = sub_20E4C65C0();
  }

  else
  {
    v3 = 0;
  }

  return sub_20E432B3C(v3);
}

- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)a3 contextUUID:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v14 - v9;
  if (a3)
  {
    a3 = sub_20E4C65C0();
  }

  if (a4)
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

  return sub_20E432C20(a3, v10);
}

- (_TtC15ManagedSettings28ShieldActionExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - v11;
  if (a3)
  {
    a3 = sub_20E4C65C0();
  }

  if (a5)
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

  v15 = a4;
  return sub_20E432EF0(a3, a4, v12);
}

@end