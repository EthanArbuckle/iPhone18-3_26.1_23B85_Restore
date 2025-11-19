@interface NSCharacterSet
+ (id)phonePadCharacterSet;
@end

@implementation NSCharacterSet

+ (id)phonePadCharacterSet
{
  if (qword_100020198 != -1)
  {
    sub_10000B5A4();
  }

  v3 = qword_100020190;

  return v3;
}

@end