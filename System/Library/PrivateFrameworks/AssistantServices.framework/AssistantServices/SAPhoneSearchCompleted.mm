@interface SAPhoneSearchCompleted
- (int64_t)resultCallbackCode;
@end

@implementation SAPhoneSearchCompleted

- (int64_t)resultCallbackCode
{
  phoneSearchResults = [(SAPhoneSearchCompleted *)self phoneSearchResults];
  v3 = [phoneSearchResults count];
  v4 = &SAPhonePhoneSearchHasResultsErrorCode;
  if (!v3)
  {
    v4 = &SAPhonePhoneSearchHasNoResultsErrorCode;
  }

  v5 = *v4;

  return v5;
}

@end