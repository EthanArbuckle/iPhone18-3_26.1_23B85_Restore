@interface BCSAppClipActionPickerItem
- (id)icon;
- (id)label;
@end

@implementation BCSAppClipActionPickerItem

- (id)icon
{
  action = [(BCSActionPickerItem *)self action];
  clipMetadataRequest = [action clipMetadataRequest];
  getDownloadedIconURLSynchronously = [clipMetadataRequest getDownloadedIconURLSynchronously];

  v5 = appclipIconCache;
  if (!appclipIconCache)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v7 = appclipIconCache;
    appclipIconCache = v6;

    [appclipIconCache setCountLimit:8];
    v5 = appclipIconCache;
  }

  v8 = [v5 objectForKey:getDownloadedIconURLSynchronously];
  if (!v8)
  {
    if (getDownloadedIconURLSynchronously && (MGGetFloat32Answer(), (v10 = _bcs_iconWithAppclipTreatment(getDownloadedIconURLSynchronously, v9)) != 0))
    {
      v8 = [objc_alloc(getUIImageClass()) initWithCGImage:v10];
      [appclipIconCache setObject:v8 forKey:getDownloadedIconURLSynchronously];
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
  action = [(BCSActionPickerItem *)self action];
  clipMetadataRequest = [action clipMetadataRequest];
  getClipMetadataSynchronously = [clipMetadataRequest getClipMetadataSynchronously];

  if (getClipMetadataSynchronously)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _BCSLocalizedString(@"%@ %@", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    clipOpenButtonTitle = [getClipMetadataSynchronously clipOpenButtonTitle];
    clipName = [getClipMetadataSynchronously clipName];
    v9 = [v5 stringWithFormat:v6, clipOpenButtonTitle, clipName];
  }

  else
  {
    v9 = _BCSLocalizedString(@"Open App Clip", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  return v9;
}

@end