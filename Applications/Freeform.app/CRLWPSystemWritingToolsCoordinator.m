@interface CRLWPSystemWritingToolsCoordinator
+ (id)makeCoordinatorWithDelegate:(id)a3;
- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)init;
- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)initWithDelegate:(id)a3;
@end

@implementation CRLWPSystemWritingToolsCoordinator

+ (id)makeCoordinatorWithDelegate:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for CRLWPSystemWritingToolsCoordinator());
  swift_unknownObjectRetain();
  v5 = [v4 initWithDelegate:a3];
  [v5 setPreferredBehavior:1];
  [v5 setPreferredResultOptions:6];
  [v5 setIncludesTextListMarkers:0];
  swift_unknownObjectRelease();

  return v5;
}

- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLWPSystemWritingToolsCoordinator();
  return [(CRLWPSystemWritingToolsCoordinator *)&v5 initWithDelegate:a3];
}

- (_TtC8Freeform34CRLWPSystemWritingToolsCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLWPSystemWritingToolsCoordinator();
  return [(CRLWPSystemWritingToolsCoordinator *)&v3 init];
}

@end