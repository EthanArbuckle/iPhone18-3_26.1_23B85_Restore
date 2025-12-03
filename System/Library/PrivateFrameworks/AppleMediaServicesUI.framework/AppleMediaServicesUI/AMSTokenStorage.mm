@interface AMSTokenStorage
- (id)loadWithName:(id)name;
- (void)save:(NSDictionary *)save name:(NSString *)name completionHandler:(id)handler;
@end

@implementation AMSTokenStorage

- (void)save:(NSDictionary *)save name:(NSString *)name completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = save;
  v9[3] = name;
  v9[4] = v8;
  v9[5] = self;
  saveCopy = save;
  nameCopy = name;
  selfCopy = self;

  sub_100009728(&unk_1001F23C8, v9);
}

- (id)loadWithName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = sub_1001D97C4();

  return v5;
}

@end