@interface MFNanoBridgeSettingsSharedMailbox
- (BOOL)isEqual:(id)a3;
- (MFNanoBridgeSettingsSharedMailbox)initWithCoder:(id)a3;
- (MFNanoBridgeSettingsSharedMailbox)initWithType:(unint64_t)a3;
- (id)_includesMeIconImage;
- (id)displayName;
- (id)icon;
- (unint64_t)mailboxFilterType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFNanoBridgeSettingsSharedMailbox

- (MFNanoBridgeSettingsSharedMailbox)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsSharedMailbox;
  result = [(MFNanoBridgeSettingsSharedMailbox *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (unint64_t)mailboxFilterType
{
  if ([(MFNanoBridgeSettingsSharedMailbox *)self type]== &dword_0 + 1)
  {
    return 2;
  }

  if ([(MFNanoBridgeSettingsSharedMailbox *)self type]== &dword_0 + 2)
  {
    return 4;
  }

  if ([(MFNanoBridgeSettingsSharedMailbox *)self type]== &dword_0 + 3)
  {
    return 8;
  }

  if ([(MFNanoBridgeSettingsSharedMailbox *)self type]== &dword_4 + 2)
  {
    return 32;
  }

  if ([(MFNanoBridgeSettingsSharedMailbox *)self type]== &dword_4)
  {
    return 16;
  }

  return ([(MFNanoBridgeSettingsSharedMailbox *)self type]== &dword_4 + 3) << 6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [NSNumber numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v4 forKey:@"kNSCodingKeyType"];
}

- (MFNanoBridgeSettingsSharedMailbox)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(MFNanoBridgeSettingsSharedMailbox *)self initWithType:v6];
  return v7;
}

- (id)displayName
{
  v2 = 0;
  type = self->_type;
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v4 localizedStringForKey:@"TO_OR_CC" value:&stru_3D2B0 table:@"Main"];
        break;
      case 6:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v4 localizedStringForKey:@"IMPORTANT_THREADS" value:&stru_3D2B0 table:@"Main"];
        break;
      case 7:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v4 localizedStringForKey:@"TODAY" value:&stru_3D2B0 table:@"Main"];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v4 localizedStringForKey:@"VIP" value:&stru_3D2B0 table:@"Main"];
        break;
      case 2:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v4 localizedStringForKey:@"FLAGGED" value:&stru_3D2B0 table:@"Main"];
        break;
      case 3:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = [v4 localizedStringForKey:@"UNREAD" value:&stru_3D2B0 table:@"Main"];
        break;
      default:
        goto LABEL_15;
    }
  }

  v2 = v5;

LABEL_15:

  return v2;
}

- (id)icon
{
  v2 = 0;
  type = self->_type;
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        v5 = [(MFNanoBridgeSettingsSharedMailbox *)self _includesMeIconImage];
        v2 = [v5 imageWithRenderingMode:2];

        goto LABEL_15;
      case 6:
        v4 = &MFImageGlyphFavoriteNotifydMailbox;
        break;
      case 7:
        v4 = &MFImageGlyphFavoriteTodayMailbox;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        v4 = &MFImageGlyphFavoriteVIPMailbox;
        break;
      case 2:
        v4 = &MFImageGlyphFavoriteFlaggedMailbox;
        break;
      case 3:
        v4 = &MFImageGlyphFavoriteUnreadMailbox;
        break;
      default:
        goto LABEL_15;
    }
  }

  v2 = [UIImage mf_systemImageNamed:*v4 forView:7];
LABEL_15:

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFNanoBridgeSettingsSharedMailbox;
  if ([(MFNanoBridgeSettingsMailbox *)&v7 isEqual:v4])
  {
    v5 = [v4 type] == self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_includesMeIconImage
{
  v2 = qword_44920;
  if (!qword_44920)
  {
    v3 = UIContentSizeCategoryLarge;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = MFDefaultWidthForAddressLabelTypeCustomBundle(2, v3, v4, 35.0);

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = MFDefaultWidthForAddressLabelTypeCustomBundle(3, v3, v6, 35.0);

    if (v5 < v7)
    {
      v5 = v7;
    }

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = +[UIColor systemGrayColor];
    v10 = MFImageForAddressLabelTypeCustomBundleAndBackground(2, v3, v8, v9, 0, v5);

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = +[UIColor systemGrayColor];
    v13 = MFImageForAddressLabelTypeCustomBundleAndBackground(3, v3, v11, v12, 0, v5);

    [v10 size];
    v15 = v14;
    [v13 size];
    v27.height = v15 + v16 + 2.0;
    v27.width = v5;
    UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
    [v10 size];
    v18 = v17;
    v20 = v19;
    y = CGRectZero.origin.y;
    [v10 drawInRect:{CGRectZero.origin.x, y, v17, v19}];
    [v10 size];
    [v13 drawInRect:{CGRectZero.origin.x, y + v22 + 2.0, v18, v20}];
    v23 = UIGraphicsGetImageFromCurrentImageContext();
    v24 = qword_44920;
    qword_44920 = v23;

    UIGraphicsEndImageContext();
    v2 = qword_44920;
  }

  return v2;
}

@end