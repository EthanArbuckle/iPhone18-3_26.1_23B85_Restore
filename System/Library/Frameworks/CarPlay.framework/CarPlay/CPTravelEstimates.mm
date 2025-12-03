@interface CPTravelEstimates
+ (id)timeRemainingColorForColor:(unint64_t)color;
- (CPTravelEstimates)initWithCoder:(id)coder;
- (CPTravelEstimates)initWithDistanceRemaining:(NSMeasurement *)distance timeRemaining:(NSTimeInterval)time;
- (CPTravelEstimates)initWithDistanceRemaining:(id)remaining distanceRemainingToDisplay:(id)display timeRemaining:(double)timeRemaining;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPTravelEstimates

+ (id)timeRemainingColorForColor:(unint64_t)color
{
  if (color <= 1)
  {
    if (color == 1)
    {
      _greenColor = [self _greenColor];
      goto LABEL_9;
    }

LABEL_7:
    _greenColor = [MEMORY[0x277D75348] labelColor];
    goto LABEL_9;
  }

  if (color != 2)
  {
    if (color == 3)
    {
      _greenColor = [self _redColor];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  _greenColor = [self _orangeColor];
LABEL_9:

  return _greenColor;
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
  meters = [MEMORY[0x277CCAE20] meters];
  v5 = [v3 initWithDoubleValue:meters unit:0.0];
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

- (CPTravelEstimates)initWithDistanceRemaining:(id)remaining distanceRemainingToDisplay:(id)display timeRemaining:(double)timeRemaining
{
  remainingCopy = remaining;
  displayCopy = display;
  v16.receiver = self;
  v16.super_class = CPTravelEstimates;
  v10 = [(CPTravelEstimates *)&v16 init];
  if (v10)
  {
    v11 = [remainingCopy copy];
    distanceRemaining = v10->_distanceRemaining;
    v10->_distanceRemaining = v11;

    v13 = [displayCopy copy];
    distanceRemainingToDisplay = v10->_distanceRemainingToDisplay;
    v10->_distanceRemainingToDisplay = v13;

    v10->_timeRemaining = timeRemaining;
  }

  return v10;
}

- (CPTravelEstimates)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(CPTravelEstimates *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPTravelEstimatesDistanceRemainingKey"];
    distanceRemaining = _init->_distanceRemaining;
    _init->_distanceRemaining = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPTravelEstimatesDistanceRemainingDisplayKey"];
    distanceRemainingToDisplay = _init->_distanceRemainingToDisplay;
    _init->_distanceRemainingToDisplay = v8;

    [coderCopy decodeDoubleForKey:@"kCPTravelEstimatesTimeRemainingKey"];
    _init->_timeRemaining = v10;
    _init->_timeRemainingColor = [coderCopy decodeIntegerForKey:@"kCPTravelEstimatesTimeRemainingColorKey"];
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  distanceRemaining = [(CPTravelEstimates *)self distanceRemaining];
  [coderCopy encodeObject:distanceRemaining forKey:@"kCPTravelEstimatesDistanceRemainingKey"];

  distanceRemainingToDisplay = [(CPTravelEstimates *)self distanceRemainingToDisplay];
  [coderCopy encodeObject:distanceRemainingToDisplay forKey:@"kCPTravelEstimatesDistanceRemainingDisplayKey"];

  [(CPTravelEstimates *)self timeRemaining];
  [coderCopy encodeDouble:@"kCPTravelEstimatesTimeRemainingKey" forKey:?];
  [coderCopy encodeInteger:-[CPTravelEstimates timeRemainingColor](self forKey:{"timeRemainingColor"), @"kCPTravelEstimatesTimeRemainingColorKey"}];
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