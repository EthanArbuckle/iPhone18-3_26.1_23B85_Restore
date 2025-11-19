@interface CPTravelEstimates
+ (id)timeRemainingColorForColor:(unint64_t)a3;
- (CPTravelEstimates)initWithCoder:(id)a3;
- (CPTravelEstimates)initWithDistanceRemaining:(NSMeasurement *)distance timeRemaining:(NSTimeInterval)time;
- (CPTravelEstimates)initWithDistanceRemaining:(id)a3 distanceRemainingToDisplay:(id)a4 timeRemaining:(double)a5;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPTravelEstimates

+ (id)timeRemainingColorForColor:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v3 = [a1 _greenColor];
      goto LABEL_9;
    }

LABEL_7:
    v3 = [MEMORY[0x277D75348] labelColor];
    goto LABEL_9;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      v3 = [a1 _redColor];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v3 = [a1 _orangeColor];
LABEL_9:

  return v3;
}

id __32__CPTravelEstimates__greenColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.298039216;
    v3 = 0.850980392;
    v4 = 0.392156863;
  }

  else
  {
    v2 = 0.121568627;
    v3 = 0.4;
    v4 = 0.168627451;
  }

  v5 = [MEMORY[0x277D75348] colorWithRed:v2 green:v3 blue:v4 alpha:1.0];

  return v5;
}

id __30__CPTravelEstimates__redColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.48627451;
    v3 = 0.458823529;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.670588235;
    v2 = 0.129411765;
    v3 = 0.101960784;
  }

  v5 = [MEMORY[0x277D75348] colorWithRed:v4 green:v2 blue:v3 alpha:1.0];

  return v5;
}

id __33__CPTravelEstimates__orangeColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.584313725;
    v3 = 1.0;
  }

  else
  {
    v3 = 0.521568627;
    v2 = 0.290196078;
  }

  v4 = [MEMORY[0x277D75348] colorWithRed:v3 green:v2 blue:0.0 alpha:1.0];

  return v4;
}

- (id)_init
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  v4 = [MEMORY[0x277CCAE20] meters];
  v5 = [v3 initWithDoubleValue:v4 unit:0.0];
  v6 = [(CPTravelEstimates *)self initWithDistanceRemaining:v5 timeRemaining:0.0];

  return v6;
}

- (CPTravelEstimates)initWithDistanceRemaining:(NSMeasurement *)distance timeRemaining:(NSTimeInterval)time
{
  v6 = distance;
  v13.receiver = self;
  v13.super_class = CPTravelEstimates;
  v7 = [(CPTravelEstimates *)&v13 init];
  if (v7)
  {
    v8 = [(NSMeasurement *)v6 copy];
    distanceRemaining = v7->_distanceRemaining;
    v7->_distanceRemaining = v8;

    v10 = [(NSMeasurement *)v6 copy];
    distanceRemainingToDisplay = v7->_distanceRemainingToDisplay;
    v7->_distanceRemainingToDisplay = v10;

    v7->_timeRemaining = time;
  }

  return v7;
}

- (CPTravelEstimates)initWithDistanceRemaining:(id)a3 distanceRemainingToDisplay:(id)a4 timeRemaining:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CPTravelEstimates;
  v10 = [(CPTravelEstimates *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    distanceRemaining = v10->_distanceRemaining;
    v10->_distanceRemaining = v11;

    v13 = [v9 copy];
    distanceRemainingToDisplay = v10->_distanceRemainingToDisplay;
    v10->_distanceRemainingToDisplay = v13;

    v10->_timeRemaining = a5;
  }

  return v10;
}

- (CPTravelEstimates)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPTravelEstimates *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPTravelEstimatesDistanceRemainingKey"];
    distanceRemaining = v5->_distanceRemaining;
    v5->_distanceRemaining = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPTravelEstimatesDistanceRemainingDisplayKey"];
    distanceRemainingToDisplay = v5->_distanceRemainingToDisplay;
    v5->_distanceRemainingToDisplay = v8;

    [v4 decodeDoubleForKey:@"kCPTravelEstimatesTimeRemainingKey"];
    v5->_timeRemaining = v10;
    v5->_timeRemainingColor = [v4 decodeIntegerForKey:@"kCPTravelEstimatesTimeRemainingColorKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CPTravelEstimates *)self distanceRemaining];
  [v6 encodeObject:v4 forKey:@"kCPTravelEstimatesDistanceRemainingKey"];

  v5 = [(CPTravelEstimates *)self distanceRemainingToDisplay];
  [v6 encodeObject:v5 forKey:@"kCPTravelEstimatesDistanceRemainingDisplayKey"];

  [(CPTravelEstimates *)self timeRemaining];
  [v6 encodeDouble:@"kCPTravelEstimatesTimeRemainingKey" forKey:?];
  [v6 encodeInteger:-[CPTravelEstimates timeRemainingColor](self forKey:{"timeRemainingColor"), @"kCPTravelEstimatesTimeRemainingColorKey"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CPTravelEstimates;
  v4 = [(CPTravelEstimates *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {distanceRemaining: %@, distanceRemainingToDisplay: %@, timeRemaining: %f}", v4, self->_distanceRemaining, self->_distanceRemainingToDisplay, *&self->_timeRemaining];

  return v5;
}

@end