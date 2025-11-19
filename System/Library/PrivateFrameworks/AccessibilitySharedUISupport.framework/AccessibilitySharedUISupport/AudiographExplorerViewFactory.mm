@interface AudiographExplorerViewFactory
+ (id)makeAudiographExplorerUIFor:(id)a3;
- (_TtC28AccessibilitySharedUISupport29AudiographExplorerViewFactory)init;
@end

@implementation AudiographExplorerViewFactory

+ (id)makeAudiographExplorerUIFor:(id)a3
{
  v3 = a3;
  v4 = sub_23DB3BFB4(v3);

  return v4;
}

- (_TtC28AccessibilitySharedUISupport29AudiographExplorerViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudiographExplorerViewFactory();
  return [(AudiographExplorerViewFactory *)&v3 init];
}

@end