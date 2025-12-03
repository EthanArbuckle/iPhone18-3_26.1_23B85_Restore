@interface HOSHomeAppReinstallPreferencesCell
+ (id)cloudDownloadImageForTintColor:(id)color outlineColor:(id)outlineColor traitCollection:(id)collection;
+ (id)specifier;
- (void)_downloadHomeApp:(id)app;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HOSHomeAppReinstallPreferencesCell

+ (id)specifier
{
  v2 = NSStringFromClass(self);
  v3 = [PSSpecifier preferenceSpecifierNamed:v2 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v4 = [NSNumber numberWithInteger:88];
  [v3 setProperty:v4 forKey:PSTableCellHeightKey];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOSHomeAppReinstallPreferencesCellTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  [v3 setProperty:v6 forKey:PSTitleKey];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"HOSHomeAppReinstallPreferencesCellDescription" value:&stru_108D8 table:@"HOSLocalizable"];
  [v3 setProperty:v8 forKey:PSTableCellSubtitleTextKey];

  v9 = HFHomeAppBundleID();
  v10 = [UIImage _applicationIconImageForBundleIdentifier:v9 format:2];

  [v3 setProperty:v10 forKey:PSIconImageKey];
  v11 = +[HFHomeAppInstallController sharedInstance];
  [v3 setProperty:v11 forKey:HOSHomeAppReinstallPreferencesCellHomeAppInstallControllerSpecifierKey];

  return v3;
}

+ (id)cloudDownloadImageForTintColor:(id)color outlineColor:(id)outlineColor traitCollection:(id)collection
{
  colorCopy = color;
  outlineColorCopy = outlineColor;
  collectionCopy = collection;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [UIImage imageNamed:@"UniversalAddControlDownloadArrow" inBundle:v10 compatibleWithTraitCollection:collectionCopy];
  v12 = [v11 _flatImageWithColor:colorCopy];

  v13 = [UIImage imageNamed:@"UniversalAddControlDownloadCloud" inBundle:v10 compatibleWithTraitCollection:collectionCopy];
  v14 = [v13 _flatImageWithColor:colorCopy];

  [v12 size];
  v16 = v15;
  v18 = v17;
  [v14 size];
  if (v16 < v19)
  {
    v16 = v19;
  }

  if (v18 < v20)
  {
    v18 = v20;
  }

  v21 = objc_opt_new();
  [v12 scale];
  [v21 setScale:?];
  v22 = [[UIGraphicsImageRenderer alloc] initWithSize:v21 format:{v16, v18}];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_454C;
  v36 = sub_455C;
  v37 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_4564;
  v28[3] = &unk_10778;
  v23 = v12;
  v29 = v23;
  v24 = v14;
  v30 = v24;
  v31 = &v32;
  v25 = [v22 imageWithActions:v28];
  v26 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v26;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v5 _scaledValueForValue:15.0];
  v6 = [UIFont boldSystemFontOfSize:?];
  textLabel = [(HOSHomeAppReinstallPreferencesCell *)self textLabel];
  [textLabel setFont:v6];

  v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];

  [v21 _scaledValueForValue:13.0];
  v8 = [UIFont systemFontOfSize:?];
  detailTextLabel = [(HOSHomeAppReinstallPreferencesCell *)self detailTextLabel];
  [detailTextLabel setFont:v8];

  v10 = [specifierCopy propertyForKey:PSTitleKey];
  textLabel2 = [(HOSHomeAppReinstallPreferencesCell *)self textLabel];
  [textLabel2 setText:v10];

  v12 = [specifierCopy propertyForKey:PSTableCellSubtitleTextKey];
  detailTextLabel2 = [(HOSHomeAppReinstallPreferencesCell *)self detailTextLabel];
  [detailTextLabel2 setText:v12];

  v14 = [specifierCopy propertyForKey:PSIconImageKey];
  imageView = [(HOSHomeAppReinstallPreferencesCell *)self imageView];
  [imageView setImage:v14];

  v16 = [specifierCopy propertyForKey:HOSHomeAppReinstallPreferencesCellHomeAppInstallControllerSpecifierKey];

  [(HOSHomeAppReinstallPreferencesCell *)self setInstallController:v16];
  v17 = objc_opt_new();
  [(HOSHomeAppReinstallPreferencesCell *)self setDownloadControl:v17];

  [(HOSHomeAppReinstallPreferencesCell *)self _updateDownloadControl:0];
  downloadControl = [(HOSHomeAppReinstallPreferencesCell *)self downloadControl];
  [downloadControl addTarget:self action:"_downloadHomeApp:" forEvents:64];

  downloadControl2 = [(HOSHomeAppReinstallPreferencesCell *)self downloadControl];
  [downloadControl2 sizeToFit];

  downloadControl3 = [(HOSHomeAppReinstallPreferencesCell *)self downloadControl];
  [(HOSHomeAppReinstallPreferencesCell *)self setAccessoryView:downloadControl3];

  [(HOSHomeAppReinstallPreferencesCell *)self setSelectionStyle:0];
}

- (void)_downloadHomeApp:(id)app
{
  installController = [(HOSHomeAppReinstallPreferencesCell *)self installController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4B38;
  v10[3] = &unk_107A0;
  v10[4] = self;
  v6 = [installController downloadHomeAppWithUpdateBlock:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4B48;
  v9[3] = &unk_107C8;
  v9[4] = self;
  v9[5] = a2;
  v7 = [v6 addFailureBlock:v9];
  v8 = [v7 addSuccessBlock:&stru_10808];
}

@end