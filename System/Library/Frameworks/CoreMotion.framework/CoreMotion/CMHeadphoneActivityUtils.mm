@interface CMHeadphoneActivityUtils
+ (int)motionActivityForHeadphoneActivity:(int64_t)a3;
@end

@implementation CMHeadphoneActivityUtils

+ (int)motionActivityForHeadphoneActivity:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return dword_19B7BD468[a3];
  }
}

@end