@interface ModernLocalizer
- (NSString)identifier;
- (_TtC11AppStoreKit15ModernLocalizer)init;
- (id)decimal:(id)decimal :(int64_t)a4;
- (id)fileSize:(id)size;
- (id)formatDate:(id)date :(id)a4;
- (id)formatDateInSentence:(id)sentence :(id)a4 :(id)a5;
- (id)formatDateWithContext:(id)context :(id)a4 :(id)a5;
- (id)formatDuration:(int64_t)duration :(id)a4;
- (id)formattedCount:(id)count;
- (id)formattedCountForPreferredLocale:(id)locale :(id)a4;
- (id)relativeDate:(id)date;
- (id)string:(id)string;
- (id)string:(id)string with:(id)with;
- (id)stringForPreferredLocale:(id)locale :(id)a4;
- (id)stringWithCount:(id)count :(int64_t)a4;
- (id)stringWithCounts:(id)counts :(id)a4;
- (id)timeAgo:(id)ago;
- (id)timeAgoWithContext:(id)context :(id)a4;
@end

@implementation ModernLocalizer

- (id)decimal:(id)decimal :(int64_t)a4
{
  v6 = sub_1E1AF44EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (decimal)
  {
    __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
    (*(v7 + 104))(v9, *MEMORY[0x1E69AB180], v6);
    selfCopy = self;
    decimalCopy = decimal;
    sub_1E1AF5B2C();

    (*(v7 + 8))(v9, v6);
    v12 = sub_1E1AF5DBC();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)string:(id)string
{
  v4 = sub_1E1AF4EDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF5DFC();
  __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
  (*(v5 + 104))(v7, *MEMORY[0x1E69AB388], v4);
  selfCopy = self;
  sub_1E1AF5B0C();

  (*(v5 + 8))(v7, v4);
  v9 = sub_1E1AF5DBC();

  return v9;
}

- (id)string:(id)string with:(id)with
{
  v6 = sub_1E1AF4EDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_1E1AF5DFC();
  if (with)
  {
    sub_1E1AF5C7C();
  }

  __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB388], v6);
  v10 = v6;
  selfCopy = self;
  sub_1E1AF5B0C();

  (*(v7 + 8))(v9, v10);
  v12 = sub_1E1AF5DBC();

  return v12;
}

- (id)stringWithCount:(id)count :(int64_t)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  selfCopy = self;
  sub_1E176A598(v6, v8, a4);

  v10 = sub_1E1AF5DBC();

  return v10;
}

- (id)fileSize:(id)size
{
  sizeCopy = size;
  if (size)
  {
    selfCopy = self;
    v5 = sizeCopy;
    [v5 doubleValue];
    __swift_project_boxed_opaque_existential_1Tm((&selfCopy->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
    sub_1E1AF5B3C();

    sizeCopy = sub_1E1AF5DBC();
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
    __swift_project_boxed_opaque_existential_1Tm((&selfCopy->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
    sub_1E1AF5AFC();

    countCopy = sub_1E1AF5DBC();
  }

  return countCopy;
}

- (id)formatDate:(id)date :(id)a4
{
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1E1AF5DFC();
  if (a4)
  {
    sub_1E1AEFE3C();
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_1E1380BEC(v15, v12);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {

    sub_1E1308058(v15, &unk_1ECEBB780);
    sub_1E1308058(v12, &unk_1ECEBB780);
    v16 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
    selfCopy = self;
    sub_1E1AF5B6C();

    (*(v7 + 8))(v9, v6);
    sub_1E1308058(v15, &unk_1ECEBB780);
    v18 = sub_1E1AF5DBC();

    v16 = v18;
  }

  return v16;
}

- (id)formatDateWithContext:(id)context :(id)a4 :(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1E1AF5DFC();
  v12 = v11;
  if (a4)
  {
    sub_1E1AEFE3C();
    v13 = sub_1E1AEFE6C();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_1E1AEFE6C();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = sub_1E1AF5DFC();
  selfCopy = self;
  sub_1E176AC30(v10, v12, v9, v15);
  v18 = v17;

  sub_1E1308058(v9, &unk_1ECEBB780);
  if (v18)
  {
    v19 = sub_1E1AF5DBC();
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)formatDateInSentence:(id)sentence :(id)a4 :(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1E1AF5DFC();
  v12 = v11;
  v13 = sub_1E1AF5DFC();
  v15 = v14;
  if (a5)
  {
    sub_1E1AEFE3C();
    v16 = sub_1E1AEFE6C();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  else
  {
    v17 = sub_1E1AEFE6C();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  }

  selfCopy = self;
  sub_1E176B188(v10, v12, v13, v15, v9);
  v20 = v19;

  sub_1E1308058(v9, &unk_1ECEBB780);
  if (v20)
  {
    v21 = sub_1E1AF5DBC();
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)relativeDate:(id)date
{
  v5 = sub_1E1AEFE6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  if (date)
  {
    sub_1E1AEFE3C();
    (*(v6 + 56))(v14, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(&v19 - v13, 1, 1, v5);
  }

  sub_1E1380BEC(v14, v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1E1308058(v14, &unk_1ECEBB780);
    sub_1E1308058(v11, &unk_1ECEBB780);
    v15 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 16]);
    selfCopy = self;
    sub_1E1AF5B5C();

    (*(v6 + 8))(v8, v5);
    sub_1E1308058(v14, &unk_1ECEBB780);
    v17 = sub_1E1AF5DBC();

    v15 = v17;
  }

  return v15;
}

- (NSString)identifier
{
  v3 = sub_1E1AEFF8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_legacyLocalizer) + OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_locale, v3, v5);
  sub_1E1AEFEFC();
  (*(v4 + 8))(v7, v3);
  v8 = sub_1E1AF5DBC();

  return v8;
}

- (id)stringWithCounts:(id)counts :(id)a4
{
  v5 = sub_1E1AF5DFC();
  v7 = v6;
  v8 = sub_1E1AF621C();
  selfCopy = self;
  sub_1E13F0CFC(v5, v7, v8);

  v10 = sub_1E1AF5DBC();

  return v10;
}

- (id)stringForPreferredLocale:(id)locale :(id)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1E1AF5DFC();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1E13F0528(v6, v8, v9, a4);

  v12 = sub_1E1AF5DBC();

  return v12;
}

- (id)formattedCountForPreferredLocale:(id)locale :(id)a4
{
  sub_1E1AF5DFC();
  selfCopy = self;
  localeCopy = locale;
  sub_1E13F16B0(locale);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1E1AF5DBC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)timeAgo:(id)ago
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  if (ago)
  {
    sub_1E1AEFE3C();
    v8 = sub_1E1AEFE6C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1E1AEFE6C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_1E176BB70(v7);
  v12 = v11;

  sub_1E1308058(v7, &unk_1ECEBB780);
  if (v12)
  {
    v13 = sub_1E1AF5DBC();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)timeAgoWithContext:(id)context :(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (context)
  {
    sub_1E1AEFE3C();
    v9 = sub_1E1AEFE6C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1E1AEFE6C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = sub_1E1AF5DFC();
  selfCopy = self;
  sub_1E176BDB0(v8, v11);
  v14 = v13;

  sub_1E1308058(v8, &unk_1ECEBB780);
  if (v14)
  {
    v15 = sub_1E1AF5DBC();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)formatDuration:(int64_t)duration :(id)a4
{
  sub_1E1AF5DFC();
  selfCopy = self;
  sub_1E176C598(duration);
  v8 = v7;

  if (v8)
  {
    v9 = sub_1E1AF5DBC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC11AppStoreKit15ModernLocalizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end