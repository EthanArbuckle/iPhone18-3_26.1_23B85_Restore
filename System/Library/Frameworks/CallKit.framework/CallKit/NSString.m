@interface NSString
+ (__CFString)cx_stringWithCXActionOriginator:(uint64_t)a1;
@end

@implementation NSString

+ (__CFString)cx_stringWithCXActionOriginator:(uint64_t)a1
{
  objc_opt_self();
  if (a2 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7C06CC8[a2];
  }
}

@end