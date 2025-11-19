@interface BCSAppClipActionPickerItem
- (id)icon;
- (id)label;
@end

@implementation BCSAppClipActionPickerItem

- (id)icon
{
  v2 = [(BCSActionPickerItem *)self action];
  v3 = [v2 clipMetadataRequest];
  v4 = [v3 getDownloadedIconURLSynchronously];

  v5 = appclipIconCache;
  if (!appclipIconCache)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v7 = appclipIconCache;
    appclipIconCache = v6;

    [appclipIconCache setCountLimit:8];
    v5 = appclipIconCache;
  }

  v8 = [v5 objectForKey:v4];
  if (!v8)
  {
    if (v4 && (MGGetFloat32Answer(), (v10 = _bcs_iconWithAppclipTreatment(v4, v9)) != 0))
    {
      v8 = [objc_alloc(getUIImageClass()) initWithCGImage:v10];
      [appclipIconCache setObject:v8 forKey:v4];
    }

    else
    {
      v8 = [getUIImageClass() systemImageNamed:@"appclip"];
    }
  }

  return v8;
}

- (id)label
{
  v2 = [(BCSActionPickerItem *)self action];
  v3 = [v2 clipMetadataRequest];
  v4 = [v3 getClipMetadataSynchronously];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _BCSLocalizedString(@"%@ %@", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v7 = [v4 clipOpenButtonTitle];
    v8 = [v4 clipName];
    v9 = [v5 stringWithFormat:v6, v7, v8];
  }

  else
  {
    v9 = _BCSLocalizedString(@"Open App Clip", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  return v9;
}

@end