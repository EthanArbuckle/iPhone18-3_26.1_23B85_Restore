@interface CLPlacemark(Intents)
- (id)_intents_indexingRepresentation;
@end

@implementation CLPlacemark(Intents)

- (id)_intents_indexingRepresentation
{
  v2 = objc_opt_new();
  v3 = [a1 name];
  [v2 setObject:v3 forKeyedSubscript:@"name"];

  v4 = [a1 location];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696AD98];
    [v4 coordinate];
    v8 = [v6 numberWithDouble:v7];
    [v2 setObject:v8 forKeyedSubscript:@"longitude"];

    v9 = MEMORY[0x1E696AD98];
    [v5 coordinate];
    v10 = [v9 numberWithDouble:?];
    [v2 setObject:v10 forKeyedSubscript:@"latitude"];
  }

  v11 = [a1 postalAddress];
  if (v11)
  {
    [v2 setObject:v11 forKeyedSubscript:@"postalAddress"];
  }

  return v2;
}

@end