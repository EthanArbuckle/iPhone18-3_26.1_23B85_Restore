@interface RebootstrapTrigger
- (void)accountStoreDidChange:(id)a3;
- (void)appDistributorsDidChange:(id)a3;
@end

@implementation RebootstrapTrigger

- (void)accountStoreDidChange:(id)a3
{
  v3 = sub_22273707C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273706C();

  sub_2226970C0();

  (*(v4 + 8))(v7, v3);
}

- (void)appDistributorsDidChange:(id)a3
{
  v4 = sub_22273707C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22273706C();
  v9 = qword_281312E18;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_222738F6C();
  __swift_project_value_buffer(v10, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v11 = *(sub_2227381FC() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v14 = *&self->onRebootstrapRequested[3];
  v15[15] = 1;
  sub_222737F8C();
  (*(v5 + 8))(v8, v4);
}

@end