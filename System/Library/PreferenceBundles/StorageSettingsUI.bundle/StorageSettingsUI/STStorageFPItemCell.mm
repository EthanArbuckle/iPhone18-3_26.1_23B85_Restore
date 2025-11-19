@interface STStorageFPItemCell
+ (id)specifierForFPItem:(id)a3 recurseIntoFolders:(BOOL)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageFPItemCell

+ (id)specifierForFPItem:(id)a3 recurseIntoFolders:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4 && ([v5 childItemCount], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "longValue"), v7, v8 >= 1))
  {
    v9 = objc_opt_class();
    v10 = 2;
  }

  else
  {
    v9 = 0;
    v10 = -1;
  }

  v11 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:v9 cell:v10 edit:0];
  [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v11 setProperty:v6 forKey:STStorageFPItemKey];
  v12 = [v6 itemIdentifier];
  [v11 setIdentifier:v12];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v11;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStorageFPItemCell;
  [(STStorageFPItemCell *)&v18 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:STStorageFPItemKey];
  v6 = [QLThumbnailGenerationRequest alloc];
  ScreenScale();
  v8 = [v6 initWithFPItem:v5 size:-1 scale:29.0 representationTypes:{29.0, v7}];
  [v8 setIconMode:1];
  objc_initWeak(&location, self);
  v9 = +[QLThumbnailGenerator sharedGenerator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_E698;
  v15[3] = &unk_AA9E8;
  objc_copyWeak(&v16, &location);
  [v9 generateBestRepresentationForRequest:v8 completionHandler:v15];

  v10 = [v5 displayName];
  [(STStorageFPItemCell *)self setTitle:v10];

  v11 = [v5 documentSize];
  -[STStorageFPItemCell setSize:](self, "setSize:", [v11 longLongValue]);

  v12 = [v5 childItemCount];
  if ([v12 intValue] < 1)
  {
    v13 = [v5 contentModificationDate];
    STFormattedShortDate();
  }

  else
  {
    v13 = STLocalizedString(@"ITEMS_FMT");
    +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [v12 longValue]);
  }
  v14 = ;
  [(STStorageFPItemCell *)self setInfo:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end