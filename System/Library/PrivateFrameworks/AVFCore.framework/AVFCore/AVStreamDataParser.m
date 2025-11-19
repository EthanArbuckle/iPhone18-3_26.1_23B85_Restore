@interface AVStreamDataParser
+ (BOOL)canParseExtendedMIMEType:(id)a3;
+ (NSArray)audiovisualMIMETypes;
+ (id)outputMIMECodecParameterForInputMIMECodecParameter:(id)a3;
- (AVStreamDataParser)init;
- (BOOL)_ICYIsAllowed;
- (BOOL)_MPEG2TSIsAllowed;
- (BOOL)_MovieFragmentStreamIsAllowed;
- (BOOL)_WebVTTIsAllowed;
- (BOOL)_attachedToExternalContentKeySession;
- (BOOL)hasProtector;
- (BOOL)isDefunct;
- (BOOL)preferSandboxedParsing;
- (NSArray)allowableMIMETypes;
- (NSData)contentProtectionSessionIdentifier;
- (id)_fullListOfAllowableMIMETypes;
- (id)streamingContentKeyRequestDataForApp:(id)a3 contentIdentifier:(id)a4 trackID:(int)a5 options:(id)a6 error:(id *)a7;
- (int)_attachToContentKeySession:(id)a3 contentKeyBoss:(OpaqueFigContentKeyBoss *)a4 failedSinceAlreadyAttachedToAnotherSession:(BOOL *)a5;
- (int)_createFigManifold:(OpaqueCMBlockBuffer *)a3 manifold:(OpaqueFigManifold *)a4;
- (int)_createFigManifoldRemote:(OpaqueCMBlockBuffer *)a3 manifold:(OpaqueFigManifold *)a4;
- (int)_createFigManifoldWithBlockBuffer:(OpaqueCMBlockBuffer *)a3 manifold:(OpaqueFigManifold *)a4;
- (int)_figManifold:(OpaqueFigManifold *)a3 formatDescription:(opaqueCMFormatDescription *)a4 orDecryptorDidChange:(void *)a5 forTrackID:(int)a6;
- (int)_figManifold:(OpaqueFigManifold *)a3 pushedSampleBuffer:(opaqueCMSampleBuffer *)a4 trackID:(int)a5 flags:(unsigned int)a6;
- (int)_registerForFigManifoldCallbacksForTrackID:(int)a3;
- (int)_unregisterForFigManifoldCallbacksForTrackID:(int)a3;
- (int64_t)status;
- (int64_t)status2;
- (void)_appendStreamData:(OpaqueCMBlockBuffer *)a3 withFlags:(unint64_t)a4;
- (void)_configureInternal;
- (void)_createAssetIfNecessary;
- (void)_setError:(id)a3;
- (void)_willDeallocOrFinalize;
- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4;
- (void)contentKeySessionContentProtectionSessionIdentifierDidChange:(id)a3;
- (void)dealloc;
- (void)expire;
- (void)processContentKeyResponseData:(id)a3 forTrackID:(int)a4;
- (void)processContentKeyResponseError:(id)a3 forTrackID:(int)a4;
- (void)providePendingMediaData;
- (void)setAllowableMIMETypes:(id)a3;
- (void)setPreferSandboxedParsing:(BOOL)a3;
- (void)setSession:(id)a3;
- (void)setShouldProvideMediaData:(BOOL)a3 forTrackID:(int)a4;
- (void)setStatus:(int64_t)a3;
@end

@implementation AVStreamDataParser

- (void)_configureInternal
{
  v3 = objc_alloc_init(AVStreamDataParserInternal);
  self->_parser = v3;
  CFRetain(v3);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  self->_parser->_threadSafetyQ = dispatch_queue_create("com.apple.AVStreamDataParser._threadSafetyQ", v4);
  self->_parser->_status = 0;
  self->_parser->_typeIdOfInitialFigManifold = 0;
  self->_parser->_samplesBeforeReadyTotalDuration = **&MEMORY[0x1E6960CC0];
  self->_parser->_startedUsingInternalContentKeySession = 0;
  self->_parser->_accumulatedInitializationData = 0;
  self->_parser->_preferSandboxedParsing = 0;
}

- (AVStreamDataParser)init
{
  v5.receiver = self;
  v5.super_class = AVStreamDataParser;
  v2 = [(AVStreamDataParser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVStreamDataParser *)v2 _configureInternal];
  }

  return v3;
}

- (void)_willDeallocOrFinalize
{
  v18 = *MEMORY[0x1E69E9840];
  parser = self->_parser;
  if (parser)
  {
    parser->_delegate = 0;
    v4 = self->_parser;
    if (v4->_threadSafetyQ)
    {
      dispatch_release(v4->_threadSafetyQ);
      v4 = self->_parser;
    }

    if (v4->_figManifold)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [(AVAsset *)v4->_asset tracks];
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            -[AVStreamDataParser _unregisterForFigManifoldCallbacksForTrackID:](self, "_unregisterForFigManifoldCallbacksForTrackID:", [*(*(&v13 + 1) + 8 * i) trackID]);
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      FigBaseObject = FigManifoldGetFigBaseObject();
      if (FigBaseObject)
      {
        v11 = FigBaseObject;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v12(v11);
        }
      }

      CFRelease(self->_parser->_figManifold);
      v4 = self->_parser;
    }

    CFRelease(v4);
  }
}

