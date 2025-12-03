@interface MTRThermostatClusterAtomicRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRThermostatClusterAtomicRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterAtomicRequestParams

- (MTRThermostatClusterAtomicRequestParams)init
{
  v11.receiver = self;
  v11.super_class = MTRThermostatClusterAtomicRequestParams;
  v2 = [(MTRThermostatClusterAtomicRequestParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    requestType = v2->_requestType;
    v2->_requestType = &unk_284C3E4C8;

    array = [MEMORY[0x277CBEA60] array];
    attributeRequests = v3->_attributeRequests;
    v3->_attributeRequests = array;

    timeout = v3->_timeout;
    v3->_timeout = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterAtomicRequestParams);
  requestType = [(MTRThermostatClusterAtomicRequestParams *)self requestType];
  [(MTRThermostatClusterAtomicRequestParams *)v4 setRequestType:requestType];

  attributeRequests = [(MTRThermostatClusterAtomicRequestParams *)self attributeRequests];
  [(MTRThermostatClusterAtomicRequestParams *)v4 setAttributeRequests:attributeRequests];

  timeout = [(MTRThermostatClusterAtomicRequestParams *)self timeout];
  [(MTRThermostatClusterAtomicRequestParams *)v4 setTimeout:timeout];

  timedInvokeTimeoutMs = [(MTRThermostatClusterAtomicRequestParams *)self timedInvokeTimeoutMs];
  [(MTRThermostatClusterAtomicRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRThermostatClusterAtomicRequestParams *)self serverSideProcessingTimeout];
  [(MTRThermostatClusterAtomicRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: requestType:%@ attributeRequests:%@; timeout:%@; >", v5, self->_requestType, self->_attributeRequests, self->_timeout];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v33 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  requestType = [(MTRThermostatClusterAtomicRequestParams *)self requestType];
  v23[0] = [requestType unsignedCharValue];

  attributeRequests = [(MTRThermostatClusterAtomicRequestParams *)self attributeRequests];
  v7 = [attributeRequests count] == 0;

  if (!v7)
  {
    operator new();
  }

  v24 = 0;
  v25 = 0;
  timeout = [(MTRThermostatClusterAtomicRequestParams *)self timeout];
  v9 = timeout == 0;

  if (!v9)
  {
    v26 = 1;
    unsignedShortValue = 0;
    timeout2 = [(MTRThermostatClusterAtomicRequestParams *)self timeout];
    unsignedShortValue = [timeout2 unsignedShortValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v20);
  if (v20)
  {
    sub_2393C7B90(buf);
    v30 = 0;
    v31 = 0;
    v29 = &unk_284BB83A8;
    v32 = 0;
    sub_238EA16C4(&v29, &v20, 0);
    sub_2393C7BF0(buf, &v29, 0xFFFFFFFF);
    v11 = sub_238F2A218(v23, buf, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(buf, &v20), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v20);
      v11 = sub_2393C7114(reader, 21, 256);
      v14 = v19;
      v13 = v11;
    }

    v15 = v11 & 0xFFFFFFFF00000000;
    v29 = &unk_284BB83A8;
    sub_238EA1758(&v31);
    sub_238EA1758(&v30);
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v15 = 0x606600000000;
    v13 = 11;
  }

  sub_238EA1758(&v20);
  sub_238EA1790(&v21);
  v16 = *MEMORY[0x277D85DE8];
  v17 = v15 | v13;
  v18 = v14;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRThermostatClusterAtomicRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x608300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end