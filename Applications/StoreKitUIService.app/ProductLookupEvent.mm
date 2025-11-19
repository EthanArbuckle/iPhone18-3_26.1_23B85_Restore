@interface ProductLookupEvent
+ (NSString)name;
- (void)configureWithItem:(id)a3 compatibleExtension:(id)a4;
@end

@implementation ProductLookupEvent

- (void)configureWithItem:(id)a3 compatibleExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10002BA8C(v6, a4);
}

+ (NSString)name
{
  sub_10002BC30();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end