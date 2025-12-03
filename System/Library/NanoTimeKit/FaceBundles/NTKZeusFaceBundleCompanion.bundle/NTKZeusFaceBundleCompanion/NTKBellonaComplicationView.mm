@interface NTKBellonaComplicationView
+ (id)viewForComplicationType:(unint64_t)type;
@end

@implementation NTKBellonaComplicationView

+ (id)viewForComplicationType:(unint64_t)type
{
  v4 = objc_alloc_init(NTKBellonaComplicationBackgroundView);
  if (type > 1)
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