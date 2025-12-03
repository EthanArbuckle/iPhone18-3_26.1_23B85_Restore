@interface CRApplicationIcon
+ (BOOL)_isApplicationEditableWithBundleIdentifier:(id)identifier;
- (BOOL)hasCustomImage;
- (BOOL)isEqual:(id)equal;
- (CRApplicationIcon)initWithBundleIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)loadIconImageIfNeeded;
- (void)setIconImage:(id)image;
- (void)setNeedsBorder:(BOOL)border;
@end

@implementation CRApplicationIcon

- (CRApplicationIcon)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CRApplicationIcon;
  v6 = [(CRApplicationIcon *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v7->_editable = [objc_opt_class() _isApplicationEditableWithBundleIdentifier:identifierCopy];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [equalCopy bundleIdentifier];
    bundleIdentifier2 = [(CRApplicationIcon *)self bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  bundleIdentifier = [(CRApplicationIcon *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CRApplicationIcon;
  v3 = [(CRApplicationIcon *)&v8 description];
  displayName = [(CRApplicationIcon *)self displayName];
  bundleIdentifier = [(CRApplicationIcon *)self bundleIdentifier];
  v6 = [v3 stringByAppendingFormat:@" %@ (%@)", displayName, bundleIdentifier];

  return v6;
}

- (BOOL)hasCustomImage
{
  bundleIdentifier = [(CRApplicationIcon *)self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:CRSOEMIdentifier])
  {
    v4 = 1;
  }

  else
  {
    bundleIdentifier2 = [(CRApplicationIcon *)self bundleIdentifier];
    if ([bundleIdentifier2 isEqualToString:CRSNowPlayingIdentifier])
    {
      v4 = 1;
    }

    else
    {
      bundleIdentifier3 = [(CRApplicationIcon *)self bundleIdentifier];
      if ([bundleIdentifier3 isEqualToString:CRSCalendarIdentifier])
      {
        v4 = 1;
      }

      else
      {
        bundleIdentifier4 = [(CRApplicationIcon *)self bundleIdentifier];
        v4 = [bundleIdentifier4 isEqualToString:CRSVehicleSettingsIdentifier];
      }
    }
  }

  return v4;
}

- (void)setNeedsBorder:(BOOL)border
{
  if (self->_needsBorder != border)
  {
    self->_needsBorder = border;
    iconImage = self->_iconImage;
    self->_iconImage = 0;
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  bundleIdentifier = [(CRApplicationIcon *)self bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:CRSNowPlayingIdentifier];

  if (v7)
  {
    v8 = [IFImage alloc];
    cGImage = [imageCopy CGImage];
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v11 = [v8 initWithCGImage:cGImage scale:?];

    v12 = [ISIcon alloc];
    v17 = v11;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [v12 initWithImages:v13];

    v15 = sub_3EF0(v14, 1);
    iconImage = self->_iconImage;
    self->_iconImage = v15;
  }

  else
  {
    objc_storeStrong(&self->_iconImage, image);
  }
}

- (void)loadIconImageIfNeeded
{
  iconImage = [(CRApplicationIcon *)self iconImage];

  if (!iconImage)
  {
    v4 = [ISIcon alloc];
    bundleIdentifier = [(CRApplicationIcon *)self bundleIdentifier];
    v8 = [v4 initWithBundleIdentifier:bundleIdentifier];

    v6 = sub_3EF0(v8, [(CRApplicationIcon *)self needsBorder]);
    iconImage = self->_iconImage;
    self->_iconImage = v6;
  }
}

+ (BOOL)_isApplicationEditableWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_7C538 != -1)
  {
    sub_4A28C();
  }

  if ([qword_7C530 containsObject:identifierCopy])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqualToString:CRSOEMIdentifier] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", CRSNowPlayingIdentifier))
  {
    v4 = 0;
  }

  else
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
    bundleType = [v5 bundleType];
    if ([bundleType isEqualToString:LSUserApplicationType])
    {
      v4 = 1;
    }

    else
    {
      bundleType2 = [v5 bundleType];
      v4 = [bundleType2 isEqualToString:LSInternalApplicationType];
    }
  }

  return v4;
}

@end