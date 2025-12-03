@interface SESpaceManagementRemoteClient
- (_TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient)init;
- (void)deletePassEntry:(NSData *)entry completionHandler:(id)handler;
- (void)deleteSecureElementCredentials:(NSData *)credentials completionHandler:(id)handler;
- (void)dismiss:(NSData *)dismiss completionHandler:(id)handler;
- (void)offloadMuirfieldWithCompletionHandler:(id)handler;
- (void)present:(NSData *)present completionHandler:(id)handler;
@end

@implementation SESpaceManagementRemoteClient

- (_TtC15SESUIServiceAppP33_88CFFCF22ABDC12B54F883206816ED2829SESpaceManagementRemoteClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)present:(NSData *)present completionHandler:(id)handler
{
  v7 = (*(*(sub_100004054(&qword_10001DB90, &qword_100011D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = present;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100011DD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100011DE0;
  v14[5] = v13;
  presentCopy = present;
  selfCopy = self;
  sub_10000DC10(0, 0, v9, &unk_100011DE8, v14);
}

- (void)deletePassEntry:(NSData *)entry completionHandler:(id)handler
{
  v7 = (*(*(sub_100004054(&qword_10001DB90, &qword_100011D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = entry;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100011DB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100011DB8;
  v14[5] = v13;
  entryCopy = entry;
  selfCopy = self;
  sub_10000DC10(0, 0, v9, &unk_100011DC0, v14);
}

- (void)deleteSecureElementCredentials:(NSData *)credentials completionHandler:(id)handler
{
  v7 = (*(*(sub_100004054(&qword_10001DB90, &qword_100011D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = credentials;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100011D88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100011D90;
  v14[5] = v13;
  credentialsCopy = credentials;
  selfCopy = self;
  sub_10000DC10(0, 0, v9, &unk_100011D98, v14);
}

- (void)offloadMuirfieldWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_100004054(&qword_10001DB90, &qword_100011D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100011D60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100011D68;
  v12[5] = v11;
  selfCopy = self;
  sub_10000DC10(0, 0, v7, &unk_100011D70, v12);
}

- (void)dismiss:(NSData *)dismiss completionHandler:(id)handler
{
  v7 = (*(*(sub_100004054(&qword_10001DB90, &qword_100011D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = dismiss;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100011D10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100011D20;
  v14[5] = v13;
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10000DC10(0, 0, v9, &unk_100011D30, v14);
}

@end