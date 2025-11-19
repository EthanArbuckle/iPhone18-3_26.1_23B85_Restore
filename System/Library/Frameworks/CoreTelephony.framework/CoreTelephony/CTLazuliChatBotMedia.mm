@interface CTLazuliChatBotMedia
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMedia:(id)a3;
- (CTLazuliChatBotMedia)initWithCoder:(id)a3;
- (CTLazuliChatBotMedia)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotMedia

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMedia *)self mediaUrl];
  [v3 appendFormat:@", mediaUrl = %@", v4];

  v5 = [(CTLazuliChatBotMedia *)self fingerprint];
  [v3 appendFormat:@", fingerprint = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMedia:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotMedia *)self mediaUrl];
  v8 = [v6 mediaUrl];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotMedia *)self mediaUrl];
    v4 = [v6 mediaUrl];
    if (![v3 isEqualToCTLazuliChatBotMediaUrl:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotMedia *)self fingerprint];
  v11 = [v6 fingerprint];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotMedia *)self fingerprint];
    v14 = [v6 fingerprint];
    v9 = [v13 isEqualToCTLazuliChatBotMediaFingerprint:v14];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMedia *)self isEqualToCTLazuliChatBotMedia:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMedia allocWithZone:?];
  v6 = [(CTLazuliChatBotMediaUrl *)self->_mediaUrl copyWithZone:a3];
  [(CTLazuliChatBotMedia *)v5 setMediaUrl:v6];

  v7 = [(CTLazuliChatBotMediaFingerprint *)self->_fingerprint copyWithZone:a3];
  [(CTLazuliChatBotMedia *)v5 setFingerprint:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_mediaUrl forKey:@"kMediaUrlKey"];
  [v4 encodeObject:self->_fingerprint forKey:@"kFingerprintKey"];
}

- (CTLazuliChatBotMedia)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotMedia;
  v5 = [(CTLazuliChatBotMedia *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaUrlKey"];
    mediaUrl = v5->_mediaUrl;
    v5->_mediaUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFingerprintKey"];
    fingerprint = v5->_fingerprint;
    v5->_fingerprint = v8;
  }

  return v5;
}

- (CTLazuliChatBotMedia)initWithReflection:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotMedia;
  v4 = [(CTLazuliChatBotMedia *)&v13 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotMediaUrl alloc] initWithReflection:a3];
    mediaUrl = v4->_mediaUrl;
    v4->_mediaUrl = v5;

    if (*(a3 + 48) == 1)
    {
      v7 = v4;
      v8 = [CTLazuliChatBotMediaFingerprint alloc];
      if ((*(a3 + 48) & 1) == 0)
      {
        v12 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v12);
      }

      v9 = [(CTLazuliChatBotMediaFingerprint *)v8 initWithReflection:a3 + 24];
    }

    else
    {
      v9 = 0;
    }

    fingerprint = v4->_fingerprint;
    v4->_fingerprint = v9;
  }

  return v4;
}

@end