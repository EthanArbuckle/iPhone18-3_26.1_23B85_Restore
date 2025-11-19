@interface __RKEntityFadeAction
- (id)copyWithZone:(void *)a3;
@end

@implementation __RKEntityFadeAction

- (id)copyWithZone:(void *)a3
{
  swift_beginAccess();
  v4 = *self->super.targetEntity;
  type metadata accessor for __RKEntityFadeAction();
  *(swift_allocObject() + 108) = *self->duration;

  return __RKEntityAction.init(targetEntity:)(v5);
}

@end