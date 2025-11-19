@interface AMSAccountCachedServerDataCore
+ (AMSAccountCachedServerDataCore)sharedInstance;
- (id)accountFlagsForAccountID:(id)a3;
- (id)cancelUpdateBlockFor:(id)a3;
- (void)lazySyncWithAccounts:(NSArray *)a3 completionHandler:(id)a4;
- (void)setAccountFlags:(NSDictionary *)a3 forAccountID:(AMSAccountIdentity *)a4 completionHandler:(id)a5;
@end

@implementation AMSAccountCachedServerDataCore

+ (AMSAccountCachedServerDataCore)sharedInstance
{
  v2 = static AccountCachedServerData.shared.getter();

  return v2;
}

- (id)cancelUpdateBlockFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = AccountCachedServerData.cancelUpdateBlock(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)lazySyncWithAccounts:(NSArray *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1928FB3BC(&unk_192FBE2F0, v7);
}

- (id)accountFlagsForAccountID:(id)a3
{
  v4 = a3;
  v5 = self;
  AccountCachedServerData.accountFlags(forAccountID:)(v4);

  type metadata accessor for AMSAccountFlag(0);
  sub_192874CD0(0, &qword_1ED6DDBB0);
  sub_192931B80(&unk_1EAE12E40, type metadata accessor for AMSAccountFlag);
  v6 = sub_192F9667C();

  return v6;
}

- (void)setAccountFlags:(NSDictionary *)a3 forAccountID:(AMSAccountIdentity *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1928FB3BC(&unk_192FBE2C0, v9);
}

@end