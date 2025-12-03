@interface MTRMessagesClusterPresentMessagesRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRMessagesClusterPresentMessagesRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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
    data = [MEMORY[0x277CBEA90] data];
    messageID = v2->_messageID;
    v2->_messageID = data;

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMessagesClusterPresentMessagesRequestParams);
  messageID = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageID];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setMessageID:messageID];

  priority = [(MTRMessagesClusterPresentMessagesRequestParams *)self priority];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setPriority:priority];

  messageControl = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageControl];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setMessageControl:messageControl];

  startTime = [(MTRMessagesClusterPresentMessagesRequestParams *)self startTime];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setStartTime:startTime];

  duration = [(MTRMessagesClusterPresentMessagesRequestParams *)self duration];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setDuration:duration];

  messageText = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageText];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setMessageText:messageText];

  responses = [(MTRMessagesClusterPresentMessagesRequestParams *)self responses];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setResponses:responses];

  timedInvokeTimeoutMs = [(MTRMessagesClusterPresentMessagesRequestParams *)self timedInvokeTimeoutMs];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRMessagesClusterPresentMessagesRequestParams *)self serverSideProcessingTimeout];
  [(MTRMessagesClusterPresentMessagesRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v48 = *MEMORY[0x277D85DE8];
  LOBYTE(unsignedIntValue) = 0;
  v36 = 0;
  LOBYTE(unsignedLongLongValue) = 0;
  v38 = 0;
  v33 = 0uLL;
  v34 = 0;
  v39 = 0uLL;
  v40 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  messageID = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageID];
  v5 = messageID;
  sub_238DB6950(buf, [messageID bytes], objc_msgSend(messageID, "length"));

  v33 = *buf;
  priority = [(MTRMessagesClusterPresentMessagesRequestParams *)self priority];
  LOBYTE(v34) = [priority unsignedCharValue];

  messageControl = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageControl];
  HIBYTE(v34) = [messageControl unsignedCharValue];

  startTime = [(MTRMessagesClusterPresentMessagesRequestParams *)self startTime];
  v9 = startTime == 0;

  if (!v9)
  {
    unsignedIntValue = 0;
    v36 = 1;
    startTime2 = [(MTRMessagesClusterPresentMessagesRequestParams *)self startTime];
    unsignedIntValue = [startTime2 unsignedIntValue];
  }

  duration = [(MTRMessagesClusterPresentMessagesRequestParams *)self duration];
  v12 = duration == 0;

  if (!v12)
  {
    unsignedLongLongValue = 0;
    v38 = 1;
    duration2 = [(MTRMessagesClusterPresentMessagesRequestParams *)self duration];
    unsignedLongLongValue = [duration2 unsignedLongLongValue];
  }

  messageText = [(MTRMessagesClusterPresentMessagesRequestParams *)self messageText];
  v15 = messageText;
  sub_238DB9BD8(buf, [messageText UTF8String], objc_msgSend(messageText, "lengthOfBytesUsingEncoding:", 4));

  v39 = *buf;
  responses = [(MTRMessagesClusterPresentMessagesRequestParams *)self responses];
  v17 = responses == 0;

  if (!v17)
  {
    v40 = 1;
    v41 = 0;
    v42 = 0;
    responses2 = [(MTRMessagesClusterPresentMessagesRequestParams *)self responses];
    v19 = [responses2 count] == 0;

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
      sub_238DD2F90(reader, &v30);
      v20 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRMessagesClusterPresentMessagesRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x41D700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end