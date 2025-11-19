@interface WeatherLocation
- (WeatherLocation)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation WeatherLocation

- (WeatherLocation)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_1000EBE84();
  }

  sub_1000EBE84();
  if (a5)
  {
    sub_1000EBE84();
  }

  return WeatherLocation.init(identifier:display:pronunciationHint:)();
}

@end