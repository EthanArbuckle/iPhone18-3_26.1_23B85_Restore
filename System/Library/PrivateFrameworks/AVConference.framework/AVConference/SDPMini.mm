@interface SDPMini
+ (BOOL)setPayload:(int)a3 mediaLine:(id)a4;
- (BOOL)getBasebandCodecType:(id *)a3 sampleRate:(id *)a4;
- (BOOL)getUseSbr:(BOOL *)a3 blockSize:(int *)a4 forAACFormat:(int)a5;
- (BOOL)setVideoPayloads:(int *)a3 count:(int)a4;
- (SDPMini)init;
- (SDPMini)initWithString:(id)a3;
- (id)SDPUsername;
- (id)composeAudioFMTPForPayload:(id)a3;
- (id)composeAudioString;
- (id)composeBandwidthString;
- (id)composeFLSString;
- (id)composeSessionString;
- (id)getMediaLineForType:(int)a3;
- (id)mediaTypeToString:(int)a3;
- (id)parseIP:(id)a3;
- (id)parseRTCPPort:(id)a3;
- (id)parseRTPID:(id)a3;
- (id)toStringWithVideoEnabled:(BOOL)a3;
- (int)rulesFramerate:(int)a3;
- (void)addMediaLine:(id)a3 mediaType:(int)a4;
- (void)createVideoImageAttr:(int)a3 direction:(int)a4 dimensions:(imageTag *)a5 count:(int)a6;
- (void)dealloc;
- (void)getNegotiatedResolutionForPayload:(int)a3 forInterface:(int)a4 withRule:(id)a5 direction:(int)a6 result:(imageTag *)a7 remoteSupportsHD:(BOOL)a8 screenSharing:(BOOL)a9;
- (void)parseAudioFormatAttribute:(id)a3;
- (void)parseAudioMediaAttributes:(id)a3;
- (void)parseBandwidth:(id)a3;
- (void)parseMediaLine:(id)a3;
- (void)parseSDPFromString:(id)a3;
- (void)parseSessionAttributes:(id)a3;
- (void)rulesImageSizeForExternalPayload:(int)a3 pWidth:(int *)a4 pHeight:(int *)a5;
- (void)setBasebandCodecType:(id)a3 sampleRate:(id)a4;
- (void)setUseSbr:(BOOL)a3 blockSize:(int)a4 forAACFormat:(int)a5;
- (void)setVideoRTCPFB:(BOOL)a3 useNACK:(BOOL)a4;
@end

@implementation SDPMini

- (id)SDPUsername
{
  result = self->_sdpUsername;
  if (!result)
  {
    v4 = NSUserName();
    if (v4 && (v5 = [(NSString *)v4 componentsSeparatedByString:@" "]) != 0)
    {
      result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:{-[NSArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", 0)}];
      self->_sdpUsername = result;
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = self->_sdpUsername;
      if (result)
      {
        return result;
      }
    }

    result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"-"];
    self->_sdpUsername = result;
  }

  return result;
}

- (SDPMini)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = SDPMini;
  v2 = [(SDPMini *)&v5 init];
  if (v2)
  {
    v2->_audioParameters = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v2->audioPayloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v2->secondaryAudioPayloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v2->_mediaLines = objc_opt_new();
    v3 = objc_alloc_init(SDPMediaLine);
    [(SDPMini *)v2 addMediaLine:v3 mediaType:2];
  }

  return v2;
}

- (SDPMini)initWithString:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SDPMini;
  v4 = [(SDPMini *)&v7 init];
  if (v4)
  {
    v4->_audioParameters = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v4->audioPayloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v4->secondaryAudioPayloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v4->_mediaLines = objc_opt_new();
    v5 = objc_autoreleasePoolPush();
    [(SDPMini *)v4 parseSDPFromString:a3];
    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = SDPMini;
  [(SDPMini *)&v3 dealloc];
}

