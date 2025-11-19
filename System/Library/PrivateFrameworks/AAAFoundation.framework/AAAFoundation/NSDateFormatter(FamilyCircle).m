@interface NSDateFormatter(FamilyCircle)
+ (id)aaf_standardFormatter;
@end

@implementation NSDateFormatter(FamilyCircle)

+ (id)aaf_standardFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  [v0 setLocale:v1];

  [v0 setTimeStyle:0];
  [v0 setDateStyle:1];
  [v0 setDoesRelativeDateFormatting:1];

  return v0;
}

@end