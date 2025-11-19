@interface GKRandomDistribution
+ (GKRandomDistribution)d20;
+ (GKRandomDistribution)d6;
+ (GKRandomDistribution)distributionForDieWithSideCount:(NSInteger)sideCount;
+ (GKRandomDistribution)distributionWithLowestValue:(NSInteger)lowestInclusive highestValue:(NSInteger)highestInclusive;
- (GKRandomDistribution)init;
- (GKRandomDistribution)initWithRandomSource:(id)source lowestValue:(NSInteger)lowestInclusive highestValue:(NSInteger)highestInclusive;
- (NSUInteger)nextIntWithUpperBound:(NSUInteger)upperBound;
@end

@implementation GKRandomDistribution

- (GKRandomDistribution)init
{
  v3 = +[GKRandomSource sharedRandom];
  v4 = [(GKRandomDistribution *)self initWithRandomSource:v3 lowestValue:0 highestValue:0];

  return v4;
}

- (GKRandomDistribution)initWithRandomSource:(id)source lowestValue:(NSInteger)lowestInclusive highestValue:(NSInteger)highestInclusive
{
  v9 = source;
  v13.receiver = self;
  v13.super_class = GKRandomDistribution;
  v10 = [(GKRandomDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_source, source);
    v11->_lowest = lowestInclusive;
    v11->_highest = highestInclusive;
  }

  return v11;
}

- (NSUInteger)nextIntWithUpperBound:(NSUInteger)upperBound
{
  v20[3] = *MEMORY[0x277D85DE8];
  lowest = self->_lowest;
  v4 = lowest & ~(lowest >> 63);
  if (v4 > upperBound)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v19[0] = @"lowestInclusive";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:lowest];
    v20[0] = v13;
    v19[1] = @"highestInclusive";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_highest];
    v20[1] = v14;
    v19[2] = @"upper";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:upperBound];
    v20[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v17 = [v9 exceptionWithName:v10 reason:@"upper bound provided is less than lowestInclusive" userInfo:v16];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v5 = self->_highest & ~(self->_highest >> 63);
  if (v5 >= upperBound - 1)
  {
    v5 = upperBound - 1;
  }

  v6 = [(GKRandom *)self->_source nextIntWithUpperBound:v5 - lowest + 1];
  v7 = *MEMORY[0x277D85DE8];
  return v6 + v4;
}

+ (GKRandomDistribution)distributionWithLowestValue:(NSInteger)lowestInclusive highestValue:(NSInteger)highestInclusive
{
  v7 = objc_opt_new();
  v8 = [[a1 alloc] initWithRandomSource:v7 lowestValue:lowestInclusive highestValue:highestInclusive];

  return v8;
}

+ (GKRandomDistribution)distributionForDieWithSideCount:(NSInteger)sideCount
{
  v5 = objc_opt_new();
  v6 = [[a1 alloc] initWithRandomSource:v5 lowestValue:1 highestValue:sideCount];

  return v6;
}

+ (GKRandomDistribution)d6
{
  v3 = objc_opt_new();
  v4 = [[a1 alloc] initWithRandomSource:v3 lowestValue:1 highestValue:6];

  return v4;
}

+ (GKRandomDistribution)d20
{
  v3 = objc_opt_new();
  v4 = [[a1 alloc] initWithRandomSource:v3 lowestValue:1 highestValue:20];

  return v4;
}

@end