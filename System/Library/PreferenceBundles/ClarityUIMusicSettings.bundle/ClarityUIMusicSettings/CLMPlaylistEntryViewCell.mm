@interface CLMPlaylistEntryViewCell
- (CLMPlaylistEntryViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)setSpecifier:(id)specifier;
- (void)updateCellContent;
@end

@implementation CLMPlaylistEntryViewCell

- (CLMPlaylistEntryViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v18.receiver = self;
  v18.super_class = CLMPlaylistEntryViewCell;
  v5 = [(CLMPlaylistEntryViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(CLMPlaylistEntryViewCell *)v5 updateCellContent];
    _tableView = [(CLMPlaylistEntryViewCell *)v6 _tableView];
    [_tableView contentInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    traitCollection = [(CLMPlaylistEntryViewCell *)v6 traitCollection];
    [_TtC22ClarityUIMusicSettings18CLMInterfaceHelper separatorInsetsWith:traitCollection traitCollection:v9, v11, v13, v15];
    [(CLMPlaylistEntryViewCell *)v6 setSeparatorInset:?];
  }

  return v6;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CLMPlaylistEntryViewCell;
  [(CLMPlaylistEntryViewCell *)&v3 prepareForReuse];
  [(CLMPlaylistEntryViewCell *)self setAccessoryType:0];
  [(CLMPlaylistEntryViewCell *)self setContentConfiguration:0];
}

- (void)setSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = CLMPlaylistEntryViewCell;
  [(CLMPlaylistEntryViewCell *)&v4 setSpecifier:specifier];
  [(CLMPlaylistEntryViewCell *)self updateCellContent];
}

- (void)updateCellContent
{
  specifier = [(CLMPlaylistEntryViewCell *)self specifier];
  v4 = [CLMUtilities playlistEntryForSpecifier:specifier];

  if (v4)
  {
    v5 = [_TtC22ClarityUIMusicSettings18CLMInterfaceHelper makePlaylistRowCellContentForPlaylistEntry:v4];
    contentConfiguration = [v5 contentConfiguration];

    [(CLMPlaylistEntryViewCell *)self setContentConfiguration:contentConfiguration];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2F10;
    v7[3] = &unk_10A20;
    v8 = v4;
    [(CLMPlaylistEntryViewCell *)self setAccessibilityLabelBlock:v7];
  }
}

@end