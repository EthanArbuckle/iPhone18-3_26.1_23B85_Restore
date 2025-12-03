@interface SRCursor
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SRCursor)initWithCoder:(id)coder;
- (id)_payloadOfClass:(Class)class error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRCursor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100016970 = os_log_create("com.apple.SensorKit", "SRCursor");
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SRCursor alloc];
  payload = self->_payload;
  hmac = self->_hmac;

  return sub_10000261C(v4, payload, hmac);
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
      if ((v10 & 1) == 0)
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRCursor;
  [(SRCursor *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_payload forKey:@"payload"];
  hmac = self->_hmac;

  [coder encodeObject:hmac forKey:@"hmac"];
}

- (SRCursor)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"hmac"];

  return sub_10000261C(self, v5, v6);
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

  return [NSKeyedUnarchiver unarchivedObjectOfClass:class fromData:payload error:error];
}

@end