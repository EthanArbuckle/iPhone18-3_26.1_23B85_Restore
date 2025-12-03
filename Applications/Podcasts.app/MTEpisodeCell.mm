@interface MTEpisodeCell
+ (CGSize)artworkSizeForStyle:(unint64_t)style;
+ (double)estimatedHeightForWidth:(double)width showsArtwork:(BOOL)artwork;
- (BOOL)isCurrentPlayerItem;
- (BOOL)isExpanded;
- (BOOL)shouldShowNowPlaying;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTColorTheme)colorTheme;
- (MTEpisode)episode;
- (MTEpisodeActionController)actionController;
- (MTEpisodeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTEpisodeCellDelegate)delegate;
- (MTEpisodeLockup)episodeLockup;
- (unint64_t)style;
- (void)dismissActionSheetsAndPopovers;
- (void)fixEmptyTextContainers;
- (void)layoutSubviews;
- (void)lockup:(id)lockup moreButtonTapped:(id)tapped;
- (void)lockupDidChangeSize:(id)size;
- (void)prepareForReuse;
- (void)setColorTheme:(id)theme;
- (void)setCurrentPlayerItem:(BOOL)item;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEpisode:(id)episode;
- (void)setExpanded:(BOOL)expanded;
- (void)setShouldShowNowPlaying:(BOOL)playing;
- (void)setStyle:(unint64_t)style;
- (void)setupCell;
- (void)updateActionSheetsAndPopovers;
- (void)updateCurrentRowHeight;
@end

@implementation MTEpisodeCell

+ (double)estimatedHeightForWidth:(double)width showsArtwork:(BOOL)artwork
{
  v6 = [self styleForWidth:artwork showsArtwork:?];

  [self estimatedHeightForWidth:v6 style:width];
  return result;
}

+ (CGSize)artworkSizeForStyle:(unint64_t)style
{
  [MTEpisodeLockup artworkSizeForStyle:style];
  result.height = v4;
  result.width = v3;
  return result;
}

- (MTEpisodeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTEpisodeCell;
  v4 = [(MTEpisodeCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTEpisodeCell *)v4 setupCell];
  }

  return v5;
}

- (void)setupCell
{
  [(MTEpisodeCell *)self setClipsToBounds:1];
  contentView = [(MTEpisodeCell *)self contentView];
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [contentView addSubview:episodeLockup];
}

- (MTEpisodeLockup)episodeLockup
{
  episodeLockup = self->_episodeLockup;
  if (!episodeLockup)
  {
    v4 = objc_opt_new();
    v5 = self->_episodeLockup;
    self->_episodeLockup = v4;

    [(MTEpisodeLockup *)self->_episodeLockup setDelegate:self];
    episodeLockup = self->_episodeLockup;
  }

  return episodeLockup;
}

- (void)setStyle:(unint64_t)style
{
  if ([(MTEpisodeCell *)self style]!= style)
  {
    episodeLockup = [(MTEpisodeCell *)self episodeLockup];
    [episodeLockup setStyle:style];

    [(MTEpisodeCell *)self setNeedsLayout];
  }
}

- (unint64_t)style
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  style = [episodeLockup style];

  return style;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(MTEpisodeCell *)self isEditing]!= editing)
  {
    episodeLockup = [(MTEpisodeCell *)self episodeLockup];
    [episodeLockup setEditing:editingCopy];

    v8.receiver = self;
    v8.super_class = MTEpisodeCell;
    [(MTEpisodeCell *)&v8 setEditing:editingCopy animated:animatedCopy];
    [(MTEpisodeCell *)self updateOverlayForIsNew];
  }
}

- (void)updateCurrentRowHeight
{
  [(MTEpisodeCell *)self bounds];
  v4 = v3;
  v6 = v5;
  [(MTEpisodeCell *)self sizeThatFits:v3, 1.79769313e308];
  if (v4 != v8 || v6 != v7)
  {
    v10 = v7;
    _tableView = [(MTEpisodeCell *)self _tableView];
    v13 = [_tableView indexPathForCell:self];

    if (v13)
    {
      _tableView2 = [(MTEpisodeCell *)self _tableView];
      [_tableView2 _setHeight:v13 forRowAtIndexPath:v10];
    }

    [(MTEpisodeCell *)self setNeedsLayout];
  }
}

