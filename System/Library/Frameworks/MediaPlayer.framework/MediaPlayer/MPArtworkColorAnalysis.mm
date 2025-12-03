@interface MPArtworkColorAnalysis
+ (id)translateFromMSVColorAnalysis:(id)analysis;
- (MPArtworkColorAnalysis)initWithCoder:(id)coder;
- (id)_copyWithClass:(Class)class;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)translateToMSVColorAnalysis;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPArtworkColorAnalysis

- (id)_copyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_backgroundColor);
    *(v5 + 16) = self->_backgroundColorLight;
    objc_storeStrong(v5 + 3, self->_primaryTextColor);
    *(v5 + 32) = self->_primaryTextColorLight;
    objc_storeStrong(v5 + 5, self->_secondaryTextColor);
    *(v5 + 48) = self->_secondaryTextColorLight;
    objc_storeStrong(v5 + 7, self->_tertiaryTextColor);
    *(v5 + 64) = self->_tertiaryTextColorLight;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MPArtworkColorAnalysis *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundColor = [(MPArtworkColorAnalysis *)self backgroundColor];
  [coderCopy encodeObject:backgroundColor forKey:@"backgroundColor"];

  [coderCopy encodeBool:-[MPArtworkColorAnalysis isBackgroundColorLight](self forKey:{"isBackgroundColorLight"), @"backgroundColorLight"}];
  primaryTextColor = [(MPArtworkColorAnalysis *)self primaryTextColor];
  [coderCopy encodeObject:primaryTextColor forKey:@"primaryTextColor"];

  [coderCopy encodeBool:-[MPArtworkColorAnalysis isPrimaryTextColorLight](self forKey:{"isPrimaryTextColorLight"), @"primaryTextColorLight"}];
  secondaryTextColor = [(MPArtworkColorAnalysis *)self secondaryTextColor];
  [coderCopy encodeObject:secondaryTextColor forKey:@"secondaryTextColor"];

  [coderCopy encodeBool:-[MPArtworkColorAnalysis isSecondaryTextColorLight](self forKey:{"isSecondaryTextColorLight"), @"secondaryTextColorLight"}];
  tertiaryTextColor = [(MPArtworkColorAnalysis *)self tertiaryTextColor];
  [coderCopy encodeObject:tertiaryTextColor forKey:@"tertiaryTextColor"];

  [coderCopy encodeBool:-[MPArtworkColorAnalysis isTertiaryTextColorLight](self forKey:{"isTertiaryTextColorLight"), @"tertiaryTextColorLight"}];
}