- (id)getMediaLineForType:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)self->_mediaLines objectForKeyedSubscript:v4];

  return v5;
}

- (void)addMediaLine:(id)a3 mediaType:(int)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_mediaLines setObject:a3 forKeyedSubscript:v6];
}

- (id)mediaTypeToString:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E85F6358[a3 - 1];
  }
}

+ (BOOL)setPayload:(int)a3 mediaLine:(id)a4
{
  if (a3 != 100 && a3 != 126 && a3 != 123)
  {
    return 0;
  }

  [a4 addPayload:? rtpMap:? formatParameters:?];
  return 1;
}

- (BOOL)setVideoPayloads:(int *)a3 count:(int)a4
{
  if (!a4)
  {
    return 0;
  }

  LODWORD(v4) = a4;
  v6 = [(SDPMini *)self getMediaLineForType:2];
  if (v4 < 1)
  {
    return 0;
  }

  v7 = v6;
  v4 = v4;
  do
  {
    v8 = *a3++;
    if (![SDPMini setPayload:v8 mediaLine:v7])
    {
      break;
    }

    --v4;
  }

  while (v4);
  return v4 == 0;
}

- (id)toStringWithVideoEnabled:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:512];
  [v5 appendString:{-[SDPMini composeSessionString](self, "composeSessionString")}];
  [v5 appendString:{-[SDPMini composeAudioString](self, "composeAudioString")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [-[NSMutableDictionary allKeys](self->_mediaLines "allKeys")];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (a3 || [*(*(&v15 + 1) + 8 * i) intValue] != 2)
        {
          v12 = [(NSMutableDictionary *)self->_mediaLines objectForKeyedSubscript:v11];
          [v5 appendFormat:@"%@=%@ %@ %@ %@%@", @"m", -[SDPMini mediaTypeToString:](self, "mediaTypeToString:", objc_msgSend(v11, "intValue")), @"%VRTP-PORT%", @"RTP/AVP", objc_msgSend(objc_msgSend(v12, "payloads"), "componentsJoinedByString:", @" ", @"\r\n"];
          [v5 appendString:{objc_msgSend(v12, "string")}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)setBasebandCodecType:(id)a3 sampleRate:(id)a4
{
  self->basebandCodecSampleRate = a4;

  self->basebandCodecType = [a3 copy];
}

- (BOOL)getBasebandCodecType:(id *)a3 sampleRate:(id *)a4
{
  if (!self->basebandCodecSampleRate)
  {
    return 0;
  }

  basebandCodecType = self->basebandCodecType;
  if (!basebandCodecType)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = basebandCodecType;
  }

  if (a4)
  {
    *a4 = self->basebandCodecSampleRate;
  }

  return 1;
}

- (void)createVideoImageAttr:(int)a3 direction:(int)a4 dimensions:(imageTag *)a5 count:(int)a6
{
  v6 = *&a6;
  v8 = *&a4;
  v9 = *&a3;
  v10 = [(SDPMini *)self getMediaLineForType:2];

  [v10 createVideoImageAttr:v9 direction:v8 dimensions:a5 count:v6];
}

- (void)getNegotiatedResolutionForPayload:(int)a3 forInterface:(int)a4 withRule:(id)a5 direction:(int)a6 result:(imageTag *)a7 remoteSupportsHD:(BOOL)a8 screenSharing:(BOOL)a9
{
  v13 = *&a3;
  v80 = *MEMORY[0x1E69E9840];
  if (![a5 count])
  {
    a7->var2 = 0;
    a7->var5 = 0;
    return;
  }

  if (a9)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v16 = [(SDPMini *)self getMediaLineForType:v15];
  v17 = [v16 videoImageAttributes:v13];
  if (v17)
  {
    v18 = v17;
    v59 = a5;
    v60 = self;
    v62 = a7;
    v61 = [a5 count];
    v63 = v18;
    if (a6)
    {
      v19 = [v16 getVideoRecvImages:v18];
      v65 = [MEMORY[0x1E695DF70] array];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v71 objects:v70 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v72;
        do
        {
          v23 = v19;
          for (i = 0; i != v21; ++i)
          {
            if (*v72 != v22)
            {
              objc_enumerationMutation(v23);
            }

            v25 = *(*(&v71 + 1) + 8 * i);
            memset(v67, 170, sizeof(v67));
            v68 = -1431655766;
            v69 = -1431655766;
            [SDPMediaLine fillImageStruct:v25 imageStruct:v67];
            if (v69 != a4)
            {
              [v65 addObject:v25];
            }
          }

          v19 = v23;
          v21 = [v23 countByEnumeratingWithState:&v71 objects:v70 count:16];
        }

        while (v21);
      }

      [v19 removeObjectsInArray:v65];
      if (v19 && [v19 count])
      {
        [v19 sortUsingFunction:compareByPref context:v60];
        v26 = [v19 count];
        if (v26 >= 1)
        {
          v27 = v61;
          v28 = v26 & 0x7FFFFFFF;
          while (1)
          {
            v29 = [v19 objectAtIndexedSubscript:?];
            if (v27 >= 1)
            {
              break;
            }

LABEL_26:
            v38 = v28-- < 2;
            v27 = v61;
            if (v38)
            {
              goto LABEL_52;
            }
          }

          v30 = v29;
          v31 = v61 + 1;
          while (1)
          {
            v32 = [v59 objectAtIndexedSubscript:v31 - 2];
            v33 = v32;
            if (a8 || (v34 = [v32 iWidth], (objc_msgSend(v33, "iHeight") * v34) <= 407040))
            {
              v35 = [v33 iWidth];
              v36 = [v33 iHeight];
              [v33 fRate];
              if ([v16 supportImage:v30 width:v35 height:v36 rate:v37])
              {
                break;
              }
            }

            if (--v31 <= 1)
            {
              goto LABEL_26;
            }
          }

          a7->var0 = [v33 iWidth];
          a7->var2 = [v33 iWidth];
          a7->var3 = [v33 iHeight];
          a7->var5 = [v33 iHeight];
          [v33 fRate];
          a7->var6 = v55;
          v57 = v33;
LABEL_51:
          [v57 fPref];
          a7->var7 = v58;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v19 = [v16 getVideoSendImages:v18];
      v66 = [MEMORY[0x1E695DF70] array];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v39 = [v19 countByEnumeratingWithState:&v76 objects:v75 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v77;
        do
        {
          v42 = v19;
          for (j = 0; j != v40; ++j)
          {
            if (*v77 != v41)
            {
              objc_enumerationMutation(v42);
            }

            v44 = *(*(&v76 + 1) + 8 * j);
            memset(v67, 170, sizeof(v67));
            v68 = -1431655766;
            v69 = -1431655766;
            [SDPMediaLine fillImageStruct:v44 imageStruct:v67];
            if (v69 != a4)
            {
              [v66 addObject:v44];
            }
          }

          v19 = v42;
          v40 = [v42 countByEnumeratingWithState:&v76 objects:v75 count:16];
        }

        while (v40);
      }

      [v19 removeObjectsInArray:v66];
      if (v19 && [v19 count])
      {
        [v19 sortUsingFunction:compareByPref context:v60];
        v45 = [v19 count];
        if (v61 >= 1)
        {
          v46 = v45;
          v47 = v61 & 0x7FFFFFFF;
          do
          {
            v48 = v47--;
            v49 = [v59 objectAtIndexedSubscript:v47];
            v50 = v46;
            while (v50 >= 1)
            {
              v51 = [v19 objectAtIndexedSubscript:--v50];
              v52 = [v49 iWidth];
              v53 = [v49 iHeight];
              [v49 fRate];
              if ([v16 supportImage:v51 width:v52 height:v53 rate:v54])
              {
                a7 = v62;
                v62->var0 = [v49 iWidth];
                v62->var2 = [v49 iWidth];
                v62->var3 = [v49 iHeight];
                v62->var5 = [v49 iHeight];
                [v49 fRate];
                v62->var6 = v56;
                v57 = v49;
                goto LABEL_51;
              }
            }
          }

          while (v48 >= 2);
        }

        goto LABEL_52;
      }
    }

    a7->var2 = 0;
    a7->var5 = 0;
LABEL_52:
  }
}

- (id)composeBandwidthString
{
  if ([(NSNumber *)self->maxBandwidth intValue]< 1)
  {
    return 0;
  }

  if ([(NSNumber *)self->answerBandwidth intValue]< 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"AS:%@", self->maxBandwidth, v4];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"AS:%@:%@", self->answerBandwidth, self->maxBandwidth];
}

- (id)composeSessionString
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  [v3 appendFormat:@"%@=0\r\n", @"v"];
  [v3 appendFormat:@"%@=%@ 0 0 IN %@ %@\r\n", @"o", self->origin, @"%RTP-IP-AF%", @"%RTP-IP%"];
  [v3 appendFormat:@"%@=%@\r\n", @"s", -[SDPMini SDPUsername](self, "SDPUsername")];
  [v3 appendFormat:@"%@=IN %@ %@\r\n", @"c", @"%RTP-IP-AF%", @"%RTP-IP%"];
  v4 = [(SDPMini *)self composeBandwidthString];
  if (v4)
  {
    [v3 appendFormat:@"%@=%@\r\n", @"b", v4];
  }

  [v3 appendFormat:@"%@=0 0\r\n", @"t"];
  [v3 appendString:{-[SDPMini composeFLSString](self, "composeFLSString")}];
  if (self->allowsDynamicMaxBitrate)
  {
    [v3 appendFormat:@"%@=%@\r\n", @"a", @"DMBR"];
  }

  if (self->allowsContentsChangeWithAspectPreservation)
  {
    [v3 appendFormat:@"%@=%@\r\n", @"a", @"CAP"];
  }

  basebandCodecType = self->basebandCodecType;
  if (basebandCodecType)
  {
    basebandCodecSampleRate = self->basebandCodecSampleRate;
    if (basebandCodecSampleRate)
    {
      [v3 appendFormat:@"%@=%@:%@:%u\r\n", @"a", @"BBCODEC", basebandCodecType, -[NSNumber unsignedIntValue](basebandCodecSampleRate, "unsignedIntValue")];
    }
  }

  return v3;
}

- (id)composeFLSString
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F570E008];
  featureListDict = self->featureListDict;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SDPMini_SDPComposing__composeFLSString__block_invoke;
  v6[3] = &unk_1E85F6338;
  v6[4] = v3;
  [(NSDictionary *)featureListDict enumerateKeysAndObjectsUsingBlock:v6];
  return v3;
}

