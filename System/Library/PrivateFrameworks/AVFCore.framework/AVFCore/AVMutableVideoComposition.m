@interface AVMutableVideoComposition
+ (AVMutableVideoComposition)videoComposition;
+ (AVMutableVideoComposition)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier;
+ (AVMutableVideoComposition)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset;
+ (AVMutableVideoComposition)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset prototypeInstruction:(AVVideoCompositionInstruction *)prototypeInstruction;
+ (id)makeSpatialVideoConfigurationsFromVideoTracks:(id)a3;
+ (void)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier completionHandler:(void *)completionHandler;
+ (void)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
+ (void)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset prototypeInstruction:(AVVideoCompositionInstruction *)prototypeInstruction completionHandler:(void *)completionHandler;
- (AVVideoCompositionCoreAnimationTool)animationTool;
- (AVVideoCompositionPerFrameHDRDisplayMetadataPolicy)perFrameHDRDisplayMetadataPolicy;
- (CGSize)renderSize;
- (CMPersistentTrackID)sourceTrackIDForFrameTiming;
- (CMTime)frameDuration;
- (NSArray)instructions;
- (NSArray)outputBufferDescription;
- (NSArray)sourceSampleDataTrackIDs;
- (NSString)colorPrimaries;
- (NSString)colorTransferFunction;
- (NSString)colorYCbCrMatrix;
- (float)renderScale;
- (id)builtInCompositorName;
- (id)customVideoCompositorClass;
- (id)sourceSampleDataTrackWindowsForTrackIDs;
- (id)sourceVideoTrackWindowsForTrackIDs;
- (id)spatialVideoConfigurations;
- (void)setAnimationTool:(AVVideoCompositionCoreAnimationTool *)animationTool;
- (void)setBuiltInCompositorName:(id)a3;
- (void)setColorPrimaries:(NSString *)colorPrimaries;
- (void)setColorTransferFunction:(NSString *)colorTransferFunction;
- (void)setColorYCbCrMatrix:(NSString *)colorYCbCrMatrix;
- (void)setCustomVideoCompositorClass:(id)customVideoCompositorClass;
- (void)setFrameDuration:(CMTime *)frameDuration;
- (void)setInstructions:(NSArray *)instructions;
- (void)setOutputBufferDescription:(id)a3;
- (void)setPerFrameHDRDisplayMetadataPolicy:(AVVideoCompositionPerFrameHDRDisplayMetadataPolicy)perFrameHDRDisplayMetadataPolicy;
- (void)setRenderScale:(float)renderScale;
- (void)setRenderSize:(CGSize)renderSize;
- (void)setSourceSampleDataTrackIDs:(NSArray *)sourceSampleDataTrackIDs;
- (void)setSourceSampleDataTrackWindowsForTrackIDs:(id)a3;
- (void)setSourceTrackIDForFrameTiming:(CMPersistentTrackID)sourceTrackIDForFrameTiming;
- (void)setSourceVideoTrackWindowsForTrackIDs:(id)a3;
- (void)setSpatialVideoConfigurations:(id)a3;
@end

@implementation AVMutableVideoComposition

+ (AVMutableVideoComposition)videoComposition
{
  v2 = objc_alloc_init(AVMutableVideoComposition);

  return v2;
}

+ (AVMutableVideoComposition)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset
{
  v3 = [+[AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:prototypeInstruction:](AVMutableVideoComposition mutableCopy:asset];

  return v3;
}

+ (void)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__AVMutableVideoComposition_videoCompositionWithPropertiesOfAsset_completionHandler___block_invoke;
  v4[3] = &unk_1E7463950;
  v4[4] = completionHandler;
  [AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:asset prototypeInstruction:0 completionHandler:v4];
}

uint64_t __85__AVMutableVideoComposition_videoCompositionWithPropertiesOfAsset_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 mutableCopy];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

