@interface KNAnimationRandomGenerator
+ (id)randomGeneratorFromPluginContext:(id)context;
- ($94F468A8D4C62B317260615823C2B210)metalPoint2DRandomPoint;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DRandomPoint;
- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DRandomDirection;
- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DRandomPoint;
- (KNAnimationRandomGenerator)initWithSeed:(id)seed;
- (double)doubleBetween:(double)between :(double)a4;
- (double)randomDouble;
- (int64_t)intBetween:(int64_t)between :(int64_t)a4;
- (void)dealloc;
@end

@implementation KNAnimationRandomGenerator

- (KNAnimationRandomGenerator)initWithSeed:(id)seed
{
  seedCopy = seed;
  v9.receiver = self;
  v9.super_class = KNAnimationRandomGenerator;
  v5 = [(KNAnimationRandomGenerator *)&v9 init];
  if (v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    if ([v6 BOOLForKey:@"RandomNumberSeedAlwaysZero"])
    {
      integerValue = 0;
    }

    else if ([v6 BOOLForKey:@"RandomNumberSeedAlwaysRandom"] || !seedCopy)
    {
      integerValue = arc4random_uniform(0x7FFFFFFFu);
    }

    else
    {
      integerValue = [seedCopy integerValue];
    }

    [(KNAnimationRandomGenerator *)v5 setSeed:integerValue];
  }

  return v5;
}

+ (id)randomGeneratorFromPluginContext:(id)context
{
  v3 = [[KNAnimationRandomGenerator alloc] initWithSeed:0];

  return v3;
}

- (void)dealloc
{
  if (self->_randGenerator)
  {
    operator delete();
  }

  v2.receiver = self;
  v2.super_class = KNAnimationRandomGenerator;
  [(KNAnimationRandomGenerator *)&v2 dealloc];
}

- (double)randomDouble
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"[KNAnimationRandomGenerator randomDouble]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNAnimationRandomGenerator.mm"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:149 description:{@"invalid nil value for '%s'", "_randGenerator"}];

    randGenerator = self->_randGenerator;
  }

  RandGenerator::randomDouble(randGenerator);
  return result;
}

- (int64_t)intBetween:(int64_t)between :(int64_t)a4
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[KNAnimationRandomGenerator intBetween::]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNAnimationRandomGenerator.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:155 description:{@"invalid nil value for '%s'", "_randGenerator"}];

    randGenerator = self->_randGenerator;
  }

  if (between >= a4)
  {
    betweenCopy = a4;
  }

  else
  {
    betweenCopy = between;
  }

  if (between <= a4)
  {
    betweenCopy2 = a4;
  }

  else
  {
    betweenCopy2 = between;
  }

  RandGenerator::randWithMinMax(randGenerator, betweenCopy, betweenCopy2);
  return vcvtmd_s64_f64(v13);
}

- (double)doubleBetween:(double)between :(double)a4
{
  randGenerator = self->_randGenerator;
  if (!randGenerator)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[KNAnimationRandomGenerator doubleBetween::]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KNAnimationRandomGenerator.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:174 description:{@"invalid nil value for '%s'", "_randGenerator"}];

    randGenerator = self->_randGenerator;
  }

  if (between >= a4)
  {
    betweenCopy = a4;
  }

  else
  {
    betweenCopy = between;
  }

  if (between >= a4)
  {
    a4 = between;
  }

  RandGenerator::randomDouble(randGenerator);
  v13 = a4 * v12;
  v14 = betweenCopy * v12;
  v15 = betweenCopy + v13 - v14;
  result = betweenCopy + v13 - v14;
  if (betweenCopy >= 0.0 != a4 < 0.0)
  {
    return v15;
  }

  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DRandomDirection
{
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v4 = v3;
  [(KNAnimationRandomGenerator *)self doubleBetween:0.0];
  v5 = sqrt(1.0 - v4 * v4);
  v7 = __sincos_stret(v6);
  v8 = v5 * v7.__cosval;
  v9 = v5 * v7.__sinval;
  v10 = v4;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)metalPoint2DRandomPoint
{
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v4 = v3;
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v5 = v4;
  v7 = v6;
  v8 = v5;
  result.var1 = v7;
  result.var0 = v8;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DRandomPoint
{
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v4 = v3;
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v6 = v5;
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v7 = v4;
  v8 = v6;
  v10 = v9;
  v11 = v7;
  result.var2 = v10;
  result.var1 = v8;
  result.var0 = v11;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DRandomPoint
{
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v4 = v3;
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v6 = v5;
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v8 = v7;
  [(KNAnimationRandomGenerator *)self doubleBetween:-1.0];
  v9 = v4;
  v10 = v6;
  v11 = v8;
  v13 = v12;
  v14 = v9;
  result.var3 = v13;
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v14;
  return result;
}

@end