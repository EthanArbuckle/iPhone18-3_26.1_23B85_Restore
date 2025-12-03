@interface MTRDiagnosticLogsClusterRetrieveLogsRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDiagnosticLogsClusterRetrieveLogsRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDiagnosticLogsClusterRetrieveLogsRequestParams

- (MTRDiagnosticLogsClusterRetrieveLogsRequestParams)init
{
  v10.receiver = self;
  v10.super_class = MTRDiagnosticLogsClusterRetrieveLogsRequestParams;
  v2 = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    intent = v2->_intent;
    v2->_intent = &unk_284C3E4C8;

    requestedProtocol = v3->_requestedProtocol;
    v3->_requestedProtocol = &unk_284C3E4C8;

    transferFileDesignator = v3->_transferFileDesignator;
    v3->_transferFileDesignator = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDiagnosticLogsClusterRetrieveLogsRequestParams);
  intent = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self intent];
  [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v4 setIntent:intent];

  requestedProtocol = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self requestedProtocol];
  [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v4 setRequestedProtocol:requestedProtocol];

  transferFileDesignator = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self transferFileDesignator];
  [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v4 setTransferFileDesignator:transferFileDesignator];

  timedInvokeTimeoutMs = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self timedInvokeTimeoutMs];
  [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self serverSideProcessingTimeout];
  [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: intent:%@ requestedProtocol:%@; transferFileDesignator:%@; >", v5, self->_intent, self->_requestedProtocol, self->_transferFileDesignator];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  *v25 = 0;
  v26 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  intent = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self intent];
  v25[0] = [intent unsignedCharValue];

  requestedProtocol = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self requestedProtocol];
  v25[1] = [requestedProtocol unsignedCharValue];

  transferFileDesignator = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self transferFileDesignator];

  if (transferFileDesignator)
  {
    v26 = 1;
    v27 = 0uLL;
    transferFileDesignator2 = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self transferFileDesignator];
    sub_238DB9BD8(v17, [transferFileDesignator2 UTF8String], objc_msgSend(transferFileDesignator2, "lengthOfBytesUsingEncoding:", 4));

    v27 = v17[0];
  }

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
    v9 = sub_238F100EC(v25, v17, 0x100uLL);
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
    v13 = 0x1A0400000000;
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
  v7 = [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x1A2100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end