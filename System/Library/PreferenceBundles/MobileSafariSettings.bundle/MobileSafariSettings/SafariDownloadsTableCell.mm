@interface SafariDownloadsTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SafariDownloadsTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = SafariDownloadsTableCell;
  [(SafariDownloadsTableCell *)&v20 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"providerDomain"];

  userInfo2 = [specifierCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"providerItem"];

  defaultContentConfiguration = [(SafariDownloadsTableCell *)self defaultContentConfiguration];
  if (v8)
  {
    displayName = [specifierCopy propertyForKey:PSAccessoryKey];
    if (![displayName isEqual:&off_90B08])
    {
LABEL_5:

      goto LABEL_6;
    }

    itemID = [v8 itemID];
    identifier = [v6 identifier];
    v13 = [FPItemID rootItemIDWithProviderDomainID:identifier];
    v14 = [itemID isEqual:v13];

    if ((v14 & 1) == 0)
    {
      displayName = [v8 displayName];
      [defaultContentConfiguration setSecondaryText:displayName];
      goto LABEL_5;
    }
  }

LABEL_6:
  v15 = DOCLocalizedDisplayName();
  [defaultContentConfiguration setText:v15];

  v16 = [DOCDocumentSource iconForFileProvider:v6 size:0];
  [defaultContentConfiguration setImage:v16];

  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{30.0, 30.0}];

  v18 = +[UIColor secondaryLabelColor];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:v18];

  [(SafariDownloadsTableCell *)self setContentConfiguration:defaultContentConfiguration];
}

@end