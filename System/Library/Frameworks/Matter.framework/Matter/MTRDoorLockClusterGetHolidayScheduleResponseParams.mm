@interface MTRDoorLockClusterGetHolidayScheduleResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetHolidayScheduleResponseParams)init;
- (MTRDoorLockClusterGetHolidayScheduleResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetHolidayScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterGetHolidayScheduleResponseParams

- (MTRDoorLockClusterGetHolidayScheduleResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDoorLockClusterGetHolidayScheduleResponseParams;
  v2 = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    holidayIndex = v2->_holidayIndex;
    v2->_holidayIndex = &unk_284C3E4C8;

    status = v3->_status;
    v3->_status = &unk_284C3E4C8;

    localStartTime = v3->_localStartTime;
    v3->_localStartTime = 0;

    localEndTime = v3->_localEndTime;
    v3->_localEndTime = 0;

    operatingMode = v3->_operatingMode;
    v3->_operatingMode = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterGetHolidayScheduleResponseParams);
  holidayIndex = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self holidayIndex];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 setHolidayIndex:holidayIndex];

  status = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self status];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 setStatus:status];

  localStartTime = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self localStartTime];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 setLocalStartTime:localStartTime];

  localEndTime = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self localEndTime];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 setLocalEndTime:localEndTime];

  operatingMode = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self operatingMode];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 setOperatingMode:operatingMode];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: holidayIndex:%@ status:%@; localStartTime:%@; localEndTime:%@; operatingMode:%@; >", v5, self->_holidayIndex, self->_status, self->_localStartTime, self->_localEndTime, self->_operatingMode];;

  return v6;
}

- (MTRDoorLockClusterGetHolidayScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v18.receiver = self;
  v18.super_class = MTRDoorLockClusterGetHolidayScheduleResponseParams;
  v7 = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:257 commandID:18 error:error];
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 1), *(v17 + 3));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F11B84(v12, v16);
      if (!v8)
      {
        v8 = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRDoorLockClusterGetHolidayScheduleResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterGetHolidayScheduleResponseParams;
  v4 = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setHolidayIndex:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 1)];
  [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setStatus:v6];

  if (*(struct + 4) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(struct + 4)];
    [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setLocalStartTime:v7];
  }

  else
  {
    [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setLocalStartTime:0];
  }

  if (*(struct + 12) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(struct + 12)];
    [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setLocalEndTime:v8];
  }

  else
  {
    [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setLocalEndTime:0];
  }

  v10 = *(struct + 20);
  v9 = struct + 20;
  if (v10 == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v9)];
    [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setOperatingMode:v11];
  }

  else
  {
    [(MTRDoorLockClusterGetHolidayScheduleResponseParams *)self setOperatingMode:0];
  }

  v12 = 0;
  v13 = 0;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

@end