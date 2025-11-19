@interface WFAirDropVisibilityParameter
- (NSArray)possibleStates;
- (WFPropertyListObject)defaultSerializedRepresentation;
@end

@implementation WFAirDropVisibilityParameter

- (NSArray)possibleStates
{
  v2 = self;
  v3 = sub_23DE9B0C8();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C5E0, &qword_23E2265D0);
    v4 = sub_23E1FDDCC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFPropertyListObject)defaultSerializedRepresentation
{
  v2 = self;
  v3 = sub_23DE9B4CC();

  return v3;
}

@end