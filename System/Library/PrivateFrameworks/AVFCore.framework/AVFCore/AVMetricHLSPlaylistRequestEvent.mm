@interface AVMetricHLSPlaylistRequestEvent
- (AVMetricHLSPlaylistRequestEvent)initWithCoder:(id)coder;
- (AVMetricHLSPlaylistRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d url:(id)url isMultivariantPlaylist:(BOOL)playlist mediaType:(id)type mediaResourceRequestEvent:(id)event;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (AVMetricHLSPlaylistRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d url:(id)url isMultivariantPlaylist:(BOOL)playlist mediaType:(id)type mediaResourceRequestEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = AVMetricHLSPlaylistRequestEvent;
  v13 = *time;
  v11 = [(AVMetricEvent *)&v14 initWithDate:date mediaTime:&v13 sessionID:d, url];
  if (v11)
  {
    v11->_mediaResourceRequestEvent = event;
    v11->_isMultivariantPlaylist = playlist;
    v11->_mediaType = type;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricHLSPlaylistRequestEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeBool:self->_isMultivariantPlaylist forKey:@"isMultivariantPlaylist"];
  [coder encodeObject:self->_mediaType forKey:@"mediaType"];
}

- (AVMetricHLSPlaylistRequestEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVMetricHLSPlaylistRequestEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_isMultivariantPlaylist = [coder decodeBoolForKey:@"isMultivariantPlaylist"];
    v4->_mediaType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
  }

  return v4;
}

@end