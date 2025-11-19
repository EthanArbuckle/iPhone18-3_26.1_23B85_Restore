@interface AKIcon
+ (double)_screenScale;
+ (id)iconWithBundleID:(id)a3 size:(CGSize)a4;
+ (id)iconWithData:(id)a3 scale:(double)a4;
+ (id)iconWithIconContext:(id)a3;
+ (id)iconWithName:(id)a3 size:(CGSize)a4;
+ (id)iconWithPresentationContext:(id)a3;
+ (id)iconWithTypeID:(id)a3 size:(CGSize)a4;
- (AKIcon)initWithBundleID:(id)a3 size:(CGSize)a4;
- (AKIcon)initWithData:(id)a3 scale:(double)a4;
- (AKIcon)initWithIconContext:(id)a3;
- (AKIcon)initWithName:(id)a3 size:(CGSize)a4;
- (AKIcon)initWithPresentationContext:(id)a3;
- (AKIcon)initWithTypeID:(id)a3 size:(CGSize)a4;
- (BOOL)_hasInstalledApplicationWithBundleID:(id)a3;
- (BOOL)_shouldMaskImage;
- (CGImage)_CGImageForImage:(id)a3;
- (id)_applicationProxyForBundleID:(id)a3;
- (id)_catalogueImageWithName:(id)a3;
- (id)_dataForImage:(id)a3;
- (id)_iconWithImage:(id)a3;
- (id)_imageWithBundleID:(id)a3 size:(CGSize)a4 masked:(BOOL)a5;
- (id)_imageWithData:(id)a3 scale:(double)a4 masked:(BOOL)a5;
- (id)_imageWithIcon:(id)a3 size:(CGSize)a4 masked:(BOOL)a5;
- (id)_imageWithName:(id)a3 size:(CGSize)a4 masked:(BOOL)a5;
- (id)_imageWithTypeID:(id)a3 size:(CGSize)a4 masked:(BOOL)a5;
- (id)automaskedImage;
- (id)automaskedImageData;
- (id)maskedImage;
- (id)maskedImageData;
- (id)unmaskedImage;
- (id)unmaskedImageData;
- (unint64_t)iconType;
@end

@implementation AKIcon

- (AKIcon)initWithData:(id)a3 scale:(double)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKIcon;
  v11 = [(AKIcon *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_data, location[0]);
    v11->_scale = v9;
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKIcon)initWithPresentationContext:(id)a3
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v36;
  v36 = 0;
  v34.receiver = v3;
  v34.super_class = AKIcon;
  v36 = [(AKIcon *)&v34 init];
  objc_storeStrong(&v36, v36);
  if (v36)
  {
    v27 = [location[0] iconData];
    v32 = 0;
    v28 = 0;
    if (v27)
    {
      v33 = [location[0] iconScale];
      v32 = 1;
      v28 = v33 != 0;
    }

    if (v32)
    {
      MEMORY[0x277D82BD8](v33);
    }

    MEMORY[0x277D82BD8](v27);
    if (v28)
    {
      v4 = [location[0] iconData];
      data = v36->_data;
      v36->_data = v4;
      MEMORY[0x277D82BD8](data);
      v26 = [location[0] iconScale];
      [v26 doubleValue];
      v36->_scale = v6;
      MEMORY[0x277D82BD8](v26);
    }

    else
    {
      v25 = [location[0] iconName];
      MEMORY[0x277D82BD8](v25);
      if (v25)
      {
        v7 = [location[0] iconName];
        name = v36->_name;
        v36->_name = v7;
        MEMORY[0x277D82BD8](name);
        v24 = v36;
        CGSizeMake_1();
        v31.width = v9;
        v31.height = v10;
        v24->_size = v31;
      }

      else
      {
        v23 = [location[0] iconTypeID];
        MEMORY[0x277D82BD8](v23);
        if (v23)
        {
          v11 = [location[0] iconTypeID];
          typeID = v36->_typeID;
          v36->_typeID = v11;
          MEMORY[0x277D82BD8](typeID);
          v22 = v36;
          CGSizeMake_1();
          v30.width = v13;
          v30.height = v14;
          v22->_size = v30;
        }

        else
        {
          v15 = [location[0] bundleID];
          bundleID = v36->_bundleID;
          v36->_bundleID = v15;
          MEMORY[0x277D82BD8](bundleID);
          v21 = v36;
          CGSizeMake_1();
          v29.width = v17;
          v29.height = v18;
          v21->_size = v29;
        }
      }
    }
  }

  v20 = MEMORY[0x277D82BE0](v36);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v36, 0);
  return v20;
}

