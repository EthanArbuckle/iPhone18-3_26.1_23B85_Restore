@interface SRMediaEvent
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRMediaEvent)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRMediaEvent)initWithCoder:(id)a3;
- (SRMediaEvent)initWithMediaIdentifier:(id)a3 eventType:(int64_t)a4;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRMediaEvent

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogMediaEvent = os_log_create("com.apple.SensorKit", "SRLogMediaEvent");
  }
}

- (SRMediaEvent)initWithMediaIdentifier:(id)a3 eventType:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = SRMediaEvent;
  v6 = [(SRMediaEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_eventType = a4;
    v6->_mediaIdentifier = [a3 copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRMediaEvent;
  [(SRMediaEvent *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInteger:-[SRMediaEvent eventType](self forKey:{"eventType"), @"eventType"}];
  v6 = [(SRMediaEvent *)self mediaIdentifier];

  [a3 encodeObject:v6 forKey:@"mediaIdentifier"];
}

- (SRMediaEvent)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeIntegerForKey:@"eventType"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mediaIdentifier"];
  v8 = v7;
  if (v6 && v7)
  {

    v9 = objc_alloc_init(SRMediaEvent);
    [(SRMediaEvent *)v9 setEventType:v6];
    [(SRMediaEvent *)v9 setMediaIdentifier:v8];
  }

  else
  {
    v10 = SRLogMediaEvent;
    if (os_log_type_enabled(SRLogMediaEvent, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v8;
      v15 = 2048;
      v16 = v6;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to encode the object. Media identifier:%@, event type:%ld", buf, 0x16u);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (SRMediaEvent)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if ([a3 length])
  {
    v11.receiver = self;
    v11.super_class = SRMediaEvent;
    result = [(SRMediaEvent *)&v11 init];
    if (result)
    {
      v8 = result;
      v10 = 0;
      result = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v10];
      if (result)
      {
        v9 = result;

        return v9;
      }
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {media identifier: %@, event type: %ld}", NSStringFromClass(v4), self, -[SRMediaEvent mediaIdentifier](self, "mediaIdentifier"), -[SRMediaEvent eventType](self, "eventType")];
}

- (id)sr_dictionaryRepresentation
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"mediaIdentifier";
  v5[1] = @"eventType";
  v6[0] = [(SRMediaEvent *)self mediaIdentifier];
  v6[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRMediaEvent eventType](self, "eventType")}];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqual:](-[SRMediaEvent mediaIdentifier](self, "mediaIdentifier"), "isEqual:", [a3 mediaIdentifier]);
      if (v5)
      {
        v6 = [(SRMediaEvent *)self eventType];
        LOBYTE(v5) = v6 == [a3 eventType];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end