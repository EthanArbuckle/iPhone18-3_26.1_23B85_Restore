@interface BBSectionInfo
- (BOOL)_notificationSettings_iconWouldUseApplicationIdentifierForFormat:(int64_t)format;
- (BOOL)_notificationSettings_sectionIdentifierIconDenyListContainsIdentifier;
- (BOOL)isEqualToSection:(id)section;
- (id)_scaledImageForImage:(id)image;
- (id)nc_settingsIconImage;
- (int64_t)nc_effectiveAnnounceSetting;
@end

@implementation BBSectionInfo

- (id)nc_settingsIconImage
{
  icon = [(BBSectionInfo *)self icon];
  v4 = [icon _bestVariantForFormat:1];
  applicationIdentifier = [v4 applicationIdentifier];

  if (applicationIdentifier)
  {
    goto LABEL_16;
  }

  v6 = [v4 uti];

  if (v6 || [(BBSectionInfo *)self _notificationSettings_sectionIdentifierIconDenyListContainsIdentifier])
  {
    goto LABEL_16;
  }

  imageData = [v4 imageData];

  if (imageData)
  {
    iconData = [(BBSectionInfo *)self iconData];
    imageData = [UIImage imageWithData:iconData];
  }

  bundlePath = [v4 bundlePath];
  if (bundlePath)
  {
    v10 = bundlePath;
    imageName = [v4 imageName];

    if (imageName)
    {
      bundlePath2 = [v4 bundlePath];
      imagePath2 = [NSBundle bundleWithPath:bundlePath2];

      if (!imagePath2)
      {
LABEL_13:

        goto LABEL_14;
      }

      imageName2 = [v4 imageName];
      v15 = [UIImage imageNamed:imageName2 inBundle:imagePath2];

      imageData = imageName2;
LABEL_12:

      imageData = v15;
      goto LABEL_13;
    }
  }

  imagePath = [v4 imagePath];

  if (imagePath)
  {
    imagePath2 = [v4 imagePath];
    v15 = [UIImage imageWithContentsOfFile:imagePath2];
    goto LABEL_12;
  }

LABEL_14:
  if (!imageData || ([(BBSectionInfo *)self _scaledImageForImage:imageData], v17 = objc_claimAutoreleasedReturnValue(), imageData, !v17))
  {
LABEL_16:
    sectionID = [(BBSectionInfo *)self sectionID];
    v19 = [sectionID isEqualToString:@"com.apple.Passbook"];

    if (v19)
    {
      v17 = PSPassbookImage();
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (int64_t)nc_effectiveAnnounceSetting
{
  if (![(BBSectionInfo *)self allowsNotifications])
  {
    return 1;
  }

  return [(BBSectionInfo *)self announceSetting];
}

- (id)_scaledImageForImage:(id)image
{
  imageCopy = image;
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = PSBlankIconImage();
  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = [[ISImageDescriptor alloc] initWithSize:v9 scale:{v11, v6}];
  [v12 setDrawBorder:1];
  v13 = +[UITraitCollection currentTraitCollection];
  [v12 setAppearance:{objc_msgSend(v13, "userInterfaceStyle") != &dword_0 + 1}];

  v14 = +[UITraitCollection currentTraitCollection];
  if ([v14 layoutDirection])
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v12 setLanguageDirection:v15];

  v16 = +[UITraitCollection currentTraitCollection];
  [v12 setContrast:{objc_msgSend(v16, "accessibilityContrast") == &dword_0 + 1}];

  v17 = [IFImage alloc];
  cGImage = [imageCopy CGImage];
  [imageCopy scale];
  v19 = [v17 initWithCGImage:cGImage scale:?];
  v20 = [ISIcon alloc];
  v29 = v19;
  v21 = [NSArray arrayWithObjects:&v29 count:1];
  v22 = [v20 initWithImages:v21];

  if (v22)
  {
    v23 = [v22 prepareImageForDescriptor:v12];
    v24 = v23;
    if (v23)
    {
      cGImage2 = [v23 CGImage];
      v26 = +[UIScreen mainScreen];
      [v26 scale];
      v27 = [UIImage imageWithCGImage:cGImage2 scale:0 orientation:?];
    }

    else
    {
      v27 = imageCopy;
    }
  }

  else
  {
    v27 = imageCopy;
  }

  return v27;
}

- (BOOL)_notificationSettings_iconWouldUseApplicationIdentifierForFormat:(int64_t)format
{
  icon = [(BBSectionInfo *)self icon];
  v5 = [icon _bestVariantForFormat:format];

  imageData = [v5 imageData];
  imagePath = [v5 imagePath];
  imageName = [v5 imageName];
  bundlePath = [v5 bundlePath];
  applicationIdentifier = [v5 applicationIdentifier];
  v11 = ![imageData length] && (!imageName || !bundlePath) && !objc_msgSend(imagePath, "length") && objc_msgSend(applicationIdentifier, "length") != 0;

  return v11;
}

- (BOOL)_notificationSettings_sectionIdentifierIconDenyListContainsIdentifier
{
  sectionID = [(BBSectionInfo *)self sectionID];
  if (qword_5C598 != -1)
  {
    sub_32BB4();
  }

  if ([qword_5C590 containsObject:sectionID])
  {
    v4 = ![(BBSectionInfo *)self _notificationSettings_iconWouldUseApplicationIdentifierForFormat:1];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isEqualToSection:(id)section
{
  sectionCopy = section;
  sectionID = [(BBSectionInfo *)self sectionID];
  sectionID2 = [sectionCopy sectionID];
  v23 = [sectionID isEqualToString:sectionID2];

  notificationCenterSetting = [(BBSectionInfo *)self notificationCenterSetting];
  notificationCenterSetting2 = [sectionCopy notificationCenterSetting];
  lockScreenSetting = [(BBSectionInfo *)self lockScreenSetting];
  lockScreenSetting2 = [sectionCopy lockScreenSetting];
  alertType = [(BBSectionInfo *)self alertType];
  alertType2 = [sectionCopy alertType];
  contentPreviewSetting = [(BBSectionInfo *)self contentPreviewSetting];
  contentPreviewSetting2 = [sectionCopy contentPreviewSetting];
  carPlaySetting = [(BBSectionInfo *)self carPlaySetting];
  carPlaySetting2 = [sectionCopy carPlaySetting];
  remoteNotificationsSetting = [(BBSectionInfo *)self remoteNotificationsSetting];
  remoteNotificationsSetting2 = [sectionCopy remoteNotificationsSetting];
  criticalAlertSetting = [(BBSectionInfo *)self criticalAlertSetting];
  criticalAlertSetting2 = [sectionCopy criticalAlertSetting];

  result = 0;
  if (v23 && notificationCenterSetting == notificationCenterSetting2 && lockScreenSetting == lockScreenSetting2 && alertType == alertType2 && contentPreviewSetting == contentPreviewSetting2 && carPlaySetting == carPlaySetting2)
  {
    return remoteNotificationsSetting == remoteNotificationsSetting2 && criticalAlertSetting == criticalAlertSetting2;
  }

  return result;
}

@end