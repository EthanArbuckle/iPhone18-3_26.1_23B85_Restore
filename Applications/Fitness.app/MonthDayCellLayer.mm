@interface MonthDayCellLayer
- (CGRect)fullFrame;
- (CGRect)narrowFrame;
- (MonthDayCellLayer)initWithDateCache:(id)cache;
- (void)pressToTransition:(BOOL)transition;
- (void)setHasWorkout:(BOOL)workout;
- (void)setPercentMinimized:(double)minimized;
- (void)setupCircleBackground;
- (void)updateWithDate:(id)date dayOfMonth:(int64_t)month;
@end

@implementation MonthDayCellLayer

- (MonthDayCellLayer)initWithDateCache:(id)cache
{
  v20.receiver = self;
  v20.super_class = MonthDayCellLayer;
  v3 = [(MonthDayCellLayer *)&v20 initWithDateCache:cache];
  if (v3)
  {
    v4 = [UIFont systemFontOfSize:16.0];
    [(MonthDayCellLayer *)v3 setFont:v4];

    font = [(MonthDayCellLayer *)v3 font];
    [(MonthDayCellLayer *)v3 setBoldFont:font];

    [(MonthDayCellLayer *)v3 setDayDiameter:25.0];
    v6 = +[UIScreen mainScreen];
    traitCollection = [v6 traitCollection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013D140;
    v18[3] = &unk_10083A8B0;
    v8 = v3;
    v19 = v8;
    [traitCollection performAsCurrentTraitCollection:v18];

    v9 = objc_alloc_init(MonthWorkoutIndicator);
    v10 = v8[1];
    v8[1] = v9;

    v11 = +[UIScreen mainScreen];
    [v11 scale];
    [v8[1] setContentsScale:?];

    [v8[1] setHasWorkout:0];
    circle = [v8 circle];
    [circle frame];
    v13 = CGRectGetMaxX(v21) + 4.0;
    circle2 = [v8 circle];
    [circle2 frame];
    [v8[1] setFrame:{v13, CGRectGetMaxY(v22) + 1.0, 6.0, 6.0}];

    v15 = v8[1];
    circle3 = [v8 circle];
    [v8 insertSublayer:v15 below:circle3];
  }

  return v3;
}

- (void)updateWithDate:(id)date dayOfMonth:(int64_t)month
{
  v12.receiver = self;
  v12.super_class = MonthDayCellLayer;
  dateCopy = date;
  [(MonthDayCellLayer *)&v12 updateWithDate:dateCopy dayOfMonth:month];
  self->_dayOfMonth = month;
  [(MonthDayCellLayer *)self setHasWorkout:self->_hasWorkout, v12.receiver, v12.super_class];
  [(MonthDayCellLayer *)self setupCircleBackground];
  [dateCopy timeIntervalSinceReferenceDate];
  v8 = v7;

  dateCache = [(MonthDayCellLayer *)self dateCache];
  startOfDayMidnight = [dateCache startOfDayMidnight];
  [startOfDayMidnight timeIntervalSinceReferenceDate];
  self->_isFutureDay = v8 > v11;
}

- (void)setHasWorkout:(BOOL)workout
{
  self->_hasWorkout = workout;
  [(MonthWorkoutIndicator *)self->_workoutIndicator setHasWorkout:?];
  v4 = +[UIScreen mainScreen];
  traitCollection = [v4 traitCollection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013D390;
  v8[3] = &unk_10083A8B0;
  v8[4] = self;
  [traitCollection performAsCurrentTraitCollection:v8];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  dayOfMonth = self->_dayOfMonth;
  textColor = [(MonthDayCellLayer *)self textColor];
  [(MonthDayCellLayer *)self updateDateTextForDayNumber:dayOfMonth textColor:textColor];

  +[CATransaction commit];
}

- (void)setupCircleBackground
{
  representsToday = [(MonthDayCellLayer *)self representsToday];
  circle = [(MonthDayCellLayer *)self circle];
  [circle setHidden:representsToday ^ 1];

  if (([(MonthDayCellLayer *)self representsToday]& 1) != 0)
  {
    v5 = +[ARUIMetricColors energyColors];
    nonGradientTextColor = [v5 nonGradientTextColor];
  }

  else
  {
    nonGradientTextColor = +[UIColor darkGrayColor];
  }

  circle2 = [(MonthDayCellLayer *)self circle];
  v7 = nonGradientTextColor;
  [circle2 setBackgroundColor:{objc_msgSend(nonGradientTextColor, "CGColor")}];
}

- (void)pressToTransition:(BOOL)transition
{
  transitionCopy = transition;
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.3];
  if (([(MonthDayCellLayer *)self representsToday]& 1) == 0)
  {
    circle = [(MonthDayCellLayer *)self circle];
    [circle setHidden:!transitionCopy];
  }

  +[CATransaction commit];
}

- (void)setPercentMinimized:(double)minimized
{
  y = self->_fullFrame.origin.y;
  width = self->_fullFrame.size.width;
  height = self->_fullFrame.size.height;
  v7 = self->_fullFrame.origin.x + (self->_narrowFrame.origin.x - self->_fullFrame.origin.x) * minimized;
  [(MonthDayCellLayer *)self setFrame:v7, y, width, height];
  v12.origin.x = v7;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetWidth(v12) + 4.0;
  v13.origin.x = v7;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v9 = CGRectGetHeight(v13);
  workoutIndicator = self->_workoutIndicator;

  [(MonthWorkoutIndicator *)workoutIndicator setFrame:v8, v9 + 1.0, 6.0, 6.0];
}

- (CGRect)fullFrame
{
  x = self->_fullFrame.origin.x;
  y = self->_fullFrame.origin.y;
  width = self->_fullFrame.size.width;
  height = self->_fullFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)narrowFrame
{
  x = self->_narrowFrame.origin.x;
  y = self->_narrowFrame.origin.y;
  width = self->_narrowFrame.size.width;
  height = self->_narrowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end