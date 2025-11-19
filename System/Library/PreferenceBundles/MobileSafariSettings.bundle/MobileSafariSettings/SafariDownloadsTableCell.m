@interface SafariDownloadsTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SafariDownloadsTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SafariDownloadsTableCell;
  [(SafariDownloadsTableCell *)&v20 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"providerDomain"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"providerItem"];

  v9 = [(SafariDownloadsTableCell *)self defaultContentConfiguration];
  if (v8)
  {
    v10 = [v4 propertyForKey:PSAccessoryKey];
    if (![v10 isEqual:&off_90B08])
    {
LABEL_5:

      goto LABEL_6;
    }

    v11 = [v8 itemID];
    v12 = [v6 identifier];
    v13 = [FPItemID rootItemIDWithProviderDomainID:v12];
    v14 = [v11 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v10 = [v8 displayName];
      [v9 setSecondaryText:v10];
      goto LABEL_5;
    }
  }

LABEL_6:
  v15 = DOCLocalizedDisplayName();
  [v9 setText:v15];

  v16 = [DOCDocumentSource iconForFileProvider:v6 size:0];
  [v9 setImage:v16];

  v17 = [v9 imageProperties];
  [v17 setReservedLayoutSize:{30.0, 30.0}];

  v18 = +[UIColor secondaryLabelColor];
  v19 = [v9 secondaryTextProperties];
  [v19 setColor:v18];

  [(SafariDownloadsTableCell *)self setContentConfiguration:v9];
}

@end