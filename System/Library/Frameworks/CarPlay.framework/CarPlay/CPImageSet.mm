@interface CPImageSet
- (BOOL)isEqual:(id)a3;
- (CPImageSet)initWithCoder:(id)a3;
- (CPImageSet)initWithImage:(id)a3 treatmentBlock:(id)a4;
- (CPImageSet)initWithLightContentImage:(UIImage *)lightImage darkContentImage:(UIImage *)darkImage;
- (id)description;
- (id)image;
- (void)encodeWithCoder:(id)a3;
- (void)resizeImagesToSize:(CGSize)a3;
- (void)swapStyles;
@end

@implementation CPImageSet

- (CPImageSet)initWithLightContentImage:(UIImage *)lightImage darkContentImage:(UIImage *)darkImage
{
  v6 = lightImage;
  v7 = darkImage;
  v16.receiver = self;
  v16.super_class = CPImageSet;
  v8 = [(CPImageSet *)&v16 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = CPSanitizeImage(v6, v9);
    lightContentImage = v8->_lightContentImage;
    v8->_lightContentImage = v10;

    v12 = objc_opt_class();
    v13 = CPSanitizeImage(v7, v12);
    darkContentImage = v8->_darkContentImage;
    v8->_darkContentImage = v13;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CPImageSet;
  v4 = [(CPImageSet *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {lightContentImage: %@, darkContentImage: %@}", v4, self->_lightContentImage, self->_darkContentImage];

  return v5;
}

- (CPImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPImageSet;
  v5 = [(CPImageSet *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPLightContentImageKey"];
    lightContentImage = v5->_lightContentImage;
    v5->_lightContentImage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPDarkContentImageKey"];
    darkContentImage = v5->_darkContentImage;
    v5->_darkContentImage = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPImageSet *)self lightContentImage];
  [v4 encodeObject:v5 forKey:@"kCPLightContentImageKey"];

  v6 = [(CPImageSet *)self darkContentImage];
  [v4 encodeObject:v6 forKey:@"kCPDarkContentImageKey"];
}

- (CPImageSet)initWithImage:(id)a3 treatmentBlock:(id)a4
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = CPImageSet;
  v8 = [(CPImageSet *)&v36 init];
  if (v8)
  {
    v9 = [v6 traitCollection];
    v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v11 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    if (v9)
    {
      v12 = MEMORY[0x277D75C80];
      v38[0] = v9;
      v38[1] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
      v14 = [v12 traitCollectionWithTraitsFromCollections:v13];

      v15 = MEMORY[0x277D75C80];
      v37[0] = v9;
      v37[1] = v11;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      v17 = [v15 traitCollectionWithTraitsFromCollections:v16];

      v10 = v14;
      v11 = v17;
    }

    if ([v6 isSymbolImage])
    {
      v18 = v6;
      v19 = v18;
    }

    else
    {
      v20 = [v6 imageAsset];
      v18 = [v20 imageWithTraitCollection:v10];

      v21 = [v6 imageAsset];
      v19 = [v21 imageWithTraitCollection:v11];
    }

    v22 = objc_opt_class();
    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v6;
    }

    v24 = CPSanitizeImage(v23, v22);
    lightContentImage = v8->_lightContentImage;
    v8->_lightContentImage = v24;

    v26 = objc_opt_class();
    if (v19)
    {
      v27 = v19;
    }

    else
    {
      v27 = v6;
    }

    v28 = CPSanitizeImage(v27, v26);
    darkContentImage = v8->_darkContentImage;
    v8->_darkContentImage = v28;

    if (v7)
    {
      v30 = (v7)[2](v7, v8->_darkContentImage);
      v31 = v8->_darkContentImage;
      v8->_darkContentImage = v30;

      v32 = (v7)[2](v7, v8->_lightContentImage);
      v33 = v8->_lightContentImage;
      v8->_lightContentImage = v32;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)image
{
  v3 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v4 = [(CPImageSet *)self currentAssetRegistration];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = v4;
  v6 = [(CPImageSet *)self currentAssetRegistration];
  v7 = [v6 baseTraitCollection];
  v8 = [v7 isEqual:v3];

  if ((v8 & 1) == 0)
  {
LABEL_3:
    v9 = [CPImageSetAssetRegistration alloc];
    v10 = [(CPImageSet *)self lightContentImage];
    v11 = [(CPImageSet *)self darkContentImage];
    v12 = [(CPImageSetAssetRegistration *)v9 initWithLightImage:v10 darkImage:v11 baseTraitCollection:v3];
    [(CPImageSet *)self setCurrentAssetRegistration:v12];
  }

  v13 = [(CPImageSet *)self currentAssetRegistration];
  v14 = [v13 combinedImage];

  return v14;
}

- (void)swapStyles
{
  v4 = [(CPImageSet *)self lightContentImage];
  v3 = [(CPImageSet *)self darkContentImage];
  [(CPImageSet *)self setDarkContentImage:v4];
  [(CPImageSet *)self setLightContentImage:v3];
}

- (void)resizeImagesToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  lightContentImage = self->_lightContentImage;
  if (lightContentImage)
  {
    v7 = CPImageByScalingImageToSize(lightContentImage, a3.width, a3.height);
    v8 = self->_lightContentImage;
    self->_lightContentImage = v7;
  }

  darkContentImage = self->_darkContentImage;
  if (darkContentImage)
  {
    v10 = CPImageByScalingImageToSize(darkContentImage, width, height);
    v11 = self->_darkContentImage;
    self->_darkContentImage = v10;

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CPImageSet *)self darkContentImage];
    v7 = UIImagePNGRepresentation(v6);
    v8 = [v5 darkContentImage];
    v9 = UIImagePNGRepresentation(v8);
    if ([v7 isEqualToData:v9])
    {
      v15 = [(CPImageSet *)self lightContentImage];
      v10 = UIImagePNGRepresentation(v15);
      v11 = [v5 lightContentImage];
      v12 = UIImagePNGRepresentation(v11);
      v13 = [v10 isEqualToData:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end