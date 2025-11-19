@interface WeatherIntent
- (WeatherIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (WeatherIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation WeatherIntent

- (WeatherIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_1000EBE84();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return WeatherIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (WeatherIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_1000EBE84();
  sub_1000EBE84();
  if (a5)
  {
    sub_1000EBDD4();
  }

  return WeatherIntent.init(domain:verb:parametersByName:)();
}

@end