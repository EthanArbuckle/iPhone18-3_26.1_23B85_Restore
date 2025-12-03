@interface MTAddPodcastCellAccessoryView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTAddPodcastCellAccessoryView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAdded:(BOOL)added;
@end

@implementation MTAddPodcastCellAccessoryView

- (MTAddPodcastCellAccessoryView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = MTAddPodcastCellAccessoryView;
  v3 = [(MTAddPodcastCellAccessoryView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button setAdjustsImageWhenDisabled:1];
    [(UIButton *)v3->_button setAdjustsImageWhenHighlighted:0];
    [(UIButton *)v3->_button setShowsTouchWhenHighlighted:0];
    [(UIButton *)v3->_button setUserInteractionEnabled:0];
    v6 = v3->_button;
    v7 = +[UIImage multiUncheckIcon];
    [(UIButton *)v6 setImage:v7 forState:0];

    [(MTAddPodcastCellAccessoryView *)v3 addSubview:v3->_button];
    v8 = v3;
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIButton *)self->_button sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTAddPodcastCellAccessoryView;
  [(MTAddPodcastCellAccessoryView *)&v4 layoutSubviews];
  button = self->_button;
  [(MTAddPodcastCellAccessoryView *)self bounds];
  [(UIButton *)button setFrame:?];
}

- (void)setAdded:(BOOL)added
{
  if (self->_added != added)
  {
    self->_added = added;
    button = self->_button;
    if (added)
    {
      +[UIImage multiCheckIcon];
    }

    else
    {
      +[UIImage multiUncheckIcon];
    }
    v5 = ;
    [(UIButton *)button setImage:v5 forState:0];
  }
}

@end