- (void)dealloc
{
  [(AVStreamDataParser *)self _willDeallocOrFinalize];
  parser = self->_parser;
  if (parser)
  {

    v4 = self->_parser;
    accumulatedInitializationData = v4->_accumulatedInitializationData;
    if (accumulatedInitializationData)
    {
      CFRelease(accumulatedInitializationData);
      v4 = self->_parser;
    }
  }

  v6.receiver = self;
  v6.super_class = AVStreamDataParser;
  [(AVStreamDataParser *)&v6 dealloc];
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  threadSafetyQ = self->_parser->_threadSafetyQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AVStreamDataParser_status__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(threadSafetyQ, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__AVStreamDataParser_status__block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) = v1 - (v1 > 2);
  return result;
}

- (int64_t)status2
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  threadSafetyQ = self->_parser->_threadSafetyQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVStreamDataParser_status2__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(threadSafetyQ, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setStatus:(int64_t)a3
{
  threadSafetyQ = self->_parser->_threadSafetyQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__AVStreamDataParser_setStatus___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(threadSafetyQ, v4);
}

uint64_t __32__AVStreamDataParser_setStatus___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 < 4 || v1 >= v3)
  {
    *(v2 + 24) = v1;
  }

  return result;
}

- (void)_setError:(id)a3
{
  [(AVStreamDataParser *)self setStatus:4];
  if (!self->_parser->_error)
  {
    self->_parser->_error = [a3 copy];
    if (self->_parser->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        parser = self->_parser;
        delegate = parser->_delegate;
        error = parser->_error;

        [(AVStreamDataParserOutputHandling *)delegate streamDataParser:self didFailToParseStreamDataWithError:error];
      }
    }
  }
}

+ (NSArray)audiovisualMIMETypes
{
  if (audiovisualMIMETypes_onceToken != -1)
  {
    +[AVStreamDataParser audiovisualMIMETypes];
  }

  return audiovisualMIMETypes_mimes;
}

void __42__AVStreamDataParser_audiovisualMIMETypes__block_invoke()
{
  audiovisualMIMETypes_mimes = objc_alloc_init(MEMORY[0x1E695DF70]);
  v0 = FigCopyWebVTTMIMETypes();
  if (v0)
  {
    v1 = v0;
    [audiovisualMIMETypes_mimes addObjectsFromArray:v0];
    CFRelease(v1);
  }

  v2 = FigCopyQTMovieMIMETypes();
  if (v2)
  {
    v3 = v2;
    [audiovisualMIMETypes_mimes addObjectsFromArray:v2];
    CFRelease(v3);
  }

  v4 = FigCopyMPEGTransportStreamMIMETypes();
  if (v4)
  {
    v5 = v4;
    [audiovisualMIMETypes_mimes addObjectsFromArray:v4];
    CFRelease(v5);
  }

  FigCopySetOfAudioSupportedMIMETypes();
}

+ (BOOL)canParseExtendedMIMEType:(id)a3
{
  +[AVStreamDataParser audiovisualMIMETypes];
  +[AVURLAsset _avfValidationPlist];
  return FigMediaValidatorValidateRFC4281ExtendedMIMETypeForStreaming() == 0;
}

- (void)setAllowableMIMETypes:(id)a3
{
  parser = self->_parser;
  if (parser->_figManifold)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"must only set allowableMIMETypes before any stream data is appended" userInfo:0]);
  }

  allowableMIMETypes = parser->_allowableMIMETypes;
  self->_parser->_allowableMIMETypes = [a3 copyWithZone:0];
}

- (NSArray)allowableMIMETypes
{
  v2 = [(NSArray *)self->_parser->_allowableMIMETypes copyWithZone:0];

  return v2;
}

