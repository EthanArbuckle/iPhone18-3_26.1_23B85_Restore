@interface ClimateZone
- (void)register:(id)register;
@end

@implementation ClimateZone

- (void)register:(id)register
{
  swift_getObjectType();
  swift_unknownObjectRetain();

  sub_100075140(register, self);
  swift_unknownObjectRelease();
}

@end