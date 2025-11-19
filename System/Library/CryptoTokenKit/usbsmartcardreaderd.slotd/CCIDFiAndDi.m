@interface CCIDFiAndDi
+ (NSArray)DIndexes;
+ (NSArray)FIndexes;
+ (id)createWithFIndexDIndex:(unsigned __int8)a3;
+ (id)getDTable;
+ (id)getFTable;
+ (unsigned)fMaxForFDIndex:(unsigned int)a3 Fi:(unsigned int *)a4 Di:(unsigned int *)a5;
- (id)description;
- (unsigned)bpsMax;
@end

@implementation CCIDFiAndDi

+ (id)getFTable
{
  if (qword_10002C048 != -1)
  {
    sub_100017710();
  }

  v3 = qword_10002C040;

  return v3;
}

+ (id)getDTable
{
  if (qword_10002C058 != -1)
  {
    sub_100017724();
  }

  v3 = qword_10002C050;

  return v3;
}

+ (NSArray)FIndexes
{
  v2 = +[CCIDFiAndDi getFTable];
  v3 = [v2 allKeys];

  return v3;
}

+ (NSArray)DIndexes
{
  v2 = +[CCIDFiAndDi getDTable];
  v3 = [v2 allKeys];

  return v3;
}

+ (unsigned)fMaxForFDIndex:(unsigned int)a3 Fi:(unsigned int *)a4 Di:(unsigned int *)a5
{
  v7 = a3;
  v8 = [CCIDFiAndDi Fi:a3 >> 4];
  v9 = [CCIDFiAndDi Di:v7 & 0xF];
  *a4 = [CCIDFiAndDi Fi:v8];
  *a5 = [CCIDFiAndDi Di:v9];

  return [CCIDFiAndDi fMax:v8];
}

+ (id)createWithFIndexDIndex:(unsigned __int8)a3
{
  v3 = [[CCIDFiAndDi alloc] initWithFIndex:a3 >> 4 DIndex:a3 & 0xF];

  return v3;
}

- (unsigned)bpsMax
{
  v3 = 1000 * [(CCIDFiAndDi *)self fMax];
  v4 = [(CCIDFiAndDi *)self Fi];
  return v3 / (v4 / [(CCIDFiAndDi *)self Di]);
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"{ index: 0x%.2x ", -[CCIDFiAndDi fIndexDIndex](self, "fIndexDIndex")];
  [v3 appendFormat:@"Di: %2d ", -[CCIDFiAndDi Di](self, "Di")];
  [v3 appendFormat:@"Fi: %4d ", -[CCIDFiAndDi Fi](self, "Fi")];
  objc_msgSend(v3, "appendFormat:", @"(%.3f kbps at 4.0MHz, "), -[CCIDFiAndDi baseBps](self, "baseBps") * 0.001;
  [v3 appendFormat:@"%.3f kbps for fMax: %.1fMHz }"], -[CCIDFiAndDi bpsMax](self, "bpsMax") * 0.001, -[CCIDFiAndDi fMax](self, "fMax") * 0.001);

  return v3;
}

@end