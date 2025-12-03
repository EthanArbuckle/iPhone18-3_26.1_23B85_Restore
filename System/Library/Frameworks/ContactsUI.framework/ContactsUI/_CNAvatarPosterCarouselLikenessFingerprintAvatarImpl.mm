@interface _CNAvatarPosterCarouselLikenessFingerprintAvatarImpl
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithCoder:(id)coder;
- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithVisualFingerprint:(id)fingerprint sourceType:(int64_t)type;
- (double)similarityThreshold;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CNAvatarPosterCarouselLikenessFingerprintAvatarImpl

- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visualFingerprint"];
  v6 = [coderCopy decodeIntegerForKey:@"sourceType"];

  v7 = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)self initWithVisualFingerprint:v5 sourceType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  visualFingerprint = self->_visualFingerprint;
  coderCopy = coder;
  [coderCopy encodeObject:visualFingerprint forKey:@"visualFingerprint"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"sourceType"];
}

- (unint64_t)hash
{
  if (self->_visualFingerprint)
  {
    return 528;
  }

  else
  {
    return 527;
  }
}

- (double)similarityThreshold
{
  sourceType = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)self sourceType];
  result = 2.0;
  if (sourceType <= 4)
  {
    return dbl_199E43E78[sourceType];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x1E695CFC0];
      visualFingerprint = self->_visualFingerprint;
      visualFingerprint = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)equalCopy visualFingerprint];
      [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)self similarityThreshold];
      v8 = [v5 isFingerprint:visualFingerprint similarTo:visualFingerprint threshold:?];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"visualFingerprint" object:self->_visualFingerprint];
  v5 = [v3 appendName:@"sourceType" unsignedInteger:self->_sourceType];
  build = [v3 build];

  return build;
}

- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithVisualFingerprint:(id)fingerprint sourceType:(int64_t)type
{
  fingerprintCopy = fingerprint;
  v12.receiver = self;
  v12.super_class = _CNAvatarPosterCarouselLikenessFingerprintAvatarImpl;
  v8 = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualFingerprint, fingerprint);
    v9->_sourceType = type;
    v10 = v9;
  }

  return v9;
}

@end