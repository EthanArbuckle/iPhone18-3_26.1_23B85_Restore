@interface __RKEntityAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntityAction

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  v4 = *self->targetEntity;
  type metadata accessor for __RKEntityAction();
  v5 = swift_allocObject();

  __RKEntityAction.init(targetEntity:)(v6);
  return v5;
}

@end