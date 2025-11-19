@interface ATXActionLOIBoost
+ (double)decayRateWithScale:(double)a3 distance:(double)a4;
+ (id)sharedInstance;
- (ATXActionLOIBoost)initWithBoostDictionary:(id)a3;
- (double)boostForActionKey:(id)a3;
@end

@implementation ATXActionLOIBoost

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[ATXActionLOIBoost sharedInstance];
  }

  v3 = sharedInstance_instance_2;

  return v3;
}

void __35__ATXActionLOIBoost_sharedInstance__block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetsForResource:@"ATXActionLOIBoost" ofType:@"plist"];
  v1 = [v0 abGroupContents];

  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [ATXBoostObject alloc];
        v10 = [v3 objectForKeyedSubscript:{v8, v15}];
        v11 = [(ATXBoostObject *)v9 initWithDictionary:v10];
        [v2 setObject:v11 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [[ATXActionLOIBoost alloc] initWithBoostDictionary:v2];
  v13 = sharedInstance_instance_2;
  sharedInstance_instance_2 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

+ (double)decayRateWithScale:(double)a3 distance:(double)a4
{
  result = 0.0;
  if (a3 > 0.0 && a4 >= 0.0)
  {
    v6 = a4 / (a3 + a3);
    if (v6 >= 0.5)
    {
      if (v6 < 1.0)
      {
        return (1.0 - v6) * (1.0 - v6 + 1.0 - v6);
      }
    }

    else
    {
      return 0.5 - v6 * v6 + 0.5 - v6 * v6;
    }
  }

  return result;
}

- (ATXActionLOIBoost)initWithBoostDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXActionLOIBoost;
  v6 = [(ATXActionLOIBoost *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_boostDictionary, a3);
  }

  return v7;
}

- (double)boostForActionKey:(id)a3
{
  v3 = [(NSDictionary *)self->_boostDictionary objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D41BF8] sharedInstance];
    [v4 distanceFromHomeOfCurrentLocationInMeters];
    [v4 distanceFromWorkOfCurrentLocationInMeters];
    [v4 distanceFromGymOfCurrentLocationInMeters];
    [v4 distanceFromSchoolOfCurrentLocationInMeters];
    [v3 homeBoost];
    v6 = v5;
    [v3 homeScale];
    [ATXActionLOIBoost decayRateWithScale:"decayRateWithScale:distance:" distance:?];
    v8 = v6 * v7;
    [v3 workBoost];
    v10 = v9;
    [v3 workScale];
    [ATXActionLOIBoost decayRateWithScale:"decayRateWithScale:distance:" distance:?];
    v12 = v10 * v11;
    [v3 gymBoost];
    v14 = v13;
    [v3 gymScale];
    [ATXActionLOIBoost decayRateWithScale:"decayRateWithScale:distance:" distance:?];
    v16 = v14 * v15;
    [v3 schoolBoost];
    v18 = v17;
    [v3 schoolScale];
    [ATXActionLOIBoost decayRateWithScale:"decayRateWithScale:distance:" distance:?];
    v20 = v8 + v12 + v16 + v18 * v19;
  }

  else
  {
    v20 = 0.0;
  }

  return v20;
}

@end