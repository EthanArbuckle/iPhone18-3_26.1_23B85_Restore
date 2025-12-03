@interface AKAgeRangeSettings
- (AKAgeRangeSettings)initWithU13Limit:(int)limit u18Limit:(int)u18Limit;
@end

@implementation AKAgeRangeSettings

- (AKAgeRangeSettings)initWithU13Limit:(int)limit u18Limit:(int)u18Limit
{
  v9 = a2;
  limitCopy = limit;
  u18LimitCopy = u18Limit;
  v10 = 0;
  v6.receiver = self;
  v6.super_class = AKAgeRangeSettings;
  v10 = [(AKAgeRangeSettings *)&v6 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v10->_u13Limit = limitCopy;
    v10->_u18Limit = u18LimitCopy;
  }

  v5 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  return v5;
}

@end