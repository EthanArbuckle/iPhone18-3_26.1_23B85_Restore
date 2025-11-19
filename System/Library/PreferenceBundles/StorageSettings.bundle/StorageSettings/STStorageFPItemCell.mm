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
  if (v4)
  {
    v7 = [v5 childItemCount];
    v8 = [v7 longValue];

    if (v8 <= 0)
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
  objc_initWeak(&location, self);
  v9 = +[QLThumbnailGenerator sharedGenerator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1C8C0;
  v15[3] = &unk_2D250;
  objc_copyWeak(&v16, &location);
  [v9 generateBestRepresentationForRequest:v8 completionHandler:v15];

  v10 = [v5 displayName];
  [(STStorageFPItemCell *)self setTitle:v10];

  v11 = [v5 documentSize];
  -[STStorageFPItemCell setSize:](self, "setSize:", [v11 longLongValue]);

  v12 = [v5 childItemCount];
  if (v12)
  {
    v13 = STStorageLocStr(@"ITEMS_FMT");
    +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [v12 longValue]);
  }

  else
  {
    v13 = [v5 contentModificationDate];
    STFormattedShortDate();
  }
  v14 = ;
  [(STStorageFPItemCell *)self setInfo:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end