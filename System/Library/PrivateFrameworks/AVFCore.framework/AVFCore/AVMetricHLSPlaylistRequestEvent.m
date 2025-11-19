@interface AVMetricHLSPlaylistRequestEvent
- (AVMetricHLSPlaylistRequestEvent)initWithCoder:(id)a3;
- (AVMetricHLSPlaylistRequestEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 url:(id)a6 isMultivariantPlaylist:(BOOL)a7 mediaType:(id)a8 mediaResourceRequestEvent:(id)a9;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricHLSPlaylistRequestEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricHLSPlaylistRequestEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricHLSPlaylistRequestEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricHLSPlaylistRequestEvent:%p %@ isMultivariantPlaylist:%d mediaType:%@ mediaResourceRequestEvent:%@>", self, -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_isMultivariantPlaylist, self->_mediaType, -[AVMetricMediaResourceRequestEvent debugDescription](self->_mediaResourceRequestEvent, "debugDescription")];
}

- (AVMetricHLSPlaylistRequestEvent)initWithDate:(id)a3 mediaTime:(id *)a4 sessionID:(id)a5 url:(id)a6 isMultivariantPlaylist:(BOOL)a7 mediaType:(id)a8 mediaResourceRequestEvent:(id)a9
{
  v14.receiver = self;
  v14.super_class = AVMetricHLSPlaylistRequestEvent;
  v13 = *a4;
  v11 = [(AVMetricEvent *)&v14 initWithDate:a3 mediaTime:&v13 sessionID:a5, a6];
  if (v11)
  {
    v11->_mediaResourceRequestEvent = a9;
    v11->_isMultivariantPlaylist = a7;
    v11->_mediaType = a8;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricHLSPlaylistRequestEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:a3];
  [a3 encodeBool:self->_isMultivariantPlaylist forKey:@"isMultivariantPlaylist"];
  [a3 encodeObject:self->_mediaType forKey:@"mediaType"];
}

- (AVMetricHLSPlaylistRequestEvent)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMetricHLSPlaylistRequestEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_isMultivariantPlaylist = [a3 decodeBoolForKey:@"isMultivariantPlaylist"];
    v4->_mediaType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
  }

  return v4;
}

@end