@interface WeatherIntent
- (WeatherIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (WeatherIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation WeatherIntent

- (WeatherIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_10004A98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return WeatherIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (WeatherIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_10004A98C();
  sub_10004A98C();
  if (name)
  {
    sub_10004A8FC();
  }

  return WeatherIntent.init(domain:verb:parametersByName:)();
}

@end