@interface CLPlacemark(Intents)
- (id)_intents_indexingRepresentation;
@end

@implementation CLPlacemark(Intents)

- (id)_intents_indexingRepresentation
{
  v2 = objc_opt_new();
  name = [self name];
  [v2 setObject:name forKeyedSubscript:@"name"];

  location = [self location];
  v5 = location;
  if (location)
  {
    v6 = MEMORY[0x1E696AD98];
    [location coordinate];
    v8 = [v6 numberWithDouble:v7];
    [v2 setObject:v8 forKeyedSubscript:@"longitude"];

    v9 = MEMORY[0x1E696AD98];
    [v5 coordinate];
    v10 = [v9 numberWithDouble:?];
    [v2 setObject:v10 forKeyedSubscript:@"latitude"];
  }

  postalAddress = [self postalAddress];
  if (postalAddress)
  {
    [v2 setObject:postalAddress forKeyedSubscript:@"postalAddress"];
  }

  return v2;
}

@end