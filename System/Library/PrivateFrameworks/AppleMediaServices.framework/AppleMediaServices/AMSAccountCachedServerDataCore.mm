@interface AMSAccountCachedServerDataCore
+ (AMSAccountCachedServerDataCore)sharedInstance;
- (id)accountFlagsForAccountID:(id)d;
- (id)cancelUpdateBlockFor:(id)for;
- (void)lazySyncWithAccounts:(NSArray *)accounts completionHandler:(id)handler;
- (void)setAccountFlags:(NSDictionary *)flags forAccountID:(AMSAccountIdentity *)d completionHandler:(id)handler;
@end

@implementation AMSAccountCachedServerDataCore

+ (AMSAccountCachedServerDataCore)sharedInstance
{
  v2 = static AccountCachedServerData.shared.getter();

  return v2;
}

- (id)cancelUpdateBlockFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = AccountCachedServerData.cancelUpdateBlock(for:)(for);
  swift_unknownObjectRelease();

  return v6;
}

- (void)lazySyncWithAccounts:(NSArray *)accounts completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = accounts;
  v7[3] = v6;
  v7[4] = self;
  accountsCopy = accounts;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FBE2F0, v7);
}

- (id)accountFlagsForAccountID:(id)d
{
  dCopy = d;
  selfCopy = self;
  AccountCachedServerData.accountFlags(forAccountID:)(dCopy);

  type metadata accessor for AMSAccountFlag(0);
  sub_192874CD0(0, &qword_1ED6DDBB0);
  sub_192931B80(&unk_1EAE12E40, type metadata accessor for AMSAccountFlag);
  v6 = sub_192F9667C();

  return v6;
}

- (void)setAccountFlags:(NSDictionary *)flags forAccountID:(AMSAccountIdentity *)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = flags;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  flagsCopy = flags;
  dCopy = d;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FBE2C0, v9);
}

@end