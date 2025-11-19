@interface WeatherIntentResponse
- (WeatherIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation WeatherIntentResponse

- (WeatherIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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