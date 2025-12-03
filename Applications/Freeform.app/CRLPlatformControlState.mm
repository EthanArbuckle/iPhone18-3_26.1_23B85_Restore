@interface CRLPlatformControlState
+ (id)stateWithUIMenuElementState:(int64_t)state;
+ (id)stateWithValue:(unint64_t)value;
- (BOOL)isEqual:(id)equal;
- (CRLPlatformControlState)initWithUIMenuElementState:(int64_t)state;
- (CRLPlatformControlState)initWithValue:(unint64_t)value;
- (unint64_t)hash;
@end

@implementation CRLPlatformControlState

+ (id)stateWithValue:(unint64_t)value
{
  v3 = [[CRLPlatformControlState alloc] initWithValue:value];

  return v3;
}

- (CRLPlatformControlState)initWithValue:(unint64_t)value
{
  selfCopy = self;
  if (value <= 2)
  {
    selfCopy = [(CRLPlatformControlState *)self initWithUIMenuElementState:?];
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

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

+ (id)stateWithUIMenuElementState:(int64_t)state
{
  v3 = [[CRLPlatformControlState alloc] initWithUIMenuElementState:state];

  return v3;
}

- (CRLPlatformControlState)initWithUIMenuElementState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = CRLPlatformControlState;
  result = [(CRLPlatformControlState *)&v5 init];
  if (result)
  {
    result->mStateValue = state;
  }

  return result;
}

@end