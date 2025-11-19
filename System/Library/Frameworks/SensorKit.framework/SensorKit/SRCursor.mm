@interface SRCursor
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SRCursor)init;
- (SRCursor)initWithCoder:(id)a3;
- (id)_payloadOfClass:(Class)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initWithPayload:(void *)a3 hmac:;
@end

@implementation SRCursor

- (SRCursor)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogCursor = os_log_create("com.apple.SensorKit", "SRCursor");
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SRCursor alloc];
  payload = self->_payload;
  hmac = self->_hmac;

  return [(SRCursor *)v4 initWithPayload:hmac hmac:?];
}

- (void)initWithPayload:(void *)a3 hmac:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = SRCursor;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = [a2 copy];
    v5[2] = [a3 copy];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
    if (a3)
    {
      v6 = [(NSData *)payload isEqualToData:*(a3 + 1)];
      if (!v6)
      {
        return v6;
      }

      v8 = *(a3 + 2);
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:self->_payload forKey:@"payload"];
  hmac = self->_hmac;

  [a3 encodeObject:hmac forKey:@"hmac"];
}

- (SRCursor)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"hmac"];

  return [(SRCursor *)self initWithPayload:v6 hmac:v7];
}

- (id)_payloadOfClass:(Class)a3 error:(id *)a4
{
  if (self)
  {
    payload = self->_payload;
  }

  else
  {
    payload = 0;
  }

  return [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a3 fromData:payload error:a4];
}

@end