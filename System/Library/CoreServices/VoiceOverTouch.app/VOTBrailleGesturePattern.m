@interface VOTBrailleGesturePattern
- (VOTBrailleGesturePattern)initWithLeftDots:(id)a3 rightDots:(id)a4;
- (id)description;
@end

@implementation VOTBrailleGesturePattern

- (VOTBrailleGesturePattern)initWithLeftDots:(id)a3 rightDots:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VOTBrailleGesturePattern;
  v8 = [(VOTBrailleGesturePattern *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOTBrailleGesturePattern *)v8 setLeftDots:v6];
    [(VOTBrailleGesturePattern *)v9 setRightDots:v7];
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VOTBrailleGesturePattern;
  v3 = [(VOTBrailleGesturePattern *)&v8 description];
  v4 = [(VOTBrailleGesturePattern *)self leftDots];
  v5 = [(VOTBrailleGesturePattern *)self rightDots];
  v6 = [v3 stringByAppendingFormat:@" - left: %@, right: %@", v4, v5];

  return v6;
}

@end