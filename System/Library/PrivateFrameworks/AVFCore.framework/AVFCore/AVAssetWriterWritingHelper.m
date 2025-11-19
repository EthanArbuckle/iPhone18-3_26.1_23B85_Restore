@interface AVAssetWriterWritingHelper
+ (id)finalStepWorkaroundOperationWithFigAssetWriter:(OpaqueFigAssetWriter *)a3;
+ (id)finishWritingDelegateOperationWithAssetWriter:(id)a3 andFigAssetWriter:(OpaqueFigAssetWriter *)a4 andDelegate:(id)a5;
+ (id)prepareInputsOperationsWithInputs:(id)a3;
- (AVAssetWriterWritingHelper)initWithConfigurationState:(id)a3 assetWriter:(id)a4 error:(id *)a5;
- (BOOL)_isDefunct;
- (BOOL)areAllInputsPreferredMediaChunkAlignmentEqualTo:(int64_t)a3;
- (BOOL)areAudioAndVideoOutputSettingsPassthrough;
- (BOOL)checkAVAssetWriterInputConfigurationToOutputSegmentDataForFragmentedMPEG4FileTypeProfile:(id)a3 preferredOutputSegmentInterval:(id *)a4 returningDebugDescription:(id *)a5;
- (BOOL)checkConfigurationToOutputSegmentDataReturningDebugDescription:(id *)a3;
- (BOOL)hasProRes4KHighFPSVideoOutputSetting;
- (BOOL)hasProResVideoOutputSetting;
- (BOOL)isConfiguredForFragmentedMPEG4;
- (BOOL)isOutputFileOnExternalStorageDevice;
- (OpaqueFigAssetWriter)_retainedFigAssetWriter;
- (id)_makeFinishWritingOperationsWithCustomFigAssetWriterFinishOperation:(id)a3;
- (id)_transitionToFinishWritingHelperWithFinishWritingOperations:(id)a3;
- (id)figTrackReferences;
- (id)storageSpacePreallocationSize;
- (id)writerInputForTrackID:(int)a3;
- (void)cancelWriting;
- (void)dealloc;
- (void)endSessionAtSourceTime:(id *)a3;
- (void)finishWriting;
- (void)finishWritingWithCompletionHandler:(id)a3;
- (void)flushSegment;
- (void)prepareEncodedSampleBuffersForPaddedWrites;
- (void)setAllInputsFigPreferredChunkAlignmentTo:(int64_t)a3;
- (void)startSessionAtSourceTime:(id *)a3;
- (void)transitionToFailedStatusWithError:(id)a3;
@end

@implementation AVAssetWriterWritingHelper

