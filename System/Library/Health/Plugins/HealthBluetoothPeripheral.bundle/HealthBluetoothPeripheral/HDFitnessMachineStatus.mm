@interface HDFitnessMachineStatus
+ (id)_buildWithBinaryValue:(id)value error:(id *)error;
+ (id)unitTest_fakeStatusUpdateForState:(unint64_t)state;
- (id)description;
@end

@implementation HDFitnessMachineStatus

+ (id)_buildWithBinaryValue:(id)value error:(id *)error
{
  valueCopy = value;
  _init = [(HDHealthServiceCharacteristic *)[HDFitnessMachineStatus alloc] _init];
  v7 = [valueCopy length];
  bytes = [valueCopy bytes];

  v18 = bytes;
  if (!bytes || !v7)
  {
    [NSError hk_assignError:error code:303 format:@"Insufficient data (%lu bytes) for fitness machine status.", v7];
LABEL_11:
    v14 = 0;
    goto LABEL_21;
  }

  v9 = [objc_opt_class() uint8FromData:&v18 before:&v7[bytes]];
  [_init setMachineState:0];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v12 = _init;
      v13 = 4;
      goto LABEL_19;
    }

    if (v9 == 4)
    {
      v12 = _init;
      v13 = 5;
      goto LABEL_19;
    }

LABEL_15:
    _HKInitializeLogging();
    v15 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_3553C(v9, v15);
    }

    goto LABEL_20;
  }

  if (v9 == 1)
  {
    v12 = _init;
    v13 = 1;
    goto LABEL_19;
  }

  if (v9 != 2)
  {
    goto LABEL_15;
  }

  v10 = [objc_opt_class() uint8FromData:&v18 before:&v7[bytes]];
  if (!v18)
  {
    [NSError hk_assignError:error code:303 format:@"Insufficient data (%lu bytes) for stopped or paused by user fitness machine status.", v7];
    goto LABEL_11;
  }

  v11 = v10;
  if (v10 == 2)
  {
    v12 = _init;
    v13 = 3;
  }

  else
  {
    if (v10 != 1)
    {
      _HKInitializeLogging();
      v17 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
      {
        sub_354C4(v11, v17);
      }

      goto LABEL_20;
    }

    v12 = _init;
    v13 = 2;
  }

LABEL_19:
  [v12 setMachineState:v13];
LABEL_20:
  v14 = _init;
LABEL_21:

  return v14;
}

- (id)description
{
  machineState = self->_machineState;
  if (machineState > 5)
  {
    v3 = &stru_5E418;
  }

  else
  {
    v3 = off_5D540[machineState];
  }

  uuid = [objc_opt_class() uuid];
  v5 = [NSString stringWithFormat:@"Fitness Machine Status(%@) %@", uuid, v3];

  return v5;
}

+ (id)unitTest_fakeStatusUpdateForState:(unint64_t)state
{
  _init = [(HDHealthServiceCharacteristic *)[HDFitnessMachineStatus alloc] _init];
  [_init setMachineState:state];

  return _init;
}

@end