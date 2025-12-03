@interface HKSampleListDataProviderFilter
- (HKSampleListDataProviderFilter)init;
- (HKSampleListDataProviderFilter)initWithPredicate:(id)predicate dataTypes:(id)types;
@end

@implementation HKSampleListDataProviderFilter

- (HKSampleListDataProviderFilter)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSampleListDataProviderFilter)initWithPredicate:(id)predicate dataTypes:(id)types
{
  predicateCopy = predicate;
  typesCopy = types;
  v12.receiver = self;
  v12.super_class = HKSampleListDataProviderFilter;
  v8 = [(HKSampleListDataProviderFilter *)&v12 init];
  if (v8)
  {
    v9 = [predicateCopy hk_filterRepresentationForDataTypes:typesCopy];
    filter = v8->_filter;
    v8->_filter = v9;
  }

  return v8;
}

@end