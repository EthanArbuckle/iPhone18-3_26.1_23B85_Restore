@interface TUIHostedAnchorLayout
- (BOOL)collectHostingPropertiesWithCollector:(id)a3;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation TUIHostedAnchorLayout

- (BOOL)collectHostingPropertiesWithCollector:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  v6 = [v5 hostingProperties];
  v7 = [v5 hostingIdentifier];
  [v4 hostingCollectorAddProperties:v6 forIdentifier:v7];

  return 0;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  if (a3 < 4)
  {
    return 0;
  }

  v5 = [a4 renderModelForContainerLayout:self kind:6];
  v6 = [(TUILayout *)self box];
  v7 = [v6 identifier];
  v8 = [v6 hostingIdentifier];
  v9 = [v6 hostingProperties];
  v10 = [TUIHostingAnchorView renderModelIdentifier:v7 submodel:v5 hostingIdentifier:v8 hostingProperties:v9];

  return v10;
}

@end