- (AVAssetWriterWritingHelper)initWithConfigurationState:(id)a3 assetWriter:(id)a4 error:(id *)a5
{
  v157[1] = *MEMORY[0x1E69E9840];
  v151.receiver = self;
  v151.super_class = AVAssetWriterWritingHelper;
  v152 = 0;
  v7 = [(AVAssetWriterHelper *)&v151 initWithConfigurationState:a3];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_158;
  }

  v9 = [(NSURL *)[(AVAssetWriterHelper *)v7 outputURL] pathExtension];
  if (v9 && [AVUnsupportedOutputURLPathExtensions() containsObject:v9])
  {
    v10 = -11843;
LABEL_5:
    v11 = 0;
    goto LABEL_10;
  }

  *time1 = 0;
  if ([(AVAssetWriterWritingHelper *)v8 checkConfigurationToOutputSegmentDataReturningDebugDescription:time1])
  {
    v12 = [(AVAssetWriterHelper *)v8 outputURL];
    [(AVAssetWriterHelper *)v8 delegate];
    if (objc_opt_respondsToSelector())
    {
      v120 = 1;
    }

    else
    {
      v120 = objc_opt_respondsToSelector();
    }

    v122 = v12;
    v124 = a5;
    if (objc_opt_respondsToSelector())
    {
      v119 = 1;
    }

    else
    {
      v119 = objc_opt_respondsToSelector();
    }

    v13 = MEMORY[0x1E695DF90];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVAssetWriterHelper shouldOptimizeForNetworkUse](v8, "shouldOptimizeForNetworkUse")}];
    v15 = [v13 dictionaryWithObjectsAndKeys:{v14, *MEMORY[0x1E6971578], 0}];
    v16 = MEMORY[0x1E695DF90];
    v17 = [(AVMediaFileType *)[(AVAssetWriterHelper *)v8 mediaFileType] figFormatReaderFileFormat];
    v121 = [v16 dictionaryWithObjectsAndKeys:{v17, *MEMORY[0x1E6971B28], 0}];
    CFRunLoopGetCurrent();
    v18 = [(AVAssetWriterHelper *)v8 directoryForTemporaryFiles];
    v19 = [AVMediaFileType figFileTypeProfileFromAVFileTypeProfile:[(AVAssetWriterHelper *)v8 outputFileTypeProfile]];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v20 = [(AVAssetWriterHelper *)v8 inputs];
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v147 objects:v155 count:16];
    if (v21)
    {
      v22 = v21;
      LOBYTE(v23) = 0;
      v24 = *v148;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v148 != v24)
          {
            objc_enumerationMutation(v20);
          }

          if (v23)
          {
            v23 = 1;
          }

          else
          {
            v23 = [*(*(&v147 + 1) + 8 * i) expectsMediaDataInRealTime];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v147 objects:v155 count:16];
      }

      while (v22);
      if (v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = 0;
      if (v18)
      {
LABEL_27:
        [v15 setObject:v18 forKey:*MEMORY[0x1E69735B8]];
      }
    }

    a5 = v124;
    if (v23)
    {
      [v15 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6971580]];
    }

    if (!FigGetCFPreferenceBooleanWithDefault())
    {
      v27 = 0;
      if (!v23)
      {
        goto LABEL_46;
      }

LABEL_42:
      if ([(AVAssetWriterWritingHelper *)v8 isOutputFileOnExternalStorageDevice])
      {
        if ([(AVAssetWriterWritingHelper *)v8 hasProRes4KHighFPSVideoOutputSetting])
        {
          v28 = [(AVAssetWriterWritingHelper *)v8 storageSpacePreallocationSize];
          if (v28)
          {
            [v15 setObject:v28 forKey:*MEMORY[0x1E6971598]];
          }
        }
      }

LABEL_46:
      if ([(AVAssetWriterHelper *)v8 usesVirtualCaptureCard])
      {
        [v15 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6971590]];
      }

      if (v19)
      {
        [v121 setObject:v19 forKey:*MEMORY[0x1E6971BA8]];
      }

      v8->_figAssetWriterCallbackContextToken = [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
      [(AVAssetWriterHelper *)v8 requiresInProcessOperation];
      [(AVAssetWriterWritingHelper *)v8 areAudioAndVideoOutputSettingsPassthrough];
      if (!FigGetCFPreferenceBooleanWithDefault())
      {
        if (v122)
        {
          v30 = FigAssetWriterCreateWithURL();
        }

        else
        {
          if (((v120 | v119) & 1) == 0)
          {
            goto LABEL_63;
          }

          v30 = FigAssetWriterCreateForWritingFragmentedData();
        }

        v31 = v30;
        if (v30)
        {
          goto LABEL_59;
        }

LABEL_63:
        if (v8->_figAssetWriter)
        {
          v123 = v27;
          v33 = [[AVAssetWriterFigAssetWriterNotificationHandler alloc] initWithFigAssetWriter:v8->_figAssetWriter];
          v8->_notificationHandler = v33;
          [(AVAssetWriterFigAssetWriterNotificationHandler *)v33 setDelegate:v8];
          v145 = 0uLL;
          v146 = 0;
          [(AVAssetWriterHelper *)v8 movieFragmentInterval];
          if ((BYTE12(v145) & 0x1D) == 1)
          {
            *time1 = v145;
            *&time1[16] = v146;
            *time2 = *MEMORY[0x1E6960CC0];
            *&time2[16] = *(MEMORY[0x1E6960CC0] + 16);
            if (CMTimeCompare(time1, time2) >= 1)
            {
              v34 = *MEMORY[0x1E695E480];
              *time1 = v145;
              *&time1[16] = v146;
              v35 = CMTimeCopyAsDictionary(time1, v34);
              if (v35)
              {
                v36 = v35;
                figAssetWriter = v8->_figAssetWriter;
                v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v38)
                {
                  v38(figAssetWriter, *MEMORY[0x1E6971C18], v36);
                }

                CFRelease(v36);
              }
            }
          }

          v143 = 0uLL;
          v144 = 0;
          [(AVAssetWriterHelper *)v8 initialMovieFragmentInterval];
          if ((BYTE12(v143) & 0x1D) == 1)
          {
            *time1 = v143;
            *&time1[16] = v144;
            *time2 = *MEMORY[0x1E6960CC0];
            *&time2[16] = *(MEMORY[0x1E6960CC0] + 16);
            if (CMTimeCompare(time1, time2) >= 1)
            {
              v39 = *MEMORY[0x1E695E480];
              *time1 = v143;
              *&time1[16] = v144;
              v40 = CMTimeCopyAsDictionary(time1, v39);
              if (v40)
              {
                v41 = v40;
                v42 = v8->_figAssetWriter;
                v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v43)
                {
                  v43(v42, *MEMORY[0x1E6971BE0], v41);
                }

                CFRelease(v41);
              }
            }
          }

          v141 = 0uLL;
          v142 = 0;
          [(AVAssetWriterHelper *)v8 preferredOutputSegmentInterval];
          *time1 = v141;
          *&time1[16] = v142;
          *time2 = *MEMORY[0x1E6960C68];
          *&time2[16] = *(MEMORY[0x1E6960C68] + 16);
          if (!CMTimeCompare(time1, time2) || (BYTE12(v141) & 0x1D) == 1 && (*time1 = v141, *&time1[16] = v142, *time2 = *MEMORY[0x1E6960CC0], *&time2[16] = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(time1, time2) >= 1))
          {
            v44 = *MEMORY[0x1E695E480];
            *time1 = v141;
            *&time1[16] = v142;
            v45 = CMTimeCopyAsDictionary(time1, v44);
            if (v45)
            {
              v46 = v45;
              FigBaseObject = FigAssetWriterGetFigBaseObject();
              v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v48)
              {
                v48(FigBaseObject, *MEMORY[0x1E69715B8], v46);
              }

              CFRelease(v46);
            }
          }

          v139 = 0uLL;
          v140 = 0;
          [(AVAssetWriterHelper *)v8 initialSegmentStartTime];
          if ((BYTE12(v139) & 0x1D) == 1)
          {
            v49 = *MEMORY[0x1E695E480];
            *time1 = v139;
            *&time1[16] = v140;
            v50 = CMTimeCopyAsDictionary(time1, v49);
            if (v50)
            {
              v51 = v50;
              v52 = FigAssetWriterGetFigBaseObject();
              v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v53)
              {
                v53(v52, *MEMORY[0x1E69715A0], v51);
              }

              CFRelease(v51);
            }
          }

          v54 = [(AVAssetWriterHelper *)v8 initialMovieFragmentSequenceNumber];
          if (v54 >= 1)
          {
            v55 = v8->_figAssetWriter;
            v56 = [MEMORY[0x1E696AD98] numberWithInteger:v54];
            v57 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v57)
            {
              v57(v55, *MEMORY[0x1E6971C40], v56);
            }
          }

          if ([(AVAssetWriterHelper *)v8 producesCombinableFragments])
          {
            v58 = v8->_figAssetWriter;
            v59 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v59)
            {
              v59(v58, *MEMORY[0x1E6971C58], *MEMORY[0x1E695E4D0]);
            }
          }

          v137 = 0uLL;
          v138 = 0;
          [(AVAssetWriterHelper *)v8 overallDurationHint];
          if (BYTE12(v137))
          {
            v60 = *MEMORY[0x1E695E480];
            *time1 = v137;
            *&time1[16] = v138;
            v61 = CMTimeCopyAsDictionary(time1, v60);
            if (v61)
            {
              v62 = v61;
              v63 = v8->_figAssetWriter;
              v64 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v64)
              {
                v64(v63, *MEMORY[0x1E6971C10], v62);
              }

              CFRelease(v62);
            }
          }

          v65 = [(AVAssetWriterHelper *)v8 metadata];
          if (v65)
          {
            v66 = v65;
            if ([(NSArray *)v65 count])
            {
              v67 = [AVMetadataItem _figMetadataPropertyFromMetadataItems:v66];
              v68 = FigAssetWriterGetFigBaseObject();
              v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v69)
              {
                v69(v68, *MEMORY[0x1E69715B0], v67);
              }
            }
          }

          v70 = [(AVAssetWriterHelper *)v8 movieTimeScale];
          if (v70)
          {
            v71 = v8->_figAssetWriter;
            v72 = [MEMORY[0x1E696AD98] numberWithInteger:v70];
            v73 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v73)
            {
              v73(v71, *MEMORY[0x1E6971C38], v72);
            }
          }

          v136 = 0u;
          memset(time1, 0, sizeof(time1));
          [(AVAssetWriterHelper *)v8 preferredTransform];
          *time2 = *time1;
          *&time2[16] = *&time1[16];
          v134 = v136;
          v74 = FigCreate3x3MatrixArrayFromCGAffineTransform();
          v75 = v8->_figAssetWriter;
          v76 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v76)
          {
            v76(v75, *MEMORY[0x1E6971C20], v74);
          }

          if (v74)
          {
            CFRelease(v74);
          }

          [(AVAssetWriterHelper *)v8 preferredVolume];
          v77 = v8->_figAssetWriter;
          v78 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          v79 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v79)
          {
            v79(v77, *MEMORY[0x1E6971C48], v78);
          }

          [(AVAssetWriterHelper *)v8 preferredRate];
          v80 = v8->_figAssetWriter;
          v81 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          v82 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v82)
          {
            v82(v80, *MEMORY[0x1E6973848], v81);
          }

          v83 = [(AVAssetWriterHelper *)v8 singlePassFileSize];
          v84 = [(AVAssetWriterHelper *)v8 singlePassMediaDataSize];
          if (v83)
          {
            v85 = v84;
            if (v84)
            {
              v86 = MEMORY[0x1E695DF20];
              v87 = [MEMORY[0x1E696AD98] numberWithLongLong:v83];
              v88 = *MEMORY[0x1E6971BD0];
              v89 = [MEMORY[0x1E696AD98] numberWithLongLong:v85];
              v90 = [v86 dictionaryWithObjectsAndKeys:{v87, v88, v89, *MEMORY[0x1E6971BC8], 0}];
              v91 = v8->_figAssetWriter;
              v92 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v92)
              {
                v92(v91, *MEMORY[0x1E6971C78], v90);
              }
            }
          }

          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v93 = [(AVAssetWriterHelper *)v8 inputs];
          v94 = [(NSArray *)v93 countByEnumeratingWithState:&v129 objects:v154 count:16];
          if (v94)
          {
            v95 = v94;
            LOBYTE(v96) = 0;
            v97 = *v130;
            do
            {
              for (j = 0; j != v95; ++j)
              {
                if (*v130 != v97)
                {
                  objc_enumerationMutation(v93);
                }

                if (v96)
                {
                  v96 = 1;
                }

                else
                {
                  v96 = [*(*(&v129 + 1) + 8 * j) maximizePowerEfficiency];
                }
              }

              v95 = [(NSArray *)v93 countByEnumeratingWithState:&v129 objects:v154 count:16];
            }

            while (v95);
            if (v96)
            {
              v99 = FigAssetWriterGetFigBaseObject();
              v100 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v100)
              {
                v100(v99, *MEMORY[0x1E69715A8], *MEMORY[0x1E695E4D0]);
              }
            }
          }

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v101 = [(AVAssetWriterHelper *)v8 inputs];
          v102 = [(NSArray *)v101 countByEnumeratingWithState:&v125 objects:v153 count:16];
          if (!v102)
          {
LABEL_139:
            v106 = [(AVAssetWriterWritingHelper *)v8 figTrackReferences];
            v107 = v8->_figAssetWriter;
            v108 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v108)
            {
              v108(v107, *MEMORY[0x1E6971C68], v106);
            }

            v109 = [v106 objectForKey:*MEMORY[0x1E6973B28]];
            if (v109)
            {
              v110 = v109;
              if ([(AVAssetWriterWritingHelper *)v8 isConfiguredForFragmentedMPEG4])
              {
                if ([v110 count])
                {
                  v111 = 0;
                  v112 = *MEMORY[0x1E6971D58];
                  do
                  {
                    v113 = [v110 objectAtIndex:v111];
                    if (v113)
                    {
                      v114 = [v113 intValue];
                      v115 = [-[AVAssetWriterWritingHelper writerInputForTrackID:](v8 writerInputForTrackID:{v114), "mediaDataLocation"}];
                      if (([v115 isEqualToString:@"AVAssetWriterInputMediaDataLocationInterleavedWithMainMediaData"] & 1) != 0 || objc_msgSend(v115, "isEqualToString:", @"AVAssetWriterInputMediaDataLocationSparselyInterleavedWithMainMediaData"))
                      {
                        v116 = v8->_figAssetWriter;
                        v117 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                        if (v117)
                        {
                          v117(v116, v114, v112, &unk_1F0AD34C0);
                        }
                      }
                    }

                    v111 += 2;
                  }

                  while (v111 < [v110 count]);
                }
              }
            }

            if (v123)
            {
              [(AVAssetWriterWritingHelper *)v8 setAllInputsFigPreferredChunkAlignmentTo:0x4000];
            }

            v8->_figAssetWriterAccessQueue = dispatch_queue_create("com.apple.avfoundation.avassetwriter.writing.assetwriteraccessqueue", 0);
            a5 = v124;
            goto LABEL_158;
          }

          v103 = v102;
          v104 = *v126;
