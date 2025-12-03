@interface SDPMini
+ (BOOL)setPayload:(int)payload mediaLine:(id)line;
- (BOOL)getBasebandCodecType:(id *)type sampleRate:(id *)rate;
- (BOOL)getUseSbr:(BOOL *)sbr blockSize:(int *)size forAACFormat:(int)format;
- (BOOL)setVideoPayloads:(int *)payloads count:(int)count;
- (SDPMini)init;
- (SDPMini)initWithString:(id)string;
- (id)SDPUsername;
- (id)composeAudioFMTPForPayload:(id)payload;
- (id)composeAudioString;
- (id)composeBandwidthString;
- (id)composeFLSString;
- (id)composeSessionString;
- (id)getMediaLineForType:(int)type;
- (id)mediaTypeToString:(int)string;
- (id)parseIP:(id)p;
- (id)parseRTCPPort:(id)port;
- (id)parseRTPID:(id)d;
- (id)toStringWithVideoEnabled:(BOOL)enabled;
- (int)rulesFramerate:(int)framerate;
- (void)addMediaLine:(id)line mediaType:(int)type;
- (void)createVideoImageAttr:(int)attr direction:(int)direction dimensions:(imageTag *)dimensions count:(int)count;
- (void)dealloc;
- (void)getNegotiatedResolutionForPayload:(int)payload forInterface:(int)interface withRule:(id)rule direction:(int)direction result:(imageTag *)result remoteSupportsHD:(BOOL)d screenSharing:(BOOL)sharing;
- (void)parseAudioFormatAttribute:(id)attribute;
- (void)parseAudioMediaAttributes:(id)attributes;
- (void)parseBandwidth:(id)bandwidth;
- (void)parseMediaLine:(id)line;
- (void)parseSDPFromString:(id)string;
- (void)parseSessionAttributes:(id)attributes;
- (void)rulesImageSizeForExternalPayload:(int)payload pWidth:(int *)width pHeight:(int *)height;
- (void)setBasebandCodecType:(id)type sampleRate:(id)rate;
- (void)setUseSbr:(BOOL)sbr blockSize:(int)size forAACFormat:(int)format;
- (void)setVideoRTCPFB:(BOOL)b useNACK:(BOOL)k;
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

- (SDPMini)initWithString:(id)string
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
    [(SDPMini *)v4 parseSDPFromString:string];
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

- (id)getMediaLineForType:(int)type
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:type];
  v5 = [(NSMutableDictionary *)self->_mediaLines objectForKeyedSubscript:v4];

  return v5;
}

- (void)addMediaLine:(id)line mediaType:(int)type
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:type];
  [(NSMutableDictionary *)self->_mediaLines setObject:line forKeyedSubscript:v6];
}

- (id)mediaTypeToString:(int)string
{
  if ((string - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E85F6358[string - 1];
  }
}

+ (BOOL)setPayload:(int)payload mediaLine:(id)line
{
  if (payload != 100 && payload != 126 && payload != 123)
  {
    return 0;
  }

  [line addPayload:? rtpMap:? formatParameters:?];
  return 1;
}

- (BOOL)setVideoPayloads:(int *)payloads count:(int)count
{
  if (!count)
  {
    return 0;
  }

  LODWORD(v4) = count;
  v6 = [(SDPMini *)self getMediaLineForType:2];
  if (v4 < 1)
  {
    return 0;
  }

  v7 = v6;
  v4 = v4;
  do
  {
    v8 = *payloads++;
    if (![SDPMini setPayload:v8 mediaLine:v7])
    {
      break;
    }

    --v4;
  }

  while (v4);
  return v4 == 0;
}

- (id)toStringWithVideoEnabled:(BOOL)enabled
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
        if (enabled || [*(*(&v15 + 1) + 8 * i) intValue] != 2)
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

- (void)setBasebandCodecType:(id)type sampleRate:(id)rate
{
  self->basebandCodecSampleRate = rate;

  self->basebandCodecType = [type copy];
}

- (BOOL)getBasebandCodecType:(id *)type sampleRate:(id *)rate
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

  if (type)
  {
    *type = basebandCodecType;
  }

  if (rate)
  {
    *rate = self->basebandCodecSampleRate;
  }

  return 1;
}

- (void)createVideoImageAttr:(int)attr direction:(int)direction dimensions:(imageTag *)dimensions count:(int)count
{
  v6 = *&count;
  v8 = *&direction;
  v9 = *&attr;
  v10 = [(SDPMini *)self getMediaLineForType:2];

  [v10 createVideoImageAttr:v9 direction:v8 dimensions:dimensions count:v6];
}

