@interface MPArtworkColorAnalysis
+ (id)translateFromMSVColorAnalysis:(id)a3;
- (MPArtworkColorAnalysis)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)translateToMSVColorAnalysis;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPArtworkColorAnalysis

- (id)_copyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MPArtworkColorAnalysis *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MPArtworkColorAnalysis *)self backgroundColor];
  [v8 encodeObject:v4 forKey:@"backgroundColor"];

  [v8 encodeBool:-[MPArtworkColorAnalysis isBackgroundColorLight](self forKey:{"isBackgroundColorLight"), @"backgroundColorLight"}];
  v5 = [(MPArtworkColorAnalysis *)self primaryTextColor];
  [v8 encodeObject:v5 forKey:@"primaryTextColor"];

  [v8 encodeBool:-[MPArtworkColorAnalysis isPrimaryTextColorLight](self forKey:{"isPrimaryTextColorLight"), @"primaryTextColorLight"}];
  v6 = [(MPArtworkColorAnalysis *)self secondaryTextColor];
  [v8 encodeObject:v6 forKey:@"secondaryTextColor"];

  [v8 encodeBool:-[MPArtworkColorAnalysis isSecondaryTextColorLight](self forKey:{"isSecondaryTextColorLight"), @"secondaryTextColorLight"}];
  v7 = [(MPArtworkColorAnalysis *)self tertiaryTextColor];
  [v8 encodeObject:v7 forKey:@"tertiaryTextColor"];

  [v8 encodeBool:-[MPArtworkColorAnalysis isTertiaryTextColorLight](self forKey:{"isTertiaryTextColorLight"), @"tertiaryTextColorLight"}];
}

- (MPArtworkColorAnalysis)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPArtworkColorAnalysis *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v5->_backgroundColorLight = [v4 decodeBoolForKey:@"backgroundColorLight"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryTextColor"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v8;

    v5->_primaryTextColorLight = [v4 decodeBoolForKey:@"primaryTextColorLight"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextColor"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v10;

    v5->_secondaryTextColorLight = [v4 decodeBoolForKey:@"secondaryTextColorLight"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tertiaryTextColor"];
    tertiaryTextColor = v5->_tertiaryTextColor;
    v5->_tertiaryTextColor = v12;

    v5->_tertiaryTextColorLight = [v4 decodeBoolForKey:@"tertiaryTextColorLight"];
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v4 = [(MPArtworkColorAnalysis *)self backgroundColor];
  if ([(MPArtworkColorAnalysis *)self isBackgroundColorLight])
  {
    v5 = @"Light";
  }

  else
  {
    v5 = @"Dark";
  }

  v6 = [(MPArtworkColorAnalysis *)self primaryTextColor];
  if ([(MPArtworkColorAnalysis *)self isPrimaryTextColorLight])
  {
    v7 = @"Light";
  }

  else
  {
    v7 = @"Dark";
  }

  v8 = [(MPArtworkColorAnalysis *)self secondaryTextColor];
  if ([(MPArtworkColorAnalysis *)self isSecondaryTextColorLight])
  {
    v9 = @"Light";
  }

  else
  {
    v9 = @"Dark";
  }

  v10 = [(MPArtworkColorAnalysis *)self tertiaryTextColor];
  if ([(MPArtworkColorAnalysis *)self isTertiaryTextColorLight])
  {
    v11 = @"Light";
  }

  else
  {
    v11 = @"Dark";
  }

  v12 = [v15 stringWithFormat:@"<%@: %p> (\n  backgroundColor: %@ (%@)\n  primaryTextColor: %@ (%@)\n  secondaryTextColor: %@ (%@)\n  tertiaryTextColor: %@ (%@)\n)", v14, self, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)translateToMSVColorAnalysis
{
  v3 = objc_alloc_init(MEMORY[0x1E69B1448]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MPArtworkColorAnalysis *)self backgroundColor];
  v6 = [v4 MP_hexStringFromColor:v5];
  [v3 setBackgroundColorHex:v6];

  [v3 setBackgroundColorLight:{-[MPArtworkColorAnalysis isBackgroundColorLight](self, "isBackgroundColorLight")}];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(MPArtworkColorAnalysis *)self primaryTextColor];
  v9 = [v7 MP_hexStringFromColor:v8];
  [v3 setPrimaryTextColorHex:v9];

  [v3 setPrimaryTextColorLight:{-[MPArtworkColorAnalysis isPrimaryTextColorLight](self, "isPrimaryTextColorLight")}];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(MPArtworkColorAnalysis *)self secondaryTextColor];
  v12 = [v10 MP_hexStringFromColor:v11];
  [v3 setSecondaryTextColorHex:v12];

  [v3 setSecondaryTextColorLight:{-[MPArtworkColorAnalysis isSecondaryTextColorLight](self, "isSecondaryTextColorLight")}];
  v13 = MEMORY[0x1E696AEC0];
  v14 = [(MPArtworkColorAnalysis *)self tertiaryTextColor];
  v15 = [v13 MP_hexStringFromColor:v14];
  [v3 setTertiaryTextColorHex:v15];

  [v3 setTertiaryTextColorLight:{-[MPArtworkColorAnalysis isTertiaryTextColorLight](self, "isTertiaryTextColorLight")}];

  return v3;
}

+ (id)translateFromMSVColorAnalysis:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPMutableArtworkColorAnalysis);
  v5 = [v3 backgroundColorHex];
  v6 = [v5 MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setBackgroundColor:v6];

  -[MPMutableArtworkColorAnalysis setBackgroundColorLight:](v4, "setBackgroundColorLight:", [v3 isBackgroundColorLight]);
  v7 = [v3 primaryTextColorHex];
  v8 = [v7 MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setPrimaryTextColor:v8];

  -[MPMutableArtworkColorAnalysis setPrimaryTextColorLight:](v4, "setPrimaryTextColorLight:", [v3 isPrimaryTextColorLight]);
  v9 = [v3 secondaryTextColorHex];
  v10 = [v9 MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setSecondaryTextColor:v10];

  -[MPMutableArtworkColorAnalysis setSecondaryTextColorLight:](v4, "setSecondaryTextColorLight:", [v3 isSecondaryTextColorLight]);
  v11 = [v3 tertiaryTextColorHex];
  v12 = [v11 MP_colorFromHexString];
  [(MPMutableArtworkColorAnalysis *)v4 setTertiaryTextColor:v12];

  v13 = [v3 isTertiaryTextColorLight];
  [(MPMutableArtworkColorAnalysis *)v4 setTertiaryTextColorLight:v13];

  return v4;
}

@end