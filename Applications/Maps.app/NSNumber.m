@interface NSNumber
+ (BOOL)number:(id)a3 isEqualToNumber:(id)a4;
@end

@implementation NSNumber

+ (BOOL)number:(id)a3 isEqualToNumber:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToNumber:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end