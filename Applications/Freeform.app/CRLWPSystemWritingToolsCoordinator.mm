@interface CRLWPSystemWritingToolsCoordinator
+ (id)makeCoordinatorWithDelegate:(id)delegate;
- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)init;
- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)initWithDelegate:(id)delegate;
@end

@implementation CRLWPSystemWritingToolsCoordinator

+ (id)makeCoordinatorWithDelegate:(id)delegate
{
  v4 = objc_allocWithZone(type metadata accessor for CRLWPSystemWritingToolsCoordinator());
  swift_unknownObjectRetain();
  v5 = [v4 initWithDelegate:delegate];
  [v5 setPreferredBehavior:1];
  [v5 setPreferredResultOptions:6];
  [v5 setIncludesTextListMarkers:0];
  swift_unknownObjectRelease();

  return v5;
}

- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLWPSystemWritingToolsCoordinator();
  return [(CRLWPSystemWritingToolsCoordinator *)&v5 initWithDelegate:delegate];
}

- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLWPSystemWritingToolsCoordinator();
  return [(CRLWPSystemWritingToolsCoordinator *)&v3 init];
}

@end