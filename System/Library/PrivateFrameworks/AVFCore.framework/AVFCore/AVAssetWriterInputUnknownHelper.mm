@interface AVAssetWriterInputUnknownHelper
- (AVAssetWriterInputUnknownHelper)initWithConfigurationState:(id)state;
- (AVAssetWriterInputUnknownHelper)initWithMediaType:(id)type outputSettings:(id)settings sourceFormatHint:(opaqueCMFormatDescription *)hint;
- (BOOL)_canAddTrackAssociationWithTrackOfInput:(id)input type:(id)type exceptionReason:(id *)reason;
- (BOOL)_validateLanguageCode:(id)code;
- (BOOL)canStartRespondingToEachPassDescriptionReturningReason:(id *)reason;
- (void)addTrackAssociationWithTrackOfInput:(id)input type:(id)type;
- (void)setAlternateGroupID:(signed __int16)d;
- (void)setExpectsMediaDataInRealTime:(BOOL)time;
- (void)setExtendedLanguageTag:(id)tag;
- (void)setLanguageCode:(id)code;
- (void)setLayer:(int64_t)layer;
- (void)setMarksOutputTrackAsEnabled:(BOOL)enabled;
- (void)setMaximizePowerEfficiency:(BOOL)efficiency;
- (void)setMediaDataLocation:(id)location;
- (void)setMediaTimeScale:(int)scale;
- (void)setMetadata:(id)metadata;
- (void)setNaturalSize:(CGSize)size;
- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)supported;
- (void)setPreferredMediaChunkAlignment:(int64_t)alignment;
- (void)setPreferredMediaChunkDuration:(id *)duration;
- (void)setPreferredMediaChunkSize:(int64_t)size;
- (void)setPreferredVolume:(float)volume;
- (void)setProvisionalAlternateGroupID:(signed __int16)d;
- (void)setSampleReferenceBaseURL:(id)l;
- (void)setSourcePixelBufferAttributes:(id)attributes;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation AVAssetWriterInputUnknownHelper

- (AVAssetWriterInputUnknownHelper)initWithConfigurationState:(id)state
{
  v19.receiver = self;
  v19.super_class = AVAssetWriterInputUnknownHelper;
  v5 = [(AVAssetWriterInputHelper *)&v19 initWithConfigurationState:?];
  if (![state mediaType])
  {
    v7 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "mediaType != nil";
    goto LABEL_8;
  }

  if (![state metadataItems])
  {
    v16 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState metadataItems] != nil";
    goto LABEL_8;
  }

  if (![state trackReferences])
  {
    v17 = v5;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "[configurationState trackReferences] != nil";
LABEL_8:
    v18 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, v15), 0}];
    objc_exception_throw(v18);
  }

  return v5;
}

- (AVAssetWriterInputUnknownHelper)initWithMediaType:(id)type outputSettings:(id)settings sourceFormatHint:(opaqueCMFormatDescription *)hint
{
  v9 = objc_alloc_init(AVAssetWriterInputConfigurationState);
  [(AVAssetWriterInputConfigurationState *)v9 setMediaType:type];
  [(AVAssetWriterInputConfigurationState *)v9 setOutputSettings:settings];
  [(AVAssetWriterInputConfigurationState *)v9 setSourceFormatHint:hint];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  v17 = v10;
  v18 = *(MEMORY[0x1E695EFD0] + 32);
  [(AVAssetWriterInputConfigurationState *)v9 setTransform:&v16];
  -[AVAssetWriterInputConfigurationState setMetadataItems:](v9, "setMetadataItems:", [MEMORY[0x1E695DEC8] array]);
  [(AVAssetWriterInputConfigurationState *)v9 setExpectsMediaDataInRealTime:0];
  [(AVAssetWriterInputConfigurationState *)v9 setNaturalSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(AVAssetWriterInputConfigurationState *)v9 setMarksOutputTrackAsEnabled:1];
  v11 = [type isEqualToString:@"soun"];
  v12 = 0.0;
  if (v11)
  {
    *&v12 = 1.0;
  }

  [(AVAssetWriterInputConfigurationState *)v9 setPreferredVolume:v12];
  -[AVAssetWriterInputConfigurationState setLayer:](v9, "setLayer:", [type isEqualToString:@"clcp"] << 63 >> 63);
  [(AVAssetWriterInputConfigurationState *)v9 setAlternateGroupID:0];
  [(AVAssetWriterInputConfigurationState *)v9 setProvisionalAlternateGroupID:0];
  -[AVAssetWriterInputConfigurationState setTrackReferences:](v9, "setTrackReferences:", [MEMORY[0x1E695DF20] dictionary]);
  v16 = *MEMORY[0x1E6960C70];
  *&v17 = *(MEMORY[0x1E6960C70] + 16);
  [(AVAssetWriterInputConfigurationState *)v9 setPreferredMediaChunkDuration:&v16];
  [(AVAssetWriterInputConfigurationState *)v9 setPreferredMediaChunkAlignment:FigGetCFPreferenceNumberWithDefault()];
  [(AVAssetWriterInputConfigurationState *)v9 setPreferredMediaChunkSize:0];
  if (([type isEqualToString:@"meta"] & 1) != 0 || objc_msgSend(type, "isEqualToString:", @"auxv"))
  {
    v13 = @"AVAssetWriterInputMediaDataLocationSparselyInterleavedWithMainMediaData";
  }

  else
  {
    v13 = @"AVAssetWriterInputMediaDataLocationInterleavedWithMainMediaData";
  }

  [(AVAssetWriterInputConfigurationState *)v9 setMediaDataLocation:v13];
  [(AVAssetWriterInputConfigurationState *)v9 setMaximizePowerEfficiency:0];
  v14 = [(AVAssetWriterInputUnknownHelper *)self initWithConfigurationState:v9];

  return v14;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(AVAssetWriterInputConfigurationState *)configurationState setTransform:v6];
}