+ (id)makeSpatialVideoConfigurationsFromVideoTracks:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a3;
  v5 = [a3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v21 + 1) + 8 * v8) formatDescriptions];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            v13 = 0;
            do
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [[AVSpatialVideoConfiguration alloc] initWithFormatDescription:*(*(&v17 + 1) + 8 * v13)];
              if (![(AVSpatialVideoConfiguration *)v14 isEmpty])
              {
                [v4 addObject:v14];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (AVMutableVideoComposition)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset prototypeInstruction:(AVVideoCompositionInstruction *)prototypeInstruction
{
  v119 = *MEMORY[0x1E69E9840];
  obj = [MEMORY[0x1E695DF70] array];
  v69 = [MEMORY[0x1E695DF70] array];
  v65 = asset;
  v6 = [(AVAsset *)asset tracksWithMediaType:@"vide"];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v66 = v6;
  v11 = [(NSArray *)v6 sortedArrayUsingFunction:trackLayerSort context:0];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v109 objects:v118 count:16];
  v68 = prototypeInstruction;
  if (v12)
  {
    v13 = v12;
    v14 = *v110;
    rect = y;
    v15 = x;
    v16 = *MEMORY[0x1E695E480];
    v17 = 0.0;
    v70 = *v110;
    while (2)
    {
      v18 = 0;
      v73 = v13;
      do
      {
        if (*v110 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v109 + 1) + 8 * v18);
        if ([v19 isEnabled])
        {
          [v19 nominalFrameRate];
          if (v20 > v17)
          {
            v17 = v20;
          }

          [v19 naturalSize];
          v22 = v21;
          v24 = v23;
          if (v19)
          {
            [v19 preferredTransform];
          }

          else
          {
            memset(&v108, 0, sizeof(v108));
          }

          v120.origin.x = v15;
          v120.origin.y = rect;
          v120.size.width = v22;
          v120.size.height = v24;
          v125 = CGRectApplyAffineTransform(v120, &v108);
          v121.origin.x = x;
          v121.origin.y = y;
          v121.size.width = width;
          v121.size.height = height;
          v122 = CGRectUnion(v121, v125);
          x = v122.origin.x;
          y = v122.origin.y;
          width = v122.size.width;
          height = v122.size.height;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v25 = [v19 segments];
          v26 = [v25 countByEnumeratingWithState:&v104 objects:v117 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v105;
LABEL_14:
            v29 = 0;
            while (1)
            {
              if (*v105 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v104 + 1) + 8 * v29);
              if (v30)
              {
                [v30 timeMapping];
              }

              else
              {
                v102 = 0u;
                v103 = 0u;
                v101 = 0u;
                memset(&v100[2], 0, 48);
              }

              *&v108.a = v101;
              *&v108.c = v102;
              v31 = CMTimeCopyAsDictionary(&v108, v16);
              if (!v31)
              {
                return 0;
              }

              v32 = v31;
              [obj addObject:v31];
              CFRelease(v32);
              if (v27 == ++v29)
              {
                v27 = [v25 countByEnumeratingWithState:&v104 objects:v117 count:16];
                if (v27)
                {
                  goto LABEL_14;
                }

                break;
              }
            }
          }

          v33 = [objc_msgSend(v19 "segments")];
          if (v33)
          {
            [v33 timeMapping];
          }

          else
          {
            memset(v100, 0, 32);
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
          }

          v14 = v70;
          v13 = v73;
          *&lhs.start.value = v99;
          lhs.start.epoch = *&v100[0];
          *&rhs.a = *(v100 + 8);
          rhs.c = *(&v100[1] + 1);
          CMTimeAdd(&v108, &lhs.start, &rhs);
          v34 = CMTimeCopyAsDictionary(&v108, v16);
          if (!v34)
          {
            return 0;
          }

          v35 = v34;
          [obj addObject:v34];
          CFRelease(v35);
          prototypeInstruction = v68;
        }

        ++v18;
      }

      while (v18 != v13);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v109 objects:v118 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0.0;
  }

  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  v124 = CGRectStandardize(v123);
  v37 = v124.size.width;
  v38 = v124.size.height;
  memset(&v108, 0, sizeof(v108));
  CGAffineTransformMakeTranslation(&v108, -v124.origin.x, -v124.origin.y);
  [obj sortUsingComparator:&__block_literal_global_10];
  v39 = MEMORY[0x1E6960C70];
  v115 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v40 = [obj countByEnumeratingWithState:&v92 objects:v114 count:16];
  if (v40)
  {
    v41 = v40;
    flags = *(v39 + 12);
    v43 = *(v39 + 16);
    v44 = *v93;
    v67 = *v93;
    do
    {
      v45 = 0;
      v71 = v41;
      do
      {
        if (*v93 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v92 + 1) + 8 * v45);
        memset(&time2, 0, sizeof(time2));
        CMTimeMakeFromDictionary(&time2, v46);
        *&lhs.start.value = v115;
        lhs.start.timescale = timescale;
        lhs.start.flags = flags;
        *&lhs.start.epoch = v43;
        *&rhs.a = *&time2.value;
        *&rhs.c = time2.epoch;
        if (CMTimeCompare(&lhs.start, &rhs))
        {
          if (flags)
          {
            recta = v45;
            v47 = [MEMORY[0x1E695DF70] array];
            if (prototypeInstruction && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v48 = [(AVVideoCompositionInstruction *)prototypeInstruction mutableCopy];
            }

            else
            {
              v48 = +[AVMutableVideoCompositionInstruction videoCompositionInstruction];
            }

            v49 = v48;
            *&rhs.a = *&time2.value;
            *&rhs.c = time2.epoch;
            v79.a = v115;
            *&v79.b = __PAIR64__(flags, timescale);
            v79.c = v43;
            CMTimeSubtract(&lhs.start, &rhs, &v79);
            rhs.a = v115;
            *&rhs.b = __PAIR64__(flags, timescale);
            rhs.c = v43;
            CMTimeRangeMake(&v90, &rhs, &lhs.start);
            lhs = v90;
            v74 = v49;
            [(AVMutableVideoCompositionInstruction *)v49 setTimeRange:&lhs];
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v50 = [(NSArray *)v11 countByEnumeratingWithState:&v85 objects:v113 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v86;
              do
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v86 != v52)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v54 = *(*(&v85 + 1) + 8 * i);
                  if ([v54 isEnabled])
                  {
                    *&lhs.start.value = v115;
                    lhs.start.timescale = timescale;
                    lhs.start.flags = flags;
                    *&lhs.start.epoch = v43;
                    v55 = [v54 segmentForTrackTime:&lhs];
                    if (([v55 isEmpty] & 1) == 0)
                    {
                      if (v55)
                      {
                        [v55 timeMapping];
                      }

                      else
                      {
                        v83 = 0u;
                        memset(&v84, 0, sizeof(v84));
                        v81 = 0u;
                        v82 = 0u;
                      }

                      lhs = v84;
                      rhs.a = v115;
                      *&rhs.b = __PAIR64__(flags, timescale);
                      rhs.c = v43;
                      if (CMTimeRangeContainsTime(&lhs, &rhs))
                      {
                        memset(&lhs, 0, sizeof(lhs));
                        if (v54)
                        {
                          [v54 preferredTransform];
                        }

                        else
                        {
                          memset(&rhs, 0, sizeof(rhs));
                        }

                        v79 = v108;
                        CGAffineTransformConcat(&lhs, &rhs, &v79);
                        v56 = [AVMutableVideoCompositionLayerInstruction videoCompositionLayerInstructionWithAssetTrack:v54];
                        rhs = lhs;
                        v79.a = v115;
                        *&v79.b = __PAIR64__(flags, timescale);
                        v79.c = v43;
                        [(AVMutableVideoCompositionLayerInstruction *)v56 setTransform:&rhs atTime:&v79];
                        [v47 addObject:v56];
                      }
                    }
                  }
                }

                v51 = [(NSArray *)v11 countByEnumeratingWithState:&v85 objects:v113 count:16];
              }

              while (v51);
            }

            [(AVMutableVideoCompositionInstruction *)v74 setLayerInstructions:v47];
            [v69 addObject:v74];
            v44 = v67;
            prototypeInstruction = v68;
            v41 = v71;
            v45 = recta;
          }

          v115 = *&time2.value;
          flags = time2.flags;
          timescale = time2.timescale;
          v43 = *&time2.epoch;
        }

        ++v45;
      }

      while (v45 != v41);
      v41 = [obj countByEnumeratingWithState:&v92 objects:v114 count:16];
    }

    while (v41);
  }

  v57 = [v69 lastObject];
  memset(&rhs, 0, 24);
  if (v57)
  {
    [v57 timeRange];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  CMTimeRangeGetEnd(&rhs, &lhs);
  memset(&v79, 0, 24);
  if (v65)
  {
    [(AVAsset *)v65 duration];
  }

  *&lhs.start.value = *&v79.a;
  lhs.start.epoch = *&v79.c;
  *&time2.value = *&rhs.a;
  time2.epoch = *&rhs.c;
  if (CMTimeCompare(&lhs.start, &time2) >= 1)
  {
    if (prototypeInstruction && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v58 = [(AVVideoCompositionInstruction *)prototypeInstruction mutableCopy];
    }

    else
    {
      v58 = +[AVMutableVideoCompositionInstruction videoCompositionInstruction];
    }

    v59 = v58;
    *&time2.value = *&v79.a;
    time2.epoch = *&v79.c;
    *&v77.value = *&rhs.a;
    v77.epoch = *&rhs.c;
    CMTimeSubtract(&lhs.start, &time2, &v77);
    *&time2.value = *&rhs.a;
    time2.epoch = *&rhs.c;
    CMTimeRangeMake(&v78, &time2, &lhs.start);
    lhs = v78;
    [(AVMutableVideoCompositionInstruction *)v59 setTimeRange:&lhs];
    [v69 addObject:v59];
  }

  v36 = +[AVMutableVideoComposition videoComposition];
  if ([(NSArray *)v11 count]== 1)
  {
    v61 = [-[NSArray objectAtIndexedSubscript:](v11 objectAtIndexedSubscript:{0), "trackID"}];
  }

  else
  {
    v61 = 0;
  }

  *&v60 = v17;
  [(AVVideoComposition *)v36 _setFrameDurationForFrameRate:v61 sourceTrackIDForFrameTiming:v60];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVAsset *)v65 naturalSize];
    v37 = v62;
    v38 = v63;
  }

  [(AVMutableVideoComposition *)v36 setRenderSize:v37, v38];
  [(AVMutableVideoComposition *)v36 setInstructions:v69];
  [(AVMutableVideoComposition *)v36 setSpatialVideoConfigurations:[AVMutableVideoComposition makeSpatialVideoConfigurationsFromVideoTracks:v66]];
  return v36;
}

