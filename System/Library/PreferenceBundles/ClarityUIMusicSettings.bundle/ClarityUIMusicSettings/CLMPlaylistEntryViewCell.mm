@interface CLMPlaylistEntryViewCell
- (CLMPlaylistEntryViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)setSpecifier:(id)a3;
- (void)updateCellContent;
@end

@implementation CLMPlaylistEntryViewCell

- (CLMPlaylistEntryViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v18.receiver = self;
  v18.super_class = CLMPlaylistEntryViewCell;
  v5 = [(CLMPlaylistEntryViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(CLMPlaylistEntryViewCell *)v5 updateCellContent];
    v7 = [(CLMPlaylistEntryViewCell *)v6 _tableView];
    [v7 contentInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CLMPlaylistEntryViewCell *)v6 traitCollection];
    [_TtC22ClarityUIMusicSettings18CLMInterfaceHelper separatorInsetsWith:v16 traitCollection:v9, v11, v13, v15];
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

- (void)setSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLMPlaylistEntryViewCell;
  [(CLMPlaylistEntryViewCell *)&v4 setSpecifier:a3];
  [(CLMPlaylistEntryViewCell *)self updateCellContent];
}

- (void)updateCellContent
{
  v3 = [(CLMPlaylistEntryViewCell *)self specifier];
  v4 = [CLMUtilities playlistEntryForSpecifier:v3];

  if (v4)
  {
    v5 = [_TtC22ClarityUIMusicSettings18CLMInterfaceHelper makePlaylistRowCellContentForPlaylistEntry:v4];
    v6 = [v5 contentConfiguration];

    [(CLMPlaylistEntryViewCell *)self setContentConfiguration:v6];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2F10;
    v7[3] = &unk_10A20;
    v8 = v4;
    [(CLMPlaylistEntryViewCell *)self setAccessibilityLabelBlock:v7];
  }
}

@end