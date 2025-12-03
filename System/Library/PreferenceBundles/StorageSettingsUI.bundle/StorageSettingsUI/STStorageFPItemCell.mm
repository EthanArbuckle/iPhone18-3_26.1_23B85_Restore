@interface STStorageFPItemCell
+ (id)specifierForFPItem:(id)item recurseIntoFolders:(BOOL)folders;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageFPItemCell

+ (id)specifierForFPItem:(id)item recurseIntoFolders:(BOOL)folders
{
  foldersCopy = folders;
  itemCopy = item;
  v6 = itemCopy;
  if (foldersCopy && ([itemCopy childItemCount], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "longValue"), v7, v8 >= 1))
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
  itemIdentifier = [v6 itemIdentifier];
  [v11 setIdentifier:itemIdentifier];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v11;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = STStorageFPItemCell;
  [(STStorageFPItemCell *)&v18 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:STStorageFPItemKey];
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

  displayName = [v5 displayName];
  [(STStorageFPItemCell *)self setTitle:displayName];

  documentSize = [v5 documentSize];
  -[STStorageFPItemCell setSize:](self, "setSize:", [documentSize longLongValue]);

  childItemCount = [v5 childItemCount];
  if ([childItemCount intValue] < 1)
  {
    contentModificationDate = [v5 contentModificationDate];
    STFormattedShortDate();
  }

  else
  {
    contentModificationDate = STLocalizedString(@"ITEMS_FMT");
    +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", contentModificationDate, [childItemCount longValue]);
  }
  v14 = ;
  [(STStorageFPItemCell *)self setInfo:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end