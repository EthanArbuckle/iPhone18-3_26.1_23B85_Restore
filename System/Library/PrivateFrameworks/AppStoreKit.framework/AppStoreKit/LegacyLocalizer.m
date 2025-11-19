@interface LegacyLocalizer
- (NSString)identifier;
- (_TtC11AppStoreKit15LegacyLocalizer)init;
- (id)decimal:(id)a3 :(int64_t)a4;
- (id)fileSize:(id)a3;
- (id)formatDate:(id)a3 :(id)a4;
- (id)formatDateInSentence:(id)a3 :(id)a4 :(id)a5;
- (id)formatDateWithContext:(id)a3 :(id)a4 :(id)a5;
- (id)formatDuration:(int64_t)a3 :(id)a4;
- (id)formattedCount:(id)a3;
- (id)formattedCountForPreferredLocale:(id)a3 :(id)a4;
- (id)string:(id)a3;
- (id)string:(id)a3 with:(id)a4;
- (id)stringForPreferredLocale:(id)a3 :(id)a4;
- (id)stringWithCount:(id)a3 :(int64_t)a4;
- (id)stringWithCounts:(id)a3 :(id)a4;
- (id)timeAgoWithContext:(id)a3 :(id)a4;
@end

@implementation LegacyLocalizer

- (NSString)identifier
{
  sub_1E1AEFEFC();
  v2 = sub_1E1AF5DBC();

  return v2;
}

- (id)decimal:(id)a3 :(int64_t)a4
{
  v6 = self;
  v7 = a3;
  sub_1E13EFFFC(a3, a4);
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

- (id)string:(id)a3
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  v7 = self;
  sub_1E13F0258(v4, v6);

  v8 = sub_1E1AF5DBC();

  return v8;
}

- (id)string:(id)a3 with:(id)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  if (a4)
  {
    sub_1E1AF5C7C();
  }

  v9 = self;
  sub_1E13F0258(v6, v8);

  v10 = sub_1E1AF5DBC();

  return v10;
}

- (id)stringForPreferredLocale:(id)a3 :(id)a4
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

  v11 = self;
  sub_1E13F0528(v6, v8, v9, a4);

  v12 = sub_1E1AF5DBC();

  return v12;
}

- (id)stringWithCount:(id)a3 :(int64_t)a4
{
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  v9 = self;
  sub_1E13F09A8(v6, v8, a4);

  v10 = sub_1E1AF5DBC();

  return v10;
}

- (id)stringWithCounts:(id)a3 :(id)a4
{
  v5 = sub_1E1AF5DFC();
  v7 = v6;
  v8 = sub_1E1AF621C();
  v9 = self;
  sub_1E13F0CFC(v5, v7, v8);

  v10 = sub_1E1AF5DBC();

  return v10;
}

- (id)fileSize:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1E13F1034(a3);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1E1AF5DBC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formattedCount:(id)a3
{
  v5 = sub_1E1AEFF8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  v10 = a3;
  Locale.normalizedLocale.getter(v8);
  sub_1E1AEFEFC();
  (*(v6 + 8))(v8, v5);
  sub_1E13F16B0(a3);
  v12 = v11;

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

- (id)formattedCountForPreferredLocale:(id)a3 :(id)a4
{
  sub_1E1AF5DFC();
  v6 = self;
  v7 = a3;
  sub_1E13F16B0(a3);
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

- (id)timeAgoWithContext:(id)a3 :(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  if (a3)
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
  v13 = v12;
  v14 = self;
  sub_1E13F1C54(v8, v11, v13);
  v16 = v15;

  sub_1E1308058(v8, &unk_1ECEBB780);
  if (v16)
  {
    v17 = sub_1E1AF5DBC();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)formatDateInSentence:(id)a3 :(id)a4 :(id)a5
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

  v18 = self;
  sub_1E13F2308(v10, v12, v13, v15, v9);
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

- (id)formatDate:(id)a3 :(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  if (a4)
  {
    sub_1E1AEFE3C();
    v12 = sub_1E1AEFE6C();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_1E1AEFE6C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = self;
  sub_1E13F2BB8(v9, v11, v8, 0xD000000000000013, 0x80000001E1B55D80);
  v16 = v15;

  sub_1E1308058(v8, &unk_1ECEBB780);
  if (v16)
  {
    v17 = sub_1E1AF5DBC();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)formatDateWithContext:(id)a3 :(id)a4 :(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
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
  v17 = v16;
  v18 = self;
  sub_1E13F2BB8(v10, v12, v9, v15, v17);
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

- (id)formatDuration:(int64_t)a3 :(id)a4
{
  sub_1E1AF5DFC();
  v6 = self;
  sub_1E13F3B9C(a3);
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

- (_TtC11AppStoreKit15LegacyLocalizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end