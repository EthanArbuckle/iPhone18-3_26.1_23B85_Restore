@interface ProximityReaderSceneUIAppDelegate
- (_TtC22ProximityReaderSceneUI33ProximityReaderSceneUIAppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation ProximityReaderSceneUIAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10000E4D0(sessionCopy);

  return v12;
}

- (_TtC22ProximityReaderSceneUI33ProximityReaderSceneUIAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProximityReaderSceneUIAppDelegate();
  return [(ProximityReaderSceneUIAppDelegate *)&v3 init];
}

@end