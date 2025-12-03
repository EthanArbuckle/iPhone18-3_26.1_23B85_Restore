@interface MTRDoorLockClusterSetHolidayScheduleParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDoorLockClusterSetHolidayScheduleParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterSetHolidayScheduleParams

- (MTRDoorLockClusterSetHolidayScheduleParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDoorLockClusterSetHolidayScheduleParams;
  v2 = [(MTRDoorLockClusterSetHolidayScheduleParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    holidayIndex = v2->_holidayIndex;
    v2->_holidayIndex = &unk_284C3E4C8;

    localStartTime = v3->_localStartTime;
    v3->_localStartTime = &unk_284C3E4C8;

    localEndTime = v3->_localEndTime;
    v3->_localEndTime = &unk_284C3E4C8;

    operatingMode = v3->_operatingMode;
    v3->_operatingMode = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetHolidayScheduleParams);
  holidayIndex = [(MTRDoorLockClusterSetHolidayScheduleParams *)self holidayIndex];
  [(MTRDoorLockClusterSetHolidayScheduleParams *)v4 setHolidayIndex:holidayIndex];

  localStartTime = [(MTRDoorLockClusterSetHolidayScheduleParams *)self localStartTime];
  [(MTRDoorLockClusterSetHolidayScheduleParams *)v4 setLocalStartTime:localStartTime];

  localEndTime = [(MTRDoorLockClusterSetHolidayScheduleParams *)self localEndTime];
  [(MTRDoorLockClusterSetHolidayScheduleParams *)v4 setLocalEndTime:localEndTime];

  operatingMode = [(MTRDoorLockClusterSetHolidayScheduleParams *)self operatingMode];
  [(MTRDoorLockClusterSetHolidayScheduleParams *)v4 setOperatingMode:operatingMode];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetHolidayScheduleParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetHolidayScheduleParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDoorLockClusterSetHolidayScheduleParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetHolidayScheduleParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: holidayIndex:%@ localStartTime:%@; localEndTime:%@; operatingMode:%@; >", v5, self->_holidayIndex, self->_localStartTime, self->_localEndTime, self->_operatingMode];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v25[0] = 0;
  v26 = 0;
  unsignedCharValue = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  holidayIndex = [(MTRDoorLockClusterSetHolidayScheduleParams *)self holidayIndex];
  v25[0] = [holidayIndex unsignedCharValue];

  localStartTime = [(MTRDoorLockClusterSetHolidayScheduleParams *)self localStartTime];
  LODWORD(v26) = [localStartTime unsignedIntValue];

  localEndTime = [(MTRDoorLockClusterSetHolidayScheduleParams *)self localEndTime];
  HIDWORD(v26) = [localEndTime unsignedIntValue];

  operatingMode = [(MTRDoorLockClusterSetHolidayScheduleParams *)self operatingMode];
  unsignedCharValue = [operatingMode unsignedCharValue];

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
    v9 = sub_238F11924(v25, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(reader, &v22);
      v9 = sub_2393C7114(reader, 21, 256);
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
    v13 = 0x4E8C00000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterSetHolidayScheduleParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x4EA900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end