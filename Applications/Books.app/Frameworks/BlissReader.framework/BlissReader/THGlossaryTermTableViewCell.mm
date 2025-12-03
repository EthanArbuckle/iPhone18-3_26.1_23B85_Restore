@interface THGlossaryTermTableViewCell
- (THGlossaryTermTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (THLabelWithWordHighlights)labelWithHighlights;
- (UIView)separatorView;
- (void)dealloc;
- (void)p_setSelectedAppearanceLastEntry:(BOOL)entry animated:(BOOL)animated;
- (void)prepareForReuse;
- (void)setFollowingCellHighlighted:(BOOL)highlighted;
- (void)setFollowingCellSelected:(BOOL)selected;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation THGlossaryTermTableViewCell

- (THGlossaryTermTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = THGlossaryTermTableViewCell;
  v4 = [(THGlossaryTermTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->mSelectedAppearance = 0;
    v4->mLastEntryAppearance = 0;
    v6 = [UIView alloc];
    [(THGlossaryTermTableViewCell *)v5 frame];
    v7 = [v6 initWithFrame:?];
    [(THGlossaryTermTableViewCell *)v5 setSelectedBackgroundView:v7];
  }

  return v5;
}

- (void)dealloc
{
  self->mLabelWithHighlights = 0;

  self->_separatorView = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryTermTableViewCell;
  [(THGlossaryTermTableViewCell *)&v3 dealloc];
}

- (THLabelWithWordHighlights)labelWithHighlights
{
  result = self->mLabelWithHighlights;
  if (!result)
  {
    [-[THGlossaryTermTableViewCell contentView](self "contentView")];
    v6 = [[THLabelWithWordHighlights alloc] initWithFrame:0.0, 0.0, v4, v5];
    self->mLabelWithHighlights = v6;
    [(THLabelWithWordHighlights *)v6 setContentMode:7];
    [-[THGlossaryTermTableViewCell contentView](self "contentView")];
    return self->mLabelWithHighlights;
  }

  return result;
}

- (UIView)separatorView
{
  result = self->_separatorView;
  if (!result)
  {
    [-[THGlossaryTermTableViewCell contentView](self "contentView")];
    self->_separatorView = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v5}];
    [-[THGlossaryTermTableViewCell contentView](self "contentView")];
    return self->_separatorView;
  }

  return result;
}

- (void)p_setSelectedAppearanceLastEntry:(BOOL)entry animated:(BOOL)animated
{
  entryCopy = entry;
  if (([(THGlossaryTermTableViewCell *)self isSelected:entry]& 1) != 0)
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(THGlossaryTermTableViewCell *)self isHighlighted];
  }

  if ([(THGlossaryTermTableViewCell *)self isFollowingCellSelected])
  {
    isFollowingCellHighlighted = 1;
  }

  else
  {
    isFollowingCellHighlighted = [(THGlossaryTermTableViewCell *)self isFollowingCellHighlighted];
  }

  if (self->mSelectedAppearance == isHighlighted && self->mFollowingCellSelectedAppearance == isFollowingCellHighlighted)
  {
    v8 = 0;
  }

  else
  {
    [(UIView *)[(THGlossaryTermTableViewCell *)self separatorView] setHidden:(isHighlighted | isFollowingCellHighlighted) & 1];
    self->mSelectedAppearance = isHighlighted;
    self->mFollowingCellSelectedAppearance = isFollowingCellHighlighted;
    v8 = 1;
  }

  labelWithHighlights = [(THGlossaryTermTableViewCell *)self labelWithHighlights];
  if (self->mLastEntryAppearance == entryCopy)
  {
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (entryCopy)
    {
      v10 = +[UIColor blueColor];
    }

    else
    {
      v10 = [UIColor colorWithWhite:0.203921569 alpha:1.0];
    }

    v11 = v10;
    [(THLabelWithWordHighlights *)labelWithHighlights setTextColor:v10];
    [(THLabelWithWordHighlights *)labelWithHighlights setHighlightedTextColor:v11];
    self->mLastEntryAppearance = entryCopy;
  }

  [(THGlossaryTermTableViewCell *)self setNeedsDisplay];

  [(THLabelWithWordHighlights *)labelWithHighlights setNeedsDisplay];
}

- (void)prepareForReuse
{
  [(THGlossaryTermTableViewCell *)self setFollowingCellHighlighted:0];
  [(THGlossaryTermTableViewCell *)self setFollowingCellSelected:0];
  v3.receiver = self;
  v3.super_class = THGlossaryTermTableViewCell;
  [(THGlossaryTermTableViewCell *)&v3 prepareForReuse];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = THGlossaryTermTableViewCell;
  [THGlossaryTermTableViewCell setSelected:"setSelected:animated:" animated:?];
  [(THGlossaryTermTableViewCellDelegate *)[(THGlossaryTermTableViewCell *)self delegate] glossaryTermTableCell:self selected:selectedCopy];
  if (selectedCopy)
  {
    selectedBackgroundView = [(THGlossaryTermTableViewCell *)self selectedBackgroundView];
  }

  else
  {
    selectedBackgroundView = [(THGlossaryTermTableViewCell *)self contentView];
  }

  -[THGlossaryTermTableViewCell setBackgroundColor:](self, "setBackgroundColor:", [selectedBackgroundView backgroundColor]);
  [(THGlossaryTermTableViewCell *)self p_setSelectedAppearanceLastEntry:self->mLastEntryAppearance animated:animatedCopy];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = THGlossaryTermTableViewCell;
  [(THGlossaryTermTableViewCell *)&v6 setHighlighted:highlighted animated:?];
  [(THGlossaryTermTableViewCell *)self p_setSelectedAppearanceLastEntry:self->mLastEntryAppearance animated:animatedCopy];
}

- (void)setFollowingCellHighlighted:(BOOL)highlighted
{
  if (self->mFollowingCellHighlighted != highlighted)
  {
    self->mFollowingCellHighlighted = highlighted;
    [(THGlossaryTermTableViewCell *)self p_setSelectedAppearanceLastEntry:self->mLastEntryAppearance animated:0];
  }
}

- (void)setFollowingCellSelected:(BOOL)selected
{
  if (self->mFollowingCellSelected != selected)
  {
    self->mFollowingCellSelected = selected;
    [(THGlossaryTermTableViewCell *)self p_setSelectedAppearanceLastEntry:self->mLastEntryAppearance animated:0];
  }
}

@end