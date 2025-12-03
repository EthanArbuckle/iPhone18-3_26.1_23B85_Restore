@interface MTRDoorLockClusterGetYearDayScheduleResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetYearDayScheduleResponseParams)init;
- (MTRDoorLockClusterGetYearDayScheduleResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetYearDayScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterGetYearDayScheduleResponseParams

- (MTRDoorLockClusterGetYearDayScheduleResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDoorLockClusterGetYearDayScheduleResponseParams;
  v2 = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    yearDayIndex = v2->_yearDayIndex;
    v2->_yearDayIndex = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = &unk_284C3E4C8;

    status = v3->_status;
    v3->_status = &unk_284C3E4C8;

    localStartTime = v3->_localStartTime;
    v3->_localStartTime = 0;

    localEndTime = v3->_localEndTime;
    v3->_localEndTime = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterGetYearDayScheduleResponseParams);
  yearDayIndex = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self yearDayIndex];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 setYearDayIndex:yearDayIndex];

  userIndex = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self userIndex];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 setUserIndex:userIndex];

  status = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self status];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 setStatus:status];

  localStartTime = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self localStartTime];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 setLocalStartTime:localStartTime];

  localEndTime = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self localEndTime];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 setLocalEndTime:localEndTime];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: yearDayIndex:%@ userIndex:%@; status:%@; localStartTime:%@; localEndTime:%@; >", v5, self->_yearDayIndex, self->_userIndex, self->_status, self->_localStartTime, self->_localEndTime];;

  return v6;
}

- (MTRDoorLockClusterGetYearDayScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v19.receiver = self;
  v19.super_class = MTRDoorLockClusterGetYearDayScheduleResponseParams;
  v7 = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:257 commandID:15 error:error];
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v17, *(v18 + 1), *(v18 + 3));
    v8 = sub_2393C6FD0(v17, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v8 = sub_238F11820(v12, v17);
      if (!v8)
      {
        v8 = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v18);
LABEL_10:

  return v10;
}

- (MTRDoorLockClusterGetYearDayScheduleResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterGetYearDayScheduleResponseParams;
  v4 = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setYearDayIndex:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 1)];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setUserIndex:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 4)];
  [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setStatus:v7];

  if (*(struct + 8) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(struct + 8)];
    [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setLocalStartTime:v8];
  }

  else
  {
    [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setLocalStartTime:0];
  }

  v10 = *(struct + 16);
  v9 = struct + 16;
  if (v10 == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v9)];
    [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setLocalEndTime:v11];
  }

  else
  {
    [(MTRDoorLockClusterGetYearDayScheduleResponseParams *)self setLocalEndTime:0];
  }

  v12 = 0;
  v13 = 0;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

@end