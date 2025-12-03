@interface OpenMailboxQuicklyItem
- (BOOL)isEqual:(id)equal;
- (NSArray)pathComponents;
- (NSString)displayName;
- (NSString)identifier;
@end

@implementation OpenMailboxQuicklyItem

- (NSString)identifier
{
  _objc_retain(self);
  sub_1003DF7C4();
  _objc_release(self);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)displayName
{
  _objc_retain(self);
  sub_1003DF8E4();
  _objc_release(self);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSArray)pathComponents
{
  _objc_retain(self);
  sub_1003DF9BC();
  _objc_release(self);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (BOOL)isEqual:(id)equal
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  if (equal)
  {
    _bridgeAnyObjectToAny(_:)();
    sub_100014898(v6, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_1003E0AE8(v7);
  sub_10000B0D8(v7);
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

@end