@interface MTEpisodeCell
+ (CGSize)artworkSizeForStyle:(unint64_t)a3;
+ (double)estimatedHeightForWidth:(double)a3 showsArtwork:(BOOL)a4;
- (BOOL)isCurrentPlayerItem;
- (BOOL)isExpanded;
- (BOOL)shouldShowNowPlaying;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTColorTheme)colorTheme;
- (MTEpisode)episode;
- (MTEpisodeActionController)actionController;
- (MTEpisodeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (MTEpisodeCellDelegate)delegate;
- (MTEpisodeLockup)episodeLockup;
- (unint64_t)style;
- (void)dismissActionSheetsAndPopovers;
- (void)fixEmptyTextContainers;
- (void)layoutSubviews;
- (void)lockup:(id)a3 moreButtonTapped:(id)a4;
- (void)lockupDidChangeSize:(id)a3;
- (void)prepareForReuse;
- (void)setColorTheme:(id)a3;
- (void)setCurrentPlayerItem:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEpisode:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setShouldShowNowPlaying:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setupCell;
- (void)updateActionSheetsAndPopovers;
- (void)updateCurrentRowHeight;
@end

@implementation MTEpisodeCell

+ (double)estimatedHeightForWidth:(double)a3 showsArtwork:(BOOL)a4
{
  v6 = [a1 styleForWidth:a4 showsArtwork:?];

  [a1 estimatedHeightForWidth:v6 style:a3];
  return result;
}

+ (CGSize)artworkSizeForStyle:(unint64_t)a3
{
  [MTEpisodeLockup artworkSizeForStyle:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (MTEpisodeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTEpisodeCell;
  v4 = [(MTEpisodeCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v4 = [(MTEpisodeCell *)self contentView];
  v3 = [(MTEpisodeCell *)self episodeLockup];
  [v4 addSubview:v3];
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

- (void)setStyle:(unint64_t)a3
{
  if ([(MTEpisodeCell *)self style]!= a3)
  {
    v5 = [(MTEpisodeCell *)self episodeLockup];
    [v5 setStyle:a3];

    [(MTEpisodeCell *)self setNeedsLayout];
  }
}

- (unint64_t)style
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 style];

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MTEpisodeCell *)self isEditing]!= a3)
  {
    v7 = [(MTEpisodeCell *)self episodeLockup];
    [v7 setEditing:v5];

    v8.receiver = self;
    v8.super_class = MTEpisodeCell;
    [(MTEpisodeCell *)&v8 setEditing:v5 animated:v4];
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
    v11 = [(MTEpisodeCell *)self _tableView];
    v13 = [v11 indexPathForCell:self];

    if (v13)
    {
      v12 = [(MTEpisodeCell *)self _tableView];
      [v12 _setHeight:v13 forRowAtIndexPath:v10];
    }

    [(MTEpisodeCell *)self setNeedsLayout];
  }
}

- (void)setEpisode:(id)a3
{
  v4 = a3;
  v5 = [(MTEpisodeCell *)self episodeLockup];
  [v5 setEpisode:v4];

  [(MTEpisodeCell *)self updateOverlayForIsNew];
}

- (MTEpisode)episode
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 episode];

  return v3;
}

- (void)setColorTheme:(id)a3
{
  v10 = a3;
  v4 = [(MTEpisodeCell *)self colorTheme];
  if (v4 != v10)
  {
    v5 = [(MTEpisodeCell *)self colorTheme];
    v6 = [v5 isEqual:v10];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [(MTEpisodeCell *)self episodeLockup];
    [v7 setColorTheme:v10];

    v8 = [UIColor backgroundColorForTheme:v10];
    [(MTEpisodeCell *)self setBackgroundColor:v8];

    v4 = [UIColor selectedBackgroundColorForTheme:v10];
    v9 = objc_opt_new();
    [v9 setBackgroundColor:v4];
    [(MTEpisodeCell *)self setMultipleSelectionBackgroundView:v9];
    [(MTEpisodeCell *)self setSelectionTintColor:v4];
  }

LABEL_5:
}

- (MTColorTheme)colorTheme
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 colorTheme];

  return v3;
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTEpisodeCell *)self episodeLockup];
  [v5 setExpanded:v3];

  [(MTEpisodeCell *)self setNeedsLayout];
}

- (BOOL)isExpanded
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 isExpanded];

  return v3;
}

- (void)setCurrentPlayerItem:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTEpisodeCell *)self episodeLockup];
  [v4 setCurrentPlayerItem:v3];
}

- (BOOL)isCurrentPlayerItem
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 isCurrentPlayerItem];

  return v3;
}

- (BOOL)shouldShowNowPlaying
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 shouldShowNowPlaying];

  return v3;
}

- (void)setShouldShowNowPlaying:(BOOL)a3
{
  v3 = a3;
  v4 = [(MTEpisodeCell *)self episodeLockup];
  [v4 setShouldShowNowPlaying:v3];
}

- (MTEpisodeActionController)actionController
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  v3 = [v2 actionController];

  return v3;
}

- (void)dismissActionSheetsAndPopovers
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  [v2 dismissActionSheetsAndPopovers];
}

- (void)updateActionSheetsAndPopovers
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  [v2 updateActionSheetsAndPopovers];
}

- (void)fixEmptyTextContainers
{
  v2 = [(MTEpisodeCell *)self episodeLockup];
  [v2 fixEmptyTextContainers];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MTEpisodeCell;
  [(MTEpisodeCell *)&v5 prepareForReuse];
  v3 = [(MTEpisodeCell *)self episodeLockup];
  [v3 prepareForReuse];

  v4 = [(MTEpisodeCell *)self episodeLockup];
  [v4 setDelegate:self];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTEpisodeCell;
  [(MTEpisodeCell *)&v13 layoutSubviews];
  v3 = [(MTEpisodeCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MTEpisodeCell *)self episodeLockup];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(MTEpisodeCell *)self layoutManager:a3.width];
  [v5 contentRectForCell:self forState:-[MTEpisodeCell currentStateMask](self rowWidth:{"currentStateMask"), width}];
  v7 = v6;

  v8 = [(MTEpisodeCell *)self episodeLockup];
  [v8 sizeThatFits:{v7, 1.79769313e308}];
  v10 = v9;

  v11 = v10 + kMTCollectionViewInterLineSpacing;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)lockup:(id)a3 moreButtonTapped:(id)a4
{
  v5 = a4;
  v6 = [(MTEpisodeCell *)self delegate];
  [v6 cell:self moreButtonTapped:v5];
}

- (void)lockupDidChangeSize:(id)a3
{
  v4 = [(MTEpisodeCell *)self delegate];
  [v4 cellDidChangeSize:self];
}

- (MTEpisodeCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end