@interface __RKFadeSceneAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKFadeSceneAction

- (id)copyWithZone:(void *)zone
{
  type metadata accessor for __RKFadeSceneAction();
  *(swift_allocObject() + 108) = *self->duration;
  return __RKEntityAction.init(targetEntity:)(0);
}

@end