@interface AVCMediaStreamNegotiatorSettingsRemoteCamera
- (AVCMediaStreamNegotiatorSettingsRemoteCamera)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
- (unint64_t)minBandwidth;
@end

@implementation AVCMediaStreamNegotiatorSettingsRemoteCamera

- (AVCMediaStreamNegotiatorSettingsRemoteCamera)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AVCMediaStreamNegotiatorSettingsRemoteCamera;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (!v8)
  {
    return v8;
  }

  v9 = +[VCVideoRuleCollectionsRemoteCamera sharedInstance];
  v8->super._videoRuleCollections = &v9->super;
  if (!v9)
  {
    v10 = @"no _videoRuleCollections is created";
    goto LABEL_21;
  }

  v8->super._tilesPerFrame = +[VCVideoRuleCollectionsRemoteCamera tilesPerFrame];
  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_5;
    }

LABEL_7:
    if (a3 && [objc_msgSend(a3 objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorRemoteCameraDisparityFormat", "BOOLValue"}])
    {
      v8->_isDisparityPixelFormat = 1;
    }

    v11 = 2;
    if (v6 == 1)
    {
      v11 = 3;
    }

    v8->_captureSource = v11;
    v12 = [AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:a3];
    if (v12 > 1)
    {
      v10 = @"HDR mode is not supported";
    }

    else
    {
      if (v12 != 1)
      {
        return v8;
      }

      v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F579A350, &unk_1F579A368, 0}];
      v8->super._hdrModesSupported = v13;
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F579A380, 0}];
        v8->super._hdrModePixelFormats = v14;
        if (v14)
        {
          return v8;
        }

        v10 = @"Failed to create _hdrModePixelFormats";
      }

      else
      {
        v10 = @"Failed to create _hdrModesSupported";
      }
    }

    goto LABEL_21;
  }

  if (+[AVCMediaStreamNegotiatorSettingsRemoteCamera isOfferSupported])
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = @"Hardware does not support offerer device role";
LABEL_21:
  if (a5)
  {
    *a5 = v10;
  }

  return 0;
}

- (unint64_t)minBandwidth
{
  if (self->_isDisparityPixelFormat)
  {
    return 500000;
  }

  else
  {
    return 5000000;
  }
}

@end