- (AKIcon)initWithIconContext:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKIcon;
  v13 = [(AKIcon *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v4 = [location[0] data];
    data = v13->_data;
    v13->_data = v4;
    MEMORY[0x277D82BD8](data);
    v10 = [location[0] scale];
    [v10 doubleValue];
    v13->_scale = v6;
    MEMORY[0x277D82BD8](v10);
    v7 = [location[0] maskingStyle];
    v13->_maskingStyle = v7;
  }

  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (AKIcon)initWithName:(id)a3 size:(CGSize)a4
{
  v10 = a4;
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = AKIcon;
  v9 = [(AKIcon *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    objc_storeStrong(&v9->_name, location[0]);
    v9->_size = v10;
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (AKIcon)initWithTypeID:(id)a3 size:(CGSize)a4
{
  v10 = a4;
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = AKIcon;
  v9 = [(AKIcon *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    objc_storeStrong(&v9->_typeID, location[0]);
    v9->_size = v10;
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (AKIcon)initWithBundleID:(id)a3 size:(CGSize)a4
{
  v10 = a4;
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = AKIcon;
  v9 = [(AKIcon *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, location[0]);
    v9->_size = v10;
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

+ (id)iconWithData:(id)a3 scale:(double)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [AKIcon alloc];
  v7 = [(AKIcon *)v4 initWithData:location[0] scale:a4];
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)iconWithPresentationContext:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKIcon alloc];
  v5 = [(AKIcon *)v3 initWithPresentationContext:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)iconWithIconContext:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKIcon alloc];
  v5 = [(AKIcon *)v3 initWithIconContext:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)iconWithName:(id)a3 size:(CGSize)a4
{
  v8 = a4;
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [AKIcon alloc];
  v6 = [(AKIcon *)v4 initWithName:location[0] size:v8.width, v8.height];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)iconWithTypeID:(id)a3 size:(CGSize)a4
{
  v8 = a4;
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [AKIcon alloc];
  v6 = [(AKIcon *)v4 initWithTypeID:location[0] size:v8.width, v8.height];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)iconWithBundleID:(id)a3 size:(CGSize)a4
{
  v8 = a4;
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [AKIcon alloc];
  v6 = [(AKIcon *)v4 initWithBundleID:location[0] size:v8.width, v8.height];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)unmaskedImage
{
  if (self->_data)
  {
    v3 = [(AKIcon *)self _imageWithData:self->_data scale:0 masked:self->_scale];
  }

  else if (self->_name)
  {
    v3 = [(AKIcon *)self _imageWithName:self->_name size:0 masked:self->_size.width, self->_size.height];
  }

  else if (self->_typeID)
  {
    v3 = [(AKIcon *)self _imageWithTypeID:self->_typeID size:0 masked:self->_size.width, self->_size.height];
  }

  else if (self->_bundleID)
  {
    v3 = [(AKIcon *)self _imageWithBundleID:self->_bundleID size:0 masked:self->_size.width, self->_size.height];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)maskedImage
{
  if (self->_data)
  {
    v3 = [(AKIcon *)self _imageWithData:self->_data scale:1 masked:self->_scale];
  }

  else if (self->_name)
  {
    v3 = [(AKIcon *)self _imageWithName:self->_name size:1 masked:self->_size.width, self->_size.height];
  }

  else if (self->_typeID)
  {
    v3 = [(AKIcon *)self _imageWithTypeID:self->_typeID size:1 masked:self->_size.width, self->_size.height];
  }

  else if (self->_bundleID)
  {
    v3 = [(AKIcon *)self _imageWithBundleID:self->_bundleID size:1 masked:self->_size.width, self->_size.height];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)automaskedImage
{
  v3 = [(AKIcon *)self _shouldMaskImage];
  if (self->_data)
  {
    v5 = [(AKIcon *)self _imageWithData:self->_data scale:v3 masked:self->_scale];
  }

  else if (self->_name)
  {
    v5 = [(AKIcon *)self _imageWithName:self->_name size:v3 masked:self->_size.width, self->_size.height];
  }

  else if (self->_typeID)
  {
    v5 = [(AKIcon *)self _imageWithTypeID:self->_typeID size:v3 masked:self->_size.width, self->_size.height];
  }

  else if (self->_bundleID)
  {
    v5 = [(AKIcon *)self _imageWithBundleID:self->_bundleID size:v3 masked:self->_size.width, self->_size.height];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unmaskedImageData
{
  v4 = [(AKIcon *)self unmaskedImage];
  v5 = [(AKIcon *)self _dataForImage:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)maskedImageData
{
  v4 = [(AKIcon *)self maskedImage];
  v5 = [(AKIcon *)self _dataForImage:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)automaskedImageData
{
  v4 = [(AKIcon *)self automaskedImage];
  v5 = [(AKIcon *)self _dataForImage:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (unint64_t)iconType
{
  if (self->_data)
  {
    return 2;
  }

  if (self->_name)
  {
    v2 = [(AKIcon *)self _catalogueImageWithName:self->_name];
    v3 = 2;
    if (!v2)
    {
      v3 = 0;
    }

    v7 = v3;
    MEMORY[0x277D82BD8](v2);
  }

  else if (self->_typeID)
  {
    return 2;
  }

  else if (self->_bundleID)
  {
    v4 = [(AKIcon *)self _hasInstalledApplicationWithBundleID:self->_bundleID];
    v5 = 2;
    if (!v4)
    {
      return 1;
    }

    return v5;
  }

  else
  {
    return 0;
  }

  return v7;
}

- (id)_catalogueImageWithName:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D755B8] imageNamed:location[0] inBundle:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_imageWithData:(id)a3 scale:(double)a4 masked:(BOOL)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v19 = a5;
  v17 = 0;
  v18 = [MEMORY[0x277D755B8] imageWithData:location[0] scale:a4];
  MEMORY[0x277D82BD8](0);
  if (a5 && v18)
  {
    v16 = [(AKIcon *)v22 _iconWithImage:v18];
    v12 = v22;
    v13 = v16;
    [v18 size];
    v7 = [(AKIcon *)v12 _imageWithIcon:v13 size:1 masked:v5, v6];
    v8 = v17;
    v17 = v7;
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v16, 0);
  }

  if (v17)
  {
    v9 = MEMORY[0x277D82BE0](v17);
  }

  else
  {
    v9 = MEMORY[0x277D82BE0](v18);
  }

  v11 = v9;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)_imageWithTypeID:(id)a3 size:(CGSize)a4 masked:(BOOL)a5
{
  v13 = a4;
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a5;
  v5 = objc_alloc(MEMORY[0x277D1B1A8]);
  v9 = [v5 initWithType:location[0]];
  v8 = [(AKIcon *)v12 _imageWithIcon:v9 size:a5 masked:v13.width, v13.height];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_imageWithBundleID:(id)a3 size:(CGSize)a4 masked:(BOOL)a5
{
  v14 = a4;
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a5;
  v10 = [(AKIcon *)v13 _applicationProxyForBundleID:location[0]];
  v5 = objc_alloc(MEMORY[0x277D1B1A8]);
  v9 = [v5 initWithResourceProxy:v10];
  v8 = [(AKIcon *)v13 _imageWithIcon:v9 size:v11 masked:v14.width, v14.height];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_imageWithName:(id)a3 size:(CGSize)a4 masked:(BOOL)a5
{
  v15 = a4;
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a5;
  v11 = [(AKIcon *)v14 _catalogueImageWithName:location[0]];
  v10 = [(AKIcon *)v14 _iconWithImage:v11];
  v9 = [(AKIcon *)v14 _imageWithIcon:v10 size:a5 masked:v15.width, v15.height];
  if (v9)
  {
    v5 = MEMORY[0x277D82BE0](v9);
  }

  else
  {
    v5 = MEMORY[0x277D82BE0](v11);
  }

  v7 = v5;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_iconWithImage:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(AKIcon *)v13 _CGImageForImage:location[0]];
  [location[0] scale];
  v11 = v3;
  v9 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:v10 scale:v3];
  v5 = objc_alloc(MEMORY[0x277D1B1A8]);
  v14[0] = v9;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [v5 initWithImages:?];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_imageWithIcon:(id)a3 size:(CGSize)a4 masked:(BOOL)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = a4;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a5;
  v19 = 0;
  [objc_opt_class() _screenScale];
  v18 = v5;
  v6 = objc_alloc(MEMORY[0x277D1B1C8]);
  v17 = [v6 initWithSize:v22.width scale:{v22.height, v18}];
  [v17 setShape:?];
  [v17 setShouldApplyMask:v20];
  [v17 setDrawBorder:1];
  v11 = location[0];
  v23[0] = v17;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v11 prepareImagesForImageDescriptors:?];
  MEMORY[0x277D82BD8](v12);
  v16 = [location[0] imageForDescriptor:v17];
  v13 = MEMORY[0x277D755B8];
  v14 = [v16 CGImage];
  [v16 scale];
  v7 = [v13 imageWithCGImage:v14 scale:0 orientation:?];
  v8 = v19;
  v19 = v7;
  MEMORY[0x277D82BD8](v8);
  v15 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_dataForImage:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [(AKIcon *)v15 _CGImageForImage:location[0]];
  if (v13)
  {
    Mutable = CFDataCreateMutable(0, 0);
    v7 = [*MEMORY[0x277CE1E80] identifier];
    v8 = CGImageDestinationCreateWithData(Mutable, v7, 1uLL, 0);
    MEMORY[0x277D82BD8](v7);
    v11 = v8;
    CGImageDestinationAddImage(v8, v13, 0);
    v10 = CGImageDestinationFinalize(v8);
    CFRelease(v8);
    v9 = 0;
    if (v10)
    {
      Copy = CFDataCreateCopy(0, Mutable);
      v4 = v9;
      v9 = Copy;
      MEMORY[0x277D82BD8](v4);
    }

    CFRelease(Mutable);
    v16 = MEMORY[0x277D82BE0](v9);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(location, 0);
  v5 = v16;

  return v5;
}

- (CGImage)_CGImageForImage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = location[0];
  v3 = location[0];
  v6 = [v5 CGImage];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)_hasInstalledApplicationWithBundleID:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKIcon *)v8 _applicationProxyForBundleID:location[0]];
  v4 = [v6 appState];
  v5 = [v4 isInstalled];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_applicationProxyForBundleID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  v6 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:location[0]];
  MEMORY[0x277D82BD8](0);
  v4 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_shouldMaskImage
{
  if (self->_maskingStyle)
  {
    return self->_maskingStyle == 1;
  }

  if (self->_data)
  {
    return 1;
  }

  if (self->_name)
  {
    return 1;
  }

  if (self->_typeID)
  {
    return 1;
  }

  return self->_bundleID != 0;
}

+ (double)_screenScale
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

@end