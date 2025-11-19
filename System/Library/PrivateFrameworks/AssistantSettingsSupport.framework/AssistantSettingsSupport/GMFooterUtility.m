@interface GMFooterUtility
- (_TtC24AssistantSettingsSupport15GMFooterUtility)init;
- (id)fetchLanguageVariants;
- (id)openAppleIntelligenceURL;
- (id)openStorageManagement;
- (void)cancelDownloadTask;
- (void)updateFooterWithSpecifier:(id)a3 settings:(id)a4;
@end

@implementation GMFooterUtility

- (_TtC24AssistantSettingsSupport15GMFooterUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMFooterUtility();
  return [(GMFooterUtility *)&v3 init];
}

- (id)fetchLanguageVariants
{
  v2 = self;
  sub_2413F5F9C(&unk_285316FA0);
  swift_arrayDestroy();

  v3 = sub_24140ED2C();

  return v3;
}

- (void)updateFooterWithSpecifier:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2413F3DDC(v6, v7);
}

- (void)cancelDownloadTask
{
  if (qword_27E5426F0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
    sub_24140ED0C();
  }
}

- (id)openStorageManagement
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542938, &qword_2414130A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_24140E24C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5426B8 != -1)
  {
    swift_once();
  }

  v9 = sub_24140E72C();
  __swift_project_value_buffer(v9, qword_27E543B00);
  v10 = sub_24140E70C();
  v11 = sub_24140ED8C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2413B9000, v10, v11, "openStorageManagement being called", v12, 2u);
    MEMORY[0x245CE6B00](v12, -1, -1);
  }

  sub_24140E23C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_2413E8560(v3, &qword_27E542938, &qword_2414130A0);
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    v15 = sub_24140E21C();
    [v14 openSensitiveURL:v15 withOptions:0];

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)openAppleIntelligenceURL
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542938, &qword_2414130A0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = sub_24140E24C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 sf_isiPad];

  v17 = (v8 + 48);
  if (v16)
  {
    sub_24140E23C();
    if ((*v17)(v6, 1, v7) == 1)
    {
      v18 = v6;
      return sub_2413E8560(v18, &qword_27E542938, &qword_2414130A0);
    }

    (*(v8 + 32))(v14, v6, v7);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v20 = result;
      v21 = sub_24140E21C();
      [v20 openSensitiveURL:v21 withOptions:0];

      return (*(v8 + 8))(v14, v7);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_24140E23C();
  if ((*v17)(v4, 1, v7) == 1)
  {
    v18 = v4;
    return sub_2413E8560(v18, &qword_27E542938, &qword_2414130A0);
  }

  (*(v8 + 32))(v12, v4, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_24140E21C();
  [v22 openSensitiveURL:v23 withOptions:0];

  return (*(v8 + 8))(v12, v7);
}

@end