@interface __RKCustomTrigger
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKCustomTrigger

- (id)copyWithZone:(void *)zone
{
  v4 = *self->identifier;
  v3 = *&self->identifier[8];
  v5 = *self->customArguments;
  type metadata accessor for __RKCustomTrigger();
  v6 = swift_allocObject();
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;

  return v6;
}

@end