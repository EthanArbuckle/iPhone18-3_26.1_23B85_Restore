@interface CHInvitationDestinationCoordinator
- (void)fetchReachableDestinationsFor:(id)for completion:(id)completion;
- (void)sendInvitationToDestinations:(id)destinations callerID:(id)d completion:(id)completion;
@end

@implementation CHInvitationDestinationCoordinator

- (void)sendInvitationToDestinations:(id)destinations callerID:(id)d completion:(id)completion
{
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = _Block_copy(completion);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = self;
  v17[5] = v11;
  v17[6] = v12;
  v17[7] = v14;
  v17[8] = sub_1005995DC;
  v17[9] = v15;
  selfCopy = self;
  sub_10026E198(0, 0, v9, &unk_1006FB1E8, v17);
}

- (void)fetchReachableDestinationsFor:(id)for completion:(id)completion
{
  v5 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = v9;
  v13[6] = sub_100599500;
  v13[7] = v10;
  sub_10026E198(0, 0, v7, &unk_1006FB1D8, v13);
}

@end