- (void)_appendStreamData:(OpaqueCMBlockBuffer *)a3 withFlags:(unint64_t)a4
{
  number = 0;
  v40 = 0;
  if (!a3)
  {
    return;
  }

  if ([(AVStreamDataParser *)self status2]< 4)
  {
    parser = self->_parser;
    if (parser->_figManifold)
    {
      v7 = CFRetain(a3);
      if (!v7)
      {
        goto LABEL_52;
      }

LABEL_7:
      figManifold = self->_parser->_figManifold;
      if (!figManifold)
      {
        goto LABEL_52;
      }

      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v11 = v10(figManifold, 0, a4 & 1, v7);
        if (v11 == -16046)
        {
          cf = 0;
          v12 = self->_parser->_figManifold;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13 && !v13(v12, *MEMORY[0x1E6971EA0], *MEMORY[0x1E695E480], &cf))
          {
            [(AVStreamDataParser *)self providePendingMediaData];
            FigBaseObject = FigManifoldGetFigBaseObject();
            if (FigBaseObject)
            {
              v15 = FigBaseObject;
              v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
              if (v16)
              {
                v16(v15);
              }
            }

            v17 = self->_parser;
            v18 = v17->_figManifold;
            if (v18)
            {
              CFRelease(v18);
              self->_parser->_figManifold = 0;
              v17 = self->_parser;
            }

            self->_parser->_asset = 0;
            v19 = self->_parser;
            accumulatedInitializationData = v19->_accumulatedInitializationData;
            if (accumulatedInitializationData)
            {
              CFRelease(accumulatedInitializationData);
              self->_parser->_accumulatedInitializationData = 0;
              v19 = self->_parser;
            }

            self->_parser->_samplesBeforeReady = 0;
            self->_parser->_samplesBeforeReadyTotalSize = 0;
            v21 = self->_parser;
            v22 = MEMORY[0x1E6960CC0];
            *&v21->_samplesBeforeReadyTotalDuration.value = *MEMORY[0x1E6960CC0];
            v21->_samplesBeforeReadyTotalDuration.epoch = *(v22 + 16);
            self->_parser->_encounteredStreamDiscontinuity = 1;
            v23 = cf;
            if (cf)
            {
              [(AVStreamDataParser *)self _appendStreamData:cf withFlags:a4];
              CFRelease(cf);
              v23 = 0;
            }

            goto LABEL_50;
          }
        }

        else if (!v11)
        {
          v33 = self->_parser->_figManifold;
          v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v34)
          {
            if (!v34(v33, *MEMORY[0x1E6971E98], *MEMORY[0x1E695E480], &number))
            {
              LODWORD(cf) = 0;
              CFNumberGetValue(number, kCFNumberSInt32Type, &cf);
              if (cf)
              {
                if (cf == 2)
                {
                  v35 = 3;
                }

                else
                {
                  if (cf != 1)
                  {
                    goto LABEL_52;
                  }

                  if (self->_parser->_asset)
                  {
                    v35 = 2;
                  }

                  else
                  {
                    v35 = 1;
                  }
                }
              }

              else
              {
                v35 = 2;
              }

              [(AVStreamDataParser *)self setStatus:v35];
              goto LABEL_52;
            }
          }
        }
      }

      goto LABEL_48;
    }

    v26 = parser->_accumulatedInitializationData;
    p_accumulatedInitializationData = &parser->_accumulatedInitializationData;
    v25 = v26;
    if (!v26)
    {
      CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, p_accumulatedInitializationData);
      v25 = self->_parser->_accumulatedInitializationData;
      if (!v25)
      {
        goto LABEL_4;
      }
    }

    DataLength = CMBlockBufferGetDataLength(a3);
    CMBlockBufferAppendBufferReference(v25, a3, 0, DataLength, 0);
    v7 = CFRetain(self->_parser->_accumulatedInitializationData);
    if (!v7)
    {
      goto LABEL_52;
    }

    v28 = [(AVStreamDataParser *)self _createFigManifoldWithBlockBuffer:v7 manifold:&v40];
    if (v28 == -16048 || v28 == -16044)
    {
      if (v28 == -16048)
      {
        v30 = 0x200000;
      }

      else
      {
        v30 = 0x20000;
      }

      if (CMBlockBufferGetDataLength(v7) <= v30)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v28)
      {
        v36 = AVLocalizedErrorWithUnderlyingOSStatus(v28, 0);
        goto LABEL_49;
      }

      if (!v40)
      {
        goto LABEL_52;
      }

      typeIdOfInitialFigManifold = self->_parser->_typeIdOfInitialFigManifold;
      v32 = CFGetTypeID(v40);
      if (!typeIdOfInitialFigManifold)
      {
        self->_parser->_typeIdOfInitialFigManifold = v32;
        goto LABEL_61;
      }

      if (typeIdOfInitialFigManifold == v32)
      {
LABEL_61:
        self->_parser->_figManifold = CFRetain(v40);
        v37 = self->_parser->_accumulatedInitializationData;
        if (v37)
        {
          CFRelease(v37);
          self->_parser->_accumulatedInitializationData = 0;
        }

        goto LABEL_7;
      }
    }

LABEL_48:
    v36 = AVLocalizedError(@"AVFoundationErrorDomain", -11853, 0);
LABEL_49:
    v23 = v36;
LABEL_50:
    if (v23)
    {
      [(AVStreamDataParser *)self _setError:?];
    }

    goto LABEL_52;
  }

  NSLog(&cfstr_IgnoringAppend.isa);
LABEL_4:
  v7 = 0;
LABEL_52:
  if (number)
  {
    CFRelease(number);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v40)
  {
    CFRelease(v40);
  }
}

- (void)providePendingMediaData
{
  if ([(AVStreamDataParser *)self status2]< 4)
  {
    figManifold = self->_parser->_figManifold;
    if (figManifold)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v4 || v4(figManifold))
      {
        v5 = AVLocalizedError(@"AVFoundationErrorDomain", -11853, 0);

        [(AVStreamDataParser *)self _setError:v5];
      }
    }
  }

  else
  {
    NSLog(&cfstr_IgnoringProvid.isa);
  }
}

- (void)setShouldProvideMediaData:(BOOL)a3 forTrackID:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  if (![(AVAsset *)self->_parser->_asset trackWithTrackID:*&a4])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"AVErrorPersistentTrackIDKey";
    v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v4];
    objc_exception_throw([v10 exceptionWithName:v11 reason:@"trackID must be valid" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
  }

  trackIDsNotProvidingMedia = self->_parser->_trackIDsNotProvidingMedia;
  if (v5)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];

    [(NSMutableArray *)trackIDsNotProvidingMedia removeObject:v8];
  }

  else
  {
    if (!trackIDsNotProvidingMedia)
    {
      self->_parser->_trackIDsNotProvidingMedia = [MEMORY[0x1E695DF70] array];
      trackIDsNotProvidingMedia = self->_parser->_trackIDsNotProvidingMedia;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v4];

    [(NSMutableArray *)trackIDsNotProvidingMedia addObject:v9];
  }
}

