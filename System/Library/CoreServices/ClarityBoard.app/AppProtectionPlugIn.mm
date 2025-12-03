@interface AppProtectionPlugIn
- (_TtC12ClarityBoard19AppProtectionPlugIn)init;
- (void)setApplication:(APApplication *)application shielded:(BOOL)shielded forOutlet:(APSystemAppOutlet *)outlet completion:(id)completion;
@end

@implementation AppProtectionPlugIn

- (void)setApplication:(APApplication *)application shielded:(BOOL)shielded forOutlet:(APSystemAppOutlet *)outlet completion:(id)completion
{
  v11 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = application;
  *(v15 + 24) = shielded;
  *(v15 + 32) = outlet;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029A1A0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10029A1A8;
  v18[5] = v17;
  applicationCopy = application;
  outletCopy = outlet;
  selfCopy = self;
  sub_10008C9F0(0, 0, v13, &unk_10029A1B0, v18);
}

- (_TtC12ClarityBoard19AppProtectionPlugIn)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(AppProtectionPlugIn *)&v5 init];
}

@end