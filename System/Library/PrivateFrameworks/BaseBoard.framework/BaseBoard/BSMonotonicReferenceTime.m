@interface BSMonotonicReferenceTime
+ (double)_timeIntervalSinceInternalClockReference;
+ (id)distantFuture;
+ (id)distantPast;
+ (id)now;
+ (id)referenceTimeForDate:(id)a3;
+ (id)referenceTimeWithTimeIntervalSinceNow:(double)a3;
- (id)date;
@end

@implementation BSMonotonicReferenceTime

+ (id)now
{
  v2 = [a1 alloc];
  v3 = +[BSMonotonicReferenceTime _timeIntervalSinceInternalClockReference];
  if (v2)
  {
    v4 = v3;
    v7.receiver = v2;
    v7.super_class = BSMonotonicReferenceTime;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    if (v5)
    {
      *(v5 + 1) = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (double)_timeIntervalSinceInternalClockReference
{
  objc_opt_self();
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v1);
  return v1.tv_sec + v1.tv_nsec * 0.000000001;
}

+ (id)distantPast
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BSMonotonicReferenceTime_distantPast__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_30 != -1)
  {
    dispatch_once(&_MergedGlobals_30, block);
  }

  v2 = qword_1ED44FFB8;

  return v2;
}

void __39__BSMonotonicReferenceTime_distantPast__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referenceTimeWithTimeIntervalSinceNow:-6.31152e10];
  v2 = qword_1ED44FFB8;
  qword_1ED44FFB8 = v1;
}

+ (id)distantFuture
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BSMonotonicReferenceTime_distantFuture__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED44FFC0 != -1)
  {
    dispatch_once(&qword_1ED44FFC0, block);
  }

  v2 = qword_1ED44FFC8;

  return v2;
}

void __41__BSMonotonicReferenceTime_distantFuture__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referenceTimeWithTimeIntervalSinceNow:6.31152e10];
  v2 = qword_1ED44FFC8;
  qword_1ED44FFC8 = v1;
}

+ (id)referenceTimeWithTimeIntervalSinceNow:(double)a3
{
  v5 = +[BSMonotonicReferenceTime _timeIntervalSinceInternalClockReference];
  v6 = [a1 alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = BSMonotonicReferenceTime;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6[1] = v5 + a3;
    }
  }

  return v6;
}

+ (id)referenceTimeForDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceNow];
  v5 = [a1 referenceTimeWithTimeIntervalSinceNow:?];

  return v5;
}

- (id)date
{
  v2 = MEMORY[0x1E695DF00];
  [(BSMonotonicReferenceTime *)self timeIntervalSinceNow];

  return [v2 dateWithTimeIntervalSinceNow:?];
}

@end