@interface _CNAvatarPosterCarouselLikenessFingerprintAvatarImpl
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithCoder:(id)a3;
- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithVisualFingerprint:(id)a3 sourceType:(int64_t)a4;
- (double)similarityThreshold;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CNAvatarPosterCarouselLikenessFingerprintAvatarImpl

- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visualFingerprint"];
  v6 = [v4 decodeIntegerForKey:@"sourceType"];

  v7 = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)self initWithVisualFingerprint:v5 sourceType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  visualFingerprint = self->_visualFingerprint;
  v5 = a3;
  [v5 encodeObject:visualFingerprint forKey:@"visualFingerprint"];
  [v5 encodeInteger:self->_sourceType forKey:@"sourceType"];
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
  v2 = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)self sourceType];
  result = 2.0;
  if (v2 <= 4)
  {
    return dbl_199E43E78[v2];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
      v7 = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)v4 visualFingerprint];
      [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)self similarityThreshold];
      v8 = [v5 isFingerprint:visualFingerprint similarTo:v7 threshold:?];
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
  v6 = [v3 build];

  return v6;
}

- (_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl)initWithVisualFingerprint:(id)a3 sourceType:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _CNAvatarPosterCarouselLikenessFingerprintAvatarImpl;
  v8 = [(_CNAvatarPosterCarouselLikenessFingerprintAvatarImpl *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualFingerprint, a3);
    v9->_sourceType = a4;
    v10 = v9;
  }

  return v9;
}

@end