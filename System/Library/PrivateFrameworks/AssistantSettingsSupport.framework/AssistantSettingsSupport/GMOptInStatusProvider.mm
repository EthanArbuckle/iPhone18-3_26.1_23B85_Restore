@interface GMOptInStatusProvider
- (BOOL)userOptInStatus;
- (_TtC24AssistantSettingsSupport21GMOptInStatusProvider)init;
- (void)setUserOptInStatus:(BOOL)status;
@end

@implementation GMOptInStatusProvider

- (BOOL)userOptInStatus
{
  sub_24140E6AC();
  v2 = MEMORY[0x245CE5520]();
  v3 = sub_24140E67C();

  return v3 & 1;
}

- (void)setUserOptInStatus:(BOOL)status
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  sub_24140E6AC();
  v7 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v8 = sub_24140ECDC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = status;
  sub_2413E7730(0, 0, v6, &unk_2414129B8, v9);
}

- (_TtC24AssistantSettingsSupport21GMOptInStatusProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMOptInStatusProvider();
  return [(GMOptInStatusProvider *)&v3 init];
}

@end