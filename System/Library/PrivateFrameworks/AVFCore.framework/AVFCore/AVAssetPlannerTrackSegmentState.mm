@interface AVAssetPlannerTrackSegmentState
+ (id)emptyState;
+ (id)fromDictionary:(id)dictionary error:(id *)error;
- (BOOL)resumableBy:(id)by;
- (id)description;
- (id)toDictionary;
- (void)dealloc;
@end

@implementation AVAssetPlannerTrackSegmentState

+ (id)emptyState
{
  v2 = objc_alloc_init(AVAssetPlannerTrackSegmentState);

  return v2;
}

+ (id)fromDictionary:(id)dictionary error:(id *)error
{
  v6 = [dictionary objectForKey:@"SegmentURL"];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  if (!v7)
  {
    [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
    goto LABEL_31;
  }

  v8 = v7;
  v9 = [dictionary objectForKey:@"TimeRange"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
    goto LABEL_31;
  }

  memset(&v23, 0, sizeof(v23));
  CMTimeRangeMakeFromDictionary(&v23, v9);
  if ((v23.start.flags & 1) != 0 && (v23.duration.flags & 1) != 0 && !v23.duration.epoch && (v23.duration.value & 0x8000000000000000) == 0)
  {
    if ((v23.start.flags & 0x1D) != 1)
    {
      [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
      goto LABEL_31;
    }

    if ((v23.duration.flags & 0x1D) != 1)
    {
      [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
      goto LABEL_31;
    }

    v21.start = v23.duration;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&v21.start, &time2) <= 0)
    {
      [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
      goto LABEL_31;
    }

    v10 = [dictionary objectForKey:@"RequiresFrameCount"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
      goto LABEL_31;
    }

    if (v10)
    {
      if ([v10 BOOLValue])
      {
        v11 = [dictionary objectForKey:@"FrameCount"];
        if (v11)
        {
          v12 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            integerValue = [v12 integerValue];
            if (integerValue > 0)
            {
              v10 = integerValue;
              v14 = 1;
              goto LABEL_23;
            }

            [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
          }

          else
          {
            [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
          }
        }

        else
        {
          [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
        }

LABEL_31:
        value = v21.start.value;
        goto LABEL_18;
      }

      v14 = 0;
      v10 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_23:
    v17 = [dictionary objectForKey:@"HasCompleted"];
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v18 BOOLValue];
        v16 = +[AVAssetPlannerTrackSegmentState emptyState];
        [v16 setSegmentURL:v8];
        v21 = v23;
        [v16 setTimeRange:&v21];
        [v16 setRequiresFrameCount:v14];
        if (v14)
        {
          [v16 setFrameCount:v10];
        }

        [v16 setHasCompleted:bOOLValue];
        return v16;
      }

      [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
    }

    else
    {
      [AVAssetPlannerTrackSegmentState fromDictionary:? error:?];
    }

    goto LABEL_31;
  }

  fig_log_get_emitter();
  value = FigSignalErrorAtGM();
LABEL_18:
  v16 = 0;
  if (error && value)
  {
    v16 = 0;
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:value userInfo:0];
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetPlannerTrackSegmentState;
  [(AVAssetPlannerTrackSegmentState *)&v3 dealloc];
}

- (id)toDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = *MEMORY[0x1E695E480];
  v5 = *&self->_timeRange.start.epoch;
  *&v7.start.value = *&self->_timeRange.start.value;
  *&v7.start.epoch = v5;
  *&v7.duration.timescale = *&self->_timeRange.duration.timescale;
  [dictionary setObject:CMTimeRangeCopyAsDictionary(&v7 forKey:{v4), @"TimeRange"}];
  [dictionary setObject:-[NSURL absoluteString](self->_segmentURL forKey:{"absoluteString"), @"SegmentURL"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_requiresFrameCount), @"RequiresFrameCount"}];
  if (self->_requiresFrameCount)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLong:", self->_frameCount), @"FrameCount"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_hasCompleted), @"HasCompleted"}];
  return dictionary;
}

- (id)description
{
  v3 = [-[AVAssetPlannerTrackSegmentState toDictionary](self "toDictionary")];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  return [v4 stringWithFormat:@"<%@: %p, %@>", NSStringFromClass(v5), self, v3];
}

- (BOOL)resumableBy:(id)by
{
  v5 = -[NSURL isEqual:](-[NSURL absoluteURL](self->_segmentURL, "absoluteURL"), "isEqual:", [objc_msgSend(by "segmentURL")]);
  if (v5)
  {
    if (by)
    {
      [by timeRange];
    }

    else
    {
      memset(&range2, 0, sizeof(range2));
    }

    v6 = *&self->_timeRange.start.epoch;
    *&v9.start.value = *&self->_timeRange.start.value;
    *&v9.start.epoch = v6;
    *&v9.duration.timescale = *&self->_timeRange.duration.timescale;
    v5 = CMTimeRangeEqual(&v9, &range2);
    if (v5)
    {
      frameCount = self->_frameCount;
      LOBYTE(v5) = frameCount == [by frameCount];
    }
  }

  return v5;
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

@end