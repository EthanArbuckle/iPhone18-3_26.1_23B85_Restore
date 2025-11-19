@interface AVPlayerItemErrorLogEvent
- (AVPlayerItemErrorLogEvent)init;
- (AVPlayerItemErrorLogEvent)initWithDictionary:(id)a3;
- (NSDate)date;
- (NSDictionary)allHTTPResponseHeaderFields;
- (NSInteger)errorStatusCode;
- (NSString)URI;
- (NSString)errorComment;
- (NSString)errorDomain;
- (NSString)playbackSessionID;
- (NSString)serverAddress;
- (id)_common_init;
- (void)dealloc;
@end

@implementation AVPlayerItemErrorLogEvent

- (id)_common_init
{
  v3 = objc_alloc_init(AVPlayerItemErrorLogEventInternal);
  self->_playerItemErrorLogEvent = v3;
  if (v3)
  {
    CFRetain(v3);
    self->_playerItemErrorLogEvent->dict = 0;
  }

  else
  {

    return 0;
  }

  return self;
}

- (AVPlayerItemErrorLogEvent)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerItemErrorLogEvent;
  result = [(AVPlayerItemErrorLogEvent *)&v3 init];
  if (result)
  {
    return [(AVPlayerItemErrorLogEvent *)result _common_init];
  }

  return result;
}

- (AVPlayerItemErrorLogEvent)initWithDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVPlayerItemErrorLogEvent;
  v4 = [(AVPlayerItemErrorLogEvent *)&v8 init];
  if (!v4)
  {
    return 0;
  }

  v5 = [(AVPlayerItemErrorLogEvent *)v4 _common_init];
  v6 = v5;
  if (a3 && v5)
  {
    *(*(v5 + 8) + 8) = a3;
  }

  return v6;
}

- (void)dealloc
{
  playerItemErrorLogEvent = self->_playerItemErrorLogEvent;
  if (playerItemErrorLogEvent)
  {

    CFRelease(self->_playerItemErrorLogEvent);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemErrorLogEvent;
  [(AVPlayerItemErrorLogEvent *)&v4 dealloc];
}

- (NSDate)date
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971918]];

  return v2;
}

- (NSString)URI
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971948]];

  return v2;
}

- (NSString)serverAddress
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971940]];

  return v2;
}

- (NSString)playbackSessionID
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971938]];

  return v2;
}

- (NSInteger)errorStatusCode
{
  result = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971930]];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

- (NSString)errorDomain
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971928]];

  return v2;
}

- (NSString)errorComment
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971920]];

  return v2;
}

- (NSDictionary)allHTTPResponseHeaderFields
{
  v2 = [(NSDictionary *)self->_playerItemErrorLogEvent->dict valueForKey:*MEMORY[0x1E6971910]];

  return v2;
}

@end