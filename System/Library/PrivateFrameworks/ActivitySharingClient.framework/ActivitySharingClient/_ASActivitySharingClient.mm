@interface _ASActivitySharingClient
- (_ASActivitySharingClient)init;
- (void)acceptCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)acceptFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)activateWithCompletionHandler:(id)handler;
- (void)allFriendsWithCompletion:(id)completion;
- (void)appBadgeCountWithCompletion:(id)completion;
- (void)areMultipleDevicesSharingDataForSnapshotIndex:(int64_t)index completion:(id)completion;
- (void)completeCompetitionWithFriendUUID:(NSString *)d completion:(id)completion;
- (void)expireChangeTokenWithCompletion:(id)completion;
- (void)fetchActivityDataIfGreaterThanLastFetchElapsedMinimum:(unint64_t)minimum completion:(id)completion;
- (void)friendWithRemoteRelationshipUUID:(NSString *)d completion:(id)completion;
- (void)handleNotificationResponse:(ASUserNotificationResponse *)response completion:(id)completion;
- (void)ignoreCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)ignoreFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion;
- (void)immediateFetchActivityDataWithCompletion:(id)completion;
- (void)invalidateWithCompletionHandler:(id)handler;
- (void)isCloudKitAccountActiveWithCompletion:(id)completion;
- (void)pushActivityDataWithCompletion:(id)completion;
- (void)pushFakeActivityDataWithCompletion:(id)completion;
- (void)removeAllFriendsWithCompletion:(id)completion;
- (void)removeFriendWithUUID:(NSString *)d completion:(id)completion;
- (void)rollCompetitionWithFriendUUID:(NSString *)d completion:(id)completion;
- (void)sendCompetitionInviteToFriendUUID:(NSString *)d completion:(id)completion;
- (void)sendFriendInviteToDestination:(NSString *)destination callerID:(NSString *)d serviceIdentifier:(NSString *)identifier completion:(id)completion;
- (void)setActivityDataVisible:(BOOL)visible friendUUID:(NSString *)d completion:(id)completion;
- (void)setMuteEnabled:(BOOL)enabled friendUUID:(NSString *)d completion:(id)completion;
- (void)withdrawFriendInviteToFriendUUID:(NSString *)d completion:(id)completion;
@end

@implementation _ASActivitySharingClient

- (void)fetchActivityDataIfGreaterThanLastFetchElapsedMinimum:(unint64_t)minimum completion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = minimum;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23E5C9110();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC640;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC648;
  v14[5] = v13;
  selfCopy = self;
  sub_23E5932F4(0, 0, v9, &unk_23E5CC650, v14);
}

- (_ASActivitySharingClient)init
{
  v2 = ASActivitySharingDaemonEnabled();
  v3 = objc_allocWithZone(type metadata accessor for ActivitySharingClient());
  ActivitySharingClient.init(activitySharingDaemonEnabled:)(v2);
  v5 = v4;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)activateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC820;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC828;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC830, v13);
}

- (void)invalidateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC800;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC808;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC810, v13);
}

- (void)sendFriendInviteToDestination:(NSString *)destination callerID:(NSString *)d serviceIdentifier:(NSString *)identifier completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = destination;
  v16[3] = d;
  v16[4] = identifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_23E5C9110();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23E5CC7E0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23E5CC7E8;
  v19[5] = v18;
  destinationCopy = destination;
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  sub_23E5932F4(0, 0, v14, &unk_23E5CC7F0, v19);
}

- (void)acceptFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC7C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC7C8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC7D0, v15);
}

- (void)withdrawFriendInviteToFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC7A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC7A8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC7B0, v15);
}

- (void)ignoreFriendInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC780;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC788;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC790, v15);
}

- (void)setMuteEnabled:(BOOL)enabled friendUUID:(NSString *)d completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = enabled;
  *(v14 + 24) = d;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23E5C9110();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E5CC760;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E5CC768;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v12, &unk_23E5CC770, v17);
}

- (void)setActivityDataVisible:(BOOL)visible friendUUID:(NSString *)d completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = visible;
  *(v14 + 24) = d;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23E5C9110();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E5CC740;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E5CC748;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v12, &unk_23E5CC750, v17);
}

- (void)sendCompetitionInviteToFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC720;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC728;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC730, v15);
}

- (void)acceptCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC700;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC708;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC710, v15);
}

- (void)ignoreCompetitionInviteFromFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC6E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC6E8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC6F0, v15);
}

- (void)completeCompetitionWithFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC6C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC6C8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC6D0, v15);
}

- (void)rollCompetitionWithFriendUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC6A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC6A8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC6B0, v15);
}

- (void)pushActivityDataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC680;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC688;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC690, v13);
}

- (void)immediateFetchActivityDataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC660;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC668;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC670, v13);
}

- (void)isCloudKitAccountActiveWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC620;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC628;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC630, v13);
}

- (void)expireChangeTokenWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC600;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC608;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC610, v13);
}

- (void)areMultipleDevicesSharingDataForSnapshotIndex:(int64_t)index completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = index;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC5E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC5E8;
  v15[5] = v14;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC5F0, v15);
}

- (void)allFriendsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC5C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC5C8;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC5D0, v13);
}

- (void)friendWithRemoteRelationshipUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC5A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC5A8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC5B0, v15);
}

- (void)removeFriendWithUUID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC580;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC588;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC590, v15);
}

- (void)removeAllFriendsWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC560;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC568;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC570, v13);
}

- (void)handleNotificationResponse:(ASUserNotificationResponse *)response completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = response;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E5C9110();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E5CC540;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E5CC548;
  v15[5] = v14;
  responseCopy = response;
  selfCopy = self;
  sub_23E5932F4(0, 0, v10, &unk_23E5CC550, v15);
}

- (void)appBadgeCountWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC520;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC528;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC530, v13);
}

- (void)pushFakeActivityDataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23E5C9110();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E5CC4D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23E5CC4E8;
  v13[5] = v12;
  selfCopy = self;
  sub_23E5932F4(0, 0, v8, &unk_23E5CC4F8, v13);
}

@end