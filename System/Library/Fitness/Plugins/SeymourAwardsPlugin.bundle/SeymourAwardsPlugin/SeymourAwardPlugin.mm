@interface SeymourAwardPlugin
- (NSString)pluginIdentifier;
- (_TtC19SeymourAwardsPlugin18SeymourAwardPlugin)init;
@end

@implementation SeymourAwardPlugin

- (NSString)pluginIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC19SeymourAwardsPlugin18SeymourAwardPlugin_pluginIdentifier);
  v3 = *(self + OBJC_IVAR____TtC19SeymourAwardsPlugin18SeymourAwardPlugin_pluginIdentifier + 8);

  v4 = sub_233981694();

  return v4;
}

- (_TtC19SeymourAwardsPlugin18SeymourAwardPlugin)init
{
  v3 = (self + OBJC_IVAR____TtC19SeymourAwardsPlugin18SeymourAwardPlugin_pluginIdentifier);
  sub_233981634();
  *v3 = sub_233981624();
  v3[1] = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SeymourAwardPlugin();
  return [(SeymourAwardPlugin *)&v6 init];
}

@end