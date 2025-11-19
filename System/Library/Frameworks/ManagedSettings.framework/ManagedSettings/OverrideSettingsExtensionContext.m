@interface OverrideSettingsExtensionContext
+ (id)_allowedItemPayloadClasses;
- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)init;
- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)initWithInputItems:(id)a3;
- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)initWithInputItems:(id)a3 contextUUID:(id)a4;
- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (void)askToOverrideUnremovabilityOfApplicationWithBundleIdentifier:(id)a3 teamIdentifier:(id)a4 replyHandler:(id)a5;
@end

@implementation OverrideSettingsExtensionContext

+ (id)_allowedItemPayloadClasses
{
  sub_20E424CA8(0, &qword_280C72100, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEE88, &qword_20E4C7E80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20E4C7710;
  v3 = sub_20E424CA8(0, &qword_27C8CFA40, 0x277CCACA8);
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA48, " M");
  *(v2 + 32) = v3;
  v4 = sub_20E424CA8(0, &qword_280C720F0, 0x277CBEA60);
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA50, "&M");
  *(v2 + 64) = v4;
  v5 = MEMORY[0x20F32F080](v2);

  return v5;
}

- (void)askToOverrideUnremovabilityOfApplicationWithBundleIdentifier:(id)a3 teamIdentifier:(id)a4 replyHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_20E4C64C0();
  v9 = v8;
  v10 = sub_20E4C64C0();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = self;
  _Block_copy(v6);
  v15 = sub_20E4BCBC8();
  if (v15)
  {
    v16 = v15;
    _Block_release(v6);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_20E433A30;
    *(v17 + 24) = v13;
    v18 = *((*MEMORY[0x277D85000] & *v16) + 0x58);

    v18(v7, v9, v10, v12, sub_20E4BD63C, v17);
  }

  else
  {

    sub_20E4BD5E8();
    v19 = swift_allocError();
    v20 = sub_20E4C6040();
    (*(v6 + 2))(v6, 0, v20);

    _Block_release(v6);
  }
}

- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC15ManagedSettings32OverrideSettingsExtensionContext____lazy_storage___overrideSettingsHandler) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for OverrideSettingsExtensionContext();
  return [(OverrideSettingsExtensionContext *)&v3 init];
}

- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)initWithInputItems:(id)a3
{
  if (a3)
  {
    v3 = sub_20E4C65C0();
  }

  else
  {
    v3 = 0;
  }

  return sub_20E4BCEDC(v3);
}

- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)initWithInputItems:(id)a3 contextUUID:(id)a4
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

  return sub_20E4BCFC0(a3, v10);
}

- (_TtC15ManagedSettings32OverrideSettingsExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
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
  return sub_20E4BD290(a3, a4, v12);
}

@end