@interface AVMetricPlayerItemVariantSwitchEvent
- (AVMetricPlayerItemVariantSwitchEvent)initWithCoder:(id)a3;
- (AVMetricPlayerItemVariantSwitchEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 fromVariant:(id)a6 toVariant:(id)a7 videoRendition:(id)a8 audioRendition:(id)a9 subtitleRendition:(id)a10 loadedTimeRanges:(id)a11 didSucceed:(BOOL)a12;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricPlayerItemVariantSwitchEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemVariantSwitchEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricPlayerItemVariantSwitchEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricPlayerItemVariantSwitchEvent:%p %@ fromVariant:%@ toVariant:%@ videoRendition:%@ audioRendition:%@ subtitleRendition:%@ loadedTimeRanges:%@ didSucceed:%d>", self, -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_fromVariant, self->_toVariant, -[AVMetricMediaRendition debugDescription](self->_videoRendition, "debugDescription"), -[AVMetricMediaRendition debugDescription](self->_audioRendition, "debugDescription"), -[AVMetricMediaRendition debugDescription](self->_subtitleRendition, "debugDescription"), self->_loadedTimeRanges, self->_didSucceed];
}

- (AVMetricPlayerItemVariantSwitchEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 fromVariant:(id)a6 toVariant:(id)a7 videoRendition:(id)a8 audioRendition:(id)a9 subtitleRendition:(id)a10 loadedTimeRanges:(id)a11 didSucceed:(BOOL)a12
{
  v18.receiver = self;
  v18.super_class = AVMetricPlayerItemVariantSwitchEvent;
  v17 = *a4;
  v15 = [(AVMetricEvent *)&v18 initWithDate:a3 mediaTime:&v17 sessionID:a5];
  if (v15)
  {
    v15->_fromVariant = a6;
    v15->_toVariant = a7;
    v15->_videoRendition = a8;
    v15->_audioRendition = a9;
    v15->_subtitleRendition = a10;
    v15->_loadedTimeRanges = a11;
    v15->_didSucceed = a12;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemVariantSwitchEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeObject:self->_fromVariant forKey:@"fromVariant"];
  [a3 encodeObject:self->_toVariant forKey:@"toVariant"];
  [a3 encodeBool:self->_didSucceed forKey:@"didSucceed"];
  [a3 encodeObject:self->_loadedTimeRanges forKey:@"loadedTimeRange"];
  [a3 encodeObject:self->_videoRendition forKey:@"videoRendition"];
  [a3 encodeObject:self->_audioRendition forKey:@"audioRendition"];
  [a3 encodeObject:self->_subtitleRendition forKey:@"subtitleRendition"];
}

- (AVMetricPlayerItemVariantSwitchEvent)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMetricPlayerItemVariantSwitchEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_fromVariant = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fromVariant"];
    v4->_toVariant = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"toVariant"];
    v4->_didSucceed = [a3 decodeBoolForKey:@"didSucceed"];
    v4->_loadedTimeRanges = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"loadedTimeRange"];
    v4->_videoRendition = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"videoRendition"];
    v4->_audioRendition = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"audioRendition"];
    v4->_subtitleRendition = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleRendition"];
  }

  return v4;
}

@end