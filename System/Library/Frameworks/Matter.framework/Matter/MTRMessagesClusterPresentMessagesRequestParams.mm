@interface MTRMessagesClusterPresentMessagesRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRMessagesClusterPresentMessagesRequestParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRMessagesClusterPresentMessagesRequestParams

- (MTRMessagesClusterPresentMessagesRequestParams)init
{
  v14.receiver = self;
  v14.super_class = MTRMessagesClusterPresentMessagesRequestParams;
  v2 = [(MTRMessagesClusterPresentMessagesRequestParams *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    messageID = v2->_messageID;
    v2->_messageID = v3;

    priority = v2->_priority;
    v2->_priority = &unk_284C3E4C8;

    messageControl = v2->_messageControl;
    v2->_messageControl = &unk_284C3E4C8;

    startTime = v2->_startTime;
    v2->_startTime = 0;

    duration = v2->_duration;
    v2->_duration = 0;

    messageText = v2->_messageText;
    v2->_messageText = &stru_284BD0DD8;

    responses = v2->_responses;
    v2->_responses = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRMessagesClusterPresentMessagesRequestParams);
  v5 = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageID];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setMessageID:v5];

  v6 = [(MTRMessagesClusterPresentMessagesRequestParams *)self priority];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setPriority:v6];

  v7 = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageControl];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setMessageControl:v7];

  v8 = [(MTRMessagesClusterPresentMessagesRequestParams *)self startTime];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setStartTime:v8];

  v9 = [(MTRMessagesClusterPresentMessagesRequestParams *)self duration];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setDuration:v9];

  v10 = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageText];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setMessageText:v10];

  v11 = [(MTRMessagesClusterPresentMessagesRequestParams *)self responses];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setResponses:v11];

  v12 = [(MTRMessagesClusterPresentMessagesRequestParams *)self timedInvokeTimeoutMs];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setTimedInvokeTimeoutMs:v12];

  v13 = [(MTRMessagesClusterPresentMessagesRequestParams *)self serverSideProcessingTimeout];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setServerSideProcessingTimeout:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_messageID base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: messageID:%@ priority:%@; messageControl:%@; startTime:%@; duration:%@; messageText:%@; responses:%@; >", v5, v6, self->_priority, self->_messageControl, self->_startTime, self->_duration, self->_messageText, self->_responses];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v48 = *MEMORY[0x277D85DE8];
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  v33 = 0uLL;
  v34 = 0;
  v39 = 0uLL;
  v40 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  v4 = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageID];
  v5 = v4;
  sub_238DB6950(buf, [v4 bytes], objc_msgSend(v4, "length"));

  v33 = *buf;
  v6 = [(MTRMessagesClusterPresentMessagesRequestParams *)self priority];
  LOBYTE(v34) = [v6 unsignedCharValue];

  v7 = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageControl];
  HIBYTE(v34) = [v7 unsignedCharValue];

  v8 = [(MTRMessagesClusterPresentMessagesRequestParams *)self startTime];
  v9 = v8 == 0;

  if (!v9)
  {
    v35 = 0;
    v36 = 1;
    v10 = [(MTRMessagesClusterPresentMessagesRequestParams *)self startTime];
    v35 = [v10 unsignedIntValue];
  }

  v11 = [(MTRMessagesClusterPresentMessagesRequestParams *)self duration];
  v12 = v11 == 0;

  if (!v12)
  {
    v37 = 0;
    v38 = 1;
    v13 = [(MTRMessagesClusterPresentMessagesRequestParams *)self duration];
    v37 = [v13 unsignedLongLongValue];
  }

  v14 = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageText];
  v15 = v14;
  sub_238DB9BD8(buf, [v14 UTF8String], objc_msgSend(v14, "lengthOfBytesUsingEncoding:", 4));

  v39 = *buf;
  v16 = [(MTRMessagesClusterPresentMessagesRequestParams *)self responses];
  v17 = v16 == 0;

  if (!v17)
  {
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v18 = [(MTRMessagesClusterPresentMessagesRequestParams *)self responses];
    v19 = [v18 count] == 0;

    if (!v19)
    {
      operator new();
    }

    v41 = 0;
    v42 = 0;
  }

  sub_2393D9C18(0x62FuLL, 0, &v30);
  if (v30)
  {
    sub_2393C7B90(buf);
    v45 = 0;
    v46 = 0;
    v44 = &unk_284BB83A8;
    v47 = 0;
    sub_238EA16C4(&v44, &v30, 0);
    sub_2393C7BF0(buf, &v44, 0xFFFFFFFF);
    v20 = sub_238F1EAA4(&v33, buf, 0x100uLL);
    v22 = v20;
    if (v20 || (v20 = sub_238DD2EFC(buf, &v30), v22 = v20, v20))
    {
      v23 = v21;
    }

    else
    {
      sub_238DD2F90(a3, &v30);
      v20 = sub_2393C7114(a3, 21, 256);
      v23 = v28;
      v22 = v20;
    }

    v24 = v20 & 0xFFFFFFFF00000000;
    v44 = &unk_284BB83A8;
    sub_238EA1758(&v46);
    sub_238EA1758(&v45);
  }

  else
  {
    v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v24 = 0x41BA00000000;
    v22 = 11;
  }

  sub_238EA1758(&v30);
  sub_238EA1790(&v31);
  v25 = *MEMORY[0x277D85DE8];
  v26 = v22 | v24;
  v27 = v23;
  result.mFile = v27;
  result.mError = v26;
  result.mLine = HIDWORD(v26);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRMessagesClusterPresentMessagesRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x41D700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end