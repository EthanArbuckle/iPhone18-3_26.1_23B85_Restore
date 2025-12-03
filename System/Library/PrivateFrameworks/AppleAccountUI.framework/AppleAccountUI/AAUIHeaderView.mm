@interface AAUIHeaderView
- (AAUIHeaderView)initWithCoder:(id)coder;
- (AAUIHeaderView)initWithFrame:(CGRect)frame;
- (void)_updateLabelFonts;
- (void)_updateStackViewSpacing;
- (void)setHeaderImage:(id)image;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AAUIHeaderView

- (AAUIHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AAUIHeaderView;
  v3 = [(AAUIBuddyView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _AAUIHeaderViewCommonInit(v3);
  }

  return v4;
}

- (AAUIHeaderView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUIHeaderView;
  v3 = [(AAUIBuddyView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _AAUIHeaderViewCommonInit(v3);
  }

  return v4;
}

- (void)setHeaderImage:(id)image
{
  [(UIImageView *)self->_headerImageView setImage:?];
  headerImageView = self->_headerImageView;

  [(UIImageView *)headerImageView setHidden:image == 0];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AAUIHeaderView;
  [(AAUIHeaderView *)&v4 traitCollectionDidChange:change];
  [(AAUIHeaderView *)self _updateStackViewSpacing];
  [(AAUIHeaderView *)self _updateLabelFonts];
}

- (void)_updateStackViewSpacing
{
  traitCollection = [(AAUIHeaderView *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    traitCollection2 = [(AAUIHeaderView *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];

    if (verticalSizeClass == 2)
    {
      v6 = 44.0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 36.0;
LABEL_6:
  stackView = self->_stackView;

  [(UIStackView *)stackView setSpacing:v6];
}

- (void)_updateLabelFonts
{
  titleLabel = self->_titleLabel;
  v4 = MEMORY[0x1E69DB878];
  traitCollection = [(AAUIHeaderView *)self traitCollection];
  v6 = [v4 aa_titleFontForTraitCollection:traitCollection];
  [(UILabel *)titleLabel setFont:v6];

  messageLabel = self->_messageLabel;
  v8 = MEMORY[0x1E69DB878];
  traitCollection2 = [(AAUIHeaderView *)self traitCollection];
  v9 = [v8 aa_messageFontForTraitCollection:traitCollection2];
  [(UILabel *)messageLabel setFont:v9];
}

@end