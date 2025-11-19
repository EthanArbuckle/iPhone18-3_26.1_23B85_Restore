@interface AAUIHeaderView
- (AAUIHeaderView)initWithCoder:(id)a3;
- (AAUIHeaderView)initWithFrame:(CGRect)a3;
- (void)_updateLabelFonts;
- (void)_updateStackViewSpacing;
- (void)setHeaderImage:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AAUIHeaderView

- (AAUIHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AAUIHeaderView;
  v3 = [(AAUIBuddyView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _AAUIHeaderViewCommonInit(v3);
  }

  return v4;
}

- (AAUIHeaderView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIHeaderView;
  v3 = [(AAUIBuddyView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _AAUIHeaderViewCommonInit(v3);
  }

  return v4;
}

- (void)setHeaderImage:(id)a3
{
  [(UIImageView *)self->_headerImageView setImage:?];
  headerImageView = self->_headerImageView;

  [(UIImageView *)headerImageView setHidden:a3 == 0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AAUIHeaderView;
  [(AAUIHeaderView *)&v4 traitCollectionDidChange:a3];
  [(AAUIHeaderView *)self _updateStackViewSpacing];
  [(AAUIHeaderView *)self _updateLabelFonts];
}

- (void)_updateStackViewSpacing
{
  v3 = [(AAUIHeaderView *)self traitCollection];
  if ([v3 horizontalSizeClass] == 2)
  {
    v4 = [(AAUIHeaderView *)self traitCollection];
    v5 = [v4 verticalSizeClass];

    if (v5 == 2)
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
  v5 = [(AAUIHeaderView *)self traitCollection];
  v6 = [v4 aa_titleFontForTraitCollection:v5];
  [(UILabel *)titleLabel setFont:v6];

  messageLabel = self->_messageLabel;
  v8 = MEMORY[0x1E69DB878];
  v10 = [(AAUIHeaderView *)self traitCollection];
  v9 = [v8 aa_messageFontForTraitCollection:v10];
  [(UILabel *)messageLabel setFont:v9];
}

@end