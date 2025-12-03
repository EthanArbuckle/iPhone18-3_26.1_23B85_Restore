@interface __RKEntityCustomTrigger
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKEntityCustomTrigger

- (id)copyWithZone:(void *)zone
{
  swift_beginAccess();
  v4 = *self->identifier;
  v5 = *&self->identifier[8];
  customArguments = self->customArguments;
  v6 = *self->customArguments;
  v7 = *(customArguments + 1);
  type metadata accessor for __RKEntityCustomTrigger();
  v9 = swift_allocObject();

  __RKEntityCustomTrigger.init(targetEntity:identifier:customArguments:)(v7, v4, v5, v6);
  return v9;
}

@end