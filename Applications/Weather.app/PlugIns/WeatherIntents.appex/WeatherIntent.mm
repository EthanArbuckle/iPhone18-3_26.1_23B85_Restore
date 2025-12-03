@interface WeatherIntent
- (WeatherIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (WeatherIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation WeatherIntent

- (WeatherIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_10000FCB4();
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
  sub_10000FCB4();
  sub_10000FCB4();
  if (name)
  {
    sub_10000FC94();
  }

  return WeatherIntent.init(domain:verb:parametersByName:)();
}

@end