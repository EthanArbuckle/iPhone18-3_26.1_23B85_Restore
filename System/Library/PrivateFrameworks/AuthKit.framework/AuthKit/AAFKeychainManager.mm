@interface AAFKeychainManager
- (id)keychainItemFor:(id)for;
- (id)keychainItemsForDescriptor:(id)descriptor withGroup:(id)group error:(id *)error;
@end

@implementation AAFKeychainManager

- (id)keychainItemFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_1001B7914(forCopy);

  return v6;
}

- (id)keychainItemsForDescriptor:(id)descriptor withGroup:(id)group error:(id *)error
{
  if (group)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  descriptorCopy = descriptor;
  selfCopy = self;
  sub_1001B7A18(descriptorCopy, v7, v9);

  sub_1001B81FC();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

@end