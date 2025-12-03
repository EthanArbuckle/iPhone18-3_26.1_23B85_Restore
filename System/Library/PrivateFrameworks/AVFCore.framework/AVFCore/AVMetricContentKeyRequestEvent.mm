@interface AVMetricContentKeyRequestEvent
- (AVMetricContentKeyRequestEvent)initWithCoder:(id)coder;
- (AVMetricContentKeyRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d contentKeySpecifier:(id)specifier mediaType:(id)type isClientInitiated:(BOOL)initiated mediaResourceRequestEvent:(id)event;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricContentKeyRequestEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricContentKeyRequestEvent;
  [(AVMetricEvent *)&v3 dealloc];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = AVMetricContentKeyRequestEvent;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVMetricContentKeyRequestEvent:%p %@ contentKeySpecifier:%@ mediaType:%@ isClientInitiated:%d mediaResourceRequestEvent: %@>", self, -[AVMetricEvent debugDescriptionForAttr](&v3, sel_debugDescriptionForAttr), self->_contentKeySpecifier, self->_mediaType, self->_isClientInitiated, -[AVMetricMediaResourceRequestEvent debugDescription](self->_mediaResourceRequestEvent, "debugDescription")];
}

- (AVMetricContentKeyRequestEvent)initWithDate:(id)date mediaTime:(id *)time sessionID:(id)d contentKeySpecifier:(id)specifier mediaType:(id)type isClientInitiated:(BOOL)initiated mediaResourceRequestEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = AVMetricContentKeyRequestEvent;
  v14 = *time;
  v12 = [(AVMetricEvent *)&v15 initWithDate:date mediaTime:&v14 sessionID:d];
  if (v12)
  {
    v12->_mediaResourceRequestEvent = event;
    v12->_contentKeySpecifier = specifier;
    v12->_mediaType = type;
    v12->_isClientInitiated = initiated;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v12.receiver), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVMetricContentKeyRequestEvent;
  [(AVMetricEvent *)&v12 encodeWithCoder:coder];
  [coder encodeObject:self->_contentKeySpecifier forKey:@"contentKeySpecifier"];
  [coder encodeObject:self->_mediaType forKey:@"mediaType"];
  [coder encodeBool:self->_isClientInitiated forKey:@"isClientInitiated"];
}

- (AVMetricContentKeyRequestEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVMetricContentKeyRequestEvent;
  v4 = [(AVMetricEvent *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_contentKeySpecifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"contentKeySpecifier"];
    v4->_mediaType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    v4->_isClientInitiated = [coder decodeBoolForKey:@"isClientInitiated"];
  }

  return v4;
}

@end