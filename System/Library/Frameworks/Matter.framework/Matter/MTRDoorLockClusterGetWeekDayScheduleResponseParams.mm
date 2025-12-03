@interface MTRDoorLockClusterGetWeekDayScheduleResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetWeekDayScheduleResponseParams)init;
- (MTRDoorLockClusterGetWeekDayScheduleResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetWeekDayScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterGetWeekDayScheduleResponseParams

- (MTRDoorLockClusterGetWeekDayScheduleResponseParams)init
{
  v14.receiver = self;
  v14.super_class = MTRDoorLockClusterGetWeekDayScheduleResponseParams;
  v2 = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    weekDayIndex = v2->_weekDayIndex;
    v2->_weekDayIndex = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = &unk_284C3E4C8;

    status = v3->_status;
    v3->_status = &unk_284C3E4C8;

    daysMask = v3->_daysMask;
    v3->_daysMask = 0;

    startHour = v3->_startHour;
    v3->_startHour = 0;

    startMinute = v3->_startMinute;
    v3->_startMinute = 0;

    endHour = v3->_endHour;
    v3->_endHour = 0;

    endMinute = v3->_endMinute;
    v3->_endMinute = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterGetWeekDayScheduleResponseParams);
  weekDayIndex = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self weekDayIndex];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setWeekDayIndex:weekDayIndex];

  userIndex = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self userIndex];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setUserIndex:userIndex];

  status = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self status];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setStatus:status];

  daysMask = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self daysMask];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setDaysMask:daysMask];

  startHour = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self startHour];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setStartHour:startHour];

  startMinute = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self startMinute];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setStartMinute:startMinute];

  endHour = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self endHour];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setEndHour:endHour];

  endMinute = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self endMinute];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setEndMinute:endMinute];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: weekDayIndex:%@ userIndex:%@; status:%@; daysMask:%@; startHour:%@; startMinute:%@; endHour:%@; endMinute:%@; >", v5, self->_weekDayIndex, self->_userIndex, self->_status, self->_daysMask, self->_startHour, self->_startMinute, self->_endHour, self->_endMinute];;

  return v6;
}

- (MTRDoorLockClusterGetWeekDayScheduleResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v20.receiver = self;
  v20.super_class = MTRDoorLockClusterGetWeekDayScheduleResponseParams;
  v7 = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)&v20 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:257 commandID:12 error:error];
  if (v19)
  {
    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, *(v19 + 1), *(v19 + 3));
    v8 = sub_2393C6FD0(v18, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v8 = sub_238F11418(v12, v18);
      if (!v8)
      {
        v8 = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v19);
LABEL_10:

  return v10;
}

- (MTRDoorLockClusterGetWeekDayScheduleResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterGetWeekDayScheduleResponseParams;
  v4 = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setWeekDayIndex:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 1)];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setUserIndex:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 4)];
  [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setStatus:v7];

  if (*(struct + 5) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(struct + 5)];
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setDaysMask:v8];
  }

  else
  {
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setDaysMask:0];
  }

  if (*(struct + 7) == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(struct + 7)];
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setStartHour:v9];
  }

  else
  {
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setStartHour:0];
  }

  if (*(struct + 9) == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(struct + 9)];
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setStartMinute:v10];
  }

  else
  {
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setStartMinute:0];
  }

  if (*(struct + 11) == 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(struct + 11)];
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setEndHour:v11];
  }

  else
  {
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setEndHour:0];
  }

  v13 = *(struct + 13);
  v12 = struct + 13;
  if (v13 == 1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v12)];
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setEndMinute:v14];
  }

  else
  {
    [(MTRDoorLockClusterGetWeekDayScheduleResponseParams *)self setEndMinute:0];
  }

  v15 = 0;
  v16 = 0;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

@end