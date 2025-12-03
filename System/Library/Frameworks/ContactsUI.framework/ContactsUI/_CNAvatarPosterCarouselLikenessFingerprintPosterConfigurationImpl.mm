@interface _CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl
+ (id)fingerprintForPosterConfiguration:(id)configuration withConfigurationData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithCoder:(id)coder;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)data titleColor:(id)color titleFont:(id)font preferredTitleLayout:(unint64_t)layout preferredTitleAlignment:(unint64_t)alignment;
- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)data titleStyleAttributes:(id)attributes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl

- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"posterConfigurationData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleFont"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleColor"];
  v8 = [coderCopy decodeIntegerForKey:@"preferredTitleLayout"];
  v9 = [coderCopy decodeIntegerForKey:@"preferredTitleAlignment"];

  v10 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)self initWithPosterConfigurationData:v5 titleColor:v7 titleFont:v6 preferredTitleLayout:v8 preferredTitleAlignment:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  posterConfigurationData = self->_posterConfigurationData;
  coderCopy = coder;
  [coderCopy encodeObject:posterConfigurationData forKey:@"posterConfigurationData"];
  [coderCopy encodeObject:self->_titleFont forKey:@"titleFont"];
  [coderCopy encodeObject:self->_titleColor forKey:@"titleColor"];
  [coderCopy encodeInteger:self->_preferredTitleLayout forKey:@"preferredTitleLayout"];
  [coderCopy encodeInteger:self->_preferredTitleAlignment forKey:@"preferredTitleAlignment"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E6996730] objectHash:self->_posterConfigurationData];
  v4 = [MEMORY[0x1E6996730] objectHash:self->_titleFont] - v3 + 32 * v3;
  v5 = [MEMORY[0x1E6996730] objectHash:self->_titleColor];
  v6 = self->_preferredTitleLayout - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  return self->_preferredTitleAlignment - v6 + 32 * v6 + 486695567;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (preferredTitleLayout = self->_preferredTitleLayout, preferredTitleLayout != [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)equalCopy preferredTitleLayout]) || (preferredTitleAlignment = self->_preferredTitleAlignment, preferredTitleAlignment != [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)equalCopy preferredTitleAlignment]) || (titleFont = self->_titleFont, v8 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)equalCopy titleFont], titleFont | v8) && ![(UIFont *)titleFont isEqual:v8]|| (titleColor = self->_titleColor, v10 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)equalCopy titleColor], titleColor | v10) && ![(UIColor *)titleColor isEqual:v10]|| (posterConfigurationData = self->_posterConfigurationData, v12 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)equalCopy posterConfigurationData], posterConfigurationData | v12) && ![(NSData *)posterConfigurationData isEqual:v12])
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
  build = [v3 build];

  return build;
}

- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)data titleColor:(id)color titleFont:(id)font preferredTitleLayout:(unint64_t)layout preferredTitleAlignment:(unint64_t)alignment
{
  dataCopy = data;
  colorCopy = color;
  fontCopy = font;
  v20.receiver = self;
  v20.super_class = _CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl;
  v16 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_posterConfigurationData, data);
    objc_storeStrong(&v17->_titleColor, color);
    objc_storeStrong(&v17->_titleFont, font);
    v17->_preferredTitleAlignment = alignment;
    v17->_preferredTitleLayout = layout;
    v18 = v17;
  }

  return v17;
}

- (_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl)initWithPosterConfigurationData:(id)data titleStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  dataCopy = data;
  titleColor = [attributesCopy titleColor];
  titleFont = [attributesCopy titleFont];
  preferredTitleLayout = [attributesCopy preferredTitleLayout];
  preferredTitleAlignment = [attributesCopy preferredTitleAlignment];

  v12 = [(_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl *)self initWithPosterConfigurationData:dataCopy titleColor:titleColor titleFont:titleFont preferredTitleLayout:preferredTitleLayout preferredTitleAlignment:preferredTitleAlignment];
  return v12;
}

+ (id)fingerprintForPosterConfiguration:(id)configuration withConfigurationData:(id)data
{
  dataCopy = data;
  v6 = [CNPRUISPosterTitleStyleAttributes attributesForCNConfiguration:configuration];
  v7 = [[_CNAvatarPosterCarouselLikenessFingerprintPosterConfigurationImpl alloc] initWithPosterConfigurationData:dataCopy titleStyleAttributes:v6];

  return v7;
}

@end