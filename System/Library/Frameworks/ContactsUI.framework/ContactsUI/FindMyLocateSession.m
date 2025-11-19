@interface FindMyLocateSession
- (id)friendshipUpdateCallback;
- (int64_t)friendshipState:(id)a3;
- (void)getAllFriendIdsWithCompletion:(id)a3;
- (void)sendFriendshipOfferTo:(id)a3 end:(int64_t)a4 isFromGroup:(BOOL)a5 completion:(id)a6;
- (void)setFriendshipUpdateCallback:(id)a3;
- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)a3 completionHandler:(id)a4;
- (void)stopSharingLocationWith:(id)a3 isFromGroup:(BOOL)a4 completion:(id)a5;
- (void)stopUpdatingFriendsWithCompletionHandler:(id)a3;
@end

@implementation FindMyLocateSession

- (id)friendshipUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199AE63DC;
    aBlock[3] = &block_descriptor_5;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFriendshipUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_199AF0380;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_199A9A5FC(v7);
}

- (void)getAllFriendIdsWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_199DFA1BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_199AF0330;
  v12[6] = v10;
  v13 = self;
  sub_199AE7FD0(0, 0, v8, &unk_199E3B820, v12);
}

- (int64_t)friendshipState:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_199DFA3AC();

  swift_unknownObjectRelease();
  return v6;
}

- (void)stopSharingLocationWith:(id)a3 isFromGroup:(BOOL)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = sub_199DFA0CC();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = sub_199DFA1BC();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v13;
  *(v16 + 40) = sub_199AF0720;
  *(v16 + 48) = v14;
  *(v16 + 56) = self;
  *(v16 + 64) = a4;
  v17 = self;
  sub_199AE7FD0(0, 0, v11, &unk_199E3B818, v16);
}

- (void)sendFriendshipOfferTo:(id)a3 end:(int64_t)a4 isFromGroup:(BOOL)a5 completion:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = _Block_copy(a6);
  v15 = sub_199DFA0CC();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = sub_199DFA1BC();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v15;
  *(v18 + 40) = sub_199AF02CC;
  *(v18 + 48) = v16;
  *(v18 + 56) = self;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  v19 = self;
  sub_199AE7FD0(0, 0, v13, &unk_199E3B810, v18);
}

- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_199DFA1BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_199E3B7F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_199E3B800;
  v15[5] = v14;
  v16 = self;
  sub_199AEFE74(0, 0, v10, &unk_199E3B808, v15);
}

- (void)stopUpdatingFriendsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_199DFA1BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_199E3B7B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_199E3B7C0;
  v13[5] = v12;
  v14 = self;
  sub_199AEFE74(0, 0, v8, &unk_199E3B7D0, v13);
}

@end