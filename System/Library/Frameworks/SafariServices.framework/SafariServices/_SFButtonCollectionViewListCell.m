@interface _SFButtonCollectionViewListCell
- (_SFButtonCollectionViewListCell)initWithFrame:(CGRect)a3;
- (_SFButtonCollectionViewListCellDelegate)delegate;
- (void)_reportTranslationIssue:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation _SFButtonCollectionViewListCell

- (_SFButtonCollectionViewListCell)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = _SFButtonCollectionViewListCell;
  v3 = [(_SFButtonCollectionViewListCell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v4 contentInsets];
    [v4 setContentInsets:v5 + 8.0];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v4 primaryAction:0];
    button = v3->_button;
    v3->_button = v6;

    [(UIButton *)v3->_button setEnabled:0];
    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_button setAccessibilityIdentifier:@"ReportTranslationIssueButton"];
    v8 = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = [v8 colorWithAlphaComponent:0.5];
    [(UIButton *)v3->_button setBackgroundColor:v9];

    [(UIButton *)v3->_button addTarget:v3 action:sel__reportTranslationIssue_ forControlEvents:64];
    v10 = [(_SFButtonCollectionViewListCell *)v3 contentView];
    [v10 addSubview:v3->_button];

    v11 = MEMORY[0x1E696ACD8];
    v12 = v3->_button;
    v13 = [(_SFButtonCollectionViewListCell *)v3 contentView];
    v14 = [v11 safari_constraintsMatchingFrameOfView:v12 withFrameOfView:v13];
    [v11 activateConstraints:v14];

    v15 = v3;
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  v6 = [(UIButton *)self->_button configuration];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = self->_title;
  v13[0] = *MEMORY[0x1E69DB648];
  v9 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  v14[0] = v9;
  v13[1] = *MEMORY[0x1E69DB650];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12 = [v7 initWithString:v8 attributes:v11];
  [v6 setAttributedTitle:v12];

  [(UIButton *)self->_button setConfiguration:v6];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
    p_button = &self->_button;
    [(UIButton *)*p_button setBackgroundColor:v5];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemGrayColor];
    v7 = [v5 colorWithAlphaComponent:0.5];
    p_button = &self->_button;
    [(UIButton *)*p_button setBackgroundColor:v7];
  }

  v8 = *p_button;

  [(UIButton *)v8 setEnabled:v3];
}

- (void)_reportTranslationIssue:(id)a3
{
  v4 = [(_SFButtonCollectionViewListCell *)self delegate];
  [v4 collectionViewListCellButtonPressed:self];
}

- (_SFButtonCollectionViewListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end