@interface JSGameCenter
- (_TtC11AppStoreKit12JSGameCenter)init;
- (id)fetchGameInfo:(id)info;
- (id)fetchRecentlyPlayedGamesWithinSeconds:(id)seconds :(int64_t)a4 :(int64_t)a5;
- (id)fetchRengagementDataForLocalPlayer;
- (id)fetchSuggestedFriends:(int64_t)friends;
@end

@implementation JSGameCenter

- (id)fetchRecentlyPlayedGamesWithinSeconds:(id)seconds :(int64_t)a4 :(int64_t)a5
{
  v8 = sub_1E1AF0F7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E1AF5DFC();
  v14 = v13;
  sub_1E1AF483C();
  selfCopy = self;
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v16 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v17 = sub_1E1AF6D4C();
  v21 = v12;
  v22 = v14;
  v23 = selfCopy;
  v24 = a4;
  v25 = a5;
  v26 = v11;
  v18 = sub_1E1AF6D5C();

  (*(v9 + 8))(v11, v8);

  return v18;
}

- (id)fetchSuggestedFriends:(int64_t)friends
{
  v3 = qword_1EE1D27D8;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v6 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1E1AF6D5C();

  return v7;
}

- (id)fetchRengagementDataForLocalPlayer
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  selfCopy = self;
  v4 = sub_1E1AF6D4C();
  v5 = sub_1E1AF6D5C();

  return v5;
}

- (id)fetchGameInfo:(id)info
{
  sub_1E1AF5DFC();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v3 = sub_1E1AF6D4C();
  v4 = sub_1E1AF6D5C();

  return v4;
}

- (_TtC11AppStoreKit12JSGameCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end