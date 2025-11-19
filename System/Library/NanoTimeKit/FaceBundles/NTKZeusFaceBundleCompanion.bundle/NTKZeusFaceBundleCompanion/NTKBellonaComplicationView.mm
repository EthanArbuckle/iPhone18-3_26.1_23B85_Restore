@interface NTKBellonaComplicationView
+ (id)viewForComplicationType:(unint64_t)a3;
@end

@implementation NTKBellonaComplicationView

+ (id)viewForComplicationType:(unint64_t)a3
{
  v4 = objc_alloc_init(NTKBellonaComplicationBackgroundView);
  if (a3 > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_opt_class();
  }

  v6 = [[v5 alloc] initWithBackgroundView:v4];

  return v6;
}

@end