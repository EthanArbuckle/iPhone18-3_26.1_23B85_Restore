@interface _SFButtonCollectionViewListCell
- (_SFButtonCollectionViewListCell)initWithFrame:(CGRect)frame;
- (_SFButtonCollectionViewListCellDelegate)delegate;
- (void)_reportTranslationIssue:(id)issue;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation _SFButtonCollectionViewListCell

- (_SFButtonCollectionViewListCell)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = _SFButtonCollectionViewListCell;
  v3 = [(_SFButtonCollectionViewListCell *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration contentInsets];
    [plainButtonConfiguration setContentInsets:v5 + 8.0];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    button = v3->_button;
    v3->_button = v6;

    [(UIButton *)v3->_button setEnabled:0];
    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_button setAccessibilityIdentifier:@"ReportTranslationIssueButton"];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = [systemGrayColor colorWithAlphaComponent:0.5];
    [(UIButton *)v3->_button setBackgroundColor:v9];

    [(UIButton *)v3->_button addTarget:v3 action:sel__reportTranslationIssue_ forControlEvents:64];
    contentView = [(_SFButtonCollectionViewListCell *)v3 contentView];
    [contentView addSubview:v3->_button];

    v11 = MEMORY[0x1E696ACD8];
    v12 = v3->_button;
    contentView2 = [(_SFButtonCollectionViewListCell *)v3 contentView];
    v14 = [v11 safari_constraintsMatchingFrameOfView:v12 withFrameOfView:contentView2];
    [v11 activateConstraints:v14];

    v15 = v3;
  }

  return v3;
}

- (void)setTitle:(id)title
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  configuration = [(UIButton *)self->_button configuration];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = self->_title;
  v13[0] = *MEMORY[0x1E69DB648];
  v9 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  v14[0] = v9;
  v13[1] = *MEMORY[0x1E69DB650];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v14[1] = whiteColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12 = [v7 initWithString:v8 attributes:v11];
  [configuration setAttributedTitle:v12];

  [(UIButton *)self->_button setConfiguration:configuration];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    p_button = &self->_button;
    [(UIButton *)*p_button setBackgroundColor:systemBlueColor];
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v7 = [systemBlueColor colorWithAlphaComponent:0.5];
    p_button = &self->_button;
    [(UIButton *)*p_button setBackgroundColor:v7];
  }

  v8 = *p_button;

  [(UIButton *)v8 setEnabled:enabledCopy];
}

- (void)_reportTranslationIssue:(id)issue
{
  delegate = [(_SFButtonCollectionViewListCell *)self delegate];
  [delegate collectionViewListCellButtonPressed:self];
}

- (_SFButtonCollectionViewListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end