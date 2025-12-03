@interface MTPodcastPlaylistCell
+ (CGSize)artworkSizeForViewWidth:(double)width;
- (MTPodcastPlaylistCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAdded:(BOOL)added;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation MTPodcastPlaylistCell

- (MTPodcastPlaylistCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTPodcastPlaylistCell;
  v4 = [(MTPodcastCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTPodcastPlaylistCell *)v4 setClipsToBounds:1];
  }

  return v5;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTPodcastPlaylistCell;
  [(MTGenericCell *)&v7 layoutSubviews];
  if (self->_disabledView)
  {
    [(MTPodcastPlaylistCell *)self bringSubviewToFront:?];
    disabledView = self->_disabledView;
    [(MTPodcastPlaylistCell *)self bounds];
    [(UIView *)disabledView setFrame:?];
    v4 = self->_disabledView;
    v5 = +[UIColor systemBackgroundColor];
    v6 = [v5 colorWithAlphaComponent:0.5];
    [(UIView *)v4 setBackgroundColor:v6];
  }
}

+ (CGSize)artworkSizeForViewWidth:(double)width
{
  v3 = 44.0;
  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setAdded:(BOOL)added
{
  self->_added = added;
  if (added)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(MTPodcastPlaylistCell *)self setAccessoryType:v3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MTPodcastPlaylistCell;
  [(MTGenericCell *)&v3 prepareForReuse];
  [(MTPodcastPlaylistCell *)self setAdded:0];
  [(MTPodcastPlaylistCell *)self setEnabled:1];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  disabledView = self->_disabledView;
  if (enabled)
  {
    if (disabledView)
    {
      [(UIView *)disabledView removeFromSuperview];
      v6 = self->_disabledView;
      self->_disabledView = 0;
    }
  }

  else if (!disabledView)
  {
    v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v8 = self->_disabledView;
    self->_disabledView = v7;

    [(MTPodcastPlaylistCell *)self addSubview:self->_disabledView];
    [(MTPodcastPlaylistCell *)self setNeedsLayout];
  }

  [(MTPodcastPlaylistCell *)self setUserInteractionEnabled:enabledCopy];
}

@end