@interface TUIControlLayout
- (id)collectLinkEntities;
@end

@implementation TUIControlLayout

- (id)collectLinkEntities
{
  v2 = [(TUILayout *)self box];
  linkEntities = [v2 linkEntities];

  return linkEntities;
}

@end