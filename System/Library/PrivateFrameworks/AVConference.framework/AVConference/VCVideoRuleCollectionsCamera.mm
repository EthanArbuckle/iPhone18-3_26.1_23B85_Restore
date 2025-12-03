@interface VCVideoRuleCollectionsCamera
- (BOOL)getBestFrameWidth:(int *)width frameHeight:(int *)height frameRate:(float *)rate;
- (BOOL)isHiDefCapable;
- (BOOL)setupH264CellularRules;
- (id)bestVideoRuleForEncodingType:(unsigned __int8)type aspectRatio:(double)ratio;
- (id)bestVideoRuleForEncodingType:(unsigned __int8)type aspectRatio:(double)ratio payload:(int)payload;
- (void)setupH264CellularRules;
@end

@implementation VCVideoRuleCollectionsCamera

- (BOOL)setupH264CellularRules
{
  if (![(VCVideoRuleCollections *)self isPayloadSupported:126]&& ![(VCVideoRuleCollections *)self isPayloadSupported:123])
  {
    return 1;
  }

  v3 = objc_opt_new();
  if (v3)
  {
    v4 = objc_opt_new();
    if (v4)
    {
      v5 = v4;
      v6 = [VCVideoRule alloc];
      LODWORD(v7) = 15.0;
      v8 = [(VCVideoRule *)v6 initWithFrameWidth:320 frameHeight:240 frameRate:126 payload:v7];
      if (v8)
      {
        v9 = v8;
        v10 = [VCVideoRule alloc];
        LODWORD(v11) = 15.0;
        v12 = [(VCVideoRule *)v10 initWithFrameWidth:480 frameHeight:368 frameRate:126 payload:v11];
        if (v12)
        {
          v13 = v12;
          v14 = [VCVideoRule alloc];
          LODWORD(v15) = 15.0;
          v16 = [(VCVideoRule *)v14 initWithFrameWidth:480 frameHeight:272 frameRate:126 payload:v15];
          v17 = [VCVideoRule alloc];
          LODWORD(v18) = 15.0;
          v19 = [(VCVideoRule *)v17 initWithFrameWidth:1024 frameHeight:576 frameRate:126 payload:v18];
          if (v19)
          {
            v20 = v19;
            v21 = [VCVideoRule alloc];
            LODWORD(v22) = 15.0;
            v23 = [(VCVideoRule *)v21 initWithFrameWidth:896 frameHeight:672 frameRate:126 payload:v22];
            if (v23)
            {
              v24 = v23;
              [v3 addObject:v9];
              [v3 addObject:v13];
              [v3 addObject:v16];
              [v3 addObject:v20];
              [v3 addObject:v24];
              [v5 addObject:v9];
              [v5 addObject:v13];
              [v5 addObject:v16];
              [v5 addObject:v20];
              if ([(VCVideoRuleCollections *)self isPayloadSupported:126])
              {
                [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:2 payload:126 encodingType:1];
                [(VCVideoRuleCollections *)self addVideoRules:v5 transportType:2 payload:126 encodingType:2];
              }

              v25 = 1;
              if ([(VCVideoRuleCollections *)self isPayloadSupported:123])
              {
                [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:2 payload:123 encodingType:1];
                [(VCVideoRuleCollections *)self addVideoRules:v5 transportType:2 payload:123 encodingType:2];
              }
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCVideoRuleCollectionsCamera setupH264CellularRules];
                }
              }

              v25 = 0;
              v24 = 0;
            }
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCVideoRuleCollectionsCamera setupH264CellularRules];
              }
            }

            v25 = 0;
            v24 = 0;
            v20 = 0;
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCVideoRuleCollectionsCamera setupH264CellularRules];
            }
          }

          v25 = 0;
          v24 = 0;
          v20 = 0;
          v16 = 0;
          v13 = 0;
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCVideoRuleCollectionsCamera setupH264CellularRules];
          }
        }

        v25 = 0;
        v24 = 0;
        v20 = 0;
        v16 = 0;
        v13 = 0;
        v9 = 0;
      }

      goto LABEL_13;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCamera setupH264CellularRules];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoRuleCollectionsCamera setupH264CellularRules];
    }
  }

  v25 = 0;
  v24 = 0;
  v20 = 0;
  v16 = 0;
  v13 = 0;
  v9 = 0;
  v5 = 0;
LABEL_13:

  return v25;
}

