@interface WeatherIntentResponse
- (WeatherIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation WeatherIntentResponse

- (WeatherIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return WeatherIntentResponse.init(propertiesByName:)(v3);
}

@end