@interface CRLPlatformControlState
+ (id)stateWithUIMenuElementState:(int64_t)a3;
+ (id)stateWithValue:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CRLPlatformControlState)initWithUIMenuElementState:(int64_t)a3;
- (CRLPlatformControlState)initWithValue:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation CRLPlatformControlState

+ (id)stateWithValue:(unint64_t)a3
{
  v3 = [[CRLPlatformControlState alloc] initWithValue:a3];

  return v3;
}

- (CRLPlatformControlState)initWithValue:(unint64_t)a3
{
  v3 = self;
  if (a3 <= 2)
  {
    v3 = [(CRLPlatformControlState *)self initWithUIMenuElementState:?];
  }

  return v3;
}

- (unint64_t)hash
{
  p_mStateValue = &self->mStateValue;
  result = self->mStateValue;
  if (result >= 3)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312C30();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312C44(p_mStateValue, v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312D04();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v6, v4);
    }

    v7 = [NSString stringWithUTF8String:"[CRLPlatformControlState hash]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPlatformControlState.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:65 isFatal:0 description:"Bad value: %zd", *p_mStateValue];

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = self->mStateValue == v6[1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)stateWithUIMenuElementState:(int64_t)a3
{
  v3 = [[CRLPlatformControlState alloc] initWithUIMenuElementState:a3];

  return v3;
}

- (CRLPlatformControlState)initWithUIMenuElementState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLPlatformControlState;
  result = [(CRLPlatformControlState *)&v5 init];
  if (result)
  {
    result->mStateValue = a3;
  }

  return result;
}

@end