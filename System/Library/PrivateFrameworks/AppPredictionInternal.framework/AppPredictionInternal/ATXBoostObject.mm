@interface ATXBoostObject
- (ATXBoostObject)initWithDictionary:(id)dictionary;
@end

@implementation ATXBoostObject

- (ATXBoostObject)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = ATXBoostObject;
  v5 = [(ATXBoostObject *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"Work"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"boost"];
      [v8 doubleValue];
      v5->_workBoost = v9;

      v10 = [v7 objectForKeyedSubscript:@"scale"];
      [v10 doubleValue];
      v5->_workScale = v11;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"Home"];

    if (v12)
    {
      v13 = [v12 objectForKeyedSubscript:@"boost"];
      [v13 doubleValue];
      v5->_homeBoost = v14;

      v15 = [v12 objectForKeyedSubscript:@"scale"];
      [v15 doubleValue];
      v5->_homeScale = v16;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"Gym"];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:@"boost"];
      [v18 doubleValue];
      v5->_gymBoost = v19;

      v20 = [v17 objectForKeyedSubscript:@"scale"];
      [v20 doubleValue];
      v5->_gymScale = v21;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"School"];

    if (v22)
    {
      v23 = [v22 objectForKeyedSubscript:@"boost"];
      [v23 doubleValue];
      v5->_schoolBoost = v24;

      v25 = [v22 objectForKeyedSubscript:@"scale"];
      [v25 doubleValue];
      v5->_schoolScale = v26;
    }
  }

  return v5;
}

@end