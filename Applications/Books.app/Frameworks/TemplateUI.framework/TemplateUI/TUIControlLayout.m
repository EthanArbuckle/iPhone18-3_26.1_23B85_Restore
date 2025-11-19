@interface TUIControlLayout
- (id)collectLinkEntities;
@end

@implementation TUIControlLayout

- (id)collectLinkEntities
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 linkEntities];

  return v3;
}

@end