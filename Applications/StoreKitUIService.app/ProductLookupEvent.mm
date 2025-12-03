@interface ProductLookupEvent
+ (NSString)name;
- (void)configureWithItem:(id)item compatibleExtension:(id)extension;
@end

@implementation ProductLookupEvent

- (void)configureWithItem:(id)item compatibleExtension:(id)extension
{
  itemCopy = item;
  extensionCopy = extension;
  selfCopy = self;
  sub_10002BA8C(itemCopy, extension);
}

+ (NSString)name
{
  sub_10002BC30();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end