@interface CPImageSetAssetRegistration
- (CPImageSetAssetRegistration)initWithLightImage:(id)a3 darkImage:(id)a4 baseTraitCollection:(id)a5;
- (void)dealloc;
@end

@implementation CPImageSetAssetRegistration

- (CPImageSetAssetRegistration)initWithLightImage:(id)a3 darkImage:(id)a4 baseTraitCollection:(id)a5
{
  v31[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = CPImageSetAssetRegistration;
  v11 = [(CPImageSetAssetRegistration *)&v29 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseTraitCollection, a5);
    v13 = MEMORY[0x277D75C80];
    v31[0] = v10;
    v14 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v31[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v16 = [v13 traitCollectionWithTraitsFromCollections:v15];
    lightTraitCollection = v12->_lightTraitCollection;
    v12->_lightTraitCollection = v16;

    v18 = MEMORY[0x277D75C80];
    v30[0] = v10;
    v19 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v30[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v21 = [v18 traitCollectionWithTraitsFromCollections:v20];
    darkTraitCollection = v12->_darkTraitCollection;
    v12->_darkTraitCollection = v21;

    v23 = objc_alloc_init(MEMORY[0x277D755C0]);
    v24 = v23;
    if (v8)
    {
      [v23 registerImage:v8 withTraitCollection:v12->_lightTraitCollection];
    }

    if (v9)
    {
      [v24 registerImage:v9 withTraitCollection:v12->_darkTraitCollection];
    }

    v25 = [v24 imageWithTraitCollection:v10];
    combinedImage = v12->_combinedImage;
    v12->_combinedImage = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  v3 = [(CPImageSetAssetRegistration *)self combinedImage];
  v4 = [v3 imageAsset];
  v5 = [(CPImageSetAssetRegistration *)self lightTraitCollection];
  [v4 unregisterImageWithTraitCollection:v5];

  v6 = [(CPImageSetAssetRegistration *)self combinedImage];
  v7 = [v6 imageAsset];
  v8 = [(CPImageSetAssetRegistration *)self darkTraitCollection];
  [v7 unregisterImageWithTraitCollection:v8];

  v9.receiver = self;
  v9.super_class = CPImageSetAssetRegistration;
  [(CPImageSetAssetRegistration *)&v9 dealloc];
}

@end