uint64_t __41__SDPMini_SDPComposing__composeFLSString__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 intValue];
  v6 = *(a1 + 32);
  if (v5 == 126)
  {
    return [v6 appendFormat:@"%@=%@\r\n", @"a", a3, v8, v9];
  }

  else
  {
    return [v6 appendFormat:@"%@=%@:%d %@\r\n", @"a", @"X_FLS", v5, a3];
  }
}

- (id)composeAudioFMTPForPayload:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if ([(NSMutableArray *)self->secondaryAudioPayloads containsObject:a3])
  {
    [v5 addObject:@"sec"];
  }

  [v5 addObjectsFromArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_audioParameters, "objectForKeyedSubscript:", a3)}];
  v6 = [v5 componentsJoinedByString:@";"];

  return v6;
}

- (id)composeAudioString
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:256];
  [v3 appendFormat:@"%@=audio %@ %@ %@\r\n", @"m", @"%ARTP-PORT%", @"RTP/AVP", -[NSMutableArray componentsJoinedByString:](self->audioPayloads, "componentsJoinedByString:", @" "];
  [v3 appendFormat:@"%@=rtcp:%@\r\n", @"a", @"%ARTCP-PORT%"];
  aacBlockSize = self->aacBlockSize;
  if (aacBlockSize)
  {
    [v3 appendFormat:@"%@=fmtp:AAC SamplesPerBlock %@\r\n", @"a", aacBlockSize];
  }

  if ([+[VCDefaults audioRecordingEnabled]&& self->allowAudioRecording sharedInstance]
  {
    [v3 appendFormat:@"%@=allowrecording\r\n", @"a"];
  }

  audioRTPID = self->audioRTPID;
  if (audioRTPID)
  {
    [v3 appendFormat:@"%@=rtpID:%@\r\n", @"a", audioRTPID];
  }

  audioUnitModel = self->audioUnitModel;
  if (audioUnitModel)
  {
    [v3 appendFormat:@"%@=au:%@\r\n", @"a", audioUnitModel];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  audioPayloads = self->audioPayloads;
  v8 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(audioPayloads);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(SDPMini *)self composeAudioFMTPForPayload:v12];
        if ([v13 length])
        {
          [v3 appendFormat:@"%@=fmtp:%@ %@\r\n", @"a", v12, v13];
        }
      }

      v9 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v9);
  }

  return v3;
}

