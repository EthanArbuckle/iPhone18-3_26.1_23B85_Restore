@interface NSObject(Typecast)
+ (id)typecast:()Typecast;
@end

@implementation NSObject(Typecast)

+ (id)typecast:()Typecast
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end