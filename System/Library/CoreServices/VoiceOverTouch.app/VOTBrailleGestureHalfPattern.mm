@interface VOTBrailleGestureHalfPattern
+ (id)halfPatternWithDictionaryRepresentation:(id)representation;
+ (id)halfPatternWithDots:(id)dots;
+ (id)halfPatternWithTopDot:(id)dot middleDot:(id)middleDot bottomDot:(id)bottomDot fourthDot:(id)fourthDot;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dotArrayReversed:(BOOL)reversed;
- (unint64_t)count;
@end

@implementation VOTBrailleGestureHalfPattern

+ (id)halfPatternWithTopDot:(id)dot middleDot:(id)middleDot bottomDot:(id)bottomDot fourthDot:(id)fourthDot
{
  fourthDotCopy = fourthDot;
  bottomDotCopy = bottomDot;
  middleDotCopy = middleDot;
  dotCopy = dot;
  v14 = objc_alloc_init(self);
  [v14 setTopDot:dotCopy];

  [v14 setMiddleDot:middleDotCopy];
  [v14 setBottomDot:bottomDotCopy];

  [v14 setFourthDot:fourthDotCopy];

  return v14;
}

+ (id)halfPatternWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_alloc_init(self);
  v6 = [representationCopy objectForKeyedSubscript:@"TopDot"];
  v7 = sub_10003D658(v6);
  [v5 setTopDot:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"MiddleDot"];
  v9 = sub_10003D658(v8);
  [v5 setMiddleDot:v9];

  v10 = [representationCopy objectForKeyedSubscript:@"BottomDot"];
  v11 = sub_10003D658(v10);
  [v5 setBottomDot:v11];

  v12 = [representationCopy objectForKeyedSubscript:@"FourthDot"];

  v13 = sub_10003D658(v12);
  [v5 setFourthDot:v13];

  return v5;
}

+ (id)halfPatternWithDots:(id)dots
{
  dotsCopy = dots;
  v5 = objc_alloc_init(self);
  if ([dotsCopy count])
  {
    v6 = [dotsCopy objectAtIndexedSubscript:0];
    [v5 setTopDot:v6];
  }

  else
  {
    [v5 setTopDot:0];
  }

  if ([dotsCopy count] <= 1)
  {
    [v5 setMiddleDot:0];
  }

  else
  {
    v7 = [dotsCopy objectAtIndexedSubscript:1];
    [v5 setMiddleDot:v7];
  }

  if ([dotsCopy count] <= 2)
  {
    [v5 setBottomDot:0];
  }

  else
  {
    v8 = [dotsCopy objectAtIndexedSubscript:2];
    [v5 setBottomDot:v8];
  }

  if ([dotsCopy count] <= 3)
  {
    [v5 setFourthDot:0];
  }

  else
  {
    v9 = [dotsCopy objectAtIndexedSubscript:3];
    [v5 setFourthDot:v9];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  topDot = [(VOTBrailleGestureHalfPattern *)self topDot];
  middleDot = [(VOTBrailleGestureHalfPattern *)self middleDot];
  bottomDot = [(VOTBrailleGestureHalfPattern *)self bottomDot];
  fourthDot = [(VOTBrailleGestureHalfPattern *)self fourthDot];
  v9 = [v4 halfPatternWithTopDot:topDot middleDot:middleDot bottomDot:bottomDot fourthDot:fourthDot];

  return v9;
}

- (unint64_t)count
{
  topDot = [(VOTBrailleGestureHalfPattern *)self topDot];

  middleDot = [(VOTBrailleGestureHalfPattern *)self middleDot];

  v5 = 1;
  if (topDot)
  {
    v5 = 2;
  }

  if (middleDot)
  {
    v6 = v5;
  }

  else
  {
    v6 = topDot != 0;
  }

  bottomDot = [(VOTBrailleGestureHalfPattern *)self bottomDot];

  if (bottomDot)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v6;
  }

  fourthDot = [(VOTBrailleGestureHalfPattern *)self fourthDot];

  if (fourthDot)
  {
    return v8 + 1;
  }

  else
  {
    return v8;
  }
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = VOTBrailleGestureHalfPattern;
  v3 = [(VOTBrailleGestureHalfPattern *)&v10 description];
  topDot = [(VOTBrailleGestureHalfPattern *)self topDot];
  middleDot = [(VOTBrailleGestureHalfPattern *)self middleDot];
  bottomDot = [(VOTBrailleGestureHalfPattern *)self bottomDot];
  fourthDot = [(VOTBrailleGestureHalfPattern *)self fourthDot];
  v8 = [v3 stringByAppendingFormat:@" - top: %@, middle: %@, bottom: %@, fourth: %@", topDot, middleDot, bottomDot, fourthDot];

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  topDot = [(VOTBrailleGestureHalfPattern *)self topDot];

  if (topDot)
  {
    topDot2 = [(VOTBrailleGestureHalfPattern *)self topDot];
    v6 = sub_10003D714(topDot2);
    [v3 setObject:v6 forKeyedSubscript:@"TopDot"];
  }

  middleDot = [(VOTBrailleGestureHalfPattern *)self middleDot];

  if (middleDot)
  {
    middleDot2 = [(VOTBrailleGestureHalfPattern *)self middleDot];
    v9 = sub_10003D714(middleDot2);
    [v3 setObject:v9 forKeyedSubscript:@"MiddleDot"];
  }

  bottomDot = [(VOTBrailleGestureHalfPattern *)self bottomDot];

  if (bottomDot)
  {
    bottomDot2 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
    v12 = sub_10003D714(bottomDot2);
    [v3 setObject:v12 forKeyedSubscript:@"BottomDot"];
  }

  fourthDot = [(VOTBrailleGestureHalfPattern *)self fourthDot];

  if (fourthDot)
  {
    fourthDot2 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
    v15 = sub_10003D714(fourthDot2);
    [v3 setObject:v15 forKeyedSubscript:@"FourthDot"];
  }

  return v3;
}

