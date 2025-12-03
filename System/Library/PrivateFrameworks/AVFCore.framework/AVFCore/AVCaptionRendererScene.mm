@interface AVCaptionRendererScene
- (AVCaptionRendererScene)init;
- (AVCaptionRendererScene)initWithTimeRange:(id *)range hasActiveCaptions:(BOOL)captions needsPeriodicRefresh:(BOOL)refresh;
- (BOOL)isEqual:(id)equal;
- (CMTimeRange)timeRange;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVCaptionRendererScene

- (AVCaptionRendererScene)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithText_timeRange_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVCaptionRendererScene)initWithTimeRange:(id *)range hasActiveCaptions:(BOOL)captions needsPeriodicRefresh:(BOOL)refresh
{
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    selfCopy = self;
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v16, v17, v18, v19, v20, "CMTIME_IS_NUMERIC(timeRange.start) && CMTIME_IS_NUMERIC(timeRange.duration)"), 0}];
    objc_exception_throw(v21);
  }

  v22.receiver = self;
  v22.super_class = AVCaptionRendererScene;
  v9 = [(AVCaptionRendererScene *)&v22 init];
  if (v9)
  {
    v10 = objc_alloc_init(AVCaptionRendererSceneInternal);
    v9->_internal = v10;
    if (v10)
    {
      v11 = *&range->var0.var0;
      v12 = *&range->var0.var3;
      *&v10->_timeRange.duration.timescale = *&range->var1.var1;
      *&v10->_timeRange.start.epoch = v12;
      *&v10->_timeRange.start.value = v11;
      v9->_internal->_hasActiveCaptions = captions;
      v9->_internal->_needsPeriodicRefresh = refresh;
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionRendererScene;
  [(AVCaptionRendererScene *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (!self)
  {
    memset(&range1, 0, sizeof(range1));
    if (equal)
    {
      goto LABEL_5;
    }

LABEL_9:
    memset(&v8, 0, sizeof(v8));
    return CMTimeRangeEqual(&range1, &v8) != 0;
  }

  [(AVCaptionRendererScene *)self timeRange];
  if (!equal)
  {
    goto LABEL_9;
  }

LABEL_5:
  [equal timeRange];
  return CMTimeRangeEqual(&range1, &v8) != 0;
}

- (unint64_t)hash
{
  memset(v6, 0, sizeof(v6));
  v5 = 0u;
  if (self)
  {
    [(AVCaptionRendererScene *)self timeRange];
  }

  *&v4.value = v5;
  v4.epoch = *&v6[0];
  v2 = CMTimeHash(&v4);
  v4 = *(v6 + 8);
  return CMTimeHash(&v4) ^ v2;
}

- (CMTimeRange)timeRange
{
  v3 = *&self->start.timescale;
  v4 = *(v3 + 24);
  *&retstr->start.value = *(v3 + 8);
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = *(v3 + 40);
  return self;
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(AVCaptionRendererScene *)self timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v4 = CMTimeRangeCopyDescription(v3, &range);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if ([(AVCaptionRendererScene *)self hasActiveCaptions])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  needsPeriodicRefresh = [(AVCaptionRendererScene *)self needsPeriodicRefresh];
  v10 = &stru_1F0A8E470;
  if (needsPeriodicRefresh)
  {
    v10 = @", periodic-refresh";
  }

  return [v5 stringWithFormat:@"<%@: %p, timeRange = %@ anyCaptions = %@%@>", v7, self, v4, v8, v10];
}

@end