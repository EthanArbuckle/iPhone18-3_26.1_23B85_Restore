@interface ProximityReaderSceneUIAppDelegate
- (_TtC22ProximityReaderSceneUI33ProximityReaderSceneUIAppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation ProximityReaderSceneUIAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10000E4D0(v9);

  return v12;
}

- (_TtC22ProximityReaderSceneUI33ProximityReaderSceneUIAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProximityReaderSceneUIAppDelegate();
  return [(ProximityReaderSceneUIAppDelegate *)&v3 init];
}

@end