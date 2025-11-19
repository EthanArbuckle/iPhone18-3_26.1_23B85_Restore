@interface MTRPushAVStreamTransportClusterManuallyTriggerTransportParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRPushAVStreamTransportClusterManuallyTriggerTransportParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterManuallyTriggerTransportParams

- (MTRPushAVStreamTransportClusterManuallyTriggerTransportParams)init
{
  v11.receiver = self;
  v11.super_class = MTRPushAVStreamTransportClusterManuallyTriggerTransportParams;
  v2 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    connectionID = v2->_connectionID;
    v2->_connectionID = &unk_284C3E4C8;

    activationReason = v3->_activationReason;
    v3->_activationReason = &unk_284C3E4C8;

    timeControl = v3->_timeControl;
    v3->_timeControl = 0;

    userDefined = v3->_userDefined;
    v3->_userDefined = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams);
  v5 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self connectionID];
  [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)v4 setConnectionID:v5];

  v6 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self activationReason];
  [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)v4 setActivationReason:v6];

  v7 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timeControl];
  [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)v4 setTimeControl:v7];

  v8 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self userDefined];
  [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)v4 setUserDefined:v8];

  v9 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timedInvokeTimeoutMs];
  [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)v4 setTimedInvokeTimeoutMs:v9];

  v10 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self serverSideProcessingTimeout];
  [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)v4 setServerSideProcessingTimeout:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  connectionID = self->_connectionID;
  activationReason = self->_activationReason;
  timeControl = self->_timeControl;
  v9 = [(NSData *)self->_userDefined base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: connectionID:%@ activationReason:%@; timeControl:%@; userDefined:%@; >", v5, connectionID, activationReason, timeControl, v9];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v39 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v5 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self connectionID];
  v34 = [v5 unsignedShortValue];

  v6 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self activationReason];
  v35 = [v6 unsignedCharValue];

  v7 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timeControl];

  if (v7)
  {
    v36 = 1;
    v37 = 0;
    v38 = 0;
    v8 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timeControl];
    v9 = [v8 initialDuration];
    LOWORD(v37) = [v9 unsignedShortValue];

    v10 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timeControl];
    v11 = [v10 augmentationDuration];
    WORD1(v37) = [v11 unsignedShortValue];

    v12 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timeControl];
    v13 = [v12 maxDuration];
    HIDWORD(v37) = [v13 unsignedIntValue];

    v14 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self timeControl];
    v15 = [v14 blindDuration];
    LOWORD(v38) = [v15 unsignedShortValue];
  }

  v16 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self userDefined];

  if (v16)
  {
    v39 = 1;
    v40 = 0uLL;
    v17 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self userDefined];
    sub_238DB6950(v26, [v17 bytes], objc_msgSend(v17, "length"));

    v40 = v26[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v31);
  if (v31)
  {
    sub_2393C7B90(v26);
    v28 = 0;
    v29 = 0;
    v27 = &unk_284BB83A8;
    v30 = 0;
    sub_238EA16C4(&v27, &v31, 0);
    sub_2393C7BF0(v26, &v27, 0xFFFFFFFF);
    v18 = sub_238F24E60(&v34, v26, 0x100uLL);
    v20 = v18;
    if (v18 || (v18 = sub_238DD2EFC(v26, &v31), v20 = v18, v18))
    {
      v21 = v19;
    }

    else
    {
      sub_238DD2F90(a3, &v31);
      v18 = sub_2393C7114(a3, 21, 256);
      v21 = v25;
      v20 = v18;
    }

    v22 = v18 & 0xFFFFFFFF00000000;
    v27 = &unk_284BB83A8;
    sub_238EA1758(&v29);
    sub_238EA1758(&v28);
  }

  else
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v22 = 0x94F200000000;
    v20 = 11;
  }

  sub_238EA1758(&v31);
  sub_238EA1790(&v32);
  v23 = v22 | v20;
  v24 = v21;
  result.mFile = v24;
  result.mError = v23;
  result.mLine = HIDWORD(v23);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRPushAVStreamTransportClusterManuallyTriggerTransportParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x950F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end