LABEL_133:
          v105 = 0;
          while (1)
          {
            if (*v126 != v104)
            {
              objc_enumerationMutation(v101);
            }

            if (([*(*(&v125 + 1) + 8 * v105) _prepareForWritingWithFigAssetWriter:v8->_figAssetWriter mediaFileType:-[AVAssetWriterHelper mediaFileType](v8 error:{"mediaFileType"), &v152}] & 1) == 0)
            {
              break;
            }

            if (v103 == ++v105)
            {
              v103 = [(NSArray *)v101 countByEnumeratingWithState:&v125 objects:v153 count:16];
              if (v103)
              {
                goto LABEL_133;
              }

              goto LABEL_139;
            }
          }

          if (v152)
          {
            goto LABEL_11;
          }

          v10 = -11800;
          goto LABEL_5;
        }

        v32 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
LABEL_157:
        v8 = 0;
        v152 = v32;
        goto LABEL_158;
      }

      if (v122)
      {
        v29 = FigAssetWriterRemoteCreateWithURL();
      }

      else
      {
        if (((v120 | v119) & 1) == 0)
        {
          v31 = 0;
LABEL_58:
          v8->_figAssetWriterIsRemote = 1;
          if (v31)
          {
LABEL_59:

            v32 = [AVAssetWriter _errorForOSStatus:v31];
            goto LABEL_157;
          }

          goto LABEL_63;
        }

        v29 = FigAssetWriterRemoteCreateForWritingFragmentedData();
      }

      v31 = v29;
      goto LABEL_58;
    }

    if (((v122 != 0) & v23) == 1 && [(AVAssetWriterWritingHelper *)v8 hasProResVideoOutputSetting]&& [(AVAssetWriterWritingHelper *)v8 areAllInputsPreferredMediaChunkAlignmentEqualTo:0])
    {
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      if (![(AVAssetWriterWritingHelper *)v8 areAllInputsPreferredMediaChunkAlignmentEqualTo:0x4000])
      {
        goto LABEL_37;
      }
    }

    [v15 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6971588]];
    [(AVAssetWriterWritingHelper *)v8 prepareEncodedSampleBuffersForPaddedWrites];
    v27 = v26;