- (id)parseIP:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@" "];
  if ([v3 count] < 3)
  {
    return 0;
  }

  return [v3 objectAtIndexedSubscript:2];
}

- (void)parseBandwidth:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@":"];
  if ([v4 count] >= 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 1), "intValue")}];
    [(SDPMini *)self setAnswerBandwidth:v5];
    [(SDPMini *)self setMaxBandwidth:v5];
  }

  if ([v4 count] >= 3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 2), "intValue")}];

    [(SDPMini *)self setMaxBandwidth:v6];
  }
}

- (void)parseMediaLine:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = -1;
  v5 = objc_opt_new();
  v19 = -1;
  [a3 parseMediaLineHeader:objc_msgSend(a3 mediaType:"fieldValue") supportedPayloads:&v20 rtpPort:{v5, &v19}];
  [a3 nextLine];
  if (v20 - 2 < 2)
  {
    v6 = [SDPMediaLine alloc];
    v7 = [(SDPMediaLine *)v6 initWithParser:a3 rtpPort:v19 payloads:v5];
    if (!v7)
    {
      [SDPMini(SDPParsing) parseMediaLine:?];
      v13 = v21;
      goto LABEL_24;
    }

    v8 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v5);
          }

          LODWORD(v21) = [*(*(&v23 + 1) + 8 * i) intValue];
          [(SDPMini *)self setVideoPayloads:&v21 count:1];
        }

        v10 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v10);
    }

    [(SDPMini *)self addMediaLine:v8 mediaType:v20];

    goto LABEL_23;
  }

  if (v20 != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [SDPMini(SDPParsing) parseMediaLine:v18];
      }
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  -[SDPMini setAudioRTPPort:](self, "setAudioRTPPort:", [MEMORY[0x1E696AD98] numberWithInt:v19]);

  self->audioPayloads = v5;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0;
  do
  {
    if ([a3 parsingDone])
    {
      break;
    }

    v15 = [a3 fieldType];
    v16 = v14;
    if ((v15 - 1) >= 4)
    {
      if (v15 != 5)
      {
        break;
      }

      [v13 addObject:{objc_msgSend(a3, "fieldValue")}];
      LOBYTE(v14) = 0;
      v16 = 1;
    }

    v17 = v14;
    [a3 nextLine];
    v14 = v16;
  }

  while ((v17 & 1) == 0);
  if (v20 == 1)
  {
    [(SDPMini *)self parseAudioMediaAttributes:v13];
  }

