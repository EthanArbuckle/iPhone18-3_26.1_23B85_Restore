@interface WeatherLocation
- (WeatherLocation)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation WeatherLocation

- (WeatherLocation)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_10004A98C();
  }

  sub_10004A98C();
  if (a5)
  {
    sub_10004A98C();
  }

  return WeatherLocation.init(identifier:display:pronunciationHint:)();
}

@end