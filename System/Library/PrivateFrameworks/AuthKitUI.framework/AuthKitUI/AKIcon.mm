@interface AKIcon
+ (double)_screenScale;
+ (id)iconWithBundleID:(id)d size:(CGSize)size;
+ (id)iconWithData:(id)data scale:(double)scale;
+ (id)iconWithIconContext:(id)context;
+ (id)iconWithName:(id)name size:(CGSize)size;
+ (id)iconWithPresentationContext:(id)context;
+ (id)iconWithTypeID:(id)d size:(CGSize)size;
- (AKIcon)initWithBundleID:(id)d size:(CGSize)size;
- (AKIcon)initWithData:(id)data scale:(double)scale;
- (AKIcon)initWithIconContext:(id)context;
- (AKIcon)initWithName:(id)name size:(CGSize)size;
- (AKIcon)initWithPresentationContext:(id)context;
- (AKIcon)initWithTypeID:(id)d size:(CGSize)size;
- (BOOL)_hasInstalledApplicationWithBundleID:(id)d;
- (BOOL)_shouldMaskImage;
- (CGImage)_CGImageForImage:(id)image;
- (id)_applicationProxyForBundleID:(id)d;
- (id)_catalogueImageWithName:(id)name;
- (id)_dataForImage:(id)image;
- (id)_iconWithImage:(id)image;
- (id)_imageWithBundleID:(id)d size:(CGSize)size masked:(BOOL)masked;
- (id)_imageWithData:(id)data scale:(double)scale masked:(BOOL)masked;
- (id)_imageWithIcon:(id)icon size:(CGSize)size masked:(BOOL)masked;
- (id)_imageWithName:(id)name size:(CGSize)size masked:(BOOL)masked;
- (id)_imageWithTypeID:(id)d size:(CGSize)size masked:(BOOL)masked;
- (id)automaskedImage;
- (id)automaskedImageData;
- (id)maskedImage;
- (id)maskedImageData;
- (id)unmaskedImage;
- (id)unmaskedImageData;
- (unint64_t)iconType;
@end

@implementation AKIcon

- (AKIcon)initWithData:(id)data scale:(double)scale
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  scaleCopy = scale;
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKIcon;
  selfCopy = [(AKIcon *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_data, location[0]);
    selfCopy->_scale = scaleCopy;
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKIcon)initWithPresentationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v34.receiver = v3;
  v34.super_class = AKIcon;
  selfCopy = [(AKIcon *)&v34 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    iconData = [location[0] iconData];
    v32 = 0;
    v28 = 0;
    if (iconData)
    {
      iconScale = [location[0] iconScale];
      v32 = 1;
      v28 = iconScale != 0;
    }

    if (v32)
    {
      MEMORY[0x277D82BD8](iconScale);
    }

    MEMORY[0x277D82BD8](iconData);
    if (v28)
    {
      iconData2 = [location[0] iconData];
      data = selfCopy->_data;
      selfCopy->_data = iconData2;
      MEMORY[0x277D82BD8](data);
      iconScale2 = [location[0] iconScale];
      [iconScale2 doubleValue];
      selfCopy->_scale = v6;
      MEMORY[0x277D82BD8](iconScale2);
    }

    else
    {
      iconName = [location[0] iconName];
      MEMORY[0x277D82BD8](iconName);
      if (iconName)
      {
        iconName2 = [location[0] iconName];
        name = selfCopy->_name;
        selfCopy->_name = iconName2;
        MEMORY[0x277D82BD8](name);
        v24 = selfCopy;
        CGSizeMake_1();
        v31.width = v9;
        v31.height = v10;
        v24->_size = v31;
      }

      else
      {
        iconTypeID = [location[0] iconTypeID];
        MEMORY[0x277D82BD8](iconTypeID);
        if (iconTypeID)
        {
          iconTypeID2 = [location[0] iconTypeID];
          typeID = selfCopy->_typeID;
          selfCopy->_typeID = iconTypeID2;
          MEMORY[0x277D82BD8](typeID);
          v22 = selfCopy;
          CGSizeMake_1();
          v30.width = v13;
          v30.height = v14;
          v22->_size = v30;
        }

        else
        {
          bundleID = [location[0] bundleID];
          bundleID = selfCopy->_bundleID;
          selfCopy->_bundleID = bundleID;
          MEMORY[0x277D82BD8](bundleID);
          v21 = selfCopy;
          CGSizeMake_1();
          v29.width = v17;
          v29.height = v18;
          v21->_size = v29;
        }
      }
    }
  }

  v20 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v20;
}