- (void)_createAssetIfNecessary
{
  v22 = *MEMORY[0x1E69E9840];
  parser = self->_parser;
  if (!parser->_asset)
  {
    cf = 0;
    figManifold = parser->_figManifold;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(figManifold, *MEMORY[0x1E6971E90], *MEMORY[0x1E695E480], &cf);
      if (!v6 || v6 == -12784)
      {
        if (cf)
        {
          self->_parser->_asset = [AVAsset inspectionOnlyAssetWithFigAsset:?];
          CFRelease(cf);
        }

        else
        {
          self->_parser->_asset = [AVAsset inspectionOnlyAssetWithStreamDataParser:self tracks:self->_parser->_tracksBecomingReadyByTrackID];
        }

        v8 = self->_parser;
        if (v8->_asset)
        {

          self->_parser->_tracksBecomingReadyByTrackID = 0;
          v9 = self->_parser;
          if (v9->_delegate)
          {
            v10 = objc_opt_respondsToSelector();
            v9 = self->_parser;
            if (v10)
            {
              [(AVStreamDataParserOutputHandling *)v9->_delegate streamDataParser:self didParseStreamDataAsAsset:v9->_asset withDiscontinuity:v9->_encounteredStreamDiscontinuity];
              v9 = self->_parser;
            }
          }

          v9->_encounteredStreamDiscontinuity = 0;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          obj = self->_parser->_samplesBeforeReady;
          v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(obj);
                }

                -[AVStreamDataParser _figManifold:pushedSampleBuffer:trackID:flags:](self, "_figManifold:pushedSampleBuffer:trackID:flags:", [*(*(&v16 + 1) + 8 * i) objectForKey:@"figManifold"], objc_msgSend(*(*(&v16 + 1) + 8 * i), "objectForKey:", @"sbuf"), objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * i), "objectForKey:", @"trackID"), "intValue"), objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * i), "objectForKey:", @"flags"), "unsignedIntValue"));
              }

              v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
            }

            while (v12);
          }

          self->_parser->_samplesBeforeReady = 0;
        }
      }
    }
  }
}

+ (id)outputMIMECodecParameterForInputMIMECodecParameter:(id)a3
{
  v3 = [objc_msgSend(a3 stringByReplacingOccurrencesOfString:@"avc3" withString:{@"avc1", "stringByReplacingOccurrencesOfString:withString:", @"hev1", @"hvc1"}];

  return [v3 stringByReplacingOccurrencesOfString:@"dvhe" withString:@"dvh1"];
}

- (int)_figManifold:(OpaqueFigManifold *)a3 pushedSampleBuffer:(opaqueCMSampleBuffer *)a4 trackID:(int)a5 flags:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v34[4] = *MEMORY[0x1E69E9840];
  FormatDescription = CMSampleBufferGetFormatDescription(a4);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v13 = AVStringForOSType(MediaType);
  v14 = CMSampleBufferGetFormatDescription(a4);
  MediaSubType = CMFormatDescriptionGetMediaSubType(v14);
  AVStringForOSType(MediaSubType);
  parser = self->_parser;
  if (parser->_asset)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![(NSArray *)[(AVAssetTrack *)[(AVAsset *)self->_parser->_asset trackWithTrackID:v7] formatDescriptions] count])
    {
      v24 = CMSampleBufferGetFormatDescription(a4);
      if (v24)
      {
        v25 = v24;
        v26 = self->_parser->_asset;
        self->_parser->_asset = [(AVAsset *)self->_parser->_asset copyAssetWithReplacementFormatDescription:v25 forTrackID:v7];
        if (self->_parser->_delegate)
        {
          if (objc_opt_respondsToSelector())
          {
            [(AVStreamDataParserOutputHandling *)self->_parser->_delegate streamDataParser:self didParseStreamDataAsAsset:self->_parser->_asset withDiscontinuity:0];
          }
        }
      }
    }

    LODWORD(delegate) = [(AVStreamDataParser *)self shouldProvideMediaDataForTrackID:v7];
    if (delegate)
    {
      delegate = self->_parser->_delegate;
      if (delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          trackDecryptorsByTrackID = self->_parser->_trackDecryptorsByTrackID;
          if (trackDecryptorsByTrackID && -[NSMutableDictionary objectForKey:](trackDecryptorsByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v7]))
          {
            FigSampleBufferSetDecryptor();
          }

          [(AVStreamDataParserOutputHandling *)self->_parser->_delegate streamDataParser:self didProvideMediaData:a4 forTrackID:v7 mediaType:v13 flags:0];
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    samplesBeforeReady = parser->_samplesBeforeReady;
    if (!samplesBeforeReady)
    {
      self->_parser->_samplesBeforeReady = [MEMORY[0x1E695DF70] array];
      samplesBeforeReady = self->_parser->_samplesBeforeReady;
    }

    v33[0] = @"figManifold";
    v33[1] = @"sbuf";
    v34[0] = a3;
    v34[1] = a4;
    v33[2] = @"trackID";
    v34[2] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v33[3] = @"flags";
    v34[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    -[NSMutableArray addObject:](samplesBeforeReady, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4]);
    self->_parser->_samplesBeforeReadyTotalSize += CMSampleBufferGetTotalSampleSize(a4);
    memset(&v32, 0, sizeof(v32));
    CMSampleBufferGetOutputDuration(&v32, a4);
    if ((v32.flags & 0x1D) == 1)
    {
      v20 = self->_parser;
      lhs = v20->_samplesBeforeReadyTotalDuration;
      rhs = v32;
      CMTimeAdd(&time1, &lhs, &rhs);
      v20->_samplesBeforeReadyTotalDuration = time1;
    }

    v21 = self->_parser;
    samplesBeforeReadyTotalSize = v21->_samplesBeforeReadyTotalSize;
    if (samplesBeforeReadyTotalSize <= 0xA00000)
    {
      time1 = v21->_samplesBeforeReadyTotalDuration;
      *&lhs.value = kAVStreamDataParserMaxCachedOutputDuration;
      lhs.epoch = 0;
      if (CMTimeCompare(&time1, &lhs) < 1)
      {
LABEL_20:
        LODWORD(delegate) = 0;
        return delegate;
      }

      time1 = self->_parser->_samplesBeforeReadyTotalDuration;
      Seconds = CMTimeGetSeconds(&time1);
      *&time1.value = kAVStreamDataParserMaxCachedOutputDuration;
      time1.epoch = 0;
      v28 = CMTimeGetSeconds(&time1);
      NSLog(&cfstr_AbortingParsin_0.isa, *&Seconds, *&v28);
    }

    else
    {
      NSLog(&cfstr_AbortingParsin.isa, samplesBeforeReadyTotalSize, 10485760);
    }

    LODWORD(delegate) = -16047;
  }

  return delegate;
}