LABEL_24:
}

- (void)parseSDPFromString:(id)a3
{
  v8 = [[SDPParser alloc] initWithString:a3];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (![(SDPParser *)v8 parsingDone])
  {
    v5 = [(SDPParser *)v8 fieldType];
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        [v4 addObject:{-[SDPParser fieldValue](v8, "fieldValue")}];
        goto LABEL_12;
      }

      v6 = v8;
      if (v5 != 15)
      {
        goto LABEL_13;
      }

      [(SDPMini *)self parseMediaLine:v8];
    }

    else
    {
      if (v5 == 2)
      {
        v7 = [(SDPMini *)self parseIP:[(SDPParser *)v8 fieldValue]];
        v6 = v8;
        self->sessionIP = v7;
        goto LABEL_13;
      }

      v6 = v8;
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      [(SDPMini *)self parseBandwidth:[(SDPParser *)v8 fieldValue]];
LABEL_12:
      v6 = v8;
LABEL_13:
      [(SDPParser *)v6 nextLine];
    }
  }

  [(SDPMini *)self parseSessionAttributes:v4];
}

- (id)parseRTPID:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@":"];
  if ([v3 count] < 2)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = strtoul([objc_msgSend(v3 objectAtIndexedSubscript:{1), "UTF8String"}], 0, 10);

  return [v4 numberWithUnsignedLong:v5];
}

