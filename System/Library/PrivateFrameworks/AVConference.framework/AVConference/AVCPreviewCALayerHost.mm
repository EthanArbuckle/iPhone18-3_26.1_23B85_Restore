@interface AVCPreviewCALayerHost
- (AVCPreviewCALayerHost)initWithPreview:(id)preview;
- (void)dealloc;
- (void)layoutSublayers;
@end

@implementation AVCPreviewCALayerHost

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCPreviewCALayerHost;
  [(CALayerHost *)&v3 dealloc];
}

- (AVCPreviewCALayerHost)initWithPreview:(id)preview
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AVCPreviewCALayerHost;
  v4 = [(CALayerHost *)&v6 init];
  if (v4)
  {
    v4->_preview = [MEMORY[0x1E6986630] weakObjectHolderWithObject:preview];
  }

  return v4;
}

- (void)layoutSublayers
{
  v43 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = AVCPreviewCALayerHost;
  [(AVCPreviewCALayerHost *)&v31 layoutSublayers];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
  if (CGRectIsNull(v44))
  {
    goto LABEL_17;
  }

  [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
  if (CGRectIsEmpty(v45))
  {
    goto LABEL_17;
  }

  [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
  [(AVCPreviewCALayerHost *)self setFrame:?];
  [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
  v7 = v6 * 0.5;
  [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
  [(AVCPreviewCALayerHost *)self setPosition:v7, v8 * 0.5];
  v9 = objc_opt_class();
  v10 = MEMORY[0x1E6986650];
  if (v9 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v2 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        superlayer = [(AVCPreviewCALayerHost *)self superlayer];
        [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
        NSStringFromRect(v46);
        *buf = 136316162;
        v33 = v11;
        OUTLINED_FUNCTION_1_29();
        v34 = 124;
        v35 = 2048;
        v36 = superlayer;
        v37 = 2112;
        selfCopy2 = v12;
        v13 = "AVConferencePreview [%s] %s:%d superlayer=%p bounds=%@";
        v14 = v2;
        v15 = 48;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_18_10())
    {
      v2 = OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      v16 = OUTLINED_FUNCTION_17_13();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        superlayer2 = [(AVCPreviewCALayerHost *)self superlayer];
        [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
        NSStringFromRect(v47);
        *buf = 136316674;
        v33 = superlayer;
        OUTLINED_FUNCTION_1_29();
        OUTLINED_FUNCTION_10_20();
        v37 = 2048;
        selfCopy2 = self;
        v39 = 2048;
        v40 = superlayer2;
        v41 = v18;
        v42 = v19;
        v13 = "AVConferencePreview [%s] %s:%d %@(%p) superlayer=%p bounds=%@";
        v14 = v3;
        v15 = 68;
        goto LABEL_13;
      }
    }
  }

  preview = self->_preview;
  if (!preview)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_18_10())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v29 = OUTLINED_FUNCTION_17_13();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }
      }

      goto LABEL_17;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_17;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_24_9())
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v33 = v2;
    OUTLINED_FUNCTION_1_29();
    v34 = 125;
LABEL_30:
    OUTLINED_FUNCTION_16_0();
LABEL_37:
    _os_log_error_impl(v23, v24, v25, v26, v27, v28);
    goto LABEL_17;
  }

  strong = [(VCWeakObjectHolder *)preview strong];
  if (strong)
  {
    v22 = strong;
    [-[AVCPreviewCALayerHost superlayer](self "superlayer")];
    [v22 setBounds:self forLayerHost:?];
    goto LABEL_17;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_17;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_24_9())
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v33 = v2;
    OUTLINED_FUNCTION_1_29();
    v34 = 129;
    goto LABEL_30;
  }

  if (OUTLINED_FUNCTION_18_10())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v30 = OUTLINED_FUNCTION_17_13();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_36:
      *buf = 136316162;
      v33 = superlayer;
      OUTLINED_FUNCTION_1_29();
      OUTLINED_FUNCTION_10_20();
      v37 = 2048;
      selfCopy2 = self;
      OUTLINED_FUNCTION_7_3();
      goto LABEL_37;
    }
  }

LABEL_17:
  [MEMORY[0x1E6979518] commit];
}

@end