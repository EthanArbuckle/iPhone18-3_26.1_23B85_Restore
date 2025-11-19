@interface _CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl
+ (id)fingerprintForPosterConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithCoder:(id)a3;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithPosterUUID:(id)a3;
@end

@implementation _CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl

- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterUUID"];

  v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)self initWithPosterUUID:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (UUID = self->_UUID, v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)v4 UUID], UUID | v6) && ![(NSUUID *)UUID isEqual:v6])
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
  v5 = [v3 build];

  return v5;
}

- (_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl)initWithPosterUUID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl;
  v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)fingerprintForPosterConfiguration:(id)a3
{
  v3 = a3;
  v4 = [_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl alloc];
  v5 = [v3 serverUUID];

  v6 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterUUIDImpl *)v4 initWithPosterUUID:v5];

  return v6;
}

@end