- (int)_figManifold:(OpaqueFigManifold *)a3 formatDescription:(opaqueCMFormatDescription *)a4 orDecryptorDidChange:(void *)a5 forTrackID:(int)a6
{
  v6 = *&a6;
  v50 = *MEMORY[0x1E69E9840];
  if (a4 && FigCPEIsSupportedFormatDescription())
  {
    p_parser = &self->_parser;
    self->_parser->_currentTrackID = v6;
    parser = self->_parser;
    trackFormatDescriptionsByTrackID = parser->_trackFormatDescriptionsByTrackID;
    if (!trackFormatDescriptionsByTrackID)
    {
      (*p_parser)->_trackFormatDescriptionsByTrackID = objc_alloc_init(MEMORY[0x1E695DF90]);
      parser = *p_parser;
      trackFormatDescriptionsByTrackID = (*p_parser)->_trackFormatDescriptionsByTrackID;
    }

    -[NSMutableDictionary setObject:forKey:](trackFormatDescriptionsByTrackID, "setObject:forKey:", a4, [MEMORY[0x1E696AD98] numberWithInt:parser->_currentTrackID]);
    Extension = CMFormatDescriptionGetExtension(a4, *MEMORY[0x1E69600A0]);
    if (Extension)
    {
      v13 = Extension;
      v14 = [MEMORY[0x1E695DF70] array];
      v15 = [v13 objectForKey:@"sinf"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v16)
        {
          v17 = *v47;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v47 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v46 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v14 addObject:v19];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v46 objects:v45 count:16];
          }

          while (v16);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 addObject:v15];
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if ([v14 count])
    {
      v20 = [MEMORY[0x1E695DF70] array];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v21 = [v14 countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v21)
      {
        v22 = *v47;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v14);
            }

            [v20 addObject:{objc_msgSend(*(*(&v46 + 1) + 8 * j), "base64EncodedStringWithOptions:", 0)}];
          }

          v21 = [v14 countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v21);
      }

      v43 = @"sinf";
      v44 = v20;
      v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objc_msgSend(MEMORY[0x1E695DF20] options:"dictionaryWithObjects:forKeys:count:" error:{&v44, &v43, 1), 1, 0}];
      goto LABEL_43;
    }

    MediaType = CMFormatDescriptionGetMediaType(a4);
    MediaSubType = CMFormatDescriptionGetMediaSubType(a4);
    v27 = 0;
    if (MediaSubType <= 2053202738)
    {
      if (MediaSubType > 1902212706)
      {
        if (MediaSubType != 1902212707)
        {
          v28 = 24931;
          goto LABEL_40;
        }
      }

      else if (MediaSubType != 1667331683)
      {
        v29 = 1700886115;
        goto LABEL_41;
      }
    }

    else if (((MediaSubType - 2053202739) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0) && MediaSubType != 2053464883)
    {
      v28 = 30307;
LABEL_40:
      v29 = v28 | 0x7A610000;
LABEL_41:
      if (MediaSubType != v29)
      {
        goto LABEL_44;
      }
    }

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:MediaSubType];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:MediaType];
    *&v46 = @"codc";
    *(&v46 + 1) = @"mtyp";
    v45[0] = v30;
    v45[1] = v31;
    *&v47 = @"cont";
    v45[2] = @"mpts";
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objc_msgSend(MEMORY[0x1E695DF20] options:"dictionaryWithObjects:forKeys:count:" error:{v45, &v46, 3), 1, 0}];
LABEL_43:
    v27 = v24;
