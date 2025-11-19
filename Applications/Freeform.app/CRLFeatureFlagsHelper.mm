@interface CRLFeatureFlagsHelper
+ (BOOL)isOSFeatureEnabled:(int64_t)a3;
@end

@implementation CRLFeatureFlagsHelper

+ (BOOL)isOSFeatureEnabled:(int64_t)a3
{
  switch(a3)
  {
    case 0:

      goto LABEL_4;
    case 1:

      goto LABEL_4;
    case 2:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:

      goto LABEL_4;
    case 5:

      goto LABEL_4;
    case 6:

      goto LABEL_4;
    case 7:

      goto LABEL_4;
    case 8:

      goto LABEL_4;
    case 9:

      goto LABEL_4;
    case 10:

      goto LABEL_4;
    case 11:

      goto LABEL_4;
    case 12:

      goto LABEL_4;
    case 13:
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_42;
      }

LABEL_4:
      result = _os_feature_enabled_impl();
      break;
    case 14:

      goto LABEL_4;
    case 15:

      goto LABEL_4;
    default:
LABEL_42:
      result = 0;
      break;
  }

  return result;
}

@end