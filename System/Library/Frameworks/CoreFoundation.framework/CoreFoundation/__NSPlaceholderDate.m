@interface __NSPlaceholderDate
+ (void)initialize;
- (__NSPlaceholderDate)init;
- (__NSPlaceholderDate)initWithTimeIntervalSinceReferenceDate:(double)a3;
- (double)timeIntervalSinceReferenceDate;
@end

@implementation __NSPlaceholderDate

- (__NSPlaceholderDate)init
{
  v6 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = [(__NSPlaceholderDate *)self initWithTimeIntervalSinceReferenceDate:__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)initialize
{
  if (initialize_static_init != -1)
  {
    +[__NSPlaceholderDate initialize];
  }
}

- (__NSPlaceholderDate)initWithTimeIntervalSinceReferenceDate:(double)a3
{
  if (self != &___immutablePlaceholderDate)
  {
    return 0;
  }

  if (a3 == 6.3113904e10)
  {
    result = &_NSConstantDateDistantFuture;
    goto LABEL_7;
  }

  if (a3 == -6.31140768e10)
  {
    result = &_NSConstantDateDistantPast;
    goto LABEL_7;
  }

  if ((_NSDateTaggedPointersDisabled & 1) == 0)
  {
    v6 = a3;
    if (a3 == 0.0)
    {
LABEL_19:
      if (decodeTaggedTimeInterval(*&v6) != a3)
      {
        [__NSPlaceholderDate initWithTimeIntervalSinceReferenceDate:];
      }

      result = ((8 * *&v6) | 0x8000000000000006);
      v8 = *MEMORY[0x1E69E5910] ^ result;
      if ((~v8 & 0xC000000000000007) != 0)
      {
        result = (v8 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v8 & 7)));
      }

LABEL_7:
      if (result)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (a3 == -0.0)
    {
      v6 = NAN;
      goto LABEL_19;
    }

    if (a3 == 0.0)
    {
      [__NSPlaceholderDate initWithTimeIntervalSinceReferenceDate:];
    }

    *&v6 = *&a3 & 0xFFFFFFFFFFFFFLL | (*&a3 >> 63 << 59) | ((((*&a3 >> 52) + 17) & 0x7F) << 52);
    if (((((*&a3 >> 52) + 17) << 57) >> 57) + 1007 == ((*&a3 >> 52) & 0x7FFLL) && *&v6 != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  v5 = objc_opt_self();
  result = __CFAllocateObject(v5, 0);
  *&result[1].super.super.isa = a3;
  return result;
}

- (double)timeIntervalSinceReferenceDate
{
  v4 = __CFLookUpClass("NSDate");
  v5 = __CFFullMethodName(v4, self, a2);
  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized date object", v5);
  v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6), 0];
  objc_exception_throw(v7);
}

@end