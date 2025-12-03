@interface KCSharingGroupManager
- (void)fetchGroupParticipantsWithCompletionHandler:(id)handler;
- (void)fetchParticipantHandleFor:(NSString *)for groupID:(NSString *)d currentUserParticipantID:(NSString *)iD completionHandler:(id)handler;
@end

@implementation KCSharingGroupManager

- (void)fetchParticipantHandleFor:(NSString *)for groupID:(NSString *)d currentUserParticipantID:(NSString *)iD completionHandler:(id)handler
{
  v11 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = for;
  v16[3] = d;
  v16[4] = iD;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10029E7B8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10029E7C0;
  v19[5] = v18;
  forCopy = for;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_100244978(0, 0, v14, &unk_10029E7C8, v19);
}

- (void)fetchGroupParticipantsWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E798;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

@end