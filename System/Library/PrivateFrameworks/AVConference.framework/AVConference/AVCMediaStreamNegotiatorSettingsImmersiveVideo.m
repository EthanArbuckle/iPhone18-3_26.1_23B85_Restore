@interface AVCMediaStreamNegotiatorSettingsImmersiveVideo
- (AVCMediaStreamNegotiatorSettingsImmersiveVideo)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
- (OpaqueCMTagCollection)newTagCollectionForMetadata;
- (OpaqueCMTagCollection)newTagCollectionForPixelBufferAtChannelIndex:(int)a3;
- (__CFArray)newTagCollectionArray;
- (void)newTagCollectionArray;
- (void)newTagCollectionForMetadata;
@end

@implementation AVCMediaStreamNegotiatorSettingsImmersiveVideo

- (AVCMediaStreamNegotiatorSettingsImmersiveVideo)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AVCMediaStreamNegotiatorSettingsImmersiveVideo;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (!v8)
  {
    return v8;
  }

  v9 = +[AVCMediaStreamNegotiatorSettings newFilterVideoRuleCollection:forDirection:](AVCMediaStreamNegotiatorSettings, "newFilterVideoRuleCollection:forDirection:", +[VCVideoRuleCollectionsImmersiveVideo sharedInstance], v8->super._mediaStreamDirection);
  v8->super._videoRuleCollections = v9;
  if (v9)
  {
    v8->super._tilesPerFrame = +[VCVideoRuleCollectionsImmersiveVideo tilesPerFrame];
    v8->super._ltrpEnabled = 0;
    v8->super._enableInterleavedEncoding = 1;
    v8->super._bitrateArbiterMode = 8;
    if (v6 == 1)
    {
      if (+[AVCMediaStreamNegotiatorSettingsImmersiveVideo isOfferSupported])
      {
        v10 = 3;
        goto LABEL_8;
      }
    }

    else if (v6 == 2)
    {
      v10 = 2;
LABEL_8:
      v8->_captureSource = v10;
      if ([AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:a3]> 1)
      {
        v13 = @"HDR mode is not supported";
      }

      else
      {
        v8->super._hdrModesSupported = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F579BF28, &unk_1F579BF40, 0}];
        v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F579BF58, 0}];
        v8->super._hdrModePixelFormats = v11;
        if (v11)
        {
          v8->super._videoBufferDescription = [(AVCMediaStreamNegotiatorSettingsImmersiveVideo *)v8 newTagCollectionArray];
          return v8;
        }

        v13 = @"Failed to create _hdrModePixelFormats";
      }

      goto LABEL_16;
    }

    v13 = @"Hardware does not support offerer device role";
  }

  else
  {
    v13 = @"no _videoRuleCollections is created";
  }

LABEL_16:
  if (a5)
  {
    *a5 = v13;
  }

  return 0;
}

- (OpaqueCMTagCollection)newTagCollectionForPixelBufferAtChannelIndex:(int)a3
{
  tagCollection[1] = *MEMORY[0x1E69E9840];
  tagCollection[0] = 0;
  if (CMTagCollectionCreateMutable(*MEMORY[0x1E695E480], 0, tagCollection))
  {
    [AVCMediaStreamNegotiatorSettingsImmersiveVideo newTagCollectionForPixelBufferAtChannelIndex:a3];
  }

  else
  {
    v4 = a3;
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *&v8.category = 0x56D646961;
    v8.value = 1986618469;
    CMTagCollectionAddTag(tagCollection[0], v8);
    *&v9.category = 0x765796573;
    v9.value = v5;
    CMTagCollectionAddTag(tagCollection[0], v9);
    *&v10.category = 0x27663686ELL;
    v10.value = v4;
    CMTagCollectionAddTag(tagCollection[0], v10);
    *&v11.category = 0x2766C6179;
    v11.value = v4;
    CMTagCollectionAddTag(tagCollection[0], v11);
    *&v12.category = 0x57061636BLL;
    v12.value = 1852796517;
    CMTagCollectionAddTag(tagCollection[0], v12);
  }

  return tagCollection[0];
}

- (OpaqueCMTagCollection)newTagCollectionForMetadata
{
  tagCollection[1] = *MEMORY[0x1E69E9840];
  tagCollection[0] = 0;
  if (CMTagCollectionCreateMutable(*MEMORY[0x1E695E480], 0, tagCollection))
  {
    [AVCMediaStreamNegotiatorSettingsImmersiveVideo newTagCollectionForMetadata];
  }

  else
  {
    *&v4.category = 0x56D646961;
    v4.value = 1835365473;
    CMTagCollectionAddTag(tagCollection[0], v4);
    *&v5.category = 0x27663686ELL;
    v5.value = 2;
    CMTagCollectionAddTag(tagCollection[0], v5);
  }

  return tagCollection[0];
}

- (__CFArray)newTagCollectionArray
{
  v9[5] = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = [(AVCMediaStreamNegotiatorSettingsImmersiveVideo *)self newTagCollectionForPixelBufferAtChannelIndex:0];
  if (!v4)
  {
    [(AVCMediaStreamNegotiatorSettingsImmersiveVideo *)v9 newTagCollectionArray];
  }

  v5 = v4;
  v6 = [(AVCMediaStreamNegotiatorSettingsImmersiveVideo *)self newTagCollectionForPixelBufferAtChannelIndex:1];
  v7 = [(AVCMediaStreamNegotiatorSettingsImmersiveVideo *)self newTagCollectionForMetadata];
  if (v7)
  {
    CFArrayAppendValue(Mutable, v5);
    CFArrayAppendValue(Mutable, v6);
    CFArrayAppendValue(Mutable, v7);
  }

  else
  {
    [AVCMediaStreamNegotiatorSettingsImmersiveVideo newTagCollectionArray];
  }

  CFRelease(v5);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

- (void)newTagCollectionForPixelBufferAtChannelIndex:(int)a1 .cold.1(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[AVCMediaStreamNegotiatorSettingsImmersiveVideo newTagCollectionForPixelBufferAtChannelIndex:]";
      v8 = 1024;
      v9 = 76;
      v10 = 1024;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create tagCollection for pixel buffer at channel index=%d", &v4, 0x22u);
    }
  }
}

- (void)newTagCollectionForMetadata
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create tagCollection for metadata channel", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)newTagCollectionArray
{
  VRTraceGetErrorLogLevelForModule();
  v2 = VRTraceErrorLogLevelToCSTR();
  v3 = *MEMORY[0x1E6986650];
  os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  *a1 = 136315650;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = "[AVCMediaStreamNegotiatorSettingsImmersiveVideo newTagCollectionArray]";
  *(a1 + 22) = 1024;
  *(a1 + 24) = 115;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create tagCollection for left pixel buffer", a1, 0x1Cu);
  __break(1u);
}

@end