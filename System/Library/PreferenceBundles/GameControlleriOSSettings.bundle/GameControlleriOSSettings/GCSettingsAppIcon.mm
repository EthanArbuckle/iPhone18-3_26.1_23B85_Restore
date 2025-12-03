@interface GCSettingsAppIcon
+ (id)appIconImageForBundleIdentifier:(id)identifier;
+ (id)iconImageForType:(id)type;
+ (void)clearCache;
- (GCSettingsAppIcon)initWithISImage:(id)image;
- (id)UIImage;
@end

@implementation GCSettingsAppIcon

+ (void)clearCache
{
  v2 = sub_DBC0();
  [v2 removeAllObjects];
}

+ (id)appIconImageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = sub_DBC0();
  v5 = [v4 objectForKey:identifierCopy];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v8 = [[ISIcon alloc] initWithBundleIdentifier:identifierCopy];
    v9 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
    v10 = [v8 prepareImageForDescriptor:v9];
    v11 = [v8 imageForDescriptor:v9];
    v12 = [[GCSettingsAppIcon alloc] initWithISImage:v11];
    v13 = sub_DBC0();
    v14 = v13;
    if (v12)
    {
      [v13 setObject:v12 forKey:identifierCopy];
    }

    else
    {
      v15 = +[NSNull null];
      [v14 setObject:v15 forKey:identifierCopy];
    }

    v7 = v12;
  }

  return v7;
}

+ (id)iconImageForType:(id)type
{
  typeCopy = type;
  v4 = [[ISIcon alloc] initWithType:typeCopy];

  v5 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
  v6 = [v4 prepareImageForDescriptor:v5];
  v7 = [v4 imageForDescriptor:v5];
  v8 = [[GCSettingsAppIcon alloc] initWithISImage:v7];

  return v8;
}

- (GCSettingsAppIcon)initWithISImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = GCSettingsAppIcon;
  v6 = [(GCSettingsAppIcon *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_isImage, image);
  }

  return v7;
}

- (id)UIImage
{
  uiImage = self->_uiImage;
  if (!uiImage)
  {
    v4 = [UIImage alloc];
    cGImage = [(IFImage *)self->_isImage CGImage];
    [(IFImage *)self->_isImage scale];
    v6 = [v4 initWithCGImage:cGImage scale:0 orientation:?];
    v7 = self->_uiImage;
    self->_uiImage = v6;

    uiImage = self->_uiImage;
  }

  return uiImage;
}

@end