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
  if (foldersCopy)
  {
    childItemCount = [itemCopy childItemCount];
    longValue = [childItemCount longValue];

    if (longValue <= 0)
    {
      v9 = -1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = -1;
  }

  v10 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:v9 edit:0];
  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v10 setProperty:v6 forKey:STStorageFPItemKey];

  return v10;
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
  objc_initWeak(&location, self);
  v9 = +[QLThumbnailGenerator sharedGenerator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C8C0;
  v15[3] = &unk_2D250;
  objc_copyWeak(&v16, &location);
  [v9 generateBestRepresentationForRequest:v8 completionHandler:v15];

  displayName = [v5 displayName];
  [(STStorageFPItemCell *)self setTitle:displayName];

  documentSize = [v5 documentSize];
  -[STStorageFPItemCell setSize:](self, "setSize:", [documentSize longLongValue]);

  childItemCount = [v5 childItemCount];
  if (childItemCount)
  {
    contentModificationDate = STStorageLocStr(@"ITEMS_FMT");
    +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", contentModificationDate, [childItemCount longValue]);
  }

  else
  {
    contentModificationDate = [v5 contentModificationDate];
    STFormattedShortDate();
  }
  v14 = ;
  [(STStorageFPItemCell *)self setInfo:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end