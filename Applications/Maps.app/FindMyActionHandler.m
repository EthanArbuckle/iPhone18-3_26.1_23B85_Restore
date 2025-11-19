@interface FindMyActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
- (FindMyActionHandler)init;
@end

@implementation FindMyActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  sub_1000DAF40(v5, a4);

  swift_unknownObjectRelease();
}

- (FindMyActionHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FindMyActionHandler();
  return [(FindMyActionHandler *)&v3 init];
}

@end