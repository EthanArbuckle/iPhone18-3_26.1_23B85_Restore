@interface WFGetWeatherForecastAction
- (WFGetWeatherForecastAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
@end

@implementation WFGetWeatherForecastAction

- (WFGetWeatherForecastAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    parameters = sub_23E1FDAAC();
  }

  definitionCopy = definition;
  return GetWeatherForecastAction.init(identifier:definition:serializedParameters:)(v7, v9, definition, parameters);
}

@end