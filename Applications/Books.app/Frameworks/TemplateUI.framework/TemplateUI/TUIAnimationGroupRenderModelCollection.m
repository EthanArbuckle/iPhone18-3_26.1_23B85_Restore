@interface TUIAnimationGroupRenderModelCollection
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TUIAnimationGroupRenderModelCollection

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TUIAnimationGroupRenderModelCollection allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_groupPhases copy];
    groupPhases = v4->_groupPhases;
    v4->_groupPhases = v5;
  }

  return v4;
}

@end