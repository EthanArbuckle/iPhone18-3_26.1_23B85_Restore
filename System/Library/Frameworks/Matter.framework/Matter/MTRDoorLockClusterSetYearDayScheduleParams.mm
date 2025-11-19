@interface MTRDoorLockClusterSetYearDayScheduleParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDoorLockClusterSetYearDayScheduleParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterSetYearDayScheduleParams

- (MTRDoorLockClusterSetYearDayScheduleParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDoorLockClusterSetYearDayScheduleParams;
  v2 = [(MTRDoorLockClusterSetYearDayScheduleParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    yearDayIndex = v2->_yearDayIndex;
    v2->_yearDayIndex = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = &unk_284C3E4C8;

    localStartTime = v3->_localStartTime;
    v3->_localStartTime = &unk_284C3E4C8;

    localEndTime = v3->_localEndTime;
    v3->_localEndTime = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetYearDayScheduleParams);
  v5 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self yearDayIndex];
  [(MTRDoorLockClusterSetYearDayScheduleParams *)v4 setYearDayIndex:v5];

  v6 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self userIndex];
  [(MTRDoorLockClusterSetYearDayScheduleParams *)v4 setUserIndex:v6];

  v7 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self localStartTime];
  [(MTRDoorLockClusterSetYearDayScheduleParams *)v4 setLocalStartTime:v7];

  v8 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self localEndTime];
  [(MTRDoorLockClusterSetYearDayScheduleParams *)v4 setLocalEndTime:v8];

  v9 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetYearDayScheduleParams *)v4 setTimedInvokeTimeoutMs:v9];

  v10 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetYearDayScheduleParams *)v4 setServerSideProcessingTimeout:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: yearDayIndex:%@ userIndex:%@; localStartTime:%@; localEndTime:%@; >", v5, self->_yearDayIndex, self->_userIndex, self->_localStartTime, self->_localEndTime];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v25[0] = 0;
  v26 = 0;
  v27 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v5 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self yearDayIndex];
  v25[0] = [v5 unsignedCharValue];

  v6 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self userIndex];
  v26 = [v6 unsignedShortValue];

  v7 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self localStartTime];
  LODWORD(v27) = [v7 unsignedIntValue];

  v8 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self localEndTime];
  HIDWORD(v27) = [v8 unsignedIntValue];

  sub_2393D9C18(0x62FuLL, 0, &v22);
  if (v22)
  {
    sub_2393C7B90(v17);
    v19 = 0;
    v20 = 0;
    v18 = &unk_284BB83A8;
    v21 = 0;
    sub_238EA16C4(&v18, &v22, 0);
    sub_2393C7BF0(v17, &v18, 0xFFFFFFFF);
    v9 = sub_238F115DC(v25, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(a3, &v22);
      v9 = sub_2393C7114(a3, 21, 256);
      v12 = v16;
      v11 = v9;
    }

    v13 = v9 & 0xFFFFFFFF00000000;
    v18 = &unk_284BB83A8;
    sub_238EA1758(&v20);
    sub_238EA1758(&v19);
  }

  else
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v13 = 0x4D0600000000;
    v11 = 11;
  }

  sub_238EA1758(&v22);
  sub_238EA1790(&v23);
  v14 = v13 | v11;
  v15 = v12;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterSetYearDayScheduleParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x4D2300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end