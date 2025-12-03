@interface VOTBrailleGesturePattern
- (VOTBrailleGesturePattern)initWithLeftDots:(id)dots rightDots:(id)rightDots;
- (id)description;
@end

@implementation VOTBrailleGesturePattern

- (VOTBrailleGesturePattern)initWithLeftDots:(id)dots rightDots:(id)rightDots
{
  dotsCopy = dots;
  rightDotsCopy = rightDots;
  v11.receiver = self;
  v11.super_class = VOTBrailleGesturePattern;
  v8 = [(VOTBrailleGesturePattern *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOTBrailleGesturePattern *)v8 setLeftDots:dotsCopy];
    [(VOTBrailleGesturePattern *)v9 setRightDots:rightDotsCopy];
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VOTBrailleGesturePattern;
  v3 = [(VOTBrailleGesturePattern *)&v8 description];
  leftDots = [(VOTBrailleGesturePattern *)self leftDots];
  rightDots = [(VOTBrailleGesturePattern *)self rightDots];
  v6 = [v3 stringByAppendingFormat:@" - left: %@, right: %@", leftDots, rightDots];

  return v6;
}

@end