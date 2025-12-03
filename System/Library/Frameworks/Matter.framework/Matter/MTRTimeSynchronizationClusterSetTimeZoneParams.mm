@interface MTRTimeSynchronizationClusterSetTimeZoneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRTimeSynchronizationClusterSetTimeZoneParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterSetTimeZoneParams

- (MTRTimeSynchronizationClusterSetTimeZoneParams)init
{
  v8.receiver = self;
  v8.super_class = MTRTimeSynchronizationClusterSetTimeZoneParams;
  v2 = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    timeZone = v2->_timeZone;
    v2->_timeZone = array;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterSetTimeZoneParams);
  timeZone = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)self timeZone];
  [(MTRTimeSynchronizationClusterSetTimeZoneParams *)v4 setTimeZone:timeZone];

  timedInvokeTimeoutMs = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)self timedInvokeTimeoutMs];
  [(MTRTimeSynchronizationClusterSetTimeZoneParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)self serverSideProcessingTimeout];
  [(MTRTimeSynchronizationClusterSetTimeZoneParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: timeZone:%@ >", v5, self->_timeZone];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0uLL;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  timeZone = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)self timeZone];
  v4 = [timeZone count] == 0;

  if (!v4)
  {
    operator new();
  }

  v18 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v15);
  if (v15)
  {
    sub_2393C7B90(buf);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v15, 0);
    sub_2393C7BF0(buf, &v20, 0xFFFFFFFF);
    v5 = sub_238F2D604(&v18, buf, 0x100uLL);
    v7 = v5;
    if (v5 || (v5 = sub_238DD2EFC(buf, &v15), v7 = v5, v5))
    {
      v8 = v6;
    }

    else
    {
      sub_238DD2F90(reader, &v15);
      v5 = sub_2393C7114(reader, 21, 256);
      v8 = v13;
      v7 = v5;
    }

    v9 = v5 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v9 = 0x1E8D00000000;
    v7 = 11;
  }

  sub_238EA1758(&v15);
  sub_238EA1790(&v16);
  v10 = *MEMORY[0x277D85DE8];
  v11 = v9 | v7;
  v12 = v8;
  result.mFile = v12;
  result.mError = v11;
  result.mLine = HIDWORD(v11);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x1EAA00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end