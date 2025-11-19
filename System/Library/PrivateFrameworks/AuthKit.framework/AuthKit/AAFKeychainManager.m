@interface AAFKeychainManager
- (id)keychainItemFor:(id)a3;
- (id)keychainItemsForDescriptor:(id)a3 withGroup:(id)a4 error:(id *)a5;
@end

@implementation AAFKeychainManager

- (id)keychainItemFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1001B7914(v4);

  return v6;
}

- (id)keychainItemsForDescriptor:(id)a3 withGroup:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_1001B7A18(v10, v7, v9);

  sub_1001B81FC();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

@end