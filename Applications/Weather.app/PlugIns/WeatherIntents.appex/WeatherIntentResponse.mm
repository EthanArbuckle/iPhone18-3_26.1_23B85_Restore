@interface WeatherIntentResponse
- (WeatherIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation WeatherIntentResponse

- (WeatherIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_10000FC94();
  }

  else
  {
    v3 = 0;
  }

  return WeatherIntentResponse.init(propertiesByName:)(v3);
}

@end