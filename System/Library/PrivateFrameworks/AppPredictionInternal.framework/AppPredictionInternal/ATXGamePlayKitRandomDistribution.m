@interface ATXGamePlayKitRandomDistribution
+ (id)d20;
+ (id)d6;
+ (id)distributionForDieWithSideCount:(int64_t)a3;
+ (id)distributionWithLowestValue:(int64_t)a3 highestValue:(int64_t)a4;
- (ATXGamePlayKitRandomDistribution)init;
- (ATXGamePlayKitRandomDistribution)initWithRandomSource:(id)a3 lowestValue:(int64_t)a4 highestValue:(int64_t)a5;
- (unint64_t)nextIntWithUpperBound:(unint64_t)a3;
@end

@implementation ATXGamePlayKitRandomDistribution

- (ATXGamePlayKitRandomDistribution)init
{
  v3 = +[ATXGamePlayKitRandomSource sharedRandom];
  v4 = [(ATXGamePlayKitRandomDistribution *)self initWithRandomSource:v3 lowestValue:0 highestValue:0];

  return v4;
}

- (ATXGamePlayKitRandomDistribution)initWithRandomSource:(id)a3 lowestValue:(int64_t)a4 highestValue:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ATXGamePlayKitRandomDistribution;
  v10 = [(ATXGamePlayKitRandomDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_source, a3);
    v11->_lowest = a4;
    v11->_highest = a5;
  }

  return v11;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  lowest = self->_lowest;
  v6 = lowest & ~(lowest >> 63);
  if (v6 > a3)
  {
    v11 = MEMORY[0x277CBEAD8];
    v18[0] = @"lowestInclusive";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v19[0] = v12;
    v18[1] = @"highestInclusive";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_highest];
    v19[1] = v13;
    v18[2] = @"upper";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v19[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v16 = [v11 exceptionWithName:*MEMORY[0x277CBE660] reason:@"upper bound provided is less than lowestInclusive" userInfo:v15];
    v17 = v16;

    objc_exception_throw(v16);
  }

  v7 = self->_highest & ~(self->_highest >> 63);
  if (v7 >= a3 - 1)
  {
    v7 = a3 - 1;
  }

  v8 = [(ATXGamePlayKitRandom *)self->_source nextIntWithUpperBound:v7 - lowest + 1];
  v9 = *MEMORY[0x277D85DE8];
  return v8 + v6;
}

+ (id)distributionWithLowestValue:(int64_t)a3 highestValue:(int64_t)a4
{
  v7 = objc_opt_new();
  v8 = [[a1 alloc] initWithRandomSource:v7 lowestValue:a3 highestValue:a4];

  return v8;
}

+ (id)distributionForDieWithSideCount:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [[a1 alloc] initWithRandomSource:v5 lowestValue:1 highestValue:a3];

  return v6;
}

+ (id)d6
{
  v3 = objc_opt_new();
  v4 = [[a1 alloc] initWithRandomSource:v3 lowestValue:1 highestValue:6];

  return v4;
}

+ (id)d20
{
  v3 = objc_opt_new();
  v4 = [[a1 alloc] initWithRandomSource:v3 lowestValue:1 highestValue:20];

  return v4;
}

@end