LABEL_44:
    if (objc_opt_respondsToSelector())
    {
      [AVStreamDataParser(AVStreamDataParser_FigManifold) _figManifold:v27 formatDescription:&self->_parser orDecryptorDidChange:self forTrackID:?];
      goto LABEL_46;
    }

    if (objc_opt_respondsToSelector())
    {
      [(AVStreamDataParserOutputHandling *)self->_parser->_delegate streamDataParserWillProvideContentKeyRequestInitializationData:self forTrackID:self->_parser->_currentTrackID];
    }

    if (!(*p_parser)->_contentKeySession && (objc_opt_respondsToSelector() & 1) != 0 && !(*p_parser)->_contentKeySession)
    {
      self->_parser->_defaultContentKeySession = [[AVContentKeySession alloc] initWithKeySystem:@"FairPlayStreaming" storageDirectoryAtURL:0 internal:1];
      [(AVContentKeySession *)self->_parser->_defaultContentKeySession setDelegate:self];
      (*p_parser)->_contentKeySession = [[AVWeakReference alloc] initWithReferencedObject:(*p_parser)->_defaultContentKeySession];
    }

    v38 = [(AVWeakReference *)(*p_parser)->_contentKeySession referencedObject];
    v39 = [v38 copyCryptorForInitializationData:v27];
    v32 = v39;
    if (!v38 || v39)
    {
      if (!v39)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v40 = [v38 issueContentKeyRequestForInitializationData:v27];
      if ([(AVStreamDataParser *)self status2]> 3)
      {
        return -11860;
      }

      if ([v40 status] >= 5)
      {
        -[AVStreamDataParser _setError:](self, "_setError:", [v40 error]);
        return -11860;
      }

      v41 = [(AVWeakReference *)(*p_parser)->_contentKeySession referencedObject];
      v45[0] = 0;
      v32 = [v41 createCryptorIfNecessaryForInitializationData:v27 formatDescription:a4 error:v45];
      if (!v32)
      {
        [AVStreamDataParser(AVStreamDataParser_FigManifold) _figManifold:v45 formatDescription:&v46 orDecryptorDidChange:? forTrackID:?];
        return v46;
      }

      (*p_parser)->_startedUsingInternalContentKeySession = [v41 isInternal];
    }

    [AVStreamDataParser(AVStreamDataParser_FigManifold) _figManifold:v32 formatDescription:&self->_parser orDecryptorDidChange:? forTrackID:?];
LABEL_76:
    (*p_parser)->_currentTrackID = 0;
    goto LABEL_47;
  }

  [AVStreamDataParser(AVStreamDataParser_FigManifold) _figManifold:v6 formatDescription:? orDecryptorDidChange:? forTrackID:?];
LABEL_46:
  v32 = 0;
LABEL_47:
  v33 = self->_parser;
  if (v33->_asset)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([-[AVAsset formatDescriptionsForTrackID:](self->_parser->_asset formatDescriptionsForTrackID:{a6), "containsObject:", a4}] & 1) == 0)
    {
      v34 = self->_parser->_asset;
      self->_parser->_asset = [(AVAsset *)self->_parser->_asset copyAssetWithReplacementFormatDescription:a4 forTrackID:a6];
      if (self->_parser->_delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          [(AVStreamDataParserOutputHandling *)self->_parser->_delegate streamDataParser:self didParseStreamDataAsAsset:self->_parser->_asset withDiscontinuity:0];
        }
      }
    }
  }

  else if (a4)
  {
    v35 = [-[NSMutableDictionary objectForKey:](v33->_tracksBecomingReadyByTrackID objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a6)), "mutableCopy"}];
    v36 = v35;
    if (v35)
    {
      [v35 setObject:a4 forKey:@"formatDescription"];
      -[NSMutableDictionary setObject:forKey:](self->_parser->_tracksBecomingReadyByTrackID, "setObject:forKey:", v36, [MEMORY[0x1E696AD98] numberWithInt:a6]);
    }
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return 0;
}

- (int)_registerForFigManifoldCallbacksForTrackID:(int)a3
{
  v3 = *&a3;
  figManifold = self->_parser->_figManifold;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return -12782;
  }

  return v6(figManifold, v3, &kManifoldTrackCallbacks, self);
}

- (int)_unregisterForFigManifoldCallbacksForTrackID:(int)a3
{
  v3 = *&a3;
  figManifold = self->_parser->_figManifold;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v5)
  {
    return -12782;
  }

  return v5(figManifold, v3, 0, 0);
}

- (BOOL)_WebVTTIsAllowed
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_parser->_allowableMIMETypes)
  {
    return 1;
  }

  v3 = FigCopyWebVTTMIMETypes();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([(NSArray *)self->_parser->_allowableMIMETypes containsObject:*(*(&v10 + 1) + 8 * v7)])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v8 = 1;
    if (!v3)
    {
      return v8;
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
    if (!v3)
    {
      return v8;
    }
  }

  CFRelease(v3);
  return v8;
}

- (BOOL)_MPEG2TSIsAllowed
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_parser->_allowableMIMETypes)
  {
    return 1;
  }

  v3 = FigCopyMPEGTransportStreamMIMETypes();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([(NSArray *)self->_parser->_allowableMIMETypes containsObject:*(*(&v10 + 1) + 8 * v7)])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v8 = 1;
    if (!v3)
    {
      return v8;
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
    if (!v3)
    {
      return v8;
    }
  }

  CFRelease(v3);
  return v8;
}

- (BOOL)_MovieFragmentStreamIsAllowed
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_parser->_allowableMIMETypes)
  {
    return 1;
  }

  v3 = FigCopyQTMovieMIMETypes();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([(NSArray *)self->_parser->_allowableMIMETypes containsObject:*(*(&v10 + 1) + 8 * v7)])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v8 = 1;
    if (!v3)
    {
      return v8;
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
    if (!v3)
    {
      return v8;
    }
  }

  CFRelease(v3);
  return v8;
}

