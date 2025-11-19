@interface JSArcadeObject
- (_TtC27AppStoreComponentsDaemonKit14JSArcadeObject)init;
- (id)getRecentlyPlayedGamesWithTimeout:(id)a3;
@end

@implementation JSArcadeObject

- (_TtC27AppStoreComponentsDaemonKit14JSArcadeObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSArcadeObject *)&v3 init];
}

- (id)getRecentlyPlayedGamesWithTimeout:(id)a3
{
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v3 = sub_2227396EC();
  v4 = sub_2227396FC();

  return v4;
}

@end