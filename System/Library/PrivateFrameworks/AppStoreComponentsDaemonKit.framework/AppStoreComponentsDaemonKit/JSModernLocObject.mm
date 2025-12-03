@interface JSModernLocObject
- (NSString)identifier;
- (_TtC27AppStoreComponentsDaemonKit17JSModernLocObject)init;
- (id)arcadeWordmarkAssetName;
- (id)decimal:(id)decimal :(int64_t)a4;
- (id)fileSize:(id)size;
- (id)formatDate:(id)date :(id)a4;
- (id)formattedCount:(id)count;
- (id)relativeDate:(id)date;
- (id)stringWithCount:(id)count :(int64_t)a4;
- (id)stringWithCounts:(id)counts :(id)a4;
- (id)timeAgo:(id)ago;
@end

@implementation JSModernLocObject

- (id)arcadeWordmarkAssetName
{
  v0 = sub_22273916C();

  return v0;
}

- (NSString)identifier
{
  v3 = sub_22273743C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
  selfCopy = self;
  sub_22273906C();
  sub_22273740C();

  (*(v4 + 8))(v7, v3);
  v10 = sub_22273916C();

  return v10;
}

- (id)stringWithCount:(id)count :(int64_t)a4
{
  sub_22273919C();
  v5 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
  selfCopy = self;
  sub_2227390CC();

  v7 = sub_22273916C();

  return v7;
}

- (id)stringWithCounts:(id)counts :(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_22273919C();
  v9 = sub_22273937C();
  v10 = (&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer);
  v11 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
  selfCopy = self;
  sub_2227390BC();

  v13 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_22273906C();
  v14 = sub_22273743C();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  sub_2226B9C1C(v9);

  sub_2227391BC();

  sub_222660468(v8, &qword_27D013C58, &qword_222743620);
  v15 = sub_22273916C();

  return v15;
}

- (id)decimal:(id)decimal :(int64_t)a4
{
  v6 = sub_22273866C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (decimal)
  {
    v11 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    (*(v7 + 104))(v10, *MEMORY[0x277D21E80], v6);
    selfCopy = self;
    decimalCopy = decimal;
    sub_22273907C();

    (*(v7 + 8))(v10, v6);
    v14 = sub_22273916C();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)fileSize:(id)size
{
  sizeCopy = size;
  if (size)
  {
    selfCopy = self;
    v5 = sizeCopy;
    [v5 doubleValue];
    v6 = *&selfCopy->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    sub_22273908C();

    sizeCopy = sub_22273916C();
  }

  return sizeCopy;
}

- (id)formattedCount:(id)count
{
  countCopy = count;
  if (count)
  {
    selfCopy = self;
    v5 = countCopy;
    [v5 integerValue];
    v6 = *&selfCopy->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    sub_22273905C();

    countCopy = sub_22273916C();
  }

  return countCopy;
}

- (id)timeAgo:(id)ago
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  if (ago)
  {
    sub_22273739C();
    v8 = sub_2227373BC();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_2227373BC();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_2226B7C58();
  v10 = sub_2227396EC();
  v11 = sub_2227396FC();

  sub_22273968C();
  v13 = v12;

  sub_222660468(v7, &unk_27D0146D0, qword_222743270);
  if (v13)
  {
    v14 = sub_22273916C();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)formatDate:(id)date :(id)a4
{
  v6 = sub_2227373BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_22273919C();
  if (a4)
  {
    sub_22273739C();
    (*(v7 + 56))(v17, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v17, 1, 1, v6);
  }

  sub_2226BD5F4(v17, v15);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {

    sub_222660468(v17, &unk_27D0146D0, qword_222743270);
    sub_222660468(v15, &unk_27D0146D0, qword_222743270);
    v18 = 0;
  }

  else
  {
    (*(v7 + 32))(v10, v15, v6);
    v19 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    selfCopy = self;
    sub_2227390AC();

    (*(v7 + 8))(v10, v6);
    sub_222660468(v17, &unk_27D0146D0, qword_222743270);
    v21 = sub_22273916C();

    v18 = v21;
  }

  return v18;
}

- (id)relativeDate:(id)date
{
  v5 = sub_2227373BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  if (date)
  {
    sub_22273739C();
    (*(v6 + 56))(v16, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(&v22 - v15, 1, 1, v5);
  }

  sub_2226BD5F4(v16, v14);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_222660468(v16, &unk_27D0146D0, qword_222743270);
    sub_222660468(v14, &unk_27D0146D0, qword_222743270);
    v17 = 0;
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
    v18 = *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24];
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    selfCopy = self;
    sub_22273909C();

    (*(v6 + 8))(v9, v5);
    sub_222660468(v16, &unk_27D0146D0, qword_222743270);
    v20 = sub_22273916C();

    v17 = v20;
  }

  return v17;
}

- (_TtC27AppStoreComponentsDaemonKit17JSModernLocObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end