- (id)parseRTCPPort:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@":"];
  if ([v3 count] < 2)
  {
    return 0;
  }

  v4 = [objc_msgSend(v3 objectAtIndexedSubscript:{1), "componentsSeparatedByString:", @" "}];
  if (![v4 count])
  {
    return 0;
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = [objc_msgSend(v4 objectAtIndexedSubscript:{0), "intValue"}];

  return [v5 numberWithInt:v6];
}

- (void)parseSessionAttributes:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v38;
    *&v7 = 136315906;
    v33 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if (!self->allowsDynamicMaxBitrate && [*(*(&v37 + 1) + 8 * i) hasPrefix:@"DMBR"])
        {
          self->allowsDynamicMaxBitrate = 1;
          continue;
        }

        if ([v11 hasPrefix:{@"FLS", v33, *buf, *&buf[16], v35}])
        {
          if ([(NSDictionary *)v5 objectForKeyedSubscript:&unk_1F57997B0])
          {
            continue;
          }

          v12 = v5;
          v13 = v11;
          v14 = &unk_1F57997B0;
          goto LABEL_12;
        }

        if (!self->allowsContentsChangeWithAspectPreservation && [v11 hasPrefix:@"CAP"])
        {
          self->allowsContentsChangeWithAspectPreservation = 1;
          continue;
        }

        if ([v11 hasPrefix:@"X_FLS"])
        {
          v15 = [v11 componentsSeparatedByString:@" "];
          v16 = [v15 objectAtIndexedSubscript:0];
          v17 = [v15 objectAtIndexedSubscript:1];
          v18 = [v16 rangeOfString:@":"];
          if (v16)
          {
            v19 = v17 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19 || v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                if (v11)
                {
                  v23 = [objc_msgSend(v11 "description")];
                }

                else
                {
                  v23 = "<nil>";
                }

                *buf = v33;
                *&buf[4] = v21;
                *&buf[12] = 2080;
                *&buf[14] = "[SDPMini(SDPParsing) parseSessionAttributes:]";
                *&buf[22] = 1024;
                LODWORD(v35) = 822;
                WORD2(v35) = 2080;
                *(&v35 + 6) = v23;
                v32 = v22;
LABEL_42:
                _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Can't parse attribute: %s", buf, 0x26u);
                continue;
              }
            }
          }

          else
          {
            v27 = [v16 substringFromIndex:v18 + 1];
            v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "intValue")}];
            if (![(NSDictionary *)v5 objectForKeyedSubscript:v28])
            {
              v12 = v5;
              v13 = v17;
              v14 = v28;
LABEL_12:
              [(NSDictionary *)v12 setObject:v13 forKeyedSubscript:v14];
              continue;
            }
          }
        }

        else
        {
          if (![v11 hasPrefix:@"BBCODEC"])
          {
            continue;
          }

          v24 = [v11 componentsSeparatedByString:@":"];
          if ([v24 count] == 3)
          {
            v25 = [v24 objectAtIndexedSubscript:1];
            v26 = [v24 objectAtIndexedSubscript:2];

            self->basebandCodecType = v25;
            self->basebandCodecSampleRate = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v26, "intValue")}];
            continue;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v29 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v11)
              {
                v31 = [objc_msgSend(v11 "description")];
              }

              else
              {
                v31 = "<nil>";
              }

              *buf = v33;
              *&buf[4] = v29;
              *&buf[12] = 2080;
              *&buf[14] = "[SDPMini(SDPParsing) parseSessionAttributes:]";
              *&buf[22] = 1024;
              LODWORD(v35) = 838;
              WORD2(v35) = 2080;
              *(&v35 + 6) = v31;
              v32 = v30;
              goto LABEL_42;
            }
          }
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v8);
  }

  self->featureListDict = v5;
}

