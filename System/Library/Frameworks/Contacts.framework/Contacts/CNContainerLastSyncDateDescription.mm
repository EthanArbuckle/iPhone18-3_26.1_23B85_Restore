@interface CNContainerLastSyncDateDescription
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerLastSyncDateDescription

- (void)setCNValue:(id)value onContainer:(id)container
{
  valueCopy = value;
  containerCopy = container;
  objc_opt_class();
  v9 = valueCopy;
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

  [containerCopy setLastSyncDate:v8];
}

@end