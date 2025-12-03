@interface AudioSystemResult
- (id)dictionaryValue;
@end

@implementation AudioSystemResult

- (id)dictionaryValue
{
  v3 = objc_alloc_init(NSMutableDictionary);
  input = [(AudioSystemResult *)self input];
  [v3 setObject:input forKeyedSubscript:@"input"];

  output = [(AudioSystemResult *)self output];
  [v3 setObject:output forKeyedSubscript:@"output"];

  source = [(AudioSystemResult *)self source];
  [v3 setObject:source forKeyedSubscript:@"source"];

  dbValue = [(AudioSystemResult *)self dbValue];

  if (dbValue)
  {
    dbValue2 = [(AudioSystemResult *)self dbValue];
    [v3 setObject:dbValue2 forKeyedSubscript:@"dbValue"];
  }

  v9 = [v3 copy];

  return v9;
}

@end