- (void)parseAudioFormatAttribute:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a3 rangeOfString:@" "];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [objc_msgSend(a3 substringToIndex:{v5), "componentsSeparatedByString:", @":"}];
    if ([v7 count] >= 2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v7, "objectAtIndexedSubscript:", 1), "intValue")}];
      if ([(NSMutableArray *)self->audioPayloads containsObject:v8])
      {
        v9 = [objc_msgSend(a3 substringFromIndex:{v6), "componentsSeparatedByString:", @";"}];
        if ([v9 count])
        {
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v16;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v16 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                if (![objc_msgSend(*(*(&v15 + 1) + 8 * i) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")), "caseInsensitiveCompare:", @"sec"}])
                {
                  [(NSMutableArray *)self->secondaryAudioPayloads addObject:v8];
                  goto LABEL_15;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_15:
          [(NSMutableDictionary *)self->_audioParameters setObject:v9 forKeyedSubscript:v8];
        }
      }
    }
  }
}

- (void)parseAudioMediaAttributes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @" ";
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ([v10 hasPrefix:@"fmtp:AAC SamplesPerBlock"])
        {
          v11 = [objc_msgSend(v10 componentsSeparatedByString:{v7), "lastObject"}];
          -[SDPMini setAacBlockSize:](self, "setAacBlockSize:", [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "intValue")}]);
        }

        else if ([v10 hasPrefix:@"au:"])
        {
          v12 = [v10 componentsSeparatedByString:@":"];
          if ([v12 count] >= 2)
          {
            v13 = v7;
            v14 = MEMORY[0x1E696AD98];
            v15 = [objc_msgSend(v12 objectAtIndexedSubscript:{1), "integerValue"}];
            v16 = v14;
            v7 = v13;
            -[SDPMini setAudioUnitModel:](self, "setAudioUnitModel:", [v16 numberWithInteger:v15]);
          }
        }

        else if ([v10 hasPrefix:@"rtpID"])
        {
          [(SDPMini *)self setAudioRTPID:[(SDPMini *)self parseRTPID:v10]];
        }

        else if ([v10 hasPrefix:@"rtcp:"])
        {
          [(SDPMini *)self setAudioRTCPPort:[(SDPMini *)self parseRTCPPort:v10]];
        }

        else if ([v10 hasPrefix:@"fmtp:"])
        {
          [(SDPMini *)self parseAudioFormatAttribute:v10];
        }

        else if (!self->allowAudioRecording && [v10 isEqualToString:@"allowrecording"])
        {
          self->allowAudioRecording = 1;
        }

        ++v9;
      }

      while (v6 != v9);
      v17 = [a3 countByEnumeratingWithState:&v19 objects:v18 count:16];
      v6 = v17;
    }

    while (v17);
  }
}

