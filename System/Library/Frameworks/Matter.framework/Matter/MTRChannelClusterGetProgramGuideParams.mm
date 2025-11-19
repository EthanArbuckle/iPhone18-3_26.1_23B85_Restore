@interface MTRChannelClusterGetProgramGuideParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRChannelClusterGetProgramGuideParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRChannelClusterGetProgramGuideParams

- (MTRChannelClusterGetProgramGuideParams)init
{
  v14.receiver = self;
  v14.super_class = MTRChannelClusterGetProgramGuideParams;
  v2 = [(MTRChannelClusterGetProgramGuideParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    startTime = v2->_startTime;
    v2->_startTime = 0;

    endTime = v3->_endTime;
    v3->_endTime = 0;

    channelList = v3->_channelList;
    v3->_channelList = 0;

    pageToken = v3->_pageToken;
    v3->_pageToken = 0;

    recordingFlag = v3->_recordingFlag;
    v3->_recordingFlag = 0;

    externalIDList = v3->_externalIDList;
    v3->_externalIDList = 0;

    data = v3->_data;
    v3->_data = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRChannelClusterGetProgramGuideParams);
  v5 = [(MTRChannelClusterGetProgramGuideParams *)self startTime];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setStartTime:v5];

  v6 = [(MTRChannelClusterGetProgramGuideParams *)self endTime];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setEndTime:v6];

  v7 = [(MTRChannelClusterGetProgramGuideParams *)self channelList];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setChannelList:v7];

  v8 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setPageToken:v8];

  v9 = [(MTRChannelClusterGetProgramGuideParams *)self recordingFlag];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setRecordingFlag:v9];

  v10 = [(MTRChannelClusterGetProgramGuideParams *)self externalIDList];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setExternalIDList:v10];

  v11 = [(MTRChannelClusterGetProgramGuideParams *)self data];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setData:v11];

  v12 = [(MTRChannelClusterGetProgramGuideParams *)self timedInvokeTimeoutMs];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setTimedInvokeTimeoutMs:v12];

  v13 = [(MTRChannelClusterGetProgramGuideParams *)self serverSideProcessingTimeout];
  [(MTRChannelClusterGetProgramGuideParams *)v4 setServerSideProcessingTimeout:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startTime = self->_startTime;
  endTime = self->_endTime;
  channelList = self->_channelList;
  pageToken = self->_pageToken;
  recordingFlag = self->_recordingFlag;
  externalIDList = self->_externalIDList;
  v12 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v13 = [v3 stringWithFormat:@"<%@: startTime:%@ endTime:%@; channelList:%@; pageToken:%@; recordingFlag:%@; externalIDList:%@; data:%@; >", v5, startTime, endTime, channelList, pageToken, recordingFlag, externalIDList, v12];;

  return v13;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v59 = 0;
  v61 = 0;
  v64 = 0;
  v68 = 0;
  v70 = 0;
  v73 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  v4 = [(MTRChannelClusterGetProgramGuideParams *)self startTime];
  v5 = v4 == 0;

  if (!v5)
  {
    v57[0] = 1;
    v58 = 0;
    v6 = [(MTRChannelClusterGetProgramGuideParams *)self startTime];
    v58 = [v6 unsignedIntValue];
  }

  v7 = [(MTRChannelClusterGetProgramGuideParams *)self endTime];
  v8 = v7 == 0;

  if (!v8)
  {
    v59 = 1;
    v60 = 0;
    v9 = [(MTRChannelClusterGetProgramGuideParams *)self endTime];
    v60 = [v9 unsignedIntValue];
  }

  v10 = [(MTRChannelClusterGetProgramGuideParams *)self channelList];
  v11 = v10 == 0;

  if (!v11)
  {
    v61 = 1;
    v62 = 0;
    v63 = 0;
    v12 = [(MTRChannelClusterGetProgramGuideParams *)self channelList];
    v13 = [v12 count] == 0;

    if (!v13)
    {
      operator new();
    }

    v62 = 0;
    v63 = 0;
  }

  v14 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
  v15 = v14 == 0;

  if (!v15)
  {
    v64 = 1;
    v65 = 0u;
    v66 = 0u;
    memset(v67, 0, sizeof(v67));
    v16 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
    v17 = [v16 limit];
    v18 = v17 == 0;

    if (!v18)
    {
      LOBYTE(v65) = 1;
      WORD1(v65) = 0;
      v19 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
      v20 = [v19 limit];
      WORD1(v65) = [v20 unsignedShortValue];
    }

    v21 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
    v22 = [v21 after];
    v23 = v22 == 0;

    if (!v23)
    {
      BYTE8(v65) = 1;
      v66 = 0uLL;
      v24 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
      v25 = [v24 after];
      v26 = v25;
      sub_238DB9BD8(buf, [v25 UTF8String], objc_msgSend(v25, "lengthOfBytesUsingEncoding:", 4));

      v66 = *buf;
    }

    v27 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
    v28 = [v27 before];
    v29 = v28 == 0;

    if (!v29)
    {
      v67[0] = 1;
      *&v67[8] = 0;
      *&v67[16] = 0;
      v30 = [(MTRChannelClusterGetProgramGuideParams *)self pageToken];
      v31 = [v30 before];
      v32 = v31;
      sub_238DB9BD8(buf, [v31 UTF8String], objc_msgSend(v31, "lengthOfBytesUsingEncoding:", 4));

      *&v67[8] = *buf;
    }
  }

  v33 = [(MTRChannelClusterGetProgramGuideParams *)self recordingFlag];
  v34 = v33 == 0;

  if (!v34)
  {
    v68 = 1;
    v69 = 0;
    v35 = [(MTRChannelClusterGetProgramGuideParams *)self recordingFlag];
    v69 = [v35 unsignedIntValue];
  }

  v36 = [(MTRChannelClusterGetProgramGuideParams *)self externalIDList];
  v37 = v36 == 0;

  if (!v37)
  {
    v70 = 1;
    v71 = 0;
    v72 = 0;
    v38 = [(MTRChannelClusterGetProgramGuideParams *)self externalIDList];
    v39 = [v38 count] == 0;

    if (!v39)
    {
      operator new();
    }

    v71 = 0;
    v72 = 0;
  }

  v40 = [(MTRChannelClusterGetProgramGuideParams *)self data];
  v41 = v40 == 0;

  if (!v41)
  {
    v73 = 1;
    v74 = 0uLL;
    v42 = [(MTRChannelClusterGetProgramGuideParams *)self data];
    v43 = v42;
    sub_238DB6950(buf, [v42 bytes], objc_msgSend(v42, "length"));

    v74 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v54);
  if (v54)
  {
    sub_2393C7B90(buf);
    v77 = 0;
    v78 = 0;
    v76 = &unk_284BB83A8;
    v79 = 0;
    sub_238EA16C4(&v76, &v54, 0);
    sub_2393C7BF0(buf, &v76, 0xFFFFFFFF);
    v44 = sub_238F05BE4(v57, buf, 0x100uLL);
    v46 = v44;
    if (v44 || (v44 = sub_238DD2EFC(buf, &v54), v46 = v44, v44))
    {
      v47 = v45;
    }

    else
    {
      sub_238DD2F90(a3, &v54);
      v44 = sub_2393C7114(a3, 21, 256);
      v47 = v52;
      v46 = v44;
    }

    v48 = v44 & 0xFFFFFFFF00000000;
    v76 = &unk_284BB83A8;
    sub_238EA1758(&v78);
    sub_238EA1758(&v77);
  }

  else
  {
    v47 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v48 = 0x6E0B00000000;
    v46 = 11;
  }

  sub_238EA1758(&v54);
  sub_238EA1790(&v55);
  v49 = *MEMORY[0x277D85DE8];
  v50 = v46 | v48;
  v51 = v47;
  result.mFile = v51;
  result.mError = v50;
  result.mLine = HIDWORD(v50);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRChannelClusterGetProgramGuideParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x6E2800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end