- (BOOL)_ICYIsAllowed
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_parser->_allowableMIMETypes)
  {
    return 1;
  }

  cf = 0;
  FigCopySetOfAudioSupportedMIMETypes();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allowableMIMETypes = self->_parser->_allowableMIMETypes;
  v4 = [(NSArray *)allowableMIMETypes countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allowableMIMETypes);
        }

        if ([0 containsObject:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)allowableMIMETypes countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

- (id)_fullListOfAllowableMIMETypes
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(AVStreamDataParser *)self _WebVTTIsAllowed])
  {
    v4 = FigCopyWebVTTMIMETypes();
    if (v4)
    {
      v5 = v4;
      [v3 addObjectsFromArray:v4];
      CFRelease(v5);
    }
  }

  if ([(AVStreamDataParser *)self _MovieFragmentStreamIsAllowed])
  {
    v6 = FigCopyQTMovieMIMETypes();
    if (v6)
    {
      v7 = v6;
      [v3 addObjectsFromArray:v6];
      CFRelease(v7);
    }
  }

  if ([(AVStreamDataParser *)self _MPEG2TSIsAllowed])
  {
    v8 = FigCopyMPEGTransportStreamMIMETypes();
    if (v8)
    {
      v9 = v8;
      [v3 addObjectsFromArray:v8];
      CFRelease(v9);
    }
  }

  if ([(AVStreamDataParser *)self _ICYIsAllowed])
  {
    FigCopySetOfAudioSupportedMIMETypes();
  }

  return v3;
}

- (int)_createFigManifoldRemote:(OpaqueCMBlockBuffer *)a3 manifold:(OpaqueFigManifold *)a4
{
  if (![(AVStreamDataParser *)self _WebVTTIsAllowed]|| (result = FigManifoldCreateRemoteForWebVTT(), result == -16044))
  {
    if (![(AVStreamDataParser *)self _MPEG2TSIsAllowed]|| (result = FigManifoldCreateRemoteForMPEG2(), result == -16044))
    {
      if (![(AVStreamDataParser *)self _MovieFragmentStreamIsAllowed]|| (result = FigManifoldCreateRemoteForMovieFragmentStream(), result == -16044))
      {
        if ([(AVStreamDataParser *)self _ICYIsAllowed])
        {
          v8 = *MEMORY[0x1E695E480];

          return MEMORY[0x1EEDCD4F8](v8, a3, _figManifoldDiscoveredNewTrackInStream, _figManifoldAllNewTracksReady, self, a4);
        }

        else
        {
          return -16044;
        }
      }
    }
  }

  return result;
}

- (int)_createFigManifold:(OpaqueCMBlockBuffer *)a3 manifold:(OpaqueFigManifold *)a4
{
  if (![(AVStreamDataParser *)self _WebVTTIsAllowed]|| (result = FigManifoldCreateForWebVTT(), result == -16044))
  {
    if (![(AVStreamDataParser *)self _MPEG2TSIsAllowed]|| (result = FigManifoldCreateForMPEG2(), result == -16044))
    {
      if (![(AVStreamDataParser *)self _MovieFragmentStreamIsAllowed]|| (result = FigManifoldCreateForMovieFragmentStream(), result == -16044))
      {
        if ([(AVStreamDataParser *)self _ICYIsAllowed])
        {
          v8 = *MEMORY[0x1E695E480];

          return MEMORY[0x1EEDCD4D8](v8, a3, _figManifoldDiscoveredNewTrackInStream, _figManifoldAllNewTracksReady, self, a4);
        }

        else
        {
          return -16044;
        }
      }
    }
  }

  return result;
}

- (int)_createFigManifoldWithBlockBuffer:(OpaqueCMBlockBuffer *)a3 manifold:(OpaqueFigManifold *)a4
{
  if ([(AVStreamDataParser *)self preferSandboxedParsing])
  {
    v7 = [(AVStreamDataParser *)self _createFigManifoldRemote:a3 manifold:a4];
  }

  else
  {
    v7 = [(AVStreamDataParser *)self _createFigManifold:a3 manifold:a4];
  }

  v8 = v7;
  if (*a4)
  {
    self->_parser->_typeIdOfInitialFigManifold = CFGetTypeID(*a4);
  }

  return v8;
}

- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4
{
  v6 = self->_parser->_sessionKeyRequest;
  self->_parser->_sessionKeyRequest = a4;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_parser->_delegate;
    v8 = [a4 initializationData];
    currentTrackID = self->_parser->_currentTrackID;

    [(AVStreamDataParserOutputHandling *)delegate streamDataParser:self didProvideContentKeyRequestInitializationData:v8 forTrackID:currentTrackID];
  }
}

- (void)contentKeySessionContentProtectionSessionIdentifierDidChange:(id)a3
{
  v4 = [a3 contentProtectionSessionIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [(AVWeakReference *)self->_parser->_legacyStreamSession referencedObject];

    [v6 setFigCPEProtectorSessionIdentifier:v5];
  }
}

- (NSData)contentProtectionSessionIdentifier
{
  v2 = [(AVWeakReference *)self->_parser->_contentKeySession referencedObject];

  return [v2 contentProtectionSessionIdentifier];
}

