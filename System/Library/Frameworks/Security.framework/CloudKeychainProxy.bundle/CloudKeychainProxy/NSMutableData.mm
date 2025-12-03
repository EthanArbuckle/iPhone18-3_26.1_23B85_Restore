@interface NSMutableData
+ (NSMutableData)dataWithSpace:(unint64_t)space DEREncode:(id)encode;
@end

@implementation NSMutableData

+ (NSMutableData)dataWithSpace:(unint64_t)space DEREncode:(id)encode
{
  encodeCopy = encode;
  v6 = [NSMutableData dataWithLength:space];
  mutableBytes = [v6 mutableBytes];
  v8 = encodeCopy[2](encodeCopy, space, mutableBytes);

  if ((space & 0x8000000000000000) != 0 || mutableBytes > v8)
  {

    v6 = 0;
  }

  else
  {
    [v6 replaceBytesInRange:0 withBytes:v8 - mutableBytes length:{0, 0}];
  }

  return v6;
}

@end