- (void)setMetadata:(id)metadata
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setMetadataItems:metadata];
}

- (void)setMediaTimeScale:(int)scale
{
  v3 = *&scale;
  v6 = [(NSString *)[(AVAssetWriterInputHelper *)self mediaType] isEqualToString:@"soun"];
  if (v3 && v6)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v16 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector(v10 userInfo:{a2, @"Cannot set a non-default media time scale on an asset writer input with media type AVMediaTypeAudio", v11, v12, v13, v14, v15, v17), 0}];
    objc_exception_throw(v16);
  }

  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setMediaTimeScale:v3];
}

- (void)setExpectsMediaDataInRealTime:(BOOL)time
{
  timeCopy = time;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setExpectsMediaDataInRealTime:timeCopy];
}

- (void)setMaximizePowerEfficiency:(BOOL)efficiency
{
  efficiencyCopy = efficiency;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setMaximizePowerEfficiency:efficiencyCopy];
}

- (void)setNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setNaturalSize:width, height];
}

- (BOOL)_validateLanguageCode:(id)code
{
  v3 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:code];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D9B0]];
  return [v4 length] == 2 || objc_msgSend(v4, "length") == 3;
}

- (void)setLanguageCode:(id)code
{
  if (code && [code length] && !-[AVAssetWriterInputUnknownHelper _validateLanguageCode:](self, "_validateLanguageCode:", code))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"languageCode %@ does not conform to the ISO 639-2/T language code", v10, v11, v12, v13, v14, code), 0}];
    objc_exception_throw(v15);
  }

  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setLanguageCode:code];
}

- (void)setExtendedLanguageTag:(id)tag
{
  if (tag && [tag length] && !-[AVAssetWriterInputUnknownHelper _validateLanguageCode:](self, "_validateLanguageCode:", tag))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v15 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector(v9 userInfo:{a2, @"extendedLanguageTag %@ does not conform to the IETF BCP 47 (RFC 4646) language identifier", v10, v11, v12, v13, v14, tag), 0}];
    objc_exception_throw(v15);
  }

  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setExtendedLanguageTag:tag];
}

- (void)setMarksOutputTrackAsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setMarksOutputTrackAsEnabled:enabledCopy];
}

- (void)setPreferredVolume:(float)volume
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];
  *&v5 = volume;

  [(AVAssetWriterInputConfigurationState *)configurationState setPreferredVolume:v5];
}

- (void)setLayer:(int64_t)layer
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setLayer:layer];
}

- (void)setAlternateGroupID:(signed __int16)d
{
  dCopy = d;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setAlternateGroupID:dCopy];
}

- (void)setProvisionalAlternateGroupID:(signed __int16)d
{
  dCopy = d;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setProvisionalAlternateGroupID:dCopy];
}

- (void)setPerformsMultiPassEncodingIfSupported:(BOOL)supported
{
  supportedCopy = supported;
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setPerformsMultiPassEncodingIfSupported:supportedCopy];
}

- (void)setSourcePixelBufferAttributes:(id)attributes
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setSourcePixelBufferAttributes:attributes];
}

- (void)setPreferredMediaChunkDuration:(id *)duration
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];
  v5 = *duration;
  [(AVAssetWriterInputConfigurationState *)configurationState setPreferredMediaChunkDuration:&v5];
}

- (void)setPreferredMediaChunkAlignment:(int64_t)alignment
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setPreferredMediaChunkAlignment:alignment];
}

- (void)setPreferredMediaChunkSize:(int64_t)size
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setPreferredMediaChunkSize:size];
}

- (void)setMediaDataLocation:(id)location
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setMediaDataLocation:location];
}