LABEL_37:
    if (!v23)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v156 = *MEMORY[0x1E696A278];
  v157[0] = *time1;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v157 forKeys:&v156 count:1];
  v10 = -11875;
LABEL_10:
  v152 = AVLocalizedError(@"AVFoundationErrorDomain", v10, v11);
LABEL_11:

  v8 = 0;
LABEL_158:
  if (a5)
  {
    *a5 = v152;
  }

  return v8;
}

- (id)writerInputForTrackID:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AVAssetWriterHelper *)self inputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 outputTrackID] == a3)
        {
          v5 = v9;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (BOOL)isConfiguredForFragmentedMPEG4
{
  v3 = [(AVAssetWriterHelper *)self outputFileTypeProfile];
  v4 = [(NSString *)[(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] UTI] isEqual:@"public.mpeg-4"];
  if (v4)
  {
    if ([(NSString *)v3 isEqualToString:@"MPEG4AppleHLS"])
    {
      LOBYTE(v4) = 1;
    }

    else
    {

      LOBYTE(v4) = [(NSString *)v3 isEqualToString:@"MPEG4CMAFCompliant"];
    }
  }

  return v4;
}

- (BOOL)checkConfigurationToOutputSegmentDataReturningDebugDescription:(id *)a3
{
  v5 = [(AVAssetWriterHelper *)self outputURL];
  [(AVAssetWriterHelper *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = 1;
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = 1;
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v22 = 0;
  v8 = v6 ^ 1;
  if (v5 && (v8 & 1) == 0)
  {
    LOBYTE(v8) = 0;
    v9 = @"The outputURL and the delegate method to output segment data cannot be specified at same time. Only one of them must be specified.";
    goto LABEL_52;
  }

  v10 = v7 ^ 1;
  if (v5 && (v10 & 1) == 0)
  {
    LOBYTE(v8) = 0;
    v9 = @"The outputURL and the delegate method to produce fragmented data cannot be specified at same time. Only one of them must be specified.";
    goto LABEL_52;
  }

  if (((v8 | v10) & 1) == 0)
  {
    LOBYTE(v8) = 0;
    v9 = @"The delegate method to output segment data and the delegate method to produce fragmented data cannot be specified at same time. Only one of them must be specified.";
    goto LABEL_52;
  }

  if (!((v5 != 0) | (v6 | v7) & 1))
  {
    LOBYTE(v8) = 0;
    v9 = @"Neither the outputURL nor the delegate method to output segment data is specified. One of them must be specified.";
    goto LABEL_52;
  }

  v11 = [(AVAssetWriterHelper *)self outputFileTypeProfile];
  v12 = [(NSString *)v11 isEqualToString:@"MPEG4AppleHLS"]|| [(NSString *)v11 isEqualToString:@"MPEG4CMAFCompliant"];
  memset(&v21, 0, sizeof(v21));
  if (self)
  {
    [(AVAssetWriterHelper *)self preferredOutputSegmentInterval];
  }

  time1 = v21;
  v17 = *MEMORY[0x1E6960C68];
  *&time2.value = *MEMORY[0x1E6960C68];
  v13 = *(MEMORY[0x1E6960C68] + 16);
  time2.epoch = v13;
  if (!CMTimeCompare(&time1, &time2))
  {
    if (v6)
    {
      goto LABEL_28;
    }

    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  if ((v21.flags & 0x1D) == 1)
  {
    time1 = **&MEMORY[0x1E6960CC0];
    time2 = v21;
    v14 = CMTimeCompare(&time1, &time2);
    if (v6)
    {
      if ((v14 & 0x80000000) == 0)
      {
        LOBYTE(v8) = 0;
        v9 = @"The value of the preferredOutputSegmentInterval property must be kCMTimeIndefinite or a positive numeric time to output segment data.";
        goto LABEL_52;
      }

LABEL_28:
      memset(&time1, 0, sizeof(time1));
      if (self)
      {
        [(AVAssetWriterHelper *)self initialSegmentStartTime];
      }

      time2 = v21;
      *&v18.value = v17;
      v18.epoch = v13;
      if (CMTimeCompare(&time2, &v18) && (time1.flags & 0x1D) != 1)
      {
        LOBYTE(v8) = 0;
        v9 = @"The value of the initialSegmentStartTime property must be a numeric time to output segment data.";
        goto LABEL_52;
      }

      v15 = [(AVMediaFileType *)[(AVAssetWriterHelper *)self mediaFileType] UTI];
      if ([(NSString *)v15 isEqual:@"public.mpeg-4"])
      {
        if (v12)
        {
          time2 = v21;
          LOBYTE(v8) = [(AVAssetWriterWritingHelper *)self checkAVAssetWriterInputConfigurationToOutputSegmentDataForFragmentedMPEG4FileTypeProfile:v11 preferredOutputSegmentInterval:&time2 returningDebugDescription:&v22];
          v9 = v22;
        }

        else
        {
          LOBYTE(v8) = 0;
          v9 = @"The value of the outputFileTypeProfile property must be file type profile AppleHLS or CMAFCompliant to output segment data.";
        }

        goto LABEL_52;
      }

      if (([(NSString *)v15 isEqual:@"org.w3.webvtt"]& 1) == 0)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAssetWriter does not supports file type %@ if the delegate method to output segment data is implemented.", v15];
        goto LABEL_44;
      }

LABEL_48:
      v9 = 0;
      LOBYTE(v8) = 1;
      goto LABEL_52;
    }

    if (v12)
    {
LABEL_43:
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAssetWriter supports file type profile %@ if the delegate method to output segment data is implemented. Please use -initWithContentType: initializer and implement -assetWriter:didOutputSegmentData:segmentType:segmentReport: or -assetWriter:didOutputSegmentData:segmentType: delegate method.", v11];
LABEL_44:
      LOBYTE(v8) = 0;
      goto LABEL_52;
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_49:
    LOBYTE(v8) = 0;
    v9 = @"The preferredOutputSegmentInterval property is used if the delegate method to output segment data is implemented. Please use -initWithContentType: initializer and implemen -assetWriter:didOutputSegmentData:segmentType:segmentReport: or -assetWriter:didOutputSegmentData:segmentType: delegate method.";
    goto LABEL_52;
  }

  if (v6)
  {
    v9 = @"The value of the preferredOutputSegmentInterval property must be kCMTimeIndefinite or a positive numeric time to output segment data.";
  }

  else
  {
    v9 = 0;
  }

  if (!(v6 & 1 | ((v12 & 1) == 0)))
  {
    goto LABEL_43;
  }

LABEL_52:
  *a3 = v9;
  return v8 & 1;
}

- (BOOL)checkAVAssetWriterInputConfigurationToOutputSegmentDataForFragmentedMPEG4FileTypeProfile:(id)a3 preferredOutputSegmentInterval:(id *)a4 returningDebugDescription:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [(AVAssetWriterHelper *)self inputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v28 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [v12 outputSettings];
        v14 = [v12 mediaType];
        if (([v14 isEqual:@"vide"] & 1) != 0 || (objc_msgSend(v14, "isEqual:", @"auxv") & 1) != 0 || objc_msgSend(v14, "isEqual:", @"scen"))
        {
          if (v13)
          {
            ++v9;
          }

          else
          {
            ++v8;
          }
        }

        else if ([v14 isEqual:@"soun"])
        {
          if (v13)
          {
            ++v29;
          }

          else
          {
            ++v27;
          }
        }

        else if ([v14 isEqual:@"clcp"])
        {
          if (v13)
          {
            ++v26;
          }

          else
          {
            ++v25;
          }
        }

        else
        {
          if (![v14 isEqual:@"meta"])
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Media type '%@' is not allowed for file type profile %@.", v14, a3];
            goto LABEL_55;
          }

          ++v28;
        }

        ++v11;
      }

      while (v7 != v11);
      v15 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v7 = v15;
    }

    while (v15);
  }

  else
  {
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v28 = 0;
    v8 = 0;
    v9 = 0;
  }

  if ([a3 isEqualToString:@"MPEG4CMAFCompliant"])
  {
    if ([(NSArray *)[(AVAssetWriterHelper *)self inputs] count]>= 2)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one track is not allowed for file type profile %@.", a3, v20];
      goto LABEL_55;
    }

    if (v25 + v26 >= 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Closed caption track is not allowed for file type profile %@.", a3, v20];
      goto LABEL_55;
    }

    if (v28 >= 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata track is not allowed for file type profile %@.", a3, v20];
      goto LABEL_55;
    }
  }

  v17 = v9 + v8;
  if (v9 + v8 <= 1)
  {
    if (v27 + v29 < 2)
    {
      if (v25 + v26 < 2)
      {
        if (v28 < 2)
        {
          if (v25 + v26 != 1 || v17)
          {
            if (v28 != 1 || v17 | (v27 + v29))
            {
              if (v9 < 1 || v27 < 1)
              {
                if (v29 < 1 || v8 < 1)
                {
                  if ((a4->var2 & 0x1D) == 1 && (time1 = **&MEMORY[0x1E6960CC0], time2 = *a4, CMTimeCompare(&time1, &time2) < 0) && v8 >= 1 && v27 >= 1)
                  {
                    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"If the value of the preferredOutputSegmentInterval property is a positive numeric time, AVAssetWriter does not support passthrough of video track and audio track at same time for file type profile %@. Please specify a non-nil output settings dictionary for both AVAssetWriterInput. Otherwise, please add one of them.", a3, v20];
                  }

                  else
                  {
                    time1 = *a4;
                    time2 = **&MEMORY[0x1E6960C68];
                    if (CMTimeCompare(&time1, &time2) || v29 <= 0 && v9 <= 0 && v26 < 1)
                    {
                      v16 = 0;
                      v18 = 1;
                      goto LABEL_56;
                    }

                    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"If the value of the preferredOutputSegmentInterval property is kCMTimeIndefinite, AVAssetWriter only supports pssthrough for file type profile %@. Please specify nil for all AVAssetWriterInput's output settings.", a3, v20];
                  }
                }

                else
                {
                  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAssetWriter does not support encoding of audio track and passthrough of video track at same time for file type profile %@. Please match both AVAssetWriterInput's output settings.", a3, v20];
                }
              }

              else
              {
                v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AVAssetWriter does not support encoding of video track and passthrough of audio track at same time for file type profile %@. Please match both AVAssetWriterInput's output settings.", a3, v20];
              }
            }

            else
            {
              v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata track must accompany video track or audio track for file type profile %@.", a3, v20];
            }
          }

          else
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Closed caption track must accompany video track for file type profile %@.", a3, v20];
          }
        }

        else
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one metadata track is not allowed for file type profile %@.", a3, v20];
        }
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one closed caption track is not allowed for file type profile %@.", a3, v20];
      }
    }

    else
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one audio track is not allowed for file type profile %@.", a3, v20];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"More than one video track is not allowed for file type profile %@.", a3, v20];
  }