- (void)processContentKeyResponseData:(id)a3 forTrackID:(int)a4
{
  v20 = *MEMORY[0x1E69E9840];
  parser = self->_parser;
  sessionKeyRequest = parser->_sessionKeyRequest;
  if (!sessionKeyRequest)
  {
    legacyStreamSession = parser->_legacyStreamSession;
    if (legacyStreamSession && (v15 = 0u, v16 = 0u, v17 = 0u, v18 = 0u, v9 = [-[AVWeakReference referencedObject](legacyStreamSession referencedObject], (v10 = objc_msgSend(v9, "countByEnumeratingWithState:objects:count:", &v15, v19, 16)) != 0))
    {
      v11 = v10;
      v12 = *v16;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (v14 != self)
        {
          sessionKeyRequest = v14->_parser->_sessionKeyRequest;
          if (sessionKeyRequest)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          sessionKeyRequest = 0;
          if (v11)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      sessionKeyRequest = 0;
    }
  }

  [(AVContentKeyRequest *)sessionKeyRequest processContentKeyResponse:[AVContentKeyResponse contentKeyResponseWithFairPlayStreamingKeyResponseData:a3, *&a4]];
}

- (void)processContentKeyResponseError:(id)a3 forTrackID:(int)a4
{
  v4 = a3;
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = @"AVErrorPersistentTrackIDKey";
    v7[0] = [MEMORY[0x1E696AD98] numberWithInt:*&a4];
    v4 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  }

  [(AVStreamDataParser *)self _setError:v4, *&a4];
  [(AVContentKeyRequest *)self->_parser->_sessionKeyRequest processContentKeyResponseError:v4];
}

- (id)streamingContentKeyRequestDataForApp:(id)a3 contentIdentifier:(id)a4 trackID:(int)a5 options:(id)a6 error:(id *)a7
{
  v9 = *&a5;
  [-[AVWeakReference referencedObject](self->_parser->_legacyStreamSession "referencedObject")];
  v13 = [a6 mutableCopy];
  v14 = -[NSMutableDictionary objectForKeyedSubscript:](self->_parser->_trackFormatDescriptionsByTrackID, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v9]);
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:0x1F0AA1FD0];
  }

  sessionKeyRequest = self->_parser->_sessionKeyRequest;

  return [(AVContentKeyRequest *)sessionKeyRequest contentKeyRequestDataForApp:a3 contentIdentifier:a4 options:v13 error:a7];
}

- (BOOL)hasProtector
{
  v2 = [(AVWeakReference *)self->_parser->_contentKeySession referencedObject];

  return [v2 hasProtector];
}

- (void)expire
{
  [(AVStreamDataParser *)self setStatus:5];
  v3 = [(AVWeakReference *)self->_parser->_contentKeySession referencedObject];

  [v3 expire];
}

- (void)setSession:(id)a3
{
  if (a3)
  {
    [a3 referencedObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    parser = self->_parser;
    p_parser = &self->_parser;
    v5 = parser;
    if (parser->_legacyStreamSession)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = @"AVStreamDataParser can't attach to an AVContentKeySession when it's already attached to an AVStreamSession";
    }

    else
    {
      if (!v5->_startedUsingInternalContentKeySession)
      {
        v8 = v5->_contentKeySession;
        v9 = a3;
        v10 = p_parser;
LABEL_10:
        (*v10)->_contentKeySession = v9;
        return;
      }

      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = @"AVStreamDataParser can't attach to an AVContentKeySession after it started using its own AVContentKeySession for key loading";
    }

    objc_exception_throw([v14 exceptionWithName:v15 reason:v16 userInfo:0]);
  }

  v10 = &self->_parser;
  v11 = self->_parser;
  if (v11->_legacyStreamSession)
  {
    [(AVStreamDataParser *)self setStatus:5];
    v12 = self->_parser->_legacyStreamSession;
    self->_parser->_legacyStreamSession = 0;
    v11 = self->_parser;
  }

  if (v11->_contentKeySession)
  {
    [(AVStreamDataParser *)self setStatus:5];
    v13 = self->_parser->_contentKeySession;
    v9 = 0;
    goto LABEL_10;
  }
}

- (BOOL)_attachedToExternalContentKeySession
{
  v3 = [(AVWeakReference *)self->_parser->_contentKeySession referencedObject];
  if (v3)
  {
    v4 = [v3 isInternal] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if (self->_parser->_legacyStreamSession)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (int)_attachToContentKeySession:(id)a3 contentKeyBoss:(OpaqueFigContentKeyBoss *)a4 failedSinceAlreadyAttachedToAnotherSession:(BOOL *)a5
{
  v7 = [a3 _weakReference];
  if (self->_parser->_contentKeySession == v7)
  {
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    [(AVStreamDataParser *)self setSession:v7];
  }

  return 0;
}

- (void)setPreferSandboxedParsing:(BOOL)a3
{
  threadSafetyQ = self->_parser->_threadSafetyQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__AVStreamDataParser_AVStreamDataParserSandboxedParsing__setPreferSandboxedParsing___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(threadSafetyQ, v4);
}

uint64_t __84__AVStreamDataParser_AVStreamDataParserSandboxedParsing__setPreferSandboxedParsing___block_invoke(uint64_t result)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(result + 40);
  if (*(v3 + 200) != v4 && *(v3 + 64))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"must only set preferSandboxedParsing before any stream data is appended" userInfo:{0, v1, v2}]);
  }

  *(v3 + 200) = v4;
  return result;
}

- (BOOL)preferSandboxedParsing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  threadSafetyQ = self->_parser->_threadSafetyQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__AVStreamDataParser_AVStreamDataParserSandboxedParsing__preferSandboxedParsing__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(threadSafetyQ, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDefunct
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  threadSafetyQ = self->_parser->_threadSafetyQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVStreamDataParser_AVIntegrityChecking__isDefunct__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(threadSafetyQ, v5);
  v3 = *(v7 + 24) == 1;
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end