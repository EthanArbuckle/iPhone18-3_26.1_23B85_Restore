@interface CTLazuliChatBotVerificationDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotVerificationDetails:(id)details;
- (CTLazuliChatBotVerificationDetails)initWithCoder:(id)coder;
- (CTLazuliChatBotVerificationDetails)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotVerificationDetails

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  [v3 appendFormat:@", verified = %d", -[CTLazuliChatBotVerificationDetails verified](self, "verified")];
  verifiedBy = [(CTLazuliChatBotVerificationDetails *)self verifiedBy];
  [v3 appendFormat:@", verifiedBy = %@", verifiedBy];

  expires = [(CTLazuliChatBotVerificationDetails *)self expires];
  [v3 appendFormat:@", expires = %@", expires];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotVerificationDetails:(id)details
{
  detailsCopy = details;
  verified = [(CTLazuliChatBotVerificationDetails *)self verified];
  if (verified == [detailsCopy verified])
  {
    verifiedBy = [(CTLazuliChatBotVerificationDetails *)self verifiedBy];
    verifiedBy2 = [detailsCopy verifiedBy];
    if (verifiedBy == verifiedBy2 || (-[CTLazuliChatBotVerificationDetails verifiedBy](self, "verifiedBy"), v3 = objc_claimAutoreleasedReturnValue(), [detailsCopy verifiedBy], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      expires = [(CTLazuliChatBotVerificationDetails *)self expires];
      expires2 = [detailsCopy expires];
      v13 = expires2;
      if (expires == expires2)
      {

        v8 = 1;
      }

      else
      {
        expires3 = [(CTLazuliChatBotVerificationDetails *)self expires];
        expires4 = [detailsCopy expires];
        v8 = [expires3 isEqualToString:expires4];
      }

      if (verifiedBy == verifiedBy2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotVerificationDetails *)self isEqualToCTLazuliChatBotVerificationDetails:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotVerificationDetails allocWithZone:?];
  [(CTLazuliChatBotVerificationDetails *)v5 setVerified:self->_verified];
  v6 = [(NSString *)self->_verifiedBy copyWithZone:zone];
  [(CTLazuliChatBotVerificationDetails *)v5 setVerifiedBy:v6];

  v7 = [(NSString *)self->_expires copyWithZone:zone];
  [(CTLazuliChatBotVerificationDetails *)v5 setExpires:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_verified forKey:@"kVerifiedKey"];
  [coderCopy encodeObject:self->_verifiedBy forKey:@"kVerifiedByKey"];
  [coderCopy encodeObject:self->_expires forKey:@"kExpiresKey"];
}

- (CTLazuliChatBotVerificationDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotVerificationDetails;
  v5 = [(CTLazuliChatBotVerificationDetails *)&v11 init];
  if (v5)
  {
    v5->_verified = [coderCopy decodeBoolForKey:@"kVerifiedKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVerifiedByKey"];
    verifiedBy = v5->_verifiedBy;
    v5->_verifiedBy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kExpiresKey"];
    expires = v5->_expires;
    v5->_expires = v8;
  }

  return v5;
}

- (CTLazuliChatBotVerificationDetails)initWithReflection:(const void *)reflection
{
  v16.receiver = self;
  v16.super_class = CTLazuliChatBotVerificationDetails;
  v4 = [(CTLazuliChatBotVerificationDetails *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_verified = *reflection;
    if (*(reflection + 31) >= 0)
    {
      v6 = reflection + 8;
    }

    else
    {
      v6 = *(reflection + 1);
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    verifiedBy = v5->_verifiedBy;
    v5->_verifiedBy = v7;

    v11 = *(reflection + 4);
    v10 = reflection + 32;
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