LABEL_55:
  v18 = 0;
LABEL_56:
  *a5 = v16;
  return v18;
}

- (id)figTrackReferences
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(AVAssetWriterHelper *)self inputs];
  v23 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v23)
  {
    v22 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
        v5 = [v4 outputTrackID];
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
        v7 = [v4 _trackReferences];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v27 = v7;
        v25 = [v7 keyEnumerator];
        v8 = [v25 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v8)
        {
          v9 = v8;
          v26 = *v34;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(v25);
              }

              v11 = *(*(&v33 + 1) + 8 * i);
              v12 = [v28 objectForKey:v11];
              if (!v12)
              {
                v12 = [MEMORY[0x1E695DF70] array];
                [v28 setObject:v12 forKey:v11];
              }

              v13 = [v27 objectForKey:v11];
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v14 = [v13 countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v30;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v30 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = [*(*(&v29 + 1) + 8 * j) outputTrackID];
                    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
                    [v12 addObject:v6];
                    [v12 addObject:v19];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v29 objects:v41 count:16];
                }

                while (v15);
              }
            }

            v9 = [v25 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v9);
        }

        v3 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v23);
  }

  if ([v28 count])
  {
    return v28;
  }

  else
  {
    return 0;
  }
}

- (BOOL)areAllInputsPreferredMediaChunkAlignmentEqualTo:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVAssetWriterHelper *)self inputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * v8) preferredMediaChunkAlignment] != a3)
        {
          return 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)setAllInputsFigPreferredChunkAlignmentTo:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(AVAssetWriterHelper *)self inputs];
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v13 = *MEMORY[0x1E6971DA0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) outputTrackID];
        figAssetWriter = self->_figAssetWriter;
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v12)
        {
          v12(figAssetWriter, v9, v13, v11);
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)prepareEncodedSampleBuffersForPaddedWrites
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AVAssetWriterHelper *)self inputs];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([objc_msgSend(v7 "mediaType")])
        {
          v8 = [v7 _outputSettingsObject];
          if (v8)
          {
            [v8 setShouldPrepareEncodedSampleBuffersForPaddedWrites:1];
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)areAudioAndVideoOutputSettingsPassthrough
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AVAssetWriterHelper *)self inputs];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 mediaType];
        if ((([v8 isEqual:@"soun"] & 1) != 0 || objc_msgSend(v8, "isEqual:", @"vide")) && objc_msgSend(v7, "_outputSettingsObject"))
        {
          return 0;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)hasProRes4KHighFPSVideoOutputSetting
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AVAssetWriterHelper *)self inputs];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "mediaType")])
        {
          v8 = [v7 _outputSettingsObject];
          if (v8)
          {
            if ([v8 isProRes4KHighFPSSetting])
            {
              LOBYTE(v3) = 1;
              return v3;
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)hasProResVideoOutputSetting
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AVAssetWriterHelper *)self inputs];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "mediaType")])
        {
          v8 = [v7 _outputSettingsObject];
          if (v8)
          {
            if ([v8 isProRes])
            {
              LOBYTE(v3) = 1;
              return v3;
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)isOutputFileOnExternalStorageDevice
{
  v2 = [(AVAssetWriterHelper *)self outputURL];
  if (v2)
  {
    v2 = [(NSURL *)v2 absoluteURL];
    if (v2)
    {
      LOBYTE(v2) = FigFileIsFileOnExternalStorageDevice() != 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  figAssetWriter = self->_figAssetWriter;
  if (figAssetWriter)
  {
    CFRelease(figAssetWriter);
  }

  figAssetWriterAccessQueue = self->_figAssetWriterAccessQueue;
  if (figAssetWriterAccessQueue)
  {
    dispatch_release(figAssetWriterAccessQueue);
  }

  if (self->_figAssetWriterCallbackContextToken)
  {
    [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
    self->_figAssetWriterCallbackContextToken = 0;
  }

  v5.receiver = self;
  v5.super_class = AVAssetWriterWritingHelper;
  [(AVAssetWriterHelper *)&v5 dealloc];
}

- (void)startSessionAtSourceTime:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(AVAssetWriterWritingHelper *)self _retainedFigAssetWriter];
  if (v5)
  {
    v6 = v5;
    v17 = *&a3->var0;
    var3 = a3->var3;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v7)
    {
      v19 = v17;
      v20 = var3;
      v7(v6, &v19);
    }

    self->_startSessionCalled = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(AVAssetWriterHelper *)self inputs];
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) _didStartInitialSession];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }

    CFRelease(v6);
  }
}