- (MPArtworkColorAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPArtworkColorAnalysis *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v5->_backgroundColorLight = [coderCopy decodeBoolForKey:@"backgroundColorLight"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryTextColor"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v5->_primaryTextColorLight = [coderCopy decodeBoolForKey:@"primaryTextColorLight"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextColor"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v5->_secondaryTextColorLight = [coderCopy decodeBoolForKey:@"secondaryTextColorLight"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tertiaryTextColor"];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v5->_tertiaryTextColorLight = [coderCopy decodeBoolForKey:@"tertiaryTextColorLight"];
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  backgroundColor = [(MPArtworkColorAnalysis *)self backgroundColor];
  if ([(MPArtworkColorAnalysis *)self isBackgroundColorLight])
  {
    v5 = @"Light";
  }

  else
  {
    v5 = @"Dark";
  }

  primaryTextColor = [(MPArtworkColorAnalysis *)self primaryTextColor];
  if ([(MPArtworkColorAnalysis *)self isPrimaryTextColorLight])
  {
    v7 = @"Light";
  }

  else
  {
    v7 = @"Dark";
  }

  secondaryTextColor = [(MPArtworkColorAnalysis *)self secondaryTextColor];
  if ([(MPArtworkColorAnalysis *)self isSecondaryTextColorLight])
  {
    v9 = @"Light";
  }

  else
  {
    v9 = @"Dark";
  }

  tertiaryTextColor = [(MPArtworkColorAnalysis *)self tertiaryTextColor];
  if ([(MPArtworkColorAnalysis *)self isTertiaryTextColorLight])
  {
    v11 = @"Light";
  }

  else
  {
    v11 = @"Dark";
  }

  v12 = [v15 stringWithFormat:@"<%@: %p> (\n  backgroundColor: %@ (%@)\n  primaryTextColor: %@ (%@)\n  secondaryTextColor: %@ (%@)\n  tertiaryTextColor: %@ (%@)\n)", v14, self, backgroundColor, v5, primaryTextColor, v7, secondaryTextColor, v9, tertiaryTextColor, v11];

  return v12;
}

- (id)translateToMSVColorAnalysis
{
  v3 = objc_alloc_init(MEMORY[0x1E69B1448]);
  v4 = MEMORY[0x1E696AEC0];
  backgroundColor = [(MPArtworkColorAnalysis *)self backgroundColor];
  v6 = [v4 MP_hexStringFromColor:backgroundColor];
  [v3 setBackgroundColorHex:v6];

  [v3 setBackgroundColorLight:{-[MPArtworkColorAnalysis isBackgroundColorLight](self, "isBackgroundColorLight")}];
  v7 = MEMORY[0x1E696AEC0];
  primaryTextColor = [(MPArtworkColorAnalysis *)self primaryTextColor];
  v9 = [v7 MP_hexStringFromColor:primaryTextColor];
  [v3 setPrimaryTextColorHex:v9];

  [v3 setPrimaryTextColorLight:{-[MPArtworkColorAnalysis isPrimaryTextColorLight](self, "isPrimaryTextColorLight")}];
  v10 = MEMORY[0x1E696AEC0];
  secondaryTextColor = [(MPArtworkColorAnalysis *)self secondaryTextColor];
  v12 = [v10 MP_hexStringFromColor:secondaryTextColor];
  [v3 setSecondaryTextColorHex:v12];

  [v3 setSecondaryTextColorLight:{-[MPArtworkColorAnalysis isSecondaryTextColorLight](self, "isSecondaryTextColorLight")}];
  v13 = MEMORY[0x1E696AEC0];
  tertiaryTextColor = [(MPArtworkColorAnalysis *)self tertiaryTextColor];
  v15 = [v13 MP_hexStringFromColor:tertiaryTextColor];
  [v3 setTertiaryTextColorHex:v15];

  [v3 setTertiaryTextColorLight:{-[MPArtworkColorAnalysis isTertiaryTextColorLight](self, "isTertiaryTextColorLight")}];

  return v3;
}

+ (id)translateFromMSVColorAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v4 = objc_alloc_init(MPMutableArtworkColorAnalysis);
  backgroundColorHex = [analysisCopy backgroundColorHex];
  mP_colorFromHexString = [backgroundColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setBackgroundColor:mP_colorFromHexString];

  -[MPMutableArtworkColorAnalysis setBackgroundColorLight:](v4, "setBackgroundColorLight:", [analysisCopy isBackgroundColorLight]);
  primaryTextColorHex = [analysisCopy primaryTextColorHex];
  mP_colorFromHexString2 = [primaryTextColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setPrimaryTextColor:mP_colorFromHexString2];

  -[MPMutableArtworkColorAnalysis setPrimaryTextColorLight:](v4, "setPrimaryTextColorLight:", [analysisCopy isPrimaryTextColorLight]);
  secondaryTextColorHex = [analysisCopy secondaryTextColorHex];
  mP_colorFromHexString3 = [secondaryTextColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setSecondaryTextColor:mP_colorFromHexString3];

  -[MPMutableArtworkColorAnalysis setSecondaryTextColorLight:](v4, "setSecondaryTextColorLight:", [analysisCopy isSecondaryTextColorLight]);
  tertiaryTextColorHex = [analysisCopy tertiaryTextColorHex];
  mP_colorFromHexString4 = [tertiaryTextColorHex MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setTertiaryTextColor:mP_colorFromHexString4];

  isTertiaryTextColorLight = [analysisCopy isTertiaryTextColorLight];
  [(MPMutableArtworkColorAnalysis *)v4 setTertiaryTextColorLight:isTertiaryTextColorLight];

  return v4;
}

@end