- (void)getNegotiatedResolutionForPayload:(int)payload forInterface:(int)interface withRule:(id)rule direction:(int)direction result:(imageTag *)result remoteSupportsHD:(BOOL)d screenSharing:(BOOL)sharing
{
  v13 = *&payload;
  v80 = *MEMORY[0x1E69E9840];
  if (![rule count])
  {
    result->var2 = 0;
    result->var5 = 0;
    return;
  }

  if (sharing)
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
    ruleCopy = rule;
    selfCopy = self;
    resultCopy = result;
    v61 = [rule count];
    v63 = v18;
    if (direction)
    {
      v19 = [v16 getVideoRecvImages:v18];
      array = [MEMORY[0x1E695DF70] array];
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
            if (v69 != interface)
            {
              [array addObject:v25];
            }
          }

          v19 = v23;
          v21 = [v23 countByEnumeratingWithState:&v71 objects:v70 count:16];
        }

        while (v21);
      }

      [v19 removeObjectsInArray:array];
      if (v19 && [v19 count])
      {
        [v19 sortUsingFunction:compareByPref context:selfCopy];
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
            v32 = [ruleCopy objectAtIndexedSubscript:v31 - 2];
            v33 = v32;
            if (d || (v34 = [v32 iWidth], (objc_msgSend(v33, "iHeight") * v34) <= 407040))
            {
              iWidth = [v33 iWidth];
              iHeight = [v33 iHeight];
              [v33 fRate];
              if ([v16 supportImage:v30 width:iWidth height:iHeight rate:v37])
              {
                break;
              }
            }

            if (--v31 <= 1)
            {
              goto LABEL_26;
            }
          }

          result->var0 = [v33 iWidth];
          result->var2 = [v33 iWidth];
          result->var3 = [v33 iHeight];
          result->var5 = [v33 iHeight];
          [v33 fRate];
          result->var6 = v55;
          v57 = v33;
LABEL_51:
          [v57 fPref];
          result->var7 = v58;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v19 = [v16 getVideoSendImages:v18];
      array2 = [MEMORY[0x1E695DF70] array];
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
            if (v69 != interface)
            {
              [array2 addObject:v44];
            }
          }

          v19 = v42;
          v40 = [v42 countByEnumeratingWithState:&v76 objects:v75 count:16];
        }

        while (v40);
      }

      [v19 removeObjectsInArray:array2];
      if (v19 && [v19 count])
      {
        [v19 sortUsingFunction:compareByPref context:selfCopy];
        v45 = [v19 count];
        if (v61 >= 1)
        {
          v46 = v45;
          v47 = v61 & 0x7FFFFFFF;
          do
          {
            v48 = v47--;
            v49 = [ruleCopy objectAtIndexedSubscript:v47];
            v50 = v46;
            while (v50 >= 1)
            {
              v51 = [v19 objectAtIndexedSubscript:--v50];
              iWidth2 = [v49 iWidth];
              iHeight2 = [v49 iHeight];
              [v49 fRate];
              if ([v16 supportImage:v51 width:iWidth2 height:iHeight2 rate:v54])
              {
                result = resultCopy;
                resultCopy->var0 = [v49 iWidth];
                resultCopy->var2 = [v49 iWidth];
                resultCopy->var3 = [v49 iHeight];
                resultCopy->var5 = [v49 iHeight];
                [v49 fRate];
                resultCopy->var6 = v56;
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

    result->var2 = 0;
    result->var5 = 0;
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
  composeBandwidthString = [(SDPMini *)self composeBandwidthString];
  if (composeBandwidthString)
  {
    [v3 appendFormat:@"%@=%@\r\n", @"b", composeBandwidthString];
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

- (id)composeAudioFMTPForPayload:(id)payload
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if ([(NSMutableArray *)self->secondaryAudioPayloads containsObject:payload])
  {
    [v5 addObject:@"sec"];
  }

  [v5 addObjectsFromArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_audioParameters, "objectForKeyedSubscript:", payload)}];
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

- (id)parseIP:(id)p
{
  v3 = [p componentsSeparatedByString:@" "];
  if ([v3 count] < 3)
  {
    return 0;
  }

  return [v3 objectAtIndexedSubscript:2];
}

- (void)parseBandwidth:(id)bandwidth
{
  v4 = [bandwidth componentsSeparatedByString:@":"];
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

- (void)parseMediaLine:(id)line
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = -1;
  v5 = objc_opt_new();
  v19 = -1;
  [line parseMediaLineHeader:objc_msgSend(line mediaType:"fieldValue") supportedPayloads:&v20 rtpPort:{v5, &v19}];
  [line nextLine];
  if (v20 - 2 < 2)
  {
    v6 = [SDPMediaLine alloc];
    v7 = [(SDPMediaLine *)v6 initWithParser:line rtpPort:v19 payloads:v5];
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
    if ([line parsingDone])
    {
      break;
    }

    fieldType = [line fieldType];
    v16 = v14;
    if ((fieldType - 1) >= 4)
    {
      if (fieldType != 5)
      {
        break;
      }

      [v13 addObject:{objc_msgSend(line, "fieldValue")}];
      LOBYTE(v14) = 0;
      v16 = 1;
    }

    v17 = v14;
    [line nextLine];
    v14 = v16;
  }

  while ((v17 & 1) == 0);
  if (v20 == 1)
  {
    [(SDPMini *)self parseAudioMediaAttributes:v13];
  }

LABEL_24:
}

- (void)parseSDPFromString:(id)string
{
  v8 = [[SDPParser alloc] initWithString:string];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (![(SDPParser *)v8 parsingDone])
  {
    fieldType = [(SDPParser *)v8 fieldType];
    if (fieldType > 4)
    {
      if (fieldType == 5)
      {
        [v4 addObject:{-[SDPParser fieldValue](v8, "fieldValue")}];
        goto LABEL_12;
      }

      v6 = v8;
      if (fieldType != 15)
      {
        goto LABEL_13;
      }

      [(SDPMini *)self parseMediaLine:v8];
    }

    else
    {
      if (fieldType == 2)
      {
        v7 = [(SDPMini *)self parseIP:[(SDPParser *)v8 fieldValue]];
        v6 = v8;
        self->sessionIP = v7;
        goto LABEL_13;
      }

      v6 = v8;
      if (fieldType != 3)
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

- (id)parseRTPID:(id)d
{
  v3 = [d componentsSeparatedByString:@":"];
  if ([v3 count] < 2)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = strtoul([objc_msgSend(v3 objectAtIndexedSubscript:{1), "UTF8String"}], 0, 10);

  return [v4 numberWithUnsignedLong:v5];
}

- (id)parseRTCPPort:(id)port
{
  v3 = [port componentsSeparatedByString:@":"];
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

- (void)parseSessionAttributes:(id)attributes
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [attributes countByEnumeratingWithState:&v37 objects:v36 count:16];
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
          objc_enumerationMutation(attributes);
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

      v8 = [attributes countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v8);
  }

  self->featureListDict = v5;
}

- (void)parseAudioFormatAttribute:(id)attribute
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [attribute rangeOfString:@" "];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [objc_msgSend(attribute substringToIndex:{v5), "componentsSeparatedByString:", @":"}];
    if ([v7 count] >= 2)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v7, "objectAtIndexedSubscript:", 1), "intValue")}];
      if ([(NSMutableArray *)self->audioPayloads containsObject:v8])
      {
        v9 = [objc_msgSend(attribute substringFromIndex:{v6), "componentsSeparatedByString:", @";"}];
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

- (void)parseAudioMediaAttributes:(id)attributes
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [attributes countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(attributes);
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
      v17 = [attributes countByEnumeratingWithState:&v19 objects:v18 count:16];
      v6 = v17;
    }

    while (v17);
  }
}

- (int)rulesFramerate:(int)framerate
{
  v3 = *&framerate;
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(SDPMini *)self getMediaLineForType:2];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fmtp:%d", v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attributes = [v4 attributes];
  v7 = [attributes countByEnumeratingWithState:&v18 objects:v17 count:16];
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
        objc_enumerationMutation(attributes);
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
        v8 = [attributes countByEnumeratingWithState:&v18 objects:v17 count:16];
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

- (void)rulesImageSizeForExternalPayload:(int)payload pWidth:(int *)width pHeight:(int *)height
{
  v7 = *&payload;
  v25 = *MEMORY[0x1E69E9840];
  v8 = [(SDPMini *)self getMediaLineForType:2];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fmtp:%d", v7];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  attributes = [v8 attributes];
  v11 = [attributes countByEnumeratingWithState:&v21 objects:v20 count:16];
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
        objc_enumerationMutation(attributes);
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
        v11 = [attributes countByEnumeratingWithState:&v21 objects:v20 count:16];
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
    if (width)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_17:
    v19 = 0;
    if (width)
    {
LABEL_18:
      *width = v19;
    }
  }

  if (height)
  {
    *height = v11;
  }
}