- (void)endSessionAtSourceTime:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(AVAssetWriterHelper *)self inputs];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v26 + 1) + 8 * i) _prepareToEndSession];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v11 = [(AVAssetWriterWritingHelper *)self _retainedFigAssetWriter];
  if (v11)
  {
    v12 = v11;
    v24 = *&a3->var0;
    var3 = a3->var3;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v13)
    {
      v30 = v24;
      v31 = var3;
      v14 = v13(v12, &v30);
      CFRelease(v12);
      if (v14 == -12142)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D930];
        v17 = objc_opt_class();
        v23 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithClassAndSelector(v17 userInfo:{a2, @"Cannot end a session without first starting a session", v18, v19, v20, v21, v22, v24), 0}];
        objc_exception_throw(v23);
      }
    }

    else
    {
      CFRelease(v12);
    }
  }
}

- (OpaqueFigAssetWriter)_retainedFigAssetWriter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  figAssetWriterAccessQueue = self->_figAssetWriterAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVAssetWriterWritingHelper__retainedFigAssetWriter__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(figAssetWriterAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __53__AVAssetWriterWritingHelper__retainedFigAssetWriter__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)cancelWriting
{
  if ([(AVAssetWriterHelper *)self _transitionToClientInitiatedTerminalStatus:4])
  {
    [(AVAssetWriterFigAssetWriterNotificationHandler *)self->_notificationHandler setDelegate:0];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    figAssetWriterAccessQueue = self->_figAssetWriterAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AVAssetWriterWritingHelper_cancelWriting__block_invoke;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = &v8;
    dispatch_sync(figAssetWriterAccessQueue, block);
    FigBaseObject = FigAssetWriterGetFigBaseObject();
    if (FigBaseObject)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(FigBaseObject);
      }
    }

    CFRelease(v9[3]);
    v6 = 0;
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    _Block_object_dispose(&v8, 8);
  }
}

