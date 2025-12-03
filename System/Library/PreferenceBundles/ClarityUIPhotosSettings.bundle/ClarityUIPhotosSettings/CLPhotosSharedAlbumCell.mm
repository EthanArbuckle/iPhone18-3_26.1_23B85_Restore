@interface CLPhotosSharedAlbumCell
- (CLPhotosSharedAlbumCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CLPhotosSharedAlbumCell

- (CLPhotosSharedAlbumCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = CLPhotosSharedAlbumCell;
  return [(CLPhotosSharedAlbumCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CLPhotosSharedAlbumCell;
  specifierCopy = specifier;
  [(CLPhotosSharedAlbumCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"sharedAlbumIdentifier", v8.receiver, v8.super_class}];

  v6 = [_TtC23ClarityUIPhotosSettings23CLPhotosInterfaceHelper createRowCellContentForSharedAlbum:v5];
  contentConfiguration = [v6 contentConfiguration];

  [(CLPhotosSharedAlbumCell *)self setContentConfiguration:contentConfiguration];
}

@end