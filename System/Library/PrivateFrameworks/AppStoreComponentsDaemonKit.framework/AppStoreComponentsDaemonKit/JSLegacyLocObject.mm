@interface JSLegacyLocObject
- (NSString)identifier;
- (_TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject)init;
- (id)decimal:(id)a3 :(int64_t)a4;
- (id)fileSize:(id)a3;
- (id)formatDate:(id)a3 :(id)a4;
- (id)formattedCount:(id)a3;
- (id)stringWithCount:(id)a3 :(int64_t)a4;
- (id)stringWithCounts:(id)a3 :(id)a4;
@end

@implementation JSLegacyLocObject

- (NSString)identifier
{
  sub_22273740C();
  v2 = sub_22273916C();

  return v2;
}

- (id)stringWithCount:(id)a3 :(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_22273919C();
  v10 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 16]);
  v11 = self;
  sub_2227390BC();

  v12 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
  v13 = sub_22273743C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v9, v11 + v12, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D83B88];
  *(v15 + 16) = xmmword_2227412F0;
  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  *(v15 + 32) = a4;
  sub_2227391BC();

  sub_222660468(v9, &qword_27D013C58, &qword_222743620);
  v18 = sub_22273916C();

  return v18;
}

- (id)stringWithCounts:(id)a3 :(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_22273919C();
  v9 = sub_22273937C();
  v10 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 16]);
  v11 = self;
  sub_2227390BC();

  v12 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
  v13 = sub_22273743C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, v11 + v12, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  sub_2226B9C1C(v9);

  sub_2227391BC();

  sub_222660468(v8, &qword_27D013C58, &qword_222743620);
  v15 = sub_22273916C();

  return v15;
}

- (id)decimal:(id)a3 :(int64_t)a4
{
  v6 = self;
  v7 = a3;
  sub_2226B9F18(a3, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_22273916C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fileSize:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [objc_opt_self() stringFromByteCount:objc_msgSend(v3 countStyle:{sel_longLongValue), 0}];
    sub_22273919C();

    v5 = sub_22273916C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)formattedCount:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_2226BA180(a3);
  v7 = v6;

  if (v7)
  {
    v8 = sub_22273916C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formatDate:(id)a3 :(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_22273919C();
  v12 = v11;
  if (a4)
  {
    sub_22273739C();
    v13 = sub_2227373BC();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_2227373BC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = self;
  sub_2226BAAFC(v10, v12, v9);
  v17 = v16;

  sub_222660468(v9, &unk_27D0146D0, qword_222743270);
  if (v17)
  {
    v18 = sub_22273916C();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (_TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end