@interface RCSaveAsNewMenuFactory
+ (id)createMenuWithAutomaticallyPause:(BOOL)pause actionHandler:(id)handler;
- (_TtC10VoiceMemos22RCSaveAsNewMenuFactory)init;
@end

@implementation RCSaveAsNewMenuFactory

+ (id)createMenuWithAutomaticallyPause:(BOOL)pause actionHandler:(id)handler
{
  swift_unknownObjectRetain();
  v6 = sub_10011266C(pause, handler);
  swift_unknownObjectRelease();

  return v6;
}

- (_TtC10VoiceMemos22RCSaveAsNewMenuFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCSaveAsNewMenuFactory();
  return [(RCSaveAsNewMenuFactory *)&v3 init];
}

@end