@interface NSData(CTAdditions)
+ (uint64_t)nonOwningDataWithBytes:()CTAdditions length:;
@end

@implementation NSData(CTAdditions)

+ (uint64_t)nonOwningDataWithBytes:()CTAdditions length:
{
  v6 = objc_opt_class();

  return [v6 dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
}

@end