uint64_t __43__AVAssetWriterWritingHelper_cancelWriting__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 24);
  *(*(result + 32) + 24) = 0;
  return result;
}

- (void)finishWriting
{
  v3 = [MEMORY[0x1E696AF00] currentThread];
  if ([v3 isEqual:{objc_msgSend(MEMORY[0x1E696AF00], "mainThread")}])
  {
    NSLog(&cfstr_WarningFinishw.isa);
    v4 = [AVBlockOperation alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__AVAssetWriterWritingHelper_finishWriting__block_invoke;
    v9[3] = &unk_1E7463738;
    v9[4] = self;
    v5 = [(AVAssetWriterWritingHelper *)self _makeFinishWritingOperationsWithCustomFigAssetWriterFinishOperation:[(AVBlockOperation *)v4 initWithBlock:v9]];
    AVExecuteOperationsSynchronously([v5 arrayByAddingObject:{-[AVAssetWriterWritingHelper _transitionToFinishWritingHelperWithFinishWritingOperations:](self, "_transitionToFinishWritingHelperWithFinishWritingOperations:", v5)}]);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v6 = [(AVAssetWriterWritingHelper *)self _makeFinishWritingOperationsWithCustomFigAssetWriterFinishOperation:0];
    v7 = [(AVAssetWriterWritingHelper *)self _transitionToFinishWritingHelperWithFinishWritingOperations:v6];
    [v8 setName:@"com.apple.avfoundation.assetwriter.finishwriting"];
    [v8 addOperations:v6 waitUntilFinished:0];
    [v8 addOperation:v7];
    [v7 waitUntilFinished];
  }
}

uint64_t __43__AVAssetWriterWritingHelper_finishWriting__block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _retainedFigAssetWriter];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v4)
  {
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  FigBaseObject = FigAssetWriterGetFigBaseObject();
  if (FigBaseObject)
  {
    v7 = FigBaseObject;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v8)
    {
      v8(v7);
    }
  }

  if (v5)
  {
    if (a2)
    {
      *a2 = [AVAssetWriter _errorForOSStatus:v5];
    }

    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  CFRelease(v3);
  return v9;
}

