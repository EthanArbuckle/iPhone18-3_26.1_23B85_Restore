@interface MTRChannelClusterRecordProgramParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRChannelClusterRecordProgramParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterRecordProgramParams

- (MTRChannelClusterRecordProgramParams)init
{
  v13.receiver = self;
  v13.super_class = MTRChannelClusterRecordProgramParams;
  v2 = [(MTRChannelClusterRecordProgramParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    programIdentifier = v2->_programIdentifier;
    v2->_programIdentifier = &stru_284BD0DD8;

    shouldRecordSeries = v3->_shouldRecordSeries;
    v3->_shouldRecordSeries = &unk_284C3E4C8;

    array = [MEMORY[0x277CBEA60] array];
    externalIDList = v3->_externalIDList;
    v3->_externalIDList = array;

    data = [MEMORY[0x277CBEA90] data];
    data = v3->_data;
    v3->_data = data;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterRecordProgramParams);
  programIdentifier = [(MTRChannelClusterRecordProgramParams *)self programIdentifier];
  [(MTRChannelClusterRecordProgramParams *)v4 setProgramIdentifier:programIdentifier];

  shouldRecordSeries = [(MTRChannelClusterRecordProgramParams *)self shouldRecordSeries];
  [(MTRChannelClusterRecordProgramParams *)v4 setShouldRecordSeries:shouldRecordSeries];

  externalIDList = [(MTRChannelClusterRecordProgramParams *)self externalIDList];
  [(MTRChannelClusterRecordProgramParams *)v4 setExternalIDList:externalIDList];

  data = [(MTRChannelClusterRecordProgramParams *)self data];
  [(MTRChannelClusterRecordProgramParams *)v4 setData:data];

  timedInvokeTimeoutMs = [(MTRChannelClusterRecordProgramParams *)self timedInvokeTimeoutMs];
  [(MTRChannelClusterRecordProgramParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRChannelClusterRecordProgramParams *)self serverSideProcessingTimeout];
  [(MTRChannelClusterRecordProgramParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  programIdentifier = self->_programIdentifier;
  shouldRecordSeries = self->_shouldRecordSeries;
  externalIDList = self->_externalIDList;
  v9 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: programIdentifier:%@ shouldRecordSeries:%@; externalIDList:%@; data:%@; >", v5, programIdentifier, shouldRecordSeries, externalIDList, v9];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0uLL;
  bOOLValue = 0;
  v26 = 0u;
  v27 = 0u;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  programIdentifier = [(MTRChannelClusterRecordProgramParams *)self programIdentifier];
  v5 = programIdentifier;
  sub_238DB9BD8(buf, [programIdentifier UTF8String], objc_msgSend(programIdentifier, "lengthOfBytesUsingEncoding:", 4));

  v24 = *buf;
  shouldRecordSeries = [(MTRChannelClusterRecordProgramParams *)self shouldRecordSeries];
  bOOLValue = [shouldRecordSeries BOOLValue];

  externalIDList = [(MTRChannelClusterRecordProgramParams *)self externalIDList];
  v8 = [externalIDList count] == 0;

  if (!v8)
  {
    operator new();
  }

  v26 = 0uLL;
  data = [(MTRChannelClusterRecordProgramParams *)self data];
  v10 = data;
  sub_238DB6950(buf, [data bytes], objc_msgSend(data, "length"));

  v27 = *buf;
  sub_2393D9C18(0x62FuLL, 0, &v21);
  if (v21)
  {
    sub_2393C7B90(buf);
    v30 = 0;
    v31 = 0;
    v29 = &unk_284BB83A8;
    v32 = 0;
    sub_238EA16C4(&v29, &v21, 0);
    sub_2393C7BF0(buf, &v29, 0xFFFFFFFF);
    v11 = sub_238F06020(&v24, buf, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(buf, &v21), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v21);
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
    v15 = 0x704800000000;
    v13 = 11;
  }

  sub_238EA1758(&v21);
  sub_238EA1790(&v22);
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
  v7 = [(MTRChannelClusterRecordProgramParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x706500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end