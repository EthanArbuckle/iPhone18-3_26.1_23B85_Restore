@interface AVMetricHLSMediaSegmentRequestEvent
- (AVMetricHLSMediaSegmentRequestEvent)initWithCoder:(id)a3;
- (AVMetricHLSMediaSegmentRequestEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 indexFileURL:(id)a6 byteRange:(_NSRange)a7 isMapSegment:(BOOL)a8 mediaType:(id)a9 segmentDuration:(double)a10 mediaResourceRequestEvent:(id)a11;
- (_NSRange)byteRange;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (AVMetricHLSMediaSegmentRequestEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 indexFileURL:(id)a6 byteRange:(_NSRange)a7 isMapSegment:(BOOL)a8 mediaType:(id)a9 segmentDuration:(double)a10 mediaResourceRequestEvent:(id)a11
{
  length = a7.length;
  location = a7.location;
  v18.receiver = self;
  v18.super_class = AVMetricHLSMediaSegmentRequestEvent;
  v17 = *a4;
  v15 = [(AVMetricEvent *)&v18 initWithDate:a3 mediaTime:&v17 sessionID:a5];
  if (v15)
  {
    v15->_mediaResourceRequestEvent = a11;
    v15->_isMapSegment = a8;
    v15->_indexFileURL = a6;
    v15->_byteRange.location = location;
    v15->_byteRange.length = length;
    v15->_mediaType = a9;
    v15->_segmentDuration = a10;
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricHLSMediaSegmentRequestEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeBool:self->_isMapSegment forKey:@"isMapSegment"];
  [a3 encodeObject:self->_mediaType forKey:@"mediaType"];
  [a3 encodeObject:self->_indexFileURL forKey:@"indexFileURL"];
  [a3 encodeDouble:@"segmentDuration" forKey:self->_segmentDuration];
}

- (AVMetricHLSMediaSegmentRequestEvent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVMetricHLSMediaSegmentRequestEvent;
  v4 = [(AVMetricEvent *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_isMapSegment = [a3 decodeBoolForKey:@"isMapSegment"];
    v4->_mediaType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    v4->_indexFileURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"indexFileURL"];
    [a3 decodeDoubleForKey:@"segmentDuration"];
    v4->_segmentDuration = v5;
  }

  return v4;
}

@end