- (void)setUseSbr:(BOOL)sbr blockSize:(int)size forAACFormat:(int)format
{
  v5 = *&format;
  v6 = *&size;
  sbrCopy = sbr;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if (sbrCopy)
  {
    [v10 addObject:@"sbr"];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"block %u", v6];
  [v10 addObject:v9];

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_audioParameters, "setObject:forKeyedSubscript:", v10, [MEMORY[0x1E696AD98] numberWithInt:v5]);
}

- (BOOL)getUseSbr:(BOOL *)sbr blockSize:(int *)size forAACFormat:(int)format
{
  v23 = *MEMORY[0x1E69E9840];
  if (sbr)
  {
    *sbr = 0;
  }

  if (size)
  {
    *size = 0;
  }

  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_audioParameters, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:*&format]);
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
          if (size && [v13 hasPrefix:@"block "])
          {
            v15 = [v14 substringFromIndex:{objc_msgSend(@"block ", "length")}];
            if (v15)
            {
              integerValue = [v15 integerValue];
              if ((integerValue - 1) <= 0x3FF)
              {
                *size = integerValue;
              }
            }
          }

          else if (sbr && ![v14 caseInsensitiveCompare:@"sbr"])
          {
            *sbr = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v10);
    }
  }

  return v8 != 0;
}

- (void)setVideoRTCPFB:(BOOL)b useNACK:(BOOL)k
{
  kCopy = k;
  if (b || k)
  {
    if (b)
    {
      v5 = " rpsi";
    }

    else
    {
      v5 = "";
    }

    v6 = [(SDPMini *)self getMediaLineForType:2];
    v7 = " nack";
    if (!kCopy)
    {
      v7 = "";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rtcp-fb:*%s%s", v5, v7];

    [v6 addAttribute:v8];
  }
}

@end