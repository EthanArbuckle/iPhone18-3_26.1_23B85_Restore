@interface VOTBrailleGestureHalfPattern
+ (id)halfPatternWithDictionaryRepresentation:(id)a3;
+ (id)halfPatternWithDots:(id)a3;
+ (id)halfPatternWithTopDot:(id)a3 middleDot:(id)a4 bottomDot:(id)a5 fourthDot:(id)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dotArrayReversed:(BOOL)a3;
- (unint64_t)count;
@end

@implementation VOTBrailleGestureHalfPattern

+ (id)halfPatternWithTopDot:(id)a3 middleDot:(id)a4 bottomDot:(id)a5 fourthDot:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setTopDot:v13];

  [v14 setMiddleDot:v12];
  [v14 setBottomDot:v11];

  [v14 setFourthDot:v10];

  return v14;
}

+ (id)halfPatternWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"TopDot"];
  v7 = sub_10003D658(v6);
  [v5 setTopDot:v7];

  v8 = [v4 objectForKeyedSubscript:@"MiddleDot"];
  v9 = sub_10003D658(v8);
  [v5 setMiddleDot:v9];

  v10 = [v4 objectForKeyedSubscript:@"BottomDot"];
  v11 = sub_10003D658(v10);
  [v5 setBottomDot:v11];

  v12 = [v4 objectForKeyedSubscript:@"FourthDot"];

  v13 = sub_10003D658(v12);
  [v5 setFourthDot:v13];

  return v5;
}

+ (id)halfPatternWithDots:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  if ([v4 count])
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    [v5 setTopDot:v6];
  }

  else
  {
    [v5 setTopDot:0];
  }

  if ([v4 count] <= 1)
  {
    [v5 setMiddleDot:0];
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    [v5 setMiddleDot:v7];
  }

  if ([v4 count] <= 2)
  {
    [v5 setBottomDot:0];
  }

  else
  {
    v8 = [v4 objectAtIndexedSubscript:2];
    [v5 setBottomDot:v8];
  }

  if ([v4 count] <= 3)
  {
    [v5 setFourthDot:0];
  }

  else
  {
    v9 = [v4 objectAtIndexedSubscript:3];
    [v5 setFourthDot:v9];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(VOTBrailleGestureHalfPattern *)self topDot];
  v6 = [(VOTBrailleGestureHalfPattern *)self middleDot];
  v7 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
  v8 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
  v9 = [v4 halfPatternWithTopDot:v5 middleDot:v6 bottomDot:v7 fourthDot:v8];

  return v9;
}

- (unint64_t)count
{
  v3 = [(VOTBrailleGestureHalfPattern *)self topDot];

  v4 = [(VOTBrailleGestureHalfPattern *)self middleDot];

  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 != 0;
  }

  v7 = [(VOTBrailleGestureHalfPattern *)self bottomDot];

  if (v7)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = [(VOTBrailleGestureHalfPattern *)self fourthDot];

  if (v9)
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
  v4 = [(VOTBrailleGestureHalfPattern *)self topDot];
  v5 = [(VOTBrailleGestureHalfPattern *)self middleDot];
  v6 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
  v7 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
  v8 = [v3 stringByAppendingFormat:@" - top: %@, middle: %@, bottom: %@, fourth: %@", v4, v5, v6, v7];

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(VOTBrailleGestureHalfPattern *)self topDot];

  if (v4)
  {
    v5 = [(VOTBrailleGestureHalfPattern *)self topDot];
    v6 = sub_10003D714(v5);
    [v3 setObject:v6 forKeyedSubscript:@"TopDot"];
  }

  v7 = [(VOTBrailleGestureHalfPattern *)self middleDot];

  if (v7)
  {
    v8 = [(VOTBrailleGestureHalfPattern *)self middleDot];
    v9 = sub_10003D714(v8);
    [v3 setObject:v9 forKeyedSubscript:@"MiddleDot"];
  }

  v10 = [(VOTBrailleGestureHalfPattern *)self bottomDot];

  if (v10)
  {
    v11 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
    v12 = sub_10003D714(v11);
    [v3 setObject:v12 forKeyedSubscript:@"BottomDot"];
  }

  v13 = [(VOTBrailleGestureHalfPattern *)self fourthDot];

  if (v13)
  {
    v14 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
    v15 = sub_10003D714(v14);
    [v3 setObject:v15 forKeyedSubscript:@"FourthDot"];
  }

  return v3;
}

- (id)dotArrayReversed:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  if (v3)
  {
    v6 = [(VOTBrailleGestureHalfPattern *)self fourthDot];

    if (v6)
    {
      v7 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
      [v5 addObject:v7];
    }

    v8 = [(VOTBrailleGestureHalfPattern *)self bottomDot];

    if (v8)
    {
      v9 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
      [v5 addObject:v9];
    }

    v10 = [(VOTBrailleGestureHalfPattern *)self middleDot];

    if (v10)
    {
      v11 = [(VOTBrailleGestureHalfPattern *)self middleDot];
      [v5 addObject:v11];
    }

    v12 = [(VOTBrailleGestureHalfPattern *)self topDot];

    if (v12)
    {
      v13 = [(VOTBrailleGestureHalfPattern *)self topDot];
LABEL_18:
      v21 = v13;
      [v5 addObject:v13];
    }
  }

  else
  {
    v14 = [(VOTBrailleGestureHalfPattern *)self topDot];

    if (v14)
    {
      v15 = [(VOTBrailleGestureHalfPattern *)self topDot];
      [v5 addObject:v15];
    }

    v16 = [(VOTBrailleGestureHalfPattern *)self middleDot];

    if (v16)
    {
      v17 = [(VOTBrailleGestureHalfPattern *)self middleDot];
      [v5 addObject:v17];
    }

    v18 = [(VOTBrailleGestureHalfPattern *)self bottomDot];

    if (v18)
    {
      v19 = [(VOTBrailleGestureHalfPattern *)self bottomDot];
      [v5 addObject:v19];
    }

    v20 = [(VOTBrailleGestureHalfPattern *)self fourthDot];

    if (v20)
    {
      v13 = [(VOTBrailleGestureHalfPattern *)self fourthDot];
      goto LABEL_18;
    }
  }

  return v5;
}

@end