- (int)rulesFramerate:(int)a3
{
  v3 = *&a3;
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(SDPMini *)self getMediaLineForType:2];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fmtp:%d", v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v4 attributes];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if ([v11 hasPrefix:v5])
      {
        v12 = [v11 componentsSeparatedByString:@" "];
        if (v12)
        {
          v13 = v12;
          if ([v12 count] >= 5)
          {
            break;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        return 10;
      }
    }

    v14 = [objc_msgSend(v13 objectAtIndexedSubscript:{4), "componentsSeparatedByString:", @":"}];
    if (v14)
    {
      v15 = v14;
      if ([v14 count] >= 3)
      {
        return [objc_msgSend(v15 objectAtIndexedSubscript:{0), "intValue"}];
      }
    }
  }

  return 10;
}

- (void)rulesImageSizeForExternalPayload:(int)a3 pWidth:(int *)a4 pHeight:(int *)a5
{
  v7 = *&a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = [(SDPMini *)self getMediaLineForType:2];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fmtp:%d", v7];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v8 attributes];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      if ([v15 hasPrefix:v9])
      {
        v16 = [v15 componentsSeparatedByString:@" "];
        if (v16)
        {
          v17 = v16;
          if ([v16 count] >= 5)
          {
            break;
          }
        }
      }

      if (v12 == ++v14)
      {
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
        v12 = v11;
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v11 = [objc_msgSend(v17 objectAtIndexedSubscript:{4), "componentsSeparatedByString:", @":"}];
    if (!v11)
    {
      goto LABEL_17;
    }

    v18 = v11;
    if ([v11 count] < 3)
    {
      LODWORD(v11) = 0;
      goto LABEL_17;
    }

    v19 = [objc_msgSend(v18 objectAtIndexedSubscript:{1), "intValue"}];
    LODWORD(v11) = [objc_msgSend(v18 objectAtIndexedSubscript:{2), "intValue"}];
    if (a4)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_17:
    v19 = 0;
    if (a4)
    {
LABEL_18:
      *a4 = v19;
    }
  }

  if (a5)
  {
    *a5 = v11;
  }
}

- (void)setUseSbr:(BOOL)a3 blockSize:(int)a4 forAACFormat:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = a3;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if (v7)
  {
    [v10 addObject:@"sbr"];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"block %u", v6];
  [v10 addObject:v9];

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_audioParameters, "setObject:forKeyedSubscript:", v10, [MEMORY[0x1E696AD98] numberWithInt:v5]);
}

- (BOOL)getUseSbr:(BOOL *)a3 blockSize:(int *)a4 forAACFormat:(int)a5
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_audioParameters, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:*&a5]);
  v8 = v7;
  if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")}];
          v14 = v13;
          if (a4 && [v13 hasPrefix:@"block "])
          {
            v15 = [v14 substringFromIndex:{objc_msgSend(@"block ", "length")}];
            if (v15)
            {
              v16 = [v15 integerValue];
              if ((v16 - 1) <= 0x3FF)
              {
                *a4 = v16;
              }
            }
          }

          else if (a3 && ![v14 caseInsensitiveCompare:@"sbr"])
          {
            *a3 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v10);
    }
  }

  return v8 != 0;
}

- (void)setVideoRTCPFB:(BOOL)a3 useNACK:(BOOL)a4
{
  v4 = a4;
  if (a3 || a4)
  {
    if (a3)
    {
      v5 = " rpsi";
    }

    else
    {
      v5 = "";
    }

    v6 = [(SDPMini *)self getMediaLineForType:2];
    v7 = " nack";
    if (!v4)
    {
      v7 = "";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rtcp-fb:*%s%s", v5, v7];

    [v6 addAttribute:v8];
  }
}

@end