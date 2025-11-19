@interface CTLazuliChatBotVerificationDetails
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotVerificationDetails:(id)a3;
- (CTLazuliChatBotVerificationDetails)initWithCoder:(id)a3;
- (CTLazuliChatBotVerificationDetails)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotVerificationDetails

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  [v3 appendFormat:@", verified = %d", -[CTLazuliChatBotVerificationDetails verified](self, "verified")];
  v4 = [(CTLazuliChatBotVerificationDetails *)self verifiedBy];
  [v3 appendFormat:@", verifiedBy = %@", v4];

  v5 = [(CTLazuliChatBotVerificationDetails *)self expires];
  [v3 appendFormat:@", expires = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotVerificationDetails:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotVerificationDetails *)self verified];
  if (v7 == [v6 verified])
  {
    v9 = [(CTLazuliChatBotVerificationDetails *)self verifiedBy];
    v10 = [v6 verifiedBy];
    if (v9 == v10 || (-[CTLazuliChatBotVerificationDetails verifiedBy](self, "verifiedBy"), v3 = objc_claimAutoreleasedReturnValue(), [v6 verifiedBy], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      v11 = [(CTLazuliChatBotVerificationDetails *)self expires];
      v12 = [v6 expires];
      v13 = v12;
      if (v11 == v12)
      {

        v8 = 1;
      }

      else
      {
        v14 = [(CTLazuliChatBotVerificationDetails *)self expires];
        v15 = [v6 expires];
        v8 = [v14 isEqualToString:v15];
      }

      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotVerificationDetails *)self isEqualToCTLazuliChatBotVerificationDetails:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotVerificationDetails allocWithZone:?];
  [(CTLazuliChatBotVerificationDetails *)v5 setVerified:self->_verified];
  v6 = [(NSString *)self->_verifiedBy copyWithZone:a3];
  [(CTLazuliChatBotVerificationDetails *)v5 setVerifiedBy:v6];

  v7 = [(NSString *)self->_expires copyWithZone:a3];
  [(CTLazuliChatBotVerificationDetails *)v5 setExpires:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_verified forKey:@"kVerifiedKey"];
  [v4 encodeObject:self->_verifiedBy forKey:@"kVerifiedByKey"];
  [v4 encodeObject:self->_expires forKey:@"kExpiresKey"];
}

- (CTLazuliChatBotVerificationDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotVerificationDetails;
  v5 = [(CTLazuliChatBotVerificationDetails *)&v11 init];
  if (v5)
  {
    v5->_verified = [v4 decodeBoolForKey:@"kVerifiedKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVerifiedByKey"];
    verifiedBy = v5->_verifiedBy;
    v5->_verifiedBy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kExpiresKey"];
    expires = v5->_expires;
    v5->_expires = v8;
  }

  return v5;
}

- (CTLazuliChatBotVerificationDetails)initWithReflection:(const void *)a3
{
  v16.receiver = self;
  v16.super_class = CTLazuliChatBotVerificationDetails;
  v4 = [(CTLazuliChatBotVerificationDetails *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_verified = *a3;
    if (*(a3 + 31) >= 0)
    {
      v6 = a3 + 8;
    }

    else
    {
      v6 = *(a3 + 1);
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    verifiedBy = v5->_verifiedBy;
    v5->_verifiedBy = v7;

    v11 = *(a3 + 4);
    v10 = a3 + 32;
    v9 = v11;
    if (v10[23] >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    expires = v5->_expires;
    v5->_expires = v13;
  }

  return v5;
}

@end