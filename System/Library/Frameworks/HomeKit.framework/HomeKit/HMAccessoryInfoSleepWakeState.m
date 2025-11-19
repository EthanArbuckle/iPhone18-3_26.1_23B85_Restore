@interface HMAccessoryInfoSleepWakeState
- (BOOL)isEqual:(id)a3;
- (HMAccessoryInfoSleepWakeState)initWithProtoData:(id)a3;
- (HMAccessoryInfoSleepWakeState)initWithProtoPayload:(id)a3;
- (HMAccessoryInfoSleepWakeState)initWithSleepWakeState:(unint64_t)a3;
- (id)description;
- (id)protoData;
- (id)protoPayload;
@end

@implementation HMAccessoryInfoSleepWakeState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAccessoryInfoSleepWakeState *)self sleepWakeState];
      v8 = v7 == [(HMAccessoryInfoSleepWakeState *)v6 sleepWakeState];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HMAccessoryInfoSleepWakeState)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMAccessoryInfoProtoSleepWakeStateEvent alloc] initWithData:v4];

  v6 = [(HMAccessoryInfoSleepWakeState *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoSleepWakeState)initWithProtoPayload:(id)a3
{
  v4 = [a3 sleepWakeState];

  return [(HMAccessoryInfoSleepWakeState *)self initWithSleepWakeState:v4];
}

- (id)protoData
{
  v2 = [(HMAccessoryInfoSleepWakeState *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoSleepWakeStateEvent);
  [(HMAccessoryInfoProtoSleepWakeStateEvent *)v3 setSleepWakeState:[(HMAccessoryInfoSleepWakeState *)self sleepWakeState]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoSleepWakeState;
  v4 = [(HMAccessoryInfoSleepWakeState *)&v8 description];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessoryInfoSleepWakeState sleepWakeState](self, "sleepWakeState")}];
  v6 = [v3 stringWithFormat:@"%@, sws: %@", v4, v5];

  return v6;
}

- (HMAccessoryInfoSleepWakeState)initWithSleepWakeState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMAccessoryInfoSleepWakeState;
  result = [(HMAccessoryInfoSleepWakeState *)&v5 init];
  if (result)
  {
    result->_sleepWakeState = a3;
  }

  return result;
}

@end