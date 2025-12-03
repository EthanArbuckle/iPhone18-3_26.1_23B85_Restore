@interface __RKEntitySetOpacityAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntitySetOpacityAction

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  v4 = *self->super.super.targetEntity;
  v5 = *self->duration;
  v6 = *self->opacity;
  type metadata accessor for __RKEntitySetOpacityAction();
  swift_allocObject();

  return __RKEntitySetOpacityAction.init(targetEntity:duration:opacity:)(v7, v5, v6);
}

@end