@interface NTKPoodleComplicationView
+ (id)viewForComplicationType:(unint64_t)a3;
@end

@implementation NTKPoodleComplicationView

+ (id)viewForComplicationType:(unint64_t)a3
{
  v4 = objc_alloc_init(NTKPoodleComplicationBackgroundView);
  if (a3 <= 5 && ((0x33u >> a3) & 1) != 0)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  v6 = [[v5 alloc] initWithBackgroundView:v4];

  return v6;
}

@end