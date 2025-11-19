@interface MTRDoorLockClusterSetWeekDayScheduleParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDoorLockClusterSetWeekDayScheduleParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterSetWeekDayScheduleParams

- (MTRDoorLockClusterSetWeekDayScheduleParams)init
{
  v14.receiver = self;
  v14.super_class = MTRDoorLockClusterSetWeekDayScheduleParams;
  v2 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    weekDayIndex = v2->_weekDayIndex;
    v2->_weekDayIndex = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = &unk_284C3E4C8;

    daysMask = v3->_daysMask;
    v3->_daysMask = &unk_284C3E4C8;

    startHour = v3->_startHour;
    v3->_startHour = &unk_284C3E4C8;

    startMinute = v3->_startMinute;
    v3->_startMinute = &unk_284C3E4C8;

    endHour = v3->_endHour;
    v3->_endHour = &unk_284C3E4C8;

    endMinute = v3->_endMinute;
    v3->_endMinute = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetWeekDayScheduleParams);
  v5 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self weekDayIndex];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setWeekDayIndex:v5];

  v6 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self userIndex];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setUserIndex:v6];

  v7 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self daysMask];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setDaysMask:v7];

  v8 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self startHour];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setStartHour:v8];

  v9 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self startMinute];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setStartMinute:v9];

  v10 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self endHour];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setEndHour:v10];

  v11 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self endMinute];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setEndMinute:v11];

  v12 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setTimedInvokeTimeoutMs:v12];

  v13 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetWeekDayScheduleParams *)v4 setServerSideProcessingTimeout:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: weekDayIndex:%@ userIndex:%@; daysMask:%@; startHour:%@; startMinute:%@; endHour:%@; endMinute:%@; >", v5, self->_weekDayIndex, self->_userIndex, self->_daysMask, self->_startHour, self->_startMinute, self->_endHour, self->_endMinute];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  LOBYTE(v28[0]) = 0;
  memset(&v28[1], 0, 7);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v5 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self weekDayIndex];
  LOBYTE(v28[0]) = [v5 unsignedCharValue];

  v6 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self userIndex];
  v28[1] = [v6 unsignedShortValue];

  v7 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self daysMask];
  LOBYTE(v28[2]) = [v7 unsignedCharValue];

  v8 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self startHour];
  HIBYTE(v28[2]) = [v8 unsignedCharValue];

  v9 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self startMinute];
  LOBYTE(v28[3]) = [v9 unsignedCharValue];

  v10 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self endHour];
  HIBYTE(v28[3]) = [v10 unsignedCharValue];

  v11 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self endMinute];
  LOBYTE(v28[4]) = [v11 unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v25);
  if (v25)
  {
    sub_2393C7B90(v20);
    v22 = 0;
    v23 = 0;
    v21 = &unk_284BB83A8;
    v24 = 0;
    sub_238EA16C4(&v21, &v25, 0);
    sub_2393C7BF0(v20, &v21, 0xFFFFFFFF);
    v12 = sub_238F10FF8(v28, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(a3, &v25);
      v12 = sub_2393C7114(a3, 21, 256);
      v15 = v19;
      v14 = v12;
    }

    v16 = v12 & 0xFFFFFFFF00000000;
    v21 = &unk_284BB83A8;
    sub_238EA1758(&v23);
    sub_238EA1758(&v22);
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v16 = 0x4B6200000000;
    v14 = 11;
  }

  sub_238EA1758(&v25);
  sub_238EA1790(&v26);
  v17 = v14 | v16;
  v18 = v15;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x4B7F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end