- (void)finishWritingWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = +[AVGlobalOperationQueue defaultQueue];
  v6 = [(AVAssetWriterWritingHelper *)self _makeFinishWritingOperationsWithCustomFigAssetWriterFinishOperation:0];
  v7 = [(AVAssetWriterWritingHelper *)self _transitionToFinishWritingHelperWithFinishWritingOperations:v6];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__AVAssetWriterWritingHelper_finishWritingWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E7462628;
  v16[4] = a3;
  [v7 setCompletionBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [v5 enqueueOperation:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  [v5 enqueueOperation:v7];
}

- (id)_makeFinishWritingOperationsWithCustomFigAssetWriterFinishOperation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  v7 = [(AVAssetWriterWritingHelper *)self _retainedFigAssetWriter];
  v8 = [v6 finishWritingDelegate];
  if (!self->_startSessionCalled)
  {
    goto LABEL_15;
  }

  v9 = v8;
  if (!v8)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = [objc_opt_class() finishWritingDelegateOperationWithAssetWriter:v6 andFigAssetWriter:v7 andDelegate:v8];
  [v5 addObject:v10];
  if (!a3)
  {
LABEL_4:
    a3 = [[AVFigAssetWriterFinishWritingAsyncOperation alloc] initWithFigAssetWriter:v7];
  }

LABEL_5:
  [v5 addObject:a3];
  [a3 setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Finish writing file at %@, initiated by %@", -[AVAssetWriterHelper outputURL](self, "outputURL"), v6)}];
  v11 = [objc_opt_class() prepareInputsOperationsWithInputs:{-[AVAssetWriterHelper inputs](self, "inputs")}];
  [v5 addObjectsFromArray:v11];
  v18 = [objc_opt_class() finalStepWorkaroundOperationWithFigAssetWriter:v7];
  [v5 addObject:?];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (v9)
        {
          [*(*(&v19 + 1) + 8 * i) addDependency:v10];
        }

        [a3 addDependency:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [v18 addDependency:a3];
LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

- (id)_transitionToFinishWritingHelperWithFinishWritingOperations:(id)a3
{
  v4 = [[AVAssetWriterFinishWritingHelper alloc] initWithConfigurationState:[(AVAssetWriterHelper *)self configurationState] finishWritingOperations:a3 figAssetWriterCallbackContextToken:self->_figAssetWriterCallbackContextToken figAssetWriter:self->_figAssetWriter figAssetWriterIsRemote:self->_figAssetWriterIsRemote];
  self->_figAssetWriterCallbackContextToken = 0;
  v5 = [(AVAssetWriterFinishWritingHelper *)v4 transitionToTerminalStatusOperation];
  v6 = [(AVWeakReference *)[(AVAssetWriterHelper *)self weakReferenceToAssetWriter] referencedObject];
  [(AVAssetWriterFigAssetWriterNotificationHandler *)self->_notificationHandler setDelegate:0];
  [v6 _setHelper:v4 ifCurrentHelper:self];

  return v5;
}

+ (id)prepareInputsOperationsWithInputs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [AVBlockOperation alloc];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __64__AVAssetWriterWritingHelper_prepareInputsOperationsWithInputs___block_invoke;
        v13[3] = &unk_1E7463738;
        v13[4] = v9;
        v11 = [(AVBlockOperation *)v10 initWithBlock:v13];
        -[AVBlockOperation setName:](v11, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare for finishing input %@", v9]);
        [v4 addObject:v11];
      }

      v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

uint64_t __64__AVAssetWriterWritingHelper_prepareInputsOperationsWithInputs___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _prepareToFinishWritingReturningError:a2])
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

+ (id)finishWritingDelegateOperationWithAssetWriter:(id)a3 andFigAssetWriter:(OpaqueFigAssetWriter *)a4 andDelegate:(id)a5
{
  if (!a3)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = "assetWriter != nil";
    goto LABEL_6;
  }

  if (!a4)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = "figAssetWriter != NULL";
LABEL_6:
    v17 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"invalid parameter not satisfying: %s", a4, a5, v5, v6, v7, v16), 0}];
    objc_exception_throw(v17);
  }

  CFRetain(a4);
  v11 = [AVBlockOperation alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106__AVAssetWriterWritingHelper_finishWritingDelegateOperationWithAssetWriter_andFigAssetWriter_andDelegate___block_invoke;
  v19[3] = &unk_1E7463760;
  v19[4] = a5;
  v19[5] = a3;
  v19[6] = a4;
  v12 = [(AVBlockOperation *)v11 initWithBlock:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__AVAssetWriterWritingHelper_finishWritingDelegateOperationWithAssetWriter_andFigAssetWriter_andDelegate___block_invoke_2;
  v18[3] = &__block_descriptor_40_e5_v8__0l;
  v18[4] = a4;
  [(AVBlockOperation *)v12 setCompletionBlock:v18];
  [(AVBlockOperation *)v12 setName:@"Call finish-writing delegate"];
  return v12;
}

uint64_t __106__AVAssetWriterWritingHelper_finishWritingDelegateOperationWithAssetWriter_andFigAssetWriter_andDelegate___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 2;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(a1 + 40) inputs];
  v2 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = *v31;
  v26 = *MEMORY[0x1E6971D18];
  v5 = *MEMORY[0x1E695E480];
  v25 = *MEMORY[0x1E6971DF0];
  while (2)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v31 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v30 + 1) + 8 * i);
      theArray = 0;
      v8 = *(a1 + 48);
      v9 = [v7 outputTrackID];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 160);
      if (v10)
      {
        v10(v8, v9, v26, v5, &theArray);
      }

      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v12 = Count;
          Mutable = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v14 = Mutable;
            for (j = 0; j != v12; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, j);
              cf = 0;
              v17 = [*(a1 + 32) assetWriterInput:v7 shouldReplaceFormatDescription:ValueAtIndex replacementFormatDescription:&cf];
              v18 = cf;
              if (v17)
              {
                v19 = cf == 0;
              }

              else
              {
                v19 = 1;
              }

              if (v19)
              {
                v18 = ValueAtIndex;
              }

              CFArraySetValueAtIndex(v14, j, v18);
              if (cf)
              {
                CFRelease(cf);
              }
            }

            v20 = *(a1 + 48);
            v21 = [v7 outputTrackID];
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (!v22)
            {
              CFRelease(v14);
              CFRelease(theArray);
              return 4;
            }

            v23 = v22(v20, v21, v25, v14);
            CFRelease(v14);
            CFRelease(theArray);
            if (v23)
            {
              return 4;
            }
          }
        }
      }
    }

    v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    result = 2;
    if (v3)
    {
      continue;
    }

    break;
  }

  return result;
}

+ (id)finalStepWorkaroundOperationWithFigAssetWriter:(OpaqueFigAssetWriter *)a3
{
  if (!a3)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "figAssetWriter != NULL"), 0}];
    objc_exception_throw(v12);
  }

  CFRetain(a3);
  v9 = [AVBlockOperation alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__AVAssetWriterWritingHelper_finalStepWorkaroundOperationWithFigAssetWriter___block_invoke;
  v14[3] = &__block_descriptor_40_e9_q16__0__8l;
  v14[4] = a3;
  v10 = [(AVBlockOperation *)v9 initWithBlock:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__AVAssetWriterWritingHelper_finalStepWorkaroundOperationWithFigAssetWriter___block_invoke_2;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = a3;
  [(AVBlockOperation *)v10 setCompletionBlock:v13];
  [(AVBlockOperation *)v10 setName:@"Invalidate FigAssetWriter, to ensure that audio files are finalized properly"];
  return v10;
}

uint64_t __77__AVAssetWriterWritingHelper_finalStepWorkaroundOperationWithFigAssetWriter___block_invoke()
{
  FigBaseObject = FigAssetWriterGetFigBaseObject();
  if (FigBaseObject)
  {
    v1 = FigBaseObject;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v2)
    {
      v2(v1);
    }
  }

  return 2;
}

- (void)transitionToFailedStatusWithError:(id)a3
{
  FigBaseObject = FigAssetWriterGetFigBaseObject();
  if (FigBaseObject)
  {
    v6 = FigBaseObject;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {
      v7(v6);
    }
  }

  v8.receiver = self;
  v8.super_class = AVAssetWriterWritingHelper;
  [(AVAssetWriterHelper *)&v8 transitionToFailedStatusWithError:a3];
}

- (void)flushSegment
{
  v2 = [(AVAssetWriterWritingHelper *)self _retainedFigAssetWriter];
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v4)
    {
      v4(v3);
    }

    CFRelease(v3);
  }
}

- (BOOL)_isDefunct
{
  v8 = 0;
  figAssetWriter = self->_figAssetWriter;
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(figAssetWriter, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

- (id)storageSpacePreallocationSize
{
  v7 = 0;
  result = [(AVAssetWriterHelper *)self outputURL];
  if (result)
  {
    v3 = [result URLByDeletingLastPathComponent];
    result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (result)
    {
      result = [result objectForKey:*MEMORY[0x1E696A3C0]];
      if (result)
      {
        v4 = result;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v4 longLongValue];
          if (v5 <= 0x8000000001)
          {
            v6 = v5 / 2;
          }

          else
          {
            v6 = 0x4000000000;
          }

          return [MEMORY[0x1E696AD98] numberWithLongLong:v6];
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

@end