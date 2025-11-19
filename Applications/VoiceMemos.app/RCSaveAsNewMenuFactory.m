@interface RCSaveAsNewMenuFactory
+ (id)createMenuWithAutomaticallyPause:(BOOL)a3 actionHandler:(id)a4;
- (_TtC10VoiceMemos22RCSaveAsNewMenuFactory)init;
@end

@implementation RCSaveAsNewMenuFactory

+ (id)createMenuWithAutomaticallyPause:(BOOL)a3 actionHandler:(id)a4
{
  swift_unknownObjectRetain();
  v6 = sub_10011266C(a3, a4);
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