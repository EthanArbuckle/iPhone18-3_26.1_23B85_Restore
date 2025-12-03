@interface TUIAnimationGroupPhaseRenderModelCollection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TUIAnimationGroupPhaseRenderModelCollection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIAnimationGroupPhaseRenderModelCollection allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_phaseRenderModels copy];
    phaseRenderModels = v4->_phaseRenderModels;
    v4->_phaseRenderModels = v5;
  }

  return v4;
}

@end