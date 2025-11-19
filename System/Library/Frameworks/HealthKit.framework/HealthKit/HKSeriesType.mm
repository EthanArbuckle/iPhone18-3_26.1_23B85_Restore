@interface HKSeriesType
- (Class)dataObjectClass;
@end

@implementation HKSeriesType

- (Class)dataObjectClass
{
  v2 = [(HKObjectType *)self code];
  if (v2 == 102)
  {
    v3 = off_1E73757C8;
    goto LABEL_5;
  }

  if (v2 == 119)
  {
    v3 = off_1E73750D0;
LABEL_5:
    v4 = *v3;
    v5 = objc_opt_class();
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end