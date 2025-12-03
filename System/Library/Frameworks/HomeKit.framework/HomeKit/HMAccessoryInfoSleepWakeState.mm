@interface HMAccessoryInfoSleepWakeState
- (BOOL)isEqual:(id)equal;
- (HMAccessoryInfoSleepWakeState)initWithProtoData:(id)data;
- (HMAccessoryInfoSleepWakeState)initWithProtoPayload:(id)payload;
- (HMAccessoryInfoSleepWakeState)initWithSleepWakeState:(unint64_t)state;
- (id)description;
- (id)protoData;
- (id)protoPayload;
@end

@implementation HMAccessoryInfoSleepWakeState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      sleepWakeState = [(HMAccessoryInfoSleepWakeState *)self sleepWakeState];
      v8 = sleepWakeState == [(HMAccessoryInfoSleepWakeState *)v6 sleepWakeState];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HMAccessoryInfoSleepWakeState)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMAccessoryInfoProtoSleepWakeStateEvent alloc] initWithData:dataCopy];

  v6 = [(HMAccessoryInfoSleepWakeState *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoSleepWakeState)initWithProtoPayload:(id)payload
{
  sleepWakeState = [payload sleepWakeState];

  return [(HMAccessoryInfoSleepWakeState *)self initWithSleepWakeState:sleepWakeState];
}

- (id)protoData
{
  protoPayload = [(HMAccessoryInfoSleepWakeState *)self protoPayload];
  data = [protoPayload data];

  return data;
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

- (HMAccessoryInfoSleepWakeState)initWithSleepWakeState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = HMAccessoryInfoSleepWakeState;
  result = [(HMAccessoryInfoSleepWakeState *)&v5 init];
  if (result)
  {
    result->_sleepWakeState = state;
  }

  return result;
}

@end