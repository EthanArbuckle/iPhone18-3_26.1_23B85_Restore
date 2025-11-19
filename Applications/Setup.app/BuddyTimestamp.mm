@interface BuddyTimestamp
+ (double)intervalFromStart:(unint64_t)a3 toEnd:(unint64_t)a4;
@end

@implementation BuddyTimestamp

+ (double)intervalFromStart:(unint64_t)a3 toEnd:(unint64_t)a4
{
  v8 = &unk_1003A7090;
  location = 0;
  objc_storeStrong(&location, &stru_10032C500);
  if (*v8 != -1)
  {
    dispatch_once(v8, location);
  }

  objc_storeStrong(&location, 0);
  return (a4 - a3) * dword_1003A7088 / dword_1003A708C / 1000000000.0;
}

@end