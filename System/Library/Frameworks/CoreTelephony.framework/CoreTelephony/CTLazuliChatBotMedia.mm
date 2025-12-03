@interface CTLazuliChatBotMedia
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMedia:(id)media;
- (CTLazuliChatBotMedia)initWithCoder:(id)coder;
- (CTLazuliChatBotMedia)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotMedia

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  mediaUrl = [(CTLazuliChatBotMedia *)self mediaUrl];
  [v3 appendFormat:@", mediaUrl = %@", mediaUrl];

  fingerprint = [(CTLazuliChatBotMedia *)self fingerprint];
  [v3 appendFormat:@", fingerprint = %@", fingerprint];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMedia:(id)media
{
  mediaCopy = media;
  mediaUrl = [(CTLazuliChatBotMedia *)self mediaUrl];
  mediaUrl2 = [mediaCopy mediaUrl];
  if (mediaUrl != mediaUrl2)
  {
    mediaUrl3 = [(CTLazuliChatBotMedia *)self mediaUrl];
    mediaUrl4 = [mediaCopy mediaUrl];
    if (![mediaUrl3 isEqualToCTLazuliChatBotMediaUrl:mediaUrl4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  fingerprint = [(CTLazuliChatBotMedia *)self fingerprint];
  fingerprint2 = [mediaCopy fingerprint];
  v12 = fingerprint2;
  if (fingerprint == fingerprint2)
  {

    v9 = 1;
  }

  else
  {
    fingerprint3 = [(CTLazuliChatBotMedia *)self fingerprint];
    fingerprint4 = [mediaCopy fingerprint];
    v9 = [fingerprint3 isEqualToCTLazuliChatBotMediaFingerprint:fingerprint4];
  }

  if (mediaUrl != mediaUrl2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMedia *)self isEqualToCTLazuliChatBotMedia:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMedia allocWithZone:?];
  v6 = [(CTLazuliChatBotMediaUrl *)self->_mediaUrl copyWithZone:zone];
  [(CTLazuliChatBotMedia *)v5 setMediaUrl:v6];

  v7 = [(CTLazuliChatBotMediaFingerprint *)self->_fingerprint copyWithZone:zone];
  [(CTLazuliChatBotMedia *)v5 setFingerprint:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_mediaUrl forKey:@"kMediaUrlKey"];
  [coderCopy encodeObject:self->_fingerprint forKey:@"kFingerprintKey"];
}

- (CTLazuliChatBotMedia)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotMedia;
  v5 = [(CTLazuliChatBotMedia *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaUrlKey"];
    mediaUrl = v5->_mediaUrl;
    v5->_mediaUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFingerprintKey"];
    fingerprint = v5->_fingerprint;
    v5->_fingerprint = v8;
  }

  return v5;
}

- (CTLazuliChatBotMedia)initWithReflection:(const void *)reflection
{
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotMedia;
  v4 = [(CTLazuliChatBotMedia *)&v13 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotMediaUrl alloc] initWithReflection:reflection];
    mediaUrl = v4->_mediaUrl;
    v4->_mediaUrl = v5;

    if (*(reflection + 48) == 1)
    {
      v7 = v4;
      v8 = [CTLazuliChatBotMediaFingerprint alloc];
      if ((*(reflection + 48) & 1) == 0)
      {
        v12 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v12);
      }

      v9 = [(CTLazuliChatBotMediaFingerprint *)v8 initWithReflection:reflection + 24];
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