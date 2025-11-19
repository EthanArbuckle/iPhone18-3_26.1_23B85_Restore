@interface VNMPUtils
+ (double)getHostTime;
+ (id)createErrorWithCode:(int64_t)a3 andMessage:(id)a4;
+ (int64_t)parseExifTimestamp:(id)a3;
+ (unint64_t)getHostTimeInNanos;
+ (void)freeVImageBuffer:(vImage_Buffer *)a3;
@end

@implementation VNMPUtils

+ (int64_t)parseExifTimestamp:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  v6 = [v5 dateFromString:v4];

  if (v6)
  {
    [v6 timeIntervalSince1970];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)freeVImageBuffer:(vImage_Buffer *)a3
{
  if (a3)
  {
    if (a3->data)
    {
      free(a3->data);
    }

    free(a3);
  }
}

+ (id)createErrorWithCode:(int64_t)a3 andMessage:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = [v5 dictionary];
  [v7 setValue:v6 forKey:*MEMORY[0x1E696A588]];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MomentProcessor" code:a3 userInfo:v7];
  v9 = v8;

  return v8;
}

+ (unint64_t)getHostTimeInNanos
{
  if (mach_timebase_info(&getHostTimeInNanos_info))
  {
    return 0;
  }

  else
  {
    return mach_absolute_time() * getHostTimeInNanos_info / *algn_1EB285D7C;
  }
}

+ (double)getHostTime
{
  info = 0;
  if (*&getHostTime_timeBaseFactor == 0.0 && !mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v3) = info.denom;
    *&getHostTime_timeBaseFactor = v2 / v3 * 0.000000001;
  }

  return *&getHostTime_timeBaseFactor * mach_absolute_time();
}

@end