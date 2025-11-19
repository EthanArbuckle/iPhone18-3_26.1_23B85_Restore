@interface WFSetCellularDataAction
- (NSArray)disabledOnPlatforms;
- (WFSetCellularDataAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 schema:(id)a6 intent:(id)a7 resolvedIntentDescriptor:(id)a8 stringLocalizer:(id)a9;
@end

@implementation WFSetCellularDataAction

- (NSArray)disabledOnPlatforms
{
  v2 = self;
  sub_23DE622E4();

  type metadata accessor for WFExecutionPlatform(0);
  v3 = sub_23E1FDDCC();

  return v3;
}

- (WFSetCellularDataAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 schema:(id)a6 intent:(id)a7 resolvedIntentDescriptor:(id)a8 stringLocalizer:(id)a9
{
  v14 = sub_23E1FDC1C();
  v16 = v15;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  return sub_23DE6239C(v14, v16, a4, a5, a6, a7, v20, a9);
}

@end