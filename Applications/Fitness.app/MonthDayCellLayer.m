@interface MonthDayCellLayer
- (CGRect)fullFrame;
- (CGRect)narrowFrame;
- (MonthDayCellLayer)initWithDateCache:(id)a3;
- (void)pressToTransition:(BOOL)a3;
- (void)setHasWorkout:(BOOL)a3;
- (void)setPercentMinimized:(double)a3;
- (void)setupCircleBackground;
- (void)updateWithDate:(id)a3 dayOfMonth:(int64_t)a4;
@end

@implementation MonthDayCellLayer

- (MonthDayCellLayer)initWithDateCache:(id)a3
{
  v20.receiver = self;
  v20.super_class = MonthDayCellLayer;
  v3 = [(MonthDayCellLayer *)&v20 initWithDateCache:a3];
  if (v3)
  {
    v4 = [UIFont systemFontOfSize:16.0];
    [(MonthDayCellLayer *)v3 setFont:v4];

    v5 = [(MonthDayCellLayer *)v3 font];
    [(MonthDayCellLayer *)v3 setBoldFont:v5];

    [(MonthDayCellLayer *)v3 setDayDiameter:25.0];
    v6 = +[UIScreen mainScreen];
    v7 = [v6 traitCollection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013D140;
    v18[3] = &unk_10083A8B0;
    v8 = v3;
    v19 = v8;
    [v7 performAsCurrentTraitCollection:v18];

    v9 = objc_alloc_init(MonthWorkoutIndicator);
    v10 = v8[1];
    v8[1] = v9;

    v11 = +[UIScreen mainScreen];
    [v11 scale];
    [v8[1] setContentsScale:?];

    [v8[1] setHasWorkout:0];
    v12 = [v8 circle];
    [v12 frame];
    v13 = CGRectGetMaxX(v21) + 4.0;
    v14 = [v8 circle];
    [v14 frame];
    [v8[1] setFrame:{v13, CGRectGetMaxY(v22) + 1.0, 6.0, 6.0}];

    v15 = v8[1];
    v16 = [v8 circle];
    [v8 insertSublayer:v15 below:v16];
  }

  return v3;
}

- (void)updateWithDate:(id)a3 dayOfMonth:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = MonthDayCellLayer;
  v6 = a3;
  [(MonthDayCellLayer *)&v12 updateWithDate:v6 dayOfMonth:a4];
  self->_dayOfMonth = a4;
  [(MonthDayCellLayer *)self setHasWorkout:self->_hasWorkout, v12.receiver, v12.super_class];
  [(MonthDayCellLayer *)self setupCircleBackground];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [(MonthDayCellLayer *)self dateCache];
  v10 = [v9 startOfDayMidnight];
  [v10 timeIntervalSinceReferenceDate];
  self->_isFutureDay = v8 > v11;
}

- (void)setHasWorkout:(BOOL)a3
{
  self->_hasWorkout = a3;
  [(MonthWorkoutIndicator *)self->_workoutIndicator setHasWorkout:?];
  v4 = +[UIScreen mainScreen];
  v5 = [v4 traitCollection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013D390;
  v8[3] = &unk_10083A8B0;
  v8[4] = self;
  [v5 performAsCurrentTraitCollection:v8];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  dayOfMonth = self->_dayOfMonth;
  v7 = [(MonthDayCellLayer *)self textColor];
  [(MonthDayCellLayer *)self updateDateTextForDayNumber:dayOfMonth textColor:v7];

  +[CATransaction commit];
}

- (void)setupCircleBackground
{
  v3 = [(MonthDayCellLayer *)self representsToday];
  v4 = [(MonthDayCellLayer *)self circle];
  [v4 setHidden:v3 ^ 1];

  if (([(MonthDayCellLayer *)self representsToday]& 1) != 0)
  {
    v5 = +[ARUIMetricColors energyColors];
    v8 = [v5 nonGradientTextColor];
  }

  else
  {
    v8 = +[UIColor darkGrayColor];
  }

  v6 = [(MonthDayCellLayer *)self circle];
  v7 = v8;
  [v6 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];
}

- (void)pressToTransition:(BOOL)a3
{
  v3 = a3;
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.3];
  if (([(MonthDayCellLayer *)self representsToday]& 1) == 0)
  {
    v5 = [(MonthDayCellLayer *)self circle];
    [v5 setHidden:!v3];
  }

  +[CATransaction commit];
}

- (void)setPercentMinimized:(double)a3
{
  y = self->_fullFrame.origin.y;
  width = self->_fullFrame.size.width;
  height = self->_fullFrame.size.height;
  v7 = self->_fullFrame.origin.x + (self->_narrowFrame.origin.x - self->_fullFrame.origin.x) * a3;
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