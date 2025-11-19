@interface NSError(HMConnectivity)
+ (CFErrorRef)hm_errorWithNWError:()HMConnectivity;
@end

@implementation NSError(HMConnectivity)

+ (CFErrorRef)hm_errorWithNWError:()HMConnectivity
{
  if (error)
  {
    v4 = nw_error_copy_cf_error(error);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end