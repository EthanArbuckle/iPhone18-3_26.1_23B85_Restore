@interface _CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl
+ (id)fingerprintForPosterConfiguration:(id)a3 withConfigurationData:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithCoder:(id)a3;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)a3 titleColor:(id)a4 titleFont:(id)a5 preferredTitleLayout:(unint64_t)a6 preferredTitleAlignment:(unint64_t)a7;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)a3 titleStyleAttributes:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl

- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterConfigurationData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleFont"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleColor"];
  v8 = [v4 decodeIntegerForKey:@"preferredTitleLayout"];
  v9 = [v4 decodeIntegerForKey:@"preferredTitleAlignment"];

  v10 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)self initWithPosterConfigurationData:v5 titleColor:v7 titleFont:v6 preferredTitleLayout:v8 preferredTitleAlignment:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  posterConfigurationData = self->_posterConfigurationData;
  v5 = a3;
  [v5 encodeObject:posterConfigurationData forKey:@"posterConfigurationData"];
  [v5 encodeObject:self->_titleFont forKey:@"titleFont"];
  [v5 encodeObject:self->_titleColor forKey:@"titleColor"];
  [v5 encodeInteger:self->_preferredTitleLayout forKey:@"preferredTitleLayout"];
  [v5 encodeInteger:self->_preferredTitleAlignment forKey:@"preferredTitleAlignment"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E6996730] objectHash:self->_posterConfigurationData];
  v4 = [MEMORY[0x1E6996730] objectHash:self->_titleFont] - v3 + 32 * v3;
  v5 = [MEMORY[0x1E6996730] objectHash:self->_titleColor];
  v6 = self->_preferredTitleLayout - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  return self->_preferredTitleAlignment - v6 + 32 * v6 + 486695567;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (preferredTitleLayout = self->_preferredTitleLayout, preferredTitleLayout != [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)v4 preferredTitleLayout]) || (preferredTitleAlignment = self->_preferredTitleAlignment, preferredTitleAlignment != [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)v4 preferredTitleAlignment]) || (titleFont = self->_titleFont, v8 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)v4 titleFont], titleFont | v8) && ![(UIFont *)titleFont isEqual:v8]|| (titleColor = self->_titleColor, v10 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)v4 titleColor], titleColor | v10) && ![(UIColor *)titleColor isEqual:v10]|| (posterConfigurationData = self->_posterConfigurationData, v12 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)v4 posterConfigurationData], posterConfigurationData | v12) && ![(NSData *)posterConfigurationData isEqual:v12])
    {
      v13 = 0;
    }
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"posterConfigurationData" object:self->_posterConfigurationData];
  v5 = [v3 appendName:@"titleFont" object:self->_titleFont];
  v6 = [v3 appendName:@"titleColor" object:self->_titleColor];
  v7 = [v3 appendName:@"preferredTitleLayout" unsignedInteger:self->_preferredTitleLayout];
  v8 = [v3 appendName:@"preferredTitleAlignment" unsignedInteger:self->_preferredTitleAlignment];
  v9 = [v3 build];

  return v9;
}

- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)a3 titleColor:(id)a4 titleFont:(id)a5 preferredTitleLayout:(unint64_t)a6 preferredTitleAlignment:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v20.receiver = self;
  v20.super_class = _CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl;
  v16 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_posterConfigurationData, a3);
    objc_storeStrong(&v17->_titleColor, a4);
    objc_storeStrong(&v17->_titleFont, a5);
    v17->_preferredTitleAlignment = a7;
    v17->_preferredTitleLayout = a6;
    v18 = v17;
  }

  return v17;
}

- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)a3 titleStyleAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 titleColor];
  v9 = [v6 titleFont];
  v10 = [v6 preferredTitleLayout];
  v11 = [v6 preferredTitleAlignment];

  v12 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)self initWithPosterConfigurationData:v7 titleColor:v8 titleFont:v9 preferredTitleLayout:v10 preferredTitleAlignment:v11];
  return v12;
}

+ (id)fingerprintForPosterConfiguration:(id)a3 withConfigurationData:(id)a4
{
  v5 = a4;
  v6 = [CNPRUISPosterTitleStyleAttributes attributesForCNConfiguration:a3];
  v7 = [[_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl alloc] initWithPosterConfigurationData:v5 titleStyleAttributes:v6];

  return v7;
}

@end