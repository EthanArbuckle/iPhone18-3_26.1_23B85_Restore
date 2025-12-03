@interface StorageShared
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)handleDeepLinkWithResourceDictionary:(id)dictionary;
- (void)searchDidUpdate:(id)update;
- (void)startMonitoring;
@end

@implementation StorageShared

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(StorageShared *)&v6 dealloc];
}

- (void)startMonitoring
{
  selfCopy = self;
  sub_28F58();
}

- (void)searchDidUpdate:(id)update
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_81928();
  v10 = v9;
  v11 = sub_81AB8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_81A88();
  selfCopy = self;
  v13 = sub_81A78();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = selfCopy;
  v14[5] = v8;
  v14[6] = v10;
  sub_68AE4(0, 0, v7, &unk_89398, v14);
}

- (void)handleDeepLinkWithResourceDictionary:(id)dictionary
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_81838();
  v9 = sub_81AB8();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_81A88();
  selfCopy = self;
  v11 = sub_81A78();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v8;
  v12[5] = selfCopy;
  sub_68AE4(0, 0, v7, &unk_89388, v12);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v5 = sub_147EC(&unk_B8240, &qword_88F50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_81AB8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_81A88();
  selfCopy = self;
  v11 = sub_81A78();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = selfCopy;
  sub_68AE4(0, 0, v8, &unk_89378, v12);
}

@end