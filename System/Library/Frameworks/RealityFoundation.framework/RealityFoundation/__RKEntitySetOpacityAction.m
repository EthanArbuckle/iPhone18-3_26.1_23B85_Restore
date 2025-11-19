@interface __RKEntitySetOpacityAction
- (id)copyWithZone:(void *)a3;
@end

@implementation __RKEntitySetOpacityAction

- (id)copyWithZone:(void *)a3
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