- (AKIcon)initWithIconContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKIcon;
  selfCopy = [(AKIcon *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    data = [location[0] data];
    data = selfCopy->_data;
    selfCopy->_data = data;
    MEMORY[0x277D82BD8](data);
    scale = [location[0] scale];
    [scale doubleValue];
    selfCopy->_scale = v6;
    MEMORY[0x277D82BD8](scale);
    maskingStyle = [location[0] maskingStyle];
    selfCopy->_maskingStyle = maskingStyle;
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKIcon)initWithName:(id)name size:(CGSize)size
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AKIcon;
  selfCopy = [(AKIcon *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_name, location[0]);
    selfCopy->_size = sizeCopy;
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKIcon)initWithTypeID:(id)d size:(CGSize)size
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AKIcon;
  selfCopy = [(AKIcon *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_typeID, location[0]);
    selfCopy->_size = sizeCopy;
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKIcon)initWithBundleID:(id)d size:(CGSize)size
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AKIcon;
  selfCopy = [(AKIcon *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_bundleID, location[0]);
    selfCopy->_size = sizeCopy;
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

+ (id)iconWithData:(id)data scale:(double)scale
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v4 = [AKIcon alloc];
  v7 = [(AKIcon *)v4 initWithData:location[0] scale:scale];
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)iconWithPresentationContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = [AKIcon alloc];
  v5 = [(AKIcon *)v3 initWithPresentationContext:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)iconWithIconContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = [AKIcon alloc];
  v5 = [(AKIcon *)v3 initWithIconContext:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)iconWithName:(id)name size:(CGSize)size
{
  sizeCopy = size;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v4 = [AKIcon alloc];
  v6 = [(AKIcon *)v4 initWithName:location[0] size:sizeCopy.width, sizeCopy.height];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)iconWithTypeID:(id)d size:(CGSize)size
{
  sizeCopy = size;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKIcon alloc];
  v6 = [(AKIcon *)v4 initWithTypeID:location[0] size:sizeCopy.width, sizeCopy.height];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)iconWithBundleID:(id)d size:(CGSize)size
{
  sizeCopy = size;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKIcon alloc];
  v6 = [(AKIcon *)v4 initWithBundleID:location[0] size:sizeCopy.width, sizeCopy.height];
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
  _shouldMaskImage = [(AKIcon *)self _shouldMaskImage];
  if (self->_data)
  {
    v5 = [(AKIcon *)self _imageWithData:self->_data scale:_shouldMaskImage masked:self->_scale];
  }

  else if (self->_name)
  {
    v5 = [(AKIcon *)self _imageWithName:self->_name size:_shouldMaskImage masked:self->_size.width, self->_size.height];
  }

  else if (self->_typeID)
  {
    v5 = [(AKIcon *)self _imageWithTypeID:self->_typeID size:_shouldMaskImage masked:self->_size.width, self->_size.height];
  }

  else if (self->_bundleID)
  {
    v5 = [(AKIcon *)self _imageWithBundleID:self->_bundleID size:_shouldMaskImage masked:self->_size.width, self->_size.height];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unmaskedImageData
{
  unmaskedImage = [(AKIcon *)self unmaskedImage];
  v5 = [(AKIcon *)self _dataForImage:?];
  MEMORY[0x277D82BD8](unmaskedImage);

  return v5;
}

- (id)maskedImageData
{
  maskedImage = [(AKIcon *)self maskedImage];
  v5 = [(AKIcon *)self _dataForImage:?];
  MEMORY[0x277D82BD8](maskedImage);

  return v5;
}

- (id)automaskedImageData
{
  automaskedImage = [(AKIcon *)self automaskedImage];
  v5 = [(AKIcon *)self _dataForImage:?];
  MEMORY[0x277D82BD8](automaskedImage);

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

- (id)_catalogueImageWithName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D755B8] imageNamed:location[0] inBundle:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_imageWithData:(id)data scale:(double)scale masked:(BOOL)masked
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  scaleCopy = scale;
  maskedCopy = masked;
  v17 = 0;
  v18 = [MEMORY[0x277D755B8] imageWithData:location[0] scale:scale];
  MEMORY[0x277D82BD8](0);
  if (masked && v18)
  {
    v16 = [(AKIcon *)selfCopy _iconWithImage:v18];
    v12 = selfCopy;
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

- (id)_imageWithTypeID:(id)d size:(CGSize)size masked:(BOOL)masked
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  maskedCopy = masked;
  v5 = objc_alloc(MEMORY[0x277D1B1A8]);
  v9 = [v5 initWithType:location[0]];
  v8 = [(AKIcon *)selfCopy _imageWithIcon:v9 size:masked masked:sizeCopy.width, sizeCopy.height];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_imageWithBundleID:(id)d size:(CGSize)size masked:(BOOL)masked
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  maskedCopy = masked;
  v10 = [(AKIcon *)selfCopy _applicationProxyForBundleID:location[0]];
  v5 = objc_alloc(MEMORY[0x277D1B1A8]);
  v9 = [v5 initWithResourceProxy:v10];
  v8 = [(AKIcon *)selfCopy _imageWithIcon:v9 size:maskedCopy masked:sizeCopy.width, sizeCopy.height];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_imageWithName:(id)name size:(CGSize)size masked:(BOOL)masked
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  maskedCopy = masked;
  v11 = [(AKIcon *)selfCopy _catalogueImageWithName:location[0]];
  v10 = [(AKIcon *)selfCopy _iconWithImage:v11];
  v9 = [(AKIcon *)selfCopy _imageWithIcon:v10 size:masked masked:sizeCopy.width, sizeCopy.height];
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

- (id)_iconWithImage:(id)image
{
  v14[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v10 = [(AKIcon *)selfCopy _CGImageForImage:location[0]];
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

- (id)_imageWithIcon:(id)icon size:(CGSize)size masked:(BOOL)masked
{
  v23[1] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, icon);
  maskedCopy = masked;
  v19 = 0;
  [objc_opt_class() _screenScale];
  v18 = v5;
  v6 = objc_alloc(MEMORY[0x277D1B1C8]);
  v17 = [v6 initWithSize:sizeCopy.width scale:{sizeCopy.height, v18}];
  [v17 setShape:?];
  [v17 setShouldApplyMask:maskedCopy];
  [v17 setDrawBorder:1];
  v11 = location[0];
  v23[0] = v17;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v11 prepareImagesForImageDescriptors:?];
  MEMORY[0x277D82BD8](v12);
  v16 = [location[0] imageForDescriptor:v17];
  v13 = MEMORY[0x277D755B8];
  cGImage = [v16 CGImage];
  [v16 scale];
  v7 = [v13 imageWithCGImage:cGImage scale:0 orientation:?];
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

- (id)_dataForImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v13 = [(AKIcon *)selfCopy _CGImageForImage:location[0]];
  if (v13)
  {
    Mutable = CFDataCreateMutable(0, 0);
    identifier = [*MEMORY[0x277CE1E80] identifier];
    v8 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);
    MEMORY[0x277D82BD8](identifier);
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

- (CGImage)_CGImageForImage:(id)image
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v5 = location[0];
  v3 = location[0];
  cGImage = [v5 CGImage];
  objc_storeStrong(location, 0);
  return cGImage;
}

- (BOOL)_hasInstalledApplicationWithBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = [(AKIcon *)selfCopy _applicationProxyForBundleID:location[0]];
  appState = [v6 appState];
  isInstalled = [appState isInstalled];
  MEMORY[0x277D82BD8](appState);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return isInstalled;
}

- (id)_applicationProxyForBundleID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v2;
  MEMORY[0x277D82BD8](mainScreen);
  return v5;
}

@end