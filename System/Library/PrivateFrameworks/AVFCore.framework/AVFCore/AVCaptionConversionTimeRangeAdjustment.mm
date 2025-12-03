@interface AVCaptionConversionTimeRangeAdjustment
+ (AVCaptionConversionTimeRangeAdjustment)captionConversionTimeRangeAdjustmentWithFigDictionary:(__CFDictionary *)dictionary;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationAdjustment;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startAdjustment;
- (CMTime)durationOffset;
- (CMTime)startTimeOffset;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptionConversionTimeRangeAdjustment

+ (AVCaptionConversionTimeRangeAdjustment)captionConversionTimeRangeAdjustmentWithFigDictionary:(__CFDictionary *)dictionary
{
  v3 = [objc_alloc(objc_opt_class()) initWithFigDictionary:dictionary];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionConversionTimeRangeAdjustment;
  [(AVCaptionConversionTimeRangeAdjustment *)&v3 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startAdjustment
{
  v4 = [self->_timeRangeAdjustmentInternal objectForKeyedSubscript:*MEMORY[0x1E6971840]];

  return CMTimeMakeFromDictionary(retstr, v4);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationAdjustment
{
  v4 = [self->_timeRangeAdjustmentInternal objectForKeyedSubscript:*MEMORY[0x1E6971838]];

  return CMTimeMakeFromDictionary(retstr, v4);
}

- (CMTime)startTimeOffset
{
  if (self)
  {
    return [(CMTime *)self startAdjustment];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return self;
}

- (CMTime)durationOffset
{
  if (self)
  {
    return [(CMTime *)self durationAdjustment];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return self;
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(AVCaptionConversionTimeRangeAdjustment *)self startAdjustment];
    v4 = CMTimeCopyDescription(v3, &time);
    [(AVCaptionConversionTimeRangeAdjustment *)self durationAdjustment];
  }

  else
  {
    memset(&time, 0, sizeof(time));
    v4 = CMTimeCopyDescription(v3, &time);
    memset(&time, 0, sizeof(time));
  }

  v5 = CMTimeCopyDescription(v3, &time);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v6 stringWithFormat:@"<%@: %p, start time adjusted by %@, duration adjusted by %@", NSStringFromClass(v7), self, v4, v5];
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

@end