@interface AVCMediaStreamNegotiatorSettingsCompositorServicesStereoVideo
- (AVCMediaStreamNegotiatorSettingsCompositorServicesStereoVideo)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
- (unint64_t)maxBandwidth;
@end

@implementation AVCMediaStreamNegotiatorSettingsCompositorServicesStereoVideo

- (unint64_t)maxBandwidth
{
  if (self->super._foveationIsSupported)
  {
    return 60000000;
  }

  else
  {
    return 40000000;
  }
}

- (AVCMediaStreamNegotiatorSettingsCompositorServicesStereoVideo)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  newCollectionOut = 0;
  v24 = 0;
  v22.receiver = self;
  v22.super_class = AVCMediaStreamNegotiatorSettingsCompositorServicesStereoVideo;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  v9 = v8;
  if (!v8)
  {
    Mutable = 0;
    v19 = @"Failed super init";
    goto LABEL_19;
  }

  if ((a4 - 3) < 0xFEu)
  {
    Mutable = 0;
    v19 = @"Invalid device role";
    goto LABEL_19;
  }

  v8->super._shouldNegotiateDirection = 1;
  v10 = +[AVCMediaStreamNegotiatorSettings newFilterVideoRuleCollection:forDirection:](AVCMediaStreamNegotiatorSettings, "newFilterVideoRuleCollection:forDirection:", +[VCVideoRuleCollectionsCompositorServices sharedInstance], v8->super._mediaStreamDirection);
  v9->super._screenRuleCollections = v10;
  if (!v10)
  {
    Mutable = 0;
    v19 = @"failed to create screenRuleCollections";
    goto LABEL_19;
  }

  v9->super._tilesPerFrame = +[VCVideoRuleCollectionsCompositorServices tilesPerFrame];
  v11 = 2;
  if (v9->super._mediaStreamDirection == 1)
  {
    v11 = 3;
  }

  v9->_captureSource = v11;
  v12 = VCFeatureFlagManager_FoveationEnabled();
  if (v12)
  {
    LOBYTE(v12) = +[VCHardwareSettings supportsFoveation];
  }

  v9->super._foveationIsSupported = v12;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v19 = @"failed to create tagCollectionArray";
    goto LABEL_19;
  }

  tags = *MEMORY[0x1E6960640];
  v28 = CMTagMakeWithSInt64Value(kCMTagCategory_ChannelID, 0);
  v15 = *MEMORY[0x1E6960650];
  v29 = *MEMORY[0x1E6960688];
  v30 = v15;
  CMTagCollectionCreate(v13, &tags, 4, &newCollectionOut);
  if (!newCollectionOut)
  {
    v19 = @"failed to create videoTagCollection";
    goto LABEL_21;
  }

  CFArrayAppendValue(Mutable, newCollectionOut);
  v25 = *MEMORY[0x1E6960638];
  v26 = CMTagMakeWithSInt64Value(kCMTagCategory_ChannelID, 1);
  CMTagCollectionCreate(v13, &v25, 2, &v24);
  if (!v24)
  {
    v19 = @"failed to create metadataTagCollection";
    goto LABEL_19;
  }

  CFArrayAppendValue(Mutable, v24);
  if (VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation())
  {
    v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F579BAA8, 0, v21}];
  }

  else
  {
    v17 = [AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:a3];
    if (!v17)
    {
      goto LABEL_17;
    }

    if (v17 != 3)
    {
      v19 = @"HDR mode is not supported";
      goto LABEL_19;
    }

    v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F579BAA8, &unk_1F579BAC0, 0}];
  }

  v9->super._hdrModesSupported = v16;
  if (!v16)
  {
    v19 = @"Failed to create _hdrModesSupported";
    goto LABEL_19;
  }

LABEL_17:
  v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F579BAD8, 0}];
  v9->super._hdrModePixelFormats = v18;
  if (v18)
  {
    v19 = 0;
    v9->super._videoBufferDescription = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:Mutable];
  }

  else
  {
    v19 = @"Failed to create _hdrModePixelFormats";
  }

LABEL_19:
  if (newCollectionOut)
  {
    CFRelease(newCollectionOut);
    newCollectionOut = 0;
  }

LABEL_21:
  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v19)
  {
    if (a5)
    {
      *a5 = v19;
    }

    return 0;
  }

  return v9;
}

@end