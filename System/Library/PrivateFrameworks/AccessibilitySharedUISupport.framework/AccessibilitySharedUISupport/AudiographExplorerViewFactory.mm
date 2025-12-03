@interface AudiographExplorerViewFactory
+ (id)makeAudiographExplorerUIFor:(id)for;
- (_TtC28AccessibilitySharedUISupport29AudiographExplorerViewFactory)init;
@end

@implementation AudiographExplorerViewFactory

+ (id)makeAudiographExplorerUIFor:(id)for
{
  forCopy = for;
  v4 = sub_23DB3BFB4(forCopy);

  return v4;
}

- (_TtC28AccessibilitySharedUISupport29AudiographExplorerViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudiographExplorerViewFactory();
  return [(AudiographExplorerViewFactory *)&v3 init];
}

@end