- (void)setEpisode:(id)episode
{
  episodeCopy = episode;
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup setEpisode:episodeCopy];

  [(MTEpisodeCell *)self updateOverlayForIsNew];
}

- (MTEpisode)episode
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  episode = [episodeLockup episode];

  return episode;
}

- (void)setColorTheme:(id)theme
{
  themeCopy = theme;
  colorTheme = [(MTEpisodeCell *)self colorTheme];
  if (colorTheme != themeCopy)
  {
    colorTheme2 = [(MTEpisodeCell *)self colorTheme];
    v6 = [colorTheme2 isEqual:themeCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    episodeLockup = [(MTEpisodeCell *)self episodeLockup];
    [episodeLockup setColorTheme:themeCopy];

    v8 = [UIColor backgroundColorForTheme:themeCopy];
    [(MTEpisodeCell *)self setBackgroundColor:v8];

    colorTheme = [UIColor selectedBackgroundColorForTheme:themeCopy];
    v9 = objc_opt_new();
    [v9 setBackgroundColor:colorTheme];
    [(MTEpisodeCell *)self setMultipleSelectionBackgroundView:v9];
    [(MTEpisodeCell *)self setSelectionTintColor:colorTheme];
  }

LABEL_5:
}

- (MTColorTheme)colorTheme
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  colorTheme = [episodeLockup colorTheme];

  return colorTheme;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup setExpanded:expandedCopy];

  [(MTEpisodeCell *)self setNeedsLayout];
}

- (BOOL)isExpanded
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  isExpanded = [episodeLockup isExpanded];

  return isExpanded;
}

- (void)setCurrentPlayerItem:(BOOL)item
{
  itemCopy = item;
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup setCurrentPlayerItem:itemCopy];
}

- (BOOL)isCurrentPlayerItem
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  isCurrentPlayerItem = [episodeLockup isCurrentPlayerItem];

  return isCurrentPlayerItem;
}

- (BOOL)shouldShowNowPlaying
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  shouldShowNowPlaying = [episodeLockup shouldShowNowPlaying];

  return shouldShowNowPlaying;
}

- (void)setShouldShowNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup setShouldShowNowPlaying:playingCopy];
}

- (MTEpisodeActionController)actionController
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  actionController = [episodeLockup actionController];

  return actionController;
}

- (void)dismissActionSheetsAndPopovers
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup dismissActionSheetsAndPopovers];
}

- (void)updateActionSheetsAndPopovers
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup updateActionSheetsAndPopovers];
}

- (void)fixEmptyTextContainers
{
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup fixEmptyTextContainers];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MTEpisodeCell;
  [(MTEpisodeCell *)&v5 prepareForReuse];
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup prepareForReuse];

  episodeLockup2 = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup2 setDelegate:self];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTEpisodeCell;
  [(MTEpisodeCell *)&v13 layoutSubviews];
  contentView = [(MTEpisodeCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(MTEpisodeCell *)self layoutManager:fits.width];
  [v5 contentRectForCell:self forState:-[MTEpisodeCell currentStateMask](self rowWidth:{"currentStateMask"), width}];
  v7 = v6;

  episodeLockup = [(MTEpisodeCell *)self episodeLockup];
  [episodeLockup sizeThatFits:{v7, 1.79769313e308}];
  v10 = v9;

  v11 = v10 + kMTCollectionViewInterLineSpacing;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)lockup:(id)lockup moreButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(MTEpisodeCell *)self delegate];
  [delegate cell:self moreButtonTapped:tappedCopy];
}

- (void)lockupDidChangeSize:(id)size
{
  delegate = [(MTEpisodeCell *)self delegate];
  [delegate cellDidChangeSize:self];
}

- (MTEpisodeCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end