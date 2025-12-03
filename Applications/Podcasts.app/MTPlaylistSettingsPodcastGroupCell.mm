@interface MTPlaylistSettingsPodcastGroupCell
- (MTPlaylistSettingsPodcastGroupCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation MTPlaylistSettingsPodcastGroupCell

- (MTPlaylistSettingsPodcastGroupCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = MTPlaylistSettingsPodcastGroupCell;
  v4 = [(MTTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MTArtworkView);
    [(MTPlaylistSettingsPodcastGroupCell *)v4 setArtworkView:v5];

    contentView = [(MTPlaylistSettingsPodcastGroupCell *)v4 contentView];
    artworkView = [(MTPlaylistSettingsPodcastGroupCell *)v4 artworkView];
    [contentView addSubview:artworkView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = MTPlaylistSettingsPodcastGroupCell;
  [(MTTableViewCell *)&v44 layoutSubviews];
  contentView = [(MTPlaylistSettingsPodcastGroupCell *)self contentView];
  [contentView bounds];
  v38 = v5;
  v39 = v4;
  v37 = v6;
  rect = v7;

  effectiveUserInterfaceLayoutDirection = [(MTPlaylistSettingsPodcastGroupCell *)self effectiveUserInterfaceLayoutDirection];
  [(MTPlaylistSettingsPodcastGroupCell *)self layoutMargins];
  +[MTPlaylistSettingsViewController podcastImageSize];
  [(MTPlaylistSettingsPodcastGroupCell *)self bounds];
  IMRectCenteredYInRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  textLabel = [(MTPlaylistSettingsPodcastGroupCell *)self textLabel];
  [textLabel frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v45.origin.x = v10;
  v42 = v14;
  v43 = v12;
  v45.origin.y = v12;
  v45.size.width = v14;
  v45.size.height = v16;
  v24 = CGRectGetMaxX(v45) + 14.0;
  textLabel2 = [(MTPlaylistSettingsPodcastGroupCell *)self textLabel];
  [textLabel2 frame];
  v27 = v21 - (v24 - v26);

  v46.origin.x = v24;
  v46.origin.y = v19;
  v46.size.width = v27;
  v46.size.height = v23;
  MinX = CGRectGetMinX(v46);
  v29 = MinX;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v36 = MinX;
    v47.origin.x = v39;
    v47.origin.y = v38;
    v47.size.width = v37;
    v47.size.height = rect;
    v41 = v16;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = v10;
    v48.origin.y = v43;
    v48.size.width = v42;
    v48.size.height = v41;
    v31 = MaxX - CGRectGetWidth(v48);
    v49.origin.x = v10;
    v49.origin.y = v43;
    v49.size.width = v42;
    v49.size.height = v41;
    v10 = v31 - CGRectGetMinX(v49);
    v50.origin.x = v39;
    v50.origin.y = v38;
    v29 = v36;
    v50.size.width = v37;
    v50.size.height = rect;
    v32 = CGRectGetMaxX(v50);
    v51.origin.x = v24;
    v51.origin.y = v19;
    v51.size.height = v23;
    v51.size.width = v27;
    v33 = v32 - CGRectGetWidth(v51);
    v52.origin.x = v24;
    v52.origin.y = v19;
    v52.size.height = v23;
    v52.size.width = v27;
    v24 = v33 - CGRectGetMinX(v52);
    v16 = v41;
  }

  textLabel3 = [(MTPlaylistSettingsPodcastGroupCell *)self textLabel];
  [textLabel3 setFrame:{v24, v19, v27, v23}];

  artworkView = [(MTPlaylistSettingsPodcastGroupCell *)self artworkView];
  [artworkView setFrame:{v10, v43, v42, v16}];

  [(MTPlaylistSettingsPodcastGroupCell *)self setSeparatorInset:0.0, v29, 0.0, 0.0];
}

@end