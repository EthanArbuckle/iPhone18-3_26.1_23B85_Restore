@interface ClarityUIBackButtonActionHandler
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation ClarityUIBackButtonActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  type metadata accessor for BSAction();
  lazy protocol witness table accessor for type BSAction and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  specialized ClarityUIBackButtonActionHandler._respond(to:for:in:from:)(v10);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

@end