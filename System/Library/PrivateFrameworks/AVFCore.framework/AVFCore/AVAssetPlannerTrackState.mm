@interface AVAssetPlannerTrackState
+ (id)emptyState;
+ (id)fromDictionary:(id)a3 error:(id *)a4;
- (BOOL)resumableBy:(id)a3;
- (id)description;
- (id)toDictionary;
- (void)dealloc;
@end

@implementation AVAssetPlannerTrackState

+ (id)emptyState
{
  v2 = objc_alloc_init(AVAssetPlannerTrackState);

  return v2;
}

+ (id)fromDictionary:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v6 = [a3 objectForKey:@"AssemblyTrackID"];
  if (!v6)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v8 = [v7 intValue];
  if (!v8)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v9 = v8;
  v10 = [a3 objectForKey:@"MediaType"];
  if (!v10)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v12 = [a3 objectForKey:@"RequiresVideoCompression"];
  if (!v12)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v14 = [v13 BOOLValue];
  if (!v14)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_15;
  }

  v15 = [a3 objectForKey:@"VideoCodecType"];
  if (!v15)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
LABEL_45:
    v30 = v37;
LABEL_31:
    v28 = 0;
    if (a4 && v30)
    {
      v28 = 0;
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:v30 userInfo:0];
    }

    return v28;
  }

  v17 = [a3 objectForKey:@"LastCompletedSegmentFinalHDRMetadataGenerationState"];
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [AVAssetPlannerTrackState fromDictionary:? error:?];
      goto LABEL_45;
    }
  }

LABEL_15:
  v18 = [a3 objectForKey:@"Segments"];
  if (!v18)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v19 = v18;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AVAssetPlannerTrackState fromDictionary:? error:?];
    goto LABEL_45;
  }

  v20 = v9;
  v31 = a4;
  v21 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = [AVAssetPlannerTrackSegmentState fromDictionary:*(*(&v32 + 1) + 8 * i) error:&v36];
        if (v26)
        {
          v27 = v36 == 0;
        }

        else
        {
          v27 = 0;
        }

        if (!v27)
        {
          [AVAssetPlannerTrackState fromDictionary:? error:?];
          v30 = v37;
          a4 = v31;
          goto LABEL_31;
        }

        [v21 addObject:v26];
      }

      v23 = [v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v23);
  }

  v28 = +[AVAssetPlannerTrackState emptyState];
  [v28 setAssemblyTrackID:v20];
  [v28 setMediaType:v11];
  [v28 setVideoCodecType:v16];
  [v28 setRequiresVideoCompression:v14];
  [v28 setLastCompletedSegmentFinalHDRMetadataGenerationState:v17];
  [v28 setSegmentStates:v21];
  return v28;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetPlannerTrackState;
  [(AVAssetPlannerTrackState *)&v3 dealloc];
}

- (id)toDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", self->_assemblyTrackID), @"AssemblyTrackID"}];
  [v3 setObject:self->_mediaType forKey:@"MediaType"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_requiresVideoCompression), @"RequiresVideoCompression"}];
  videoCodecType = self->_videoCodecType;
  if (videoCodecType)
  {
    [v3 setObject:videoCodecType forKey:@"VideoCodecType"];
  }

  if ([(AVAssetPlannerTrackState *)self lastCompletedSegmentFinalHDRMetadataGenerationState])
  {
    [v3 setObject:-[AVAssetPlannerTrackState lastCompletedSegmentFinalHDRMetadataGenerationState](self forKey:{"lastCompletedSegmentFinalHDRMetadataGenerationState"), @"LastCompletedSegmentFinalHDRMetadataGenerationState"}];
  }

  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  segmentStates = self->_segmentStates;
  v7 = [(NSArray *)segmentStates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(segmentStates);
        }

        [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "toDictionary")}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)segmentStates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v3 setObject:v5 forKey:@"Segments"];
  return v3;
}

- (id)description
{
  v3 = [-[AVAssetPlannerTrackState toDictionary](self "toDictionary")];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  return [v4 stringWithFormat:@"<%@: %p, %@>", NSStringFromClass(v5), self, v3];
}

- (BOOL)resumableBy:(id)a3
{
  assemblyTrackID = self->_assemblyTrackID;
  if (assemblyTrackID != [a3 assemblyTrackID])
  {
    goto LABEL_13;
  }

  v6 = -[NSString isEqual:](self->_mediaType, "isEqual:", [a3 mediaType]);
  if (!v6)
  {
    return v6;
  }

  requiresVideoCompression = self->_requiresVideoCompression;
  if (requiresVideoCompression != [a3 requiresVideoCompression] || (v8 = -[NSArray count](self->_segmentStates, "count"), v8 != objc_msgSend(objc_msgSend(a3, "segmentStates"), "count")))
  {
LABEL_13:
    LOBYTE(v6) = 0;
    return v6;
  }

  v9 = [(NSArray *)self->_segmentStates count];
  v10 = v9 - 1;
  if (v9 < 1)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v11 = 0;
    do
    {
      v6 = [-[NSArray objectAtIndex:](self->_segmentStates objectAtIndex:{v11), "resumableBy:", objc_msgSend(objc_msgSend(a3, "segmentStates"), "objectAtIndex:", v11)}];
      if (v6)
      {
        v12 = v10 == v11;
      }

      else
      {
        v12 = 1;
      }

      ++v11;
    }

    while (!v12);
  }

  return v6;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)fromDictionary:(_DWORD *)a1 error:.cold.13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end