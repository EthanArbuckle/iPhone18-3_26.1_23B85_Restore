@interface WFSetCellularDataAction
- (NSArray)disabledOnPlatforms;
- (WFSetCellularDataAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters schema:(id)schema intent:(id)intent resolvedIntentDescriptor:(id)descriptor stringLocalizer:(id)localizer;
@end

@implementation WFSetCellularDataAction

- (NSArray)disabledOnPlatforms
{
  selfCopy = self;
  sub_23DE622E4();

  type metadata accessor for WFExecutionPlatform(0);
  v3 = sub_23E1FDDCC();

  return v3;
}

- (WFSetCellularDataAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters schema:(id)schema intent:(id)intent resolvedIntentDescriptor:(id)descriptor stringLocalizer:(id)localizer
{
  v14 = sub_23E1FDC1C();
  v16 = v15;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    parameters = sub_23E1FDAAC();
  }

  definitionCopy = definition;
  schemaCopy = schema;
  intentCopy = intent;
  descriptorCopy = descriptor;
  localizerCopy = localizer;
  return sub_23DE6239C(v14, v16, definition, parameters, schema, intent, descriptorCopy, localizer);
}

@end