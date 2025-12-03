@interface TUIHostedAnchorLayout
- (BOOL)collectHostingPropertiesWithCollector:(id)collector;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIHostedAnchorLayout

- (BOOL)collectHostingPropertiesWithCollector:(id)collector
{
  collectorCopy = collector;
  v5 = [(TUILayout *)self box];
  hostingProperties = [v5 hostingProperties];
  hostingIdentifier = [v5 hostingIdentifier];
  [collectorCopy hostingCollectorAddProperties:hostingProperties forIdentifier:hostingIdentifier];

  return 0;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 4)
  {
    return 0;
  }

  v5 = [context renderModelForContainerLayout:self kind:6];
  v6 = [(TUILayout *)self box];
  identifier = [v6 identifier];
  hostingIdentifier = [v6 hostingIdentifier];
  hostingProperties = [v6 hostingProperties];
  v10 = [TUIHostingAnchorView renderModelIdentifier:identifier submodel:v5 hostingIdentifier:hostingIdentifier hostingProperties:hostingProperties];

  return v10;
}

@end