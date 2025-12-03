@interface _CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl
+ (id)fingerprintForPosterConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithCoder:(id)coder;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithPosterUUID:(id)d;
@end

@implementation _CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl

- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"posterUUID"];

  v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)self initWithPosterUUID:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (UUID = self->_UUID, v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)equalCopy UUID], UUID | v6) && ![(NSUUID *)UUID isEqual:v6])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"UUID" object:self->_UUID];
  build = [v3 build];

  return build;
}

- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithPosterUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = _CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl;
  v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
    v8 = v7;
  }

  return v7;
}

+ (id)fingerprintForPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl alloc];
  serverUUID = [configurationCopy serverUUID];

  v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)v4 initWithPosterUUID:serverUUID];

  return v6;
}

@end