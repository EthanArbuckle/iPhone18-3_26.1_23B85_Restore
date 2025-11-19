@interface MTRContentLauncherClusterLaunchContentParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRContentLauncherClusterLaunchContentParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRContentLauncherClusterLaunchContentParams

- (MTRContentLauncherClusterLaunchContentParams)init
{
  v12.receiver = self;
  v12.super_class = MTRContentLauncherClusterLaunchContentParams;
  v2 = [(MTRContentLauncherClusterLaunchContentParams *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    search = v2->_search;
    v2->_search = v3;

    autoPlay = v2->_autoPlay;
    v2->_autoPlay = &unk_284C3E4C8;

    data = v2->_data;
    v2->_data = 0;

    playbackPreferences = v2->_playbackPreferences;
    v2->_playbackPreferences = 0;

    useCurrentContext = v2->_useCurrentContext;
    v2->_useCurrentContext = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRContentLauncherClusterLaunchContentParams);
  v5 = [(MTRContentLauncherClusterLaunchContentParams *)self search];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setSearch:v5];

  v6 = [(MTRContentLauncherClusterLaunchContentParams *)self autoPlay];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setAutoPlay:v6];

  v7 = [(MTRContentLauncherClusterLaunchContentParams *)self data];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setData:v7];

  v8 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setPlaybackPreferences:v8];

  v9 = [(MTRContentLauncherClusterLaunchContentParams *)self useCurrentContext];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setUseCurrentContext:v9];

  v10 = [(MTRContentLauncherClusterLaunchContentParams *)self timedInvokeTimeoutMs];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRContentLauncherClusterLaunchContentParams *)self serverSideProcessingTimeout];
  [(MTRContentLauncherClusterLaunchContentParams *)v4 setServerSideProcessingTimeout:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: search:%@ autoPlay:%@; data:%@; playbackPreferences:%@; useCurrentContext:%@; >", v5, self->_search, self->_autoPlay, self->_data, self->_playbackPreferences, self->_useCurrentContext];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v56 = 0;
  LOBYTE(v61) = 0;
  v52 = 0uLL;
  v53 = 0;
  v51[0] = 0;
  v51[1] = 0;
  v50 = v51;
  v3 = [(MTRContentLauncherClusterLaunchContentParams *)self search];
  v4 = [v3 parameterList];
  v5 = [v4 count] == 0;

  if (!v5)
  {
    operator new();
  }

  v52 = 0uLL;
  v6 = [(MTRContentLauncherClusterLaunchContentParams *)self autoPlay];
  v53 = [v6 BOOLValue];

  v7 = [(MTRContentLauncherClusterLaunchContentParams *)self data];
  v8 = v7 == 0;

  if (!v8)
  {
    v54 = 1;
    v55 = 0uLL;
    v9 = [(MTRContentLauncherClusterLaunchContentParams *)self data];
    v10 = v9;
    sub_238DB9BD8(buf, [v9 UTF8String], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4));

    v55 = *buf;
  }

  v11 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
  v12 = v11 == 0;

  if (!v12)
  {
    v56 = 1;
    memset(v57, 0, sizeof(v57));
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    v14 = [v13 playbackPosition];
    *&v57[0] = [v14 unsignedLongLongValue];

    v15 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    v16 = [v15 textTrack];
    v17 = [v16 languageCode];
    v18 = v17;
    sub_238DB9BD8(buf, [v17 UTF8String], objc_msgSend(v17, "lengthOfBytesUsingEncoding:", 4));

    *(v57 + 8) = *buf;
    v19 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    v20 = [v19 textTrack];
    v21 = [v20 characteristics];
    v22 = v21 == 0;

    if (!v22)
    {
      BYTE8(v57[1]) = 1;
      v58 = 0uLL;
      v23 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
      v24 = [v23 textTrack];
      v25 = [v24 characteristics];
      v26 = [v25 count] == 0;

      if (!v26)
      {
        operator new();
      }

      v58 = 0uLL;
    }

    v27 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    v28 = [v27 textTrack];
    v29 = [v28 audioOutputIndex];
    LOBYTE(v59) = [v29 unsignedCharValue];

    v30 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
    v31 = [v30 audioTracks];
    v32 = v31 == 0;

    if (!v32)
    {
      BYTE8(v59) = 1;
      v60 = 0uLL;
      v33 = [(MTRContentLauncherClusterLaunchContentParams *)self playbackPreferences];
      v34 = [v33 audioTracks];
      v35 = [v34 count] == 0;

      if (!v35)
      {
        operator new();
      }

      v60 = 0uLL;
    }
  }

  v36 = [(MTRContentLauncherClusterLaunchContentParams *)self useCurrentContext];
  v37 = v36 == 0;

  if (!v37)
  {
    v61 = 1;
    v38 = [(MTRContentLauncherClusterLaunchContentParams *)self useCurrentContext];
    HIBYTE(v61) = [v38 BOOLValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v49);
  if (v49)
  {
    sub_2393C7B90(buf);
    v64 = 0;
    v65 = 0;
    v63 = &unk_284BB83A8;
    v66 = 0;
    sub_238EA16C4(&v63, &v49, 0);
    sub_2393C7BF0(buf, &v63, 0xFFFFFFFF);
    v40 = sub_238F0D1F4(&v52, buf, 0x100uLL);
    v41 = v40;
    if (v40 || (v40 = sub_238DD2EFC(buf, &v49), v41 = v40, v40))
    {
      v42 = v39;
    }

    else
    {
      sub_238DD2F90(a3, &v49);
      v40 = sub_2393C7114(a3, 21, 256);
      v42 = v46;
      v41 = v40;
    }

    v63 = &unk_284BB83A8;
    sub_238EA1758(&v65);
    sub_238EA1758(&v64);
  }

  else
  {
    v42 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v40 = 0x793F00000000;
    v41 = 11;
  }

  sub_238EA1758(&v49);
  sub_238EA1790(&v50);
  v43 = *MEMORY[0x277D85DE8];
  v44 = v40 & 0xFFFFFFFF00000000 | v41;
  v45 = v42;
  result.mFile = v45;
  result.mError = v44;
  result.mLine = HIDWORD(v44);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRContentLauncherClusterLaunchContentParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x795C00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end