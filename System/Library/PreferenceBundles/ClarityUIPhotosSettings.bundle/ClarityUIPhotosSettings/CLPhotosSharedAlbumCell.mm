@interface CLPhotosSharedAlbumCell
- (CLPhotosSharedAlbumCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CLPhotosSharedAlbumCell

- (CLPhotosSharedAlbumCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLPhotosSharedAlbumCell;
  return [(CLPhotosSharedAlbumCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLPhotosSharedAlbumCell;
  v4 = a3;
  [(CLPhotosSharedAlbumCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"sharedAlbumIdentifier", v8.receiver, v8.super_class}];

  v6 = [_TtC23ClarityUIPhotosSettings23CLPhotosInterfaceHelper createRowCellContentForSharedAlbum:v5];
  v7 = [v6 contentConfiguration];

  [(CLPhotosSharedAlbumCell *)self setContentConfiguration:v7];
}

@end