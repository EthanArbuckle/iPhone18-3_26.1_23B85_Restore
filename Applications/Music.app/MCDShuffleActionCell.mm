@interface MCDShuffleActionCell
- (CGSize)sizeForArtwork;
- (void)layoutSubviews;
- (void)setSizeForArtwork:(CGSize)artwork;
@end

@implementation MCDShuffleActionCell

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MCDShuffleActionCell;
  [(MCDShuffleActionCell *)&v15 layoutSubviews];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Shuffle" value:&stru_101107168 table:0];
  textLabel = [(MCDShuffleActionCell *)self textLabel];
  [textLabel setText:v4];

  v6 = +[UIColor _labelColor];
  textLabel2 = [(MCDShuffleActionCell *)self textLabel];
  [textLabel2 setTextColor:v6];

  v8 = +[UIColor _carSystemFocusLabelColor];
  textLabel3 = [(MCDShuffleActionCell *)self textLabel];
  [textLabel3 setHighlightedTextColor:v8];

  v10 = [UIImage _systemImageNamed:@"shuffle"];
  v11 = +[UIColor _labelColor];
  v12 = +[UIColor _carSystemFocusLabelColor];
  [MCDTableViewController setPlaceholderImage:v10 tintColor:v11 highlightedTintColor:v12 toCell:self];

  artworkImageView = [(_MCDReusableCell *)self artworkImageView];
  v14 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:16.0];
  [artworkImageView setPreferredSymbolConfiguration:v14];
}

- (void)setSizeForArtwork:(CGSize)artwork
{
  if (self->_artworkSize.width != artwork.width || self->_artworkSize.height != artwork.height)
  {
    self->_artworkSize = artwork;
    [(MCDShuffleActionCell *)self setNeedsLayout];
  }
}

- (CGSize)sizeForArtwork
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end