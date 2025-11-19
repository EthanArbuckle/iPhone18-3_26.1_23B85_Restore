@interface SRCursor
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SRCursor)initWithCoder:(id)a3;
- (id)_payloadOfClass:(Class)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRCursor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100016970 = os_log_create("com.apple.SensorKit", "SRCursor");
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SRCursor alloc];
  payload = self->_payload;
  hmac = self->_hmac;

  return sub_10000261C(v4, payload, hmac);
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_payload forKey:@"payload"];
  hmac = self->_hmac;

  [a3 encodeObject:hmac forKey:@"hmac"];
}

- (SRCursor)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"hmac"];

  return sub_10000261C(self, v5, v6);
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

  return [NSKeyedUnarchiver unarchivedObjectOfClass:a3 fromData:payload error:a4];
}

@end