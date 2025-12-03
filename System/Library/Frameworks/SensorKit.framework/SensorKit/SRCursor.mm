@interface SRCursor
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SRCursor)init;
- (SRCursor)initWithCoder:(id)coder;
- (id)_payloadOfClass:(Class)class error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initWithPayload:(void *)payload hmac:;
@end

@implementation SRCursor

- (SRCursor)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogCursor = os_log_create("com.apple.SensorKit", "SRCursor");
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SRCursor alloc];
  payload = self->_payload;
  hmac = self->_hmac;

  return [(SRCursor *)v4 initWithPayload:hmac hmac:?];
}

- (void)initWithPayload:(void *)payload hmac:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = SRCursor;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = [a2 copy];
    v5[2] = [payload copy];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  LOBYTE(v6) = 0;
  if (self && (isKindOfClass & 1) != 0)
  {
    payload = self->_payload;
    if (equal)
    {
      v6 = [(NSData *)payload isEqualToData:*(equal + 1)];
      if (!v6)
      {
        return v6;
      }

      v8 = *(equal + 2);
    }

    else
    {
      v10 = [(NSData *)payload isEqualToData:0];
      v8 = 0;
      if (!v10)
      {
        LOBYTE(v6) = 0;
        return v6;
      }
    }

    hmac = self->_hmac;

    LOBYTE(v6) = [(NSData *)hmac isEqualToData:v8];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p)", NSStringFromClass(v4), self];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRCursor;
  [(SRCursor *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_payload forKey:@"payload"];
  hmac = self->_hmac;

  [coder encodeObject:hmac forKey:@"hmac"];
}

- (SRCursor)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"hmac"];

  return [(SRCursor *)self initWithPayload:v6 hmac:v7];
}

- (id)_payloadOfClass:(Class)class error:(id *)error
{
  if (self)
  {
    payload = self->_payload;
  }

  else
  {
    payload = 0;
  }

  return [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:class fromData:payload error:error];
}

@end