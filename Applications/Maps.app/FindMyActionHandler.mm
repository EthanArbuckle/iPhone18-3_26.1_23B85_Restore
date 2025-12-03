@interface FindMyActionHandler
+ (void)performAction:(id)action inContext:(id)context;
- (FindMyActionHandler)init;
@end

@implementation FindMyActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  swift_unknownObjectRetain();
  sub_1000DAF40(actionCopy, context);

  swift_unknownObjectRelease();
}

- (FindMyActionHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FindMyActionHandler();
  return [(FindMyActionHandler *)&v3 init];
}

@end