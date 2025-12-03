@interface CMHeadphoneActivityUtils
+ (int)motionActivityForHeadphoneActivity:(int64_t)activity;
@end

@implementation CMHeadphoneActivityUtils

+ (int)motionActivityForHeadphoneActivity:(int64_t)activity
{
  if (activity > 4)
  {
    return 0;
  }

  else
  {
    return dword_19B7BD468[activity];
  }
}

@end