- (id)bestVideoRuleForEncodingType:(unsigned __int8)type aspectRatio:(double)ratio payload:(int)payload
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](self getVideoRulesForTransport:1 payload:*&payload encodingType:{type), "reverseObjectEnumerator"}];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      if (ratio == -1.0 || vabdd_f64([*(*(&v32 + 1) + 8 * v11) iWidth] / objc_msgSend(v12, "iHeight"), ratio) < 0.00000011920929)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136316418;
          v20 = v13;
          v21 = 2080;
          v22 = "[VCVideoRuleCollectionsCamera bestVideoRuleForEncodingType:aspectRatio:payload:]";
          v23 = 1024;
          v24 = 122;
          v25 = 2080;
          ratioCopy3 = COERCE_DOUBLE([objc_msgSend(v12 "description")]);
          v27 = 2048;
          ratioCopy2 = ratio;
          v29 = 1024;
          payloadCopy2 = payload;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Best video settings %s for aspect ratio=%g payload=%d", &v19, 0x36u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136316418;
        v20 = v13;
        v21 = 2080;
        v22 = "[VCVideoRuleCollectionsCamera bestVideoRuleForEncodingType:aspectRatio:payload:]";
        v23 = 1024;
        v24 = 122;
        v25 = 2080;
        ratioCopy3 = COERCE_DOUBLE([objc_msgSend(v12 "description")]);
        v27 = 2048;
        ratioCopy2 = ratio;
        v29 = 1024;
        payloadCopy2 = payload;
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Best video settings %s for aspect ratio=%g payload=%d", &v19, 0x36u);
      }
    }
  }

  else
  {
LABEL_16:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316162;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCVideoRuleCollectionsCamera bestVideoRuleForEncodingType:aspectRatio:payload:]";
        v23 = 1024;
        v24 = 120;
        v25 = 2048;
        ratioCopy3 = ratio;
        v27 = 1024;
        LODWORD(ratioCopy2) = payload;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not able to find for aspect ratio=%g payload=%d", &v19, 0x2Cu);
      }
    }

    return 0;
  }

  return v12;
}

- (id)bestVideoRuleForEncodingType:(unsigned __int8)type aspectRatio:(double)ratio
{
  typeCopy = type;
  v7 = [(VCVideoRuleCollectionsCamera *)self bestVideoRuleForEncodingType:type aspectRatio:123 payload:?];
  v8 = [(VCVideoRuleCollectionsCamera *)self bestVideoRuleForEncodingType:typeCopy aspectRatio:100 payload:ratio];
  if (ratio != -1.0 && v7 == 0 && v8 == 0)
  {
    v7 = [(VCVideoRuleCollectionsCamera *)self bestVideoRuleForEncodingType:typeCopy aspectRatio:123 payload:?];
    v8 = [(VCVideoRuleCollectionsCamera *)self bestVideoRuleForEncodingType:typeCopy aspectRatio:100 payload:-1.0];
  }

  v11 = v8;
  if (!v8)
  {
    return v7;
  }

  iWidth = [v8 iWidth];
  v13 = [v11 iHeight] * iWidth;
  iWidth2 = [v7 iWidth];
  if (v13 < ([v7 iHeight] * iWidth2))
  {
    return v7;
  }

  [v11 fRate];
  v16 = v15;
  [v7 fRate];
  if (v16 < v17)
  {
    return v7;
  }

  return v11;
}

- (BOOL)isHiDefCapable
{
  if (*(&self->super._encodingType + 1))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(&self->super._encodingType + 2);
  }

  return v2 & 1;
}

- (BOOL)getBestFrameWidth:(int *)width frameHeight:(int *)height frameRate:(float *)rate
{
  *&v38[7] = *MEMORY[0x1E69E9840];
  if (*height)
  {
    v9 = *width / *height;
  }

  else
  {
    [(VCVideoRuleCollectionsCamera *)self preferredAspectRatio];
    v9 = v10;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *width;
        v15 = *height;
        v27 = 136316418;
        v28 = v11;
        v29 = 2080;
        v30 = "[VCVideoRuleCollectionsCamera getBestFrameWidth:frameHeight:frameRate:]";
        v31 = 1024;
        v32 = 161;
        v33 = 1024;
        v34 = v14;
        v35 = 1024;
        v36 = v15;
        v37 = 2048;
        *v38 = v9;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d frameWidth=%d, frameHeight=%d, aspectRatio=%f", &v27, 0x32u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v25 = *width;
      v26 = *height;
      v27 = 136316418;
      v28 = v11;
      v29 = 2080;
      v30 = "[VCVideoRuleCollectionsCamera getBestFrameWidth:frameHeight:frameRate:]";
      v31 = 1024;
      v32 = 161;
      v33 = 1024;
      v34 = v25;
      v35 = 1024;
      v36 = v26;
      v37 = 2048;
      *v38 = v9;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d frameWidth=%d, frameHeight=%d, aspectRatio=%f", &v27, 0x32u);
    }
  }

  v16 = [(VCVideoRuleCollectionsCamera *)self bestVideoRuleForEncodingType:1 aspectRatio:v9];
  v17 = v16;
  if (v16)
  {
    if (width)
    {
      *width = [v16 iWidth];
    }

    *height = [v17 iHeight];
    if (rate)
    {
      [v17 fRate];
      *rate = v18;
      if (width)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v21 = *width;
            v22 = *height;
            v23 = *rate;
            v27 = 136316674;
            v28 = v19;
            v29 = 2080;
            v30 = "[VCVideoRuleCollectionsCamera getBestFrameWidth:frameHeight:frameRate:]";
            v31 = 1024;
            v32 = 177;
            v33 = 1024;
            v34 = v21;
            v35 = 1024;
            v36 = v22;
            v37 = 1024;
            *v38 = v23;
            v38[2] = 2048;
            *&v38[3] = v9;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %dx%d@%dfps, aspectRatio=%f", &v27, 0x38u);
          }
        }
      }
    }
  }

  return v17 != 0;
}

- (void)setupH264CellularRules
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate video H264 encoding rules array for cellular", v2, v3, v4, v5, v6);
}

@end