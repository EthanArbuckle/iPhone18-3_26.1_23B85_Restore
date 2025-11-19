@interface ClarityUIBackButtonActionHandler
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation ClarityUIBackButtonActionHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  type metadata accessor for BSAction();
  lazy protocol witness table accessor for type BSAction and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  specialized ClarityUIBackButtonActionHandler._respond(to:for:in:from:)(v10);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

@end