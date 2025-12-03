@interface TUIAnimationGroupRenderModelCollection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TUIAnimationGroupRenderModelCollection

- (id)copyWithZone:(_NSZone *)zone
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