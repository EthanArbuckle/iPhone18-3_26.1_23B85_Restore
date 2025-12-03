@interface IdentityServicesAgent
- (_TtC8SOSBuddy21IdentityServicesAgent)init;
- (void)manager:(id)manager offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status context:(id)context;
@end

@implementation IdentityServicesAgent

- (_TtC8SOSBuddy21IdentityServicesAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)manager:(id)manager offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  selfCopy = self;
  sub_10022F86C(updated, status);
}

@end