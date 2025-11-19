@interface BBSectionInfo
- (BOOL)_notificationSettings_iconWouldUseApplicationIdentifierForFormat:(int64_t)a3;
- (BOOL)_notificationSettings_sectionIdentifierIconDenyListContainsIdentifier;
- (BOOL)isEqualToSection:(id)a3;
- (id)_scaledImageForImage:(id)a3;
- (id)nc_settingsIconImage;
- (int64_t)nc_effectiveAnnounceSetting;
@end

@implementation BBSectionInfo

- (id)nc_settingsIconImage
{
  v3 = [(BBSectionInfo *)self icon];
  v4 = [v3 _bestVariantForFormat:1];
  v5 = [v4 applicationIdentifier];

  if (v5)
  {
    goto LABEL_16;
  }

  v6 = [v4 uti];

  if (v6 || [(BBSectionInfo *)self _notificationSettings_sectionIdentifierIconDenyListContainsIdentifier])
  {
    goto LABEL_16;
  }

  v7 = [v4 imageData];

  if (v7)
  {
    v8 = [(BBSectionInfo *)self iconData];
    v7 = [UIImage imageWithData:v8];
  }

  v9 = [v4 bundlePath];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 imageName];

    if (v11)
    {
      v12 = [v4 bundlePath];
      v13 = [NSBundle bundleWithPath:v12];

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = [v4 imageName];
      v15 = [UIImage imageNamed:v14 inBundle:v13];

      v7 = v14;
LABEL_12:

      v7 = v15;
      goto LABEL_13;
    }
  }

  v16 = [v4 imagePath];

  if (v16)
  {
    v13 = [v4 imagePath];
    v15 = [UIImage imageWithContentsOfFile:v13];
    goto LABEL_12;
  }

LABEL_14:
  if (!v7 || ([(BBSectionInfo *)self _scaledImageForImage:v7], v17 = objc_claimAutoreleasedReturnValue(), v7, !v17))
  {
LABEL_16:
    v18 = [(BBSectionInfo *)self sectionID];
    v19 = [v18 isEqualToString:@"com.apple.Passbook"];

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

- (id)_scaledImageForImage:(id)a3
{
  v3 = a3;
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
  v18 = [v3 CGImage];
  [v3 scale];
  v19 = [v17 initWithCGImage:v18 scale:?];
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
      v25 = [v23 CGImage];
      v26 = +[UIScreen mainScreen];
      [v26 scale];
      v27 = [UIImage imageWithCGImage:v25 scale:0 orientation:?];
    }

    else
    {
      v27 = v3;
    }
  }

  else
  {
    v27 = v3;
  }

  return v27;
}

- (BOOL)_notificationSettings_iconWouldUseApplicationIdentifierForFormat:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self icon];
  v5 = [v4 _bestVariantForFormat:a3];

  v6 = [v5 imageData];
  v7 = [v5 imagePath];
  v8 = [v5 imageName];
  v9 = [v5 bundlePath];
  v10 = [v5 applicationIdentifier];
  v11 = ![v6 length] && (!v8 || !v9) && !objc_msgSend(v7, "length") && objc_msgSend(v10, "length") != 0;

  return v11;
}

- (BOOL)_notificationSettings_sectionIdentifierIconDenyListContainsIdentifier
{
  v3 = [(BBSectionInfo *)self sectionID];
  if (qword_5C598 != -1)
  {
    sub_32BB4();
  }

  if ([qword_5C590 containsObject:v3])
  {
    v4 = ![(BBSectionInfo *)self _notificationSettings_iconWouldUseApplicationIdentifierForFormat:1];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isEqualToSection:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self sectionID];
  v6 = [v4 sectionID];
  v23 = [v5 isEqualToString:v6];

  v22 = [(BBSectionInfo *)self notificationCenterSetting];
  v21 = [v4 notificationCenterSetting];
  v20 = [(BBSectionInfo *)self lockScreenSetting];
  v19 = [v4 lockScreenSetting];
  v7 = [(BBSectionInfo *)self alertType];
  v8 = [v4 alertType];
  v9 = [(BBSectionInfo *)self contentPreviewSetting];
  v10 = [v4 contentPreviewSetting];
  v11 = [(BBSectionInfo *)self carPlaySetting];
  v12 = [v4 carPlaySetting];
  v18 = [(BBSectionInfo *)self remoteNotificationsSetting];
  v13 = [v4 remoteNotificationsSetting];
  v14 = [(BBSectionInfo *)self criticalAlertSetting];
  v15 = [v4 criticalAlertSetting];

  result = 0;
  if (v23 && v22 == v21 && v20 == v19 && v7 == v8 && v9 == v10 && v11 == v12)
  {
    return v18 == v13 && v14 == v15;
  }

  return result;
}

@end