- (void)setSampleReferenceBaseURL:(id)l
{
  configurationState = [(AVAssetWriterInputHelper *)self configurationState];

  [(AVAssetWriterInputConfigurationState *)configurationState setSampleReferenceBaseURL:l];
}

- (BOOL)_canAddTrackAssociationWithTrackOfInput:(id)input type:(id)type exceptionReason:(id *)reason
{
  if (![type isEqualToString:@"forc"])
  {
    if ([type isEqualToString:@"folw"] && (!-[NSString isEqualToString:](-[AVAssetWriterInputHelper mediaType](self, "mediaType"), "isEqualToString:", @"soun") || (objc_msgSend(objc_msgSend(input, "mediaType"), "isEqualToString:", @"sbtl") & 1) == 0))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = @"Associations of type AVTrackAssociationTypeSelectionFollower are supported only between AVMediaTypeAudio and AVMediaTypeSubtitle tracks.";
      goto LABEL_26;
    }

    if ([type isEqualToString:@"chap"])
    {
      if ([(NSString *)[(AVAssetWriterInputHelper *)self mediaType] isEqualToString:@"vide"])
      {
        v13 = 0;
      }

      else
      {
        v13 = ![(NSString *)[(AVAssetWriterInputHelper *)self mediaType] isEqualToString:@"soun"];
      }

      if ([objc_msgSend(input "mediaType")] & 1) != 0 || (objc_msgSend(objc_msgSend(input, "mediaType"), "isEqualToString:", @"text"))
      {
        v15 = 0;
      }

      else
      {
        v15 = [objc_msgSend(input "mediaType")] ^ 1;
      }

      if ((v13 | v15))
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = @"Associations of type AVTrackAssociationTypeChapterList are supported only between (AVMediaTypeVideo/AVMediaTypeAudio) and (AVMediaTypeVideo/AVMediaTypeMetadata/AVMediaTypeText) tracks.";
        goto LABEL_26;
      }
    }

    else
    {
      if ([type isEqualToString:@"cdsc"] && !-[NSString isEqualToString:](-[AVAssetWriterInputHelper mediaType](self, "mediaType"), "isEqualToString:", @"meta"))
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = @"Associations of type AVTrackAssociationTypeMetadataReferent are supported only between tracks of mediaType AVMediaTypeMetadata and other tracks.";
        goto LABEL_26;
      }

      if ([type length] != 4)
      {
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"trackAssociationType %@ must be 4 characters long.", type];
        goto LABEL_27;
      }
    }

LABEL_30:
    type = 0;
    v16 = 1;
    if (!reason)
    {
      return v16;
    }

    goto LABEL_28;
  }

  mediaType = [(AVAssetWriterInputHelper *)self mediaType];
  mediaType2 = [input mediaType];
  if (-[NSString isEqualToString:](mediaType, "isEqualToString:", @"sbtl") || -[NSString isEqualToString:](mediaType, "isEqualToString:", @"text")) && (([mediaType2 isEqualToString:@"sbtl"] & 1) != 0 || (objc_msgSend(mediaType2, "isEqualToString:", @"text")))
  {
    goto LABEL_30;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = @"Associations of type AVTrackAssociationTypeForcedSubtitlesOnly are supported only between tracks with media type AVMediaTypeSubtitle or AVMediaTypeText.";
LABEL_26:
  type = [v11 stringWithFormat:v12, v18];
LABEL_27:
  v16 = 0;
  if (reason)
  {
LABEL_28:
    *reason = type;
  }

  return v16;
}

- (void)addTrackAssociationWithTrackOfInput:(id)input type:(id)type
{
  v22 = 0;
  if (![(AVAssetWriterInputUnknownHelper *)self _canAddTrackAssociationWithTrackOfInput:input type:type exceptionReason:&v22])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = objc_opt_class();
    v20 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithClassAndSelector(v14 userInfo:{a2, v22, v15, v16, v17, v18, v19, v21), 0}];
    objc_exception_throw(v20);
  }

  configurationState = [(AVAssetWriterInputHelper *)self configurationState];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[AVAssetWriterInputConfigurationState trackReferences](configurationState, "trackReferences")}];
  v10 = [v9 objectForKey:type];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
    [v11 addObject:input];
  }

  else
  {
    v11 = [MEMORY[0x1E695DEC8] arrayWithObject:input];
  }

  [v9 setObject:v11 forKey:type];
  [(AVAssetWriterInputConfigurationState *)configurationState setTrackReferences:v9];
}

- (BOOL)canStartRespondingToEachPassDescriptionReturningReason:(id *)reason
{
  if (reason)
  {
    *reason = @"cannot be called before attaching to an instance of AVAssetWriter and calling -startWriting on this attached asset writer";
  }

  return 0;
}

@end