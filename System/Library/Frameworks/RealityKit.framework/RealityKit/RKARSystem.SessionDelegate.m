@interface RKARSystem.SessionDelegate
- (_TtCC10RealityKit10RKARSystemP33_7C42569567E429B6AB2725E2C535D52915SessionDelegate)init;
- (void)session:(id)a3 didOutputCollaborationData:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 requestedRunWithConfiguration:(id)a4 options:(unint64_t)a5;
@end

@implementation RKARSystem.SessionDelegate

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a3;
    v10 = a4;
    v11 = self;
    specialized RKARSystem.session(_:didUpdate:)(v10);
  }
}

- (void)session:(id)a3 didOutputCollaborationData:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a4;
    v9 = self;
    RKARSystem.sendCollaborationDataToPeers(_:)(a4);
  }
}

- (void)session:(id)a3 requestedRunWithConfiguration:(id)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
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