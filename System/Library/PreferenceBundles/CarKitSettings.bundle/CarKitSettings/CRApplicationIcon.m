@interface CRApplicationIcon
+ (BOOL)_isApplicationEditableWithBundleIdentifier:(id)a3;
- (BOOL)hasCustomImage;
- (BOOL)isEqual:(id)a3;
- (CRApplicationIcon)initWithBundleIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)loadIconImageIfNeeded;
- (void)setIconImage:(id)a3;
- (void)setNeedsBorder:(BOOL)a3;
@end

@implementation CRApplicationIcon

- (CRApplicationIcon)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRApplicationIcon;
  v6 = [(CRApplicationIcon *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v7->_editable = [objc_opt_class() _isApplicationEditableWithBundleIdentifier:v5];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 bundleIdentifier];
    v6 = [(CRApplicationIcon *)self bundleIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CRApplicationIcon *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CRApplicationIcon;
  v3 = [(CRApplicationIcon *)&v8 description];
  v4 = [(CRApplicationIcon *)self displayName];
  v5 = [(CRApplicationIcon *)self bundleIdentifier];
  v6 = [v3 stringByAppendingFormat:@" %@ (%@)", v4, v5];

  return v6;
}

- (BOOL)hasCustomImage
{
  v3 = [(CRApplicationIcon *)self bundleIdentifier];
  if ([v3 isEqualToString:CRSOEMIdentifier])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRApplicationIcon *)self bundleIdentifier];
    if ([v5 isEqualToString:CRSNowPlayingIdentifier])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(CRApplicationIcon *)self bundleIdentifier];
      if ([v6 isEqualToString:CRSCalendarIdentifier])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(CRApplicationIcon *)self bundleIdentifier];
        v4 = [v7 isEqualToString:CRSVehicleSettingsIdentifier];
      }
    }
  }

  return v4;
}

- (void)setNeedsBorder:(BOOL)a3
{
  if (self->_needsBorder != a3)
  {
    self->_needsBorder = a3;
    iconImage = self->_iconImage;
    self->_iconImage = 0;
  }
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  v6 = [(CRApplicationIcon *)self bundleIdentifier];
  v7 = [v6 isEqualToString:CRSNowPlayingIdentifier];

  if (v7)
  {
    v8 = [IFImage alloc];
    v9 = [v5 CGImage];
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v11 = [v8 initWithCGImage:v9 scale:?];

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
    objc_storeStrong(&self->_iconImage, a3);
  }
}

- (void)loadIconImageIfNeeded
{
  v3 = [(CRApplicationIcon *)self iconImage];

  if (!v3)
  {
    v4 = [ISIcon alloc];
    v5 = [(CRApplicationIcon *)self bundleIdentifier];
    v8 = [v4 initWithBundleIdentifier:v5];

    v6 = sub_3EF0(v8, [(CRApplicationIcon *)self needsBorder]);
    iconImage = self->_iconImage;
    self->_iconImage = v6;
  }
}

+ (BOOL)_isApplicationEditableWithBundleIdentifier:(id)a3
{
  v3 = a3;
  if (qword_7C538 != -1)
  {
    sub_4A28C();
  }

  if ([qword_7C530 containsObject:v3])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:CRSOEMIdentifier] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", CRSNowPlayingIdentifier))
  {
    v4 = 0;
  }

  else
  {
    v5 = [LSApplicationProxy applicationProxyForIdentifier:v3];
    v6 = [v5 bundleType];
    if ([v6 isEqualToString:LSUserApplicationType])
    {
      v4 = 1;
    }

    else
    {
      v7 = [v5 bundleType];
      v4 = [v7 isEqualToString:LSInternalApplicationType];
    }
  }

  return v4;
}

@end