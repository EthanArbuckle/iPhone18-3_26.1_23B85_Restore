@interface CPImageSet
- (BOOL)isEqual:(id)equal;
- (CPImageSet)initWithCoder:(id)coder;
- (CPImageSet)initWithImage:(id)image treatmentBlock:(id)block;
- (CPImageSet)initWithLightContentImage:(UIImage *)lightImage darkContentImage:(UIImage *)darkImage;
- (id)description;
- (id)image;
- (void)encodeWithCoder:(id)coder;
- (void)resizeImagesToSize:(CGSize)size;
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

- (CPImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPImageSet;
  v5 = [(CPImageSet *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPLightContentImageKey"];
    lightContentImage = v5->_lightContentImage;
    v5->_lightContentImage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPDarkContentImageKey"];
    darkContentImage = v5->_darkContentImage;
    v5->_darkContentImage = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lightContentImage = [(CPImageSet *)self lightContentImage];
  [coderCopy encodeObject:lightContentImage forKey:@"kCPLightContentImageKey"];

  darkContentImage = [(CPImageSet *)self darkContentImage];
  [coderCopy encodeObject:darkContentImage forKey:@"kCPDarkContentImageKey"];
}

- (CPImageSet)initWithImage:(id)image treatmentBlock:(id)block
{
  v38[2] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  blockCopy = block;
  v36.receiver = self;
  v36.super_class = CPImageSet;
  v8 = [(CPImageSet *)&v36 init];
  if (v8)
  {
    traitCollection = [imageCopy traitCollection];
    v10 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v11 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    if (traitCollection)
    {
      v12 = MEMORY[0x277D75C80];
      v38[0] = traitCollection;
      v38[1] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
      v14 = [v12 traitCollectionWithTraitsFromCollections:v13];

      v15 = MEMORY[0x277D75C80];
      v37[0] = traitCollection;
      v37[1] = v11;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      v17 = [v15 traitCollectionWithTraitsFromCollections:v16];

      v10 = v14;
      v11 = v17;
    }

    if ([imageCopy isSymbolImage])
    {
      v18 = imageCopy;
      v19 = v18;
    }

    else
    {
      imageAsset = [imageCopy imageAsset];
      v18 = [imageAsset imageWithTraitCollection:v10];

      imageAsset2 = [imageCopy imageAsset];
      v19 = [imageAsset2 imageWithTraitCollection:v11];
    }

    v22 = objc_opt_class();
    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = imageCopy;
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
      v27 = imageCopy;
    }

    v28 = CPSanitizeImage(v27, v26);
    darkContentImage = v8->_darkContentImage;
    v8->_darkContentImage = v28;

    if (blockCopy)
    {
      v30 = (blockCopy)[2](blockCopy, v8->_darkContentImage);
      v31 = v8->_darkContentImage;
      v8->_darkContentImage = v30;

      v32 = (blockCopy)[2](blockCopy, v8->_lightContentImage);
      v33 = v8->_lightContentImage;
      v8->_lightContentImage = v32;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)image
{
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  currentAssetRegistration = [(CPImageSet *)self currentAssetRegistration];
  if (!currentAssetRegistration)
  {
    goto LABEL_3;
  }

  v5 = currentAssetRegistration;
  currentAssetRegistration2 = [(CPImageSet *)self currentAssetRegistration];
  baseTraitCollection = [currentAssetRegistration2 baseTraitCollection];
  v8 = [baseTraitCollection isEqual:_currentTraitCollection];

  if ((v8 & 1) == 0)
  {
LABEL_3:
    v9 = [CPImageSetAssetRegistration alloc];
    lightContentImage = [(CPImageSet *)self lightContentImage];
    darkContentImage = [(CPImageSet *)self darkContentImage];
    v12 = [(CPImageSetAssetRegistration *)v9 initWithLightImage:lightContentImage darkImage:darkContentImage baseTraitCollection:_currentTraitCollection];
    [(CPImageSet *)self setCurrentAssetRegistration:v12];
  }

  currentAssetRegistration3 = [(CPImageSet *)self currentAssetRegistration];
  combinedImage = [currentAssetRegistration3 combinedImage];

  return combinedImage;
}

- (void)swapStyles
{
  lightContentImage = [(CPImageSet *)self lightContentImage];
  darkContentImage = [(CPImageSet *)self darkContentImage];
  [(CPImageSet *)self setDarkContentImage:lightContentImage];
  [(CPImageSet *)self setLightContentImage:darkContentImage];
}

- (void)resizeImagesToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lightContentImage = self->_lightContentImage;
  if (lightContentImage)
  {
    v7 = CPImageByScalingImageToSize(lightContentImage, size.width, size.height);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    darkContentImage = [(CPImageSet *)self darkContentImage];
    v7 = UIImagePNGRepresentation(darkContentImage);
    darkContentImage2 = [v5 darkContentImage];
    v9 = UIImagePNGRepresentation(darkContentImage2);
    if ([v7 isEqualToData:v9])
    {
      lightContentImage = [(CPImageSet *)self lightContentImage];
      v10 = UIImagePNGRepresentation(lightContentImage);
      lightContentImage2 = [v5 lightContentImage];
      v12 = UIImagePNGRepresentation(lightContentImage2);
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