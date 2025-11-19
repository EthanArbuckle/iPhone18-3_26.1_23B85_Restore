@interface AMSTokenStorage
- (id)loadWithName:(id)a3;
- (void)save:(NSDictionary *)a3 name:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation AMSTokenStorage

- (void)save:(NSDictionary *)a3 name:(NSString *)a4 completionHandler:(id)a5
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

  sub_100009728(&unk_1001F23C8, v9);
}

- (id)loadWithName:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_1001D97C4();

  return v5;
}

@end