- (id)dotArrayReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v5 = +[NSMutableArray array];
  if (reversedCopy)
  {
    fourthDot = [(VOTBrailleGestureHalfPattern *)self fourthDot];

    if (fourthDot)
    {
      fourthDot2 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
      [v5 addObject:fourthDot2];
    }

    bottomDot = [(VOTBrailleGestureHalfPattern *)self bottomDot];

    if (bottomDot)
    {
      bottomDot2 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
      [v5 addObject:bottomDot2];
    }

    middleDot = [(VOTBrailleGestureHalfPattern *)self middleDot];

    if (middleDot)
    {
      middleDot2 = [(VOTBrailleGestureHalfPattern *)self middleDot];
      [v5 addObject:middleDot2];
    }

    topDot = [(VOTBrailleGestureHalfPattern *)self topDot];

    if (topDot)
    {
      topDot2 = [(VOTBrailleGestureHalfPattern *)self topDot];
LABEL_18:
      v21 = topDot2;
      [v5 addObject:topDot2];
    }
  }

  else
  {
    topDot3 = [(VOTBrailleGestureHalfPattern *)self topDot];

    if (topDot3)
    {
      topDot4 = [(VOTBrailleGestureHalfPattern *)self topDot];
      [v5 addObject:topDot4];
    }

    middleDot3 = [(VOTBrailleGestureHalfPattern *)self middleDot];

    if (middleDot3)
    {
      middleDot4 = [(VOTBrailleGestureHalfPattern *)self middleDot];
      [v5 addObject:middleDot4];
    }

    bottomDot3 = [(VOTBrailleGestureHalfPattern *)self bottomDot];

    if (bottomDot3)
    {
      bottomDot4 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
      [v5 addObject:bottomDot4];
    }

    fourthDot3 = [(VOTBrailleGestureHalfPattern *)self fourthDot];

    if (fourthDot3)
    {
      topDot2 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
      goto LABEL_18;
    }
  }

  return v5;
}

@end