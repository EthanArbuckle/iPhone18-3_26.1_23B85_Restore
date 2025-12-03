@interface AVMetricPlayerItemVariantSwitchEvent
- (AVMetricPlayerItemVariantSwitchEvent)initWithCoder:(id)coder;
- (AVMetricPlayerItemVariantSwitchEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d fromVariant:(id)variant toVariant:(id)toVariant videoRendition:(id)rendition audioRendition:(id)audioRendition subtitleRendition:(id)self0 loadedTimeRanges:(id)self1 didSucceed:(BOOL)self2;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (AVMetricPlayerItemVariantSwitchEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d fromVariant:(id)variant toVariant:(id)toVariant videoRendition:(id)rendition audioRendition:(id)audioRendition subtitleRendition:(id)self0 loadedTimeRanges:(id)self1 didSucceed:(BOOL)self2
{
  v18.receiver = self;
  v18.super_class = AVMetricPlayerItemVariantSwitchEvent;
  v17 = *time;
  v15 = [(AVMetricEvent *)&v18 initWithDate:date mediaTime:&v17 sessionID:d];
  if (v15)
  {
    v15->_fromVariant = variant;
    v15->_toVariant = toVariant;
    v15->_videoRendition = rendition;
    v15->_audioRendition = audioRendition;
    v15->_subtitleRendition = subtitleRendition;
    v15->_loadedTimeRanges = ranges;
    v15->_didSucceed = succeed;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricPlayerItemVariantSwitchEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_fromVariant forKey:@"fromVariant"];
  [coder encodeObject:self->_toVariant forKey:@"toVariant"];
  [coder encodeBool:self->_didSucceed forKey:@"didSucceed"];
  [coder encodeObject:self->_loadedTimeRanges forKey:@"loadedTimeRange"];
  [coder encodeObject:self->_videoRendition forKey:@"videoRendition"];
  [coder encodeObject:self->_audioRendition forKey:@"audioRendition"];
  [coder encodeObject:self->_subtitleRendition forKey:@"subtitleRendition"];
}

- (AVMetricPlayerItemVariantSwitchEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVMetricPlayerItemVariantSwitchEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_fromVariant = [coder decodeObjectOfClass:objc_opt_class() forKey:@"fromVariant"];
    v4->_toVariant = [coder decodeObjectOfClass:objc_opt_class() forKey:@"toVariant"];
    v4->_didSucceed = [coder decodeBoolForKey:@"didSucceed"];
    v4->_loadedTimeRanges = [coder decodeObjectOfClass:objc_opt_class() forKey:@"loadedTimeRange"];
    v4->_videoRendition = [coder decodeObjectOfClass:objc_opt_class() forKey:@"videoRendition"];
    v4->_audioRendition = [coder decodeObjectOfClass:objc_opt_class() forKey:@"audioRendition"];
    v4->_subtitleRendition = [coder decodeObjectOfClass:objc_opt_class() forKey:@"subtitleRendition"];
  }

  return v4;
}

@end