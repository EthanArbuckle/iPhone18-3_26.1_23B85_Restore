@interface AVMetricHLSMediaSegmentRequestEvent
- (AVMetricHLSMediaSegmentRequestEvent)initWithCoder:(id)coder;
- (AVMetricHLSMediaSegmentRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d indexFileURL:(id)l byteRange:(_NSRange)range isMapSegment:(BOOL)segment mediaType:(id)type segmentDuration:(double)self0 mediaResourceRequestEvent:(id)self1;
- (_NSRange)byteRange;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricHLSMediaSegmentRequestEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricHLSMediaSegmentRequestEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricHLSMediaSegmentRequestEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricHLSMediaSegmentRequestEvent:%p %@ indexFileURL:%@ isMapSegment:%d mediaType:%@ segmentDuration:%f mediaResourceRequestEvent:%@>", self, -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_indexFileURL, self->_isMapSegment, self->_mediaType, *&self->_segmentDuration, -[AVMetricMediaResourceRequestEvent debugDescription](self->_mediaResourceRequestEvent, "debugDescription")];
}

- (AVMetricHLSMediaSegmentRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d indexFileURL:(id)l byteRange:(_NSRange)range isMapSegment:(BOOL)segment mediaType:(id)type segmentDuration:(double)self0 mediaResourceRequestEvent:(id)self1
{
  length = range.length;
  location = range.location;
  v18.receiver = self;
  v18.super_class = AVMetricHLSMediaSegmentRequestEvent;
  v17 = *time;
  v15 = [(AVMetricEvent *)&v18 initWithDate:date mediaTime:&v17 sessionID:d];
  if (v15)
  {
    v15->_mediaResourceRequestEvent = event;
    v15->_isMapSegment = segment;
    v15->_indexFileURL = l;
    v15->_byteRange.location = location;
    v15->_byteRange.length = length;
    v15->_mediaType = type;
    v15->_segmentDuration = duration;
  }

  return v15;
}

- (_NSRange)byteRange
{
  p_byteRange = &self->_byteRange;
  location = self->_byteRange.location;
  length = p_byteRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricHLSMediaSegmentRequestEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeBool:self->_isMapSegment forKey:@"isMapSegment"];
  [coder encodeObject:self->_mediaType forKey:@"mediaType"];
  [coder encodeObject:self->_indexFileURL forKey:@"indexFileURL"];
  [coder encodeDouble:@"segmentDuration" forKey:self->_segmentDuration];
}

- (AVMetricHLSMediaSegmentRequestEvent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AVMetricHLSMediaSegmentRequestEvent;
  v4 = [(AVMetricEvent *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_isMapSegment = [coder decodeBoolForKey:@"isMapSegment"];
    v4->_mediaType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    v4->_indexFileURL = [coder decodeObjectOfClass:objc_opt_class() forKey:@"indexFileURL"];
    [coder decodeDoubleForKey:@"segmentDuration"];
    v4->_segmentDuration = v5;
  }

  return v4;
}

@end