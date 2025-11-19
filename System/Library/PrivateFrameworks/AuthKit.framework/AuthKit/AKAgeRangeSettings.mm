@interface AKAgeRangeSettings
- (AKAgeRangeSettings)initWithU13Limit:(int)a3 u18Limit:(int)a4;
@end

@implementation AKAgeRangeSettings

- (AKAgeRangeSettings)initWithU13Limit:(int)a3 u18Limit:(int)a4
{
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v10 = 0;
  v6.receiver = self;
  v6.super_class = AKAgeRangeSettings;
  v10 = [(AKAgeRangeSettings *)&v6 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v10->_u13Limit = v8;
    v10->_u18Limit = v7;
  }

  v5 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  return v5;
}

@end