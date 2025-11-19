@interface MCDShuffleActionCell
- (CGSize)sizeForArtwork;
- (void)layoutSubviews;
- (void)setSizeForArtwork:(CGSize)a3;
@end

@implementation MCDShuffleActionCell

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MCDShuffleActionCell;
  [(MCDShuffleActionCell *)&v15 layoutSubviews];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Shuffle" value:&stru_101107168 table:0];
  v5 = [(MCDShuffleActionCell *)self textLabel];
  [v5 setText:v4];

  v6 = +[UIColor _labelColor];
  v7 = [(MCDShuffleActionCell *)self textLabel];
  [v7 setTextColor:v6];

  v8 = +[UIColor _carSystemFocusLabelColor];
  v9 = [(MCDShuffleActionCell *)self textLabel];
  [v9 setHighlightedTextColor:v8];

  v10 = [UIImage _systemImageNamed:@"shuffle"];
  v11 = +[UIColor _labelColor];
  v12 = +[UIColor _carSystemFocusLabelColor];
  [MCDTableViewController setPlaceholderImage:v10 tintColor:v11 highlightedTintColor:v12 toCell:self];

  v13 = [(_MCDReusableCell *)self artworkImageView];
  v14 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:16.0];
  [v13 setPreferredSymbolConfiguration:v14];
}

- (void)setSizeForArtwork:(CGSize)a3
{
  if (self->_artworkSize.width != a3.width || self->_artworkSize.height != a3.height)
  {
    self->_artworkSize = a3;
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