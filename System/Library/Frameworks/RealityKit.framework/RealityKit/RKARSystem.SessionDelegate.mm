@interface RKARSystem.SessionDelegate
- (_TtCC10RealityKit10RKARSystemP33_7C42569567E429B6AB2725E2C535D52915SessionDelegate)init;
- (void)session:(id)session didOutputCollaborationData:(id)data;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)session:(id)session requestedRunWithConfiguration:(id)configuration options:(unint64_t)options;
@end

@implementation RKARSystem.SessionDelegate

- (void)session:(id)session didUpdateFrame:(id)frame
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sessionCopy = session;
    frameCopy = frame;
    selfCopy = self;
    specialized RKARSystem.session(_:didUpdate:)(frameCopy);
  }
}

- (void)session:(id)session didOutputCollaborationData:(id)data
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    dataCopy = data;
    selfCopy = self;
    RKARSystem.sendCollaborationDataToPeers(_:)(data);
  }
}

- (void)session:(id)session requestedRunWithConfiguration:(id)configuration options:(unint64_t)options
{
  sessionCopy = session;
  configurationCopy = configuration;
  selfCopy = self;
  specialized RKARSystem.SessionDelegate.session(_:requestedRunWith:options:)();
}

- (_TtCC10RealityKit10RKARSystemP33_7C42569567E429B6AB2725E2C535D52915SessionDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for RKARSystem.SessionDelegate();
  return [(RKARSystem.SessionDelegate *)&v4 init];
}

@end