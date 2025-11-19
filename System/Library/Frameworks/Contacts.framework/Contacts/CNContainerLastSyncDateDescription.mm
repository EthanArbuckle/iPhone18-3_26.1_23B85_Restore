@interface CNContainerLastSyncDateDescription
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerLastSyncDateDescription

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v9 = v5;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v6 setLastSyncDate:v8];
}

@end