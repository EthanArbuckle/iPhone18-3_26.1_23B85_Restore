@interface CPImageSetAssetRegistration
- (CPImageSetAssetRegistration)initWithLightImage:(id)image darkImage:(id)darkImage baseTraitCollection:(id)collection;
- (void)dealloc;
@end

@implementation CPImageSetAssetRegistration

- (CPImageSetAssetRegistration)initWithLightImage:(id)image darkImage:(id)darkImage baseTraitCollection:(id)collection
{
  v31[2] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  darkImageCopy = darkImage;
  collectionCopy = collection;
  v29.receiver = self;
  v29.super_class = CPImageSetAssetRegistration;
  v11 = [(CPImageSetAssetRegistration *)&v29 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseTraitCollection, collection);
    v13 = MEMORY[0x277D75C80];
    v31[0] = collectionCopy;
    v14 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v31[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v16 = [v13 traitCollectionWithTraitsFromCollections:v15];
    lightTraitCollection = v12->_lightTraitCollection;
    v12->_lightTraitCollection = v16;

    v18 = MEMORY[0x277D75C80];
    v30[0] = collectionCopy;
    v19 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v30[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v21 = [v18 traitCollectionWithTraitsFromCollections:v20];
    darkTraitCollection = v12->_darkTraitCollection;
    v12->_darkTraitCollection = v21;

    v23 = objc_alloc_init(MEMORY[0x277D755C0]);
    v24 = v23;
    if (imageCopy)
    {
      [v23 registerImage:imageCopy withTraitCollection:v12->_lightTraitCollection];
    }

    if (darkImageCopy)
    {
      [v24 registerImage:darkImageCopy withTraitCollection:v12->_darkTraitCollection];
    }

    v25 = [v24 imageWithTraitCollection:collectionCopy];
    combinedImage = v12->_combinedImage;
    v12->_combinedImage = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  combinedImage = [(CPImageSetAssetRegistration *)self combinedImage];
  imageAsset = [combinedImage imageAsset];
  lightTraitCollection = [(CPImageSetAssetRegistration *)self lightTraitCollection];
  [imageAsset unregisterImageWithTraitCollection:lightTraitCollection];

  combinedImage2 = [(CPImageSetAssetRegistration *)self combinedImage];
  imageAsset2 = [combinedImage2 imageAsset];
  darkTraitCollection = [(CPImageSetAssetRegistration *)self darkTraitCollection];
  [imageAsset2 unregisterImageWithTraitCollection:darkTraitCollection];

  v9.receiver = self;
  v9.super_class = CPImageSetAssetRegistration;
  [(CPImageSetAssetRegistration *)&v9 dealloc];
}

@end