uint64_t __88__AVMutableVideoComposition_videoCompositionWithPropertiesOfAsset_prototypeInstruction___block_invoke(int a1, CFDictionaryRef dictionaryRepresentation, const __CFDictionary *a3)
{
  memset(&v8, 0, sizeof(v8));
  CMTimeMakeFromDictionary(&v8, dictionaryRepresentation);
  memset(&v7, 0, sizeof(v7));
  CMTimeMakeFromDictionary(&v7, a3);
  time1 = v8;
  v5 = v7;
  if (CMTimeCompare(&time1, &v5) > 0)
  {
    return 1;
  }

  time1 = v8;
  v5 = v7;
  return CMTimeCompare(&time1, &v5) >> 31;
}

+ (void)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset prototypeInstruction:(AVVideoCompositionInstruction *)prototypeInstruction completionHandler:(void *)completionHandler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__AVMutableVideoComposition_videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandler___block_invoke;
  v5[3] = &unk_1E74620C8;
  v5[4] = a1;
  v5[5] = asset;
  v5[6] = prototypeInstruction;
  v5[7] = completionHandler;
  AVLoadValuesAsynchronously(asset, &unk_1F0AD3748, v5);
}

- (id)builtInCompositorName
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 builtInCompositorName];
}

- (void)setBuiltInCompositorName:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if (([a3 isEqual:{-[AVVideoComposition builtInCompositorName](&v6, sel_builtInCompositorName)}] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setBuiltInCompositorName:a3];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (id)customVideoCompositorClass
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 customVideoCompositorClass];
}

- (void)setCustomVideoCompositorClass:(id)customVideoCompositorClass
{
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if ([(AVVideoComposition *)&v6 customVideoCompositorClass]!= customVideoCompositorClass)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setCustomVideoCompositorClass:customVideoCompositorClass];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (CMTime)frameDuration
{
  v4.receiver = self;
  v4.super_class = AVMutableVideoComposition;
  return [(CMTime *)&v4 frameDuration];
}

- (void)setFrameDuration:(CMTime *)frameDuration
{
  v7.receiver = self;
  v7.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v7 frameDuration];
  time1 = *frameDuration;
  if (CMTimeCompare(&time1, &time2))
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    time2 = *frameDuration;
    [(AVVideoComposition *)&v5 setFrameDuration:&time2];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (CMPersistentTrackID)sourceTrackIDForFrameTiming
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 sourceTrackIDForFrameTiming];
}

- (void)setSourceTrackIDForFrameTiming:(CMPersistentTrackID)sourceTrackIDForFrameTiming
{
  v3 = *&sourceTrackIDForFrameTiming;
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if ([(AVVideoComposition *)&v6 sourceTrackIDForFrameTiming]!= sourceTrackIDForFrameTiming)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setSourceTrackIDForFrameTiming:v3];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (CGSize)renderSize
{
  v4.receiver = self;
  v4.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v4 renderSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setRenderSize:(CGSize)renderSize
{
  height = renderSize.height;
  width = renderSize.width;
  v10.receiver = self;
  v10.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v10 renderSize];
  if (width != v7 || height != v6)
  {
    v9.receiver = self;
    v9.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v9 setRenderSize:width, height];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (float)renderScale
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v3 renderScale];
  return result;
}

- (void)setRenderScale:(float)renderScale
{
  v7.receiver = self;
  v7.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v7 renderScale];
  if (*&v5 != renderScale)
  {
    v6.receiver = self;
    v6.super_class = AVMutableVideoComposition;
    *&v5 = renderScale;
    [(AVVideoComposition *)&v6 setRenderScale:v5];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (NSArray)instructions
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 instructions];
}

- (void)setInstructions:(NSArray *)instructions
{
  v4.receiver = self;
  v4.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v4 setInstructions:instructions];
  [(AVVideoComposition *)self _bumpChangeSeed];
}

- (AVVideoCompositionCoreAnimationTool)animationTool
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 animationTool];
}

- (void)setAnimationTool:(AVVideoCompositionCoreAnimationTool *)animationTool
{
  v4.receiver = self;
  v4.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v4 setAnimationTool:animationTool];
  [(AVVideoComposition *)self _bumpChangeSeed];
}

- (NSArray)sourceSampleDataTrackIDs
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 sourceSampleDataTrackIDs];
}

- (void)setSourceSampleDataTrackIDs:(NSArray *)sourceSampleDataTrackIDs
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v3 setSourceSampleDataTrackIDs:sourceSampleDataTrackIDs];
}

- (NSArray)outputBufferDescription
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 outputBufferDescription];
}

- (void)setOutputBufferDescription:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v3 setOutputBufferDescription:a3];
}

- (id)spatialVideoConfigurations
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 spatialVideoConfigurations];
}

- (void)setSpatialVideoConfigurations:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v3 setSpatialVideoConfigurations:a3];
}

- (id)sourceVideoTrackWindowsForTrackIDs
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 sourceVideoTrackWindowsForTrackIDs];
}

- (void)setSourceVideoTrackWindowsForTrackIDs:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v3 setSourceVideoTrackWindowsForTrackIDs:a3];
}

- (id)sourceSampleDataTrackWindowsForTrackIDs
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 sourceSampleDataTrackWindowsForTrackIDs];
}

- (void)setSourceSampleDataTrackWindowsForTrackIDs:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  [(AVVideoComposition *)&v3 setSourceSampleDataTrackWindowsForTrackIDs:a3];
}

- (NSString)colorPrimaries
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 colorPrimaries];
}

- (void)setColorPrimaries:(NSString *)colorPrimaries
{
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if ([(AVVideoComposition *)&v6 colorPrimaries]!= colorPrimaries)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setColorPrimaries:colorPrimaries];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (NSString)colorYCbCrMatrix
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 colorYCbCrMatrix];
}

- (void)setColorYCbCrMatrix:(NSString *)colorYCbCrMatrix
{
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if ([(AVVideoComposition *)&v6 colorYCbCrMatrix]!= colorYCbCrMatrix)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setColorYCbCrMatrix:colorYCbCrMatrix];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (NSString)colorTransferFunction
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 colorTransferFunction];
}

- (void)setColorTransferFunction:(NSString *)colorTransferFunction
{
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if ([(AVVideoComposition *)&v6 colorTransferFunction]!= colorTransferFunction)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setColorTransferFunction:colorTransferFunction];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

- (AVVideoCompositionPerFrameHDRDisplayMetadataPolicy)perFrameHDRDisplayMetadataPolicy
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoComposition;
  return [(AVVideoComposition *)&v3 perFrameHDRDisplayMetadataPolicy];
}

- (void)setPerFrameHDRDisplayMetadataPolicy:(AVVideoCompositionPerFrameHDRDisplayMetadataPolicy)perFrameHDRDisplayMetadataPolicy
{
  v6.receiver = self;
  v6.super_class = AVMutableVideoComposition;
  if ([(AVVideoComposition *)&v6 perFrameHDRDisplayMetadataPolicy]!= perFrameHDRDisplayMetadataPolicy)
  {
    v5.receiver = self;
    v5.super_class = AVMutableVideoComposition;
    [(AVVideoComposition *)&v5 setPerFrameHDRDisplayMetadataPolicy:perFrameHDRDisplayMetadataPolicy];
    [(AVVideoComposition *)self _bumpChangeSeed];
  }
}

+ (AVMutableVideoComposition)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier
{
  if (!asset)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "asset";
    goto LABEL_6;
  }

  if (!applier)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "handler";
LABEL_6:
    v12 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"invalid parameter not satisfying: %s", applier, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v12);
  }

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___AVMutableVideoComposition;
  return objc_msgSendSuper2(&v13, sel__mutableVideoCompositionWithAsset_applyingCIFiltersWithHandler_);
}

+ (void)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier completionHandler:(void *)completionHandler
{
  if (!asset)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "asset != nil";
    goto LABEL_8;
  }

  if (!applier)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "applier != nil";
    goto LABEL_8;
  }

  if (!completionHandler)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "completionHandler != nil";
LABEL_8:
    v11 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"invalid parameter not satisfying: %s", applier, completionHandler, v5, v6, v7, v10), 0}];
    objc_exception_throw(v11);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __131__AVMutableVideoComposition_AVVideoCompositionFiltering__videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E7463928;
  v12[4] = a1;
  v12[5] = asset;
  v12[6] = applier;
  v12[7] = completionHandler;
  AVLoadValuesAsynchronously(asset, &unk_1F0AD3760, v12);
}

uint64_t __106__AVMutableVideoComposition_videoCompositionWithPropertiesOfAsset_prototypeInstruction_completionHandler___block_invoke()
{
  OUTLINED_FUNCTION_1_8();
  if (!v1)
  {
    [*(v0 + 32) videoCompositionWithPropertiesOfAsset:*(v0 + 40) prototypeInstruction:*(v0 + 48)];
  }

  OUTLINED_FUNCTION_0_11();

  return v2();
}

uint64_t __131__AVMutableVideoComposition_AVVideoCompositionFiltering__videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler___block_invoke()
{
  OUTLINED_FUNCTION_1_8();
  if (!v1)
  {
    [*(v0 + 32) videoCompositionWithAsset:*(v0 + 40) applyingCIFiltersWithHandler:*(v0 + 48)];
  }

  OUTLINED_FUNCTION_0_11();

  return v2();
}

@end