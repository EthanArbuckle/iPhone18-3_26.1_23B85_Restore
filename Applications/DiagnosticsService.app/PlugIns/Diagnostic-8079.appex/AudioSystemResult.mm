@interface AudioSystemResult
- (id)dictionaryValue;
@end

@implementation AudioSystemResult

- (id)dictionaryValue
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(AudioSystemResult *)self input];
  [v3 setObject:v4 forKeyedSubscript:@"input"];

  v5 = [(AudioSystemResult *)self output];
  [v3 setObject:v5 forKeyedSubscript:@"output"];

  v6 = [(AudioSystemResult *)self source];
  [v3 setObject:v6 forKeyedSubscript:@"source"];

  v7 = [(AudioSystemResult *)self dbValue];

  if (v7)
  {
    v8 = [(AudioSystemResult *)self dbValue];
    [v3 setObject:v8 forKeyedSubscript:@"dbValue"];
  }

  v9 = [v3 copy];

  return v9;
}

@end