@interface PKTextInputDebugViewTableCell
- (PKTextInputDebugViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PKTextInputDebugViewTableCellDelegate)delegate;
- (void)_handleDetailsButton:(id)button;
- (void)_setupContentViewsIfNeeded;
- (void)_updateLabels;
- (void)setShowDetailsButton:(BOOL)button;
- (void)setTitleText:(id)text;
- (void)setValueAttributedText:(id)text;
@end

@implementation PKTextInputDebugViewTableCell

- (PKTextInputDebugViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKTextInputDebugViewTableCell;
  v4 = [(PKTextInputDebugViewTableCell *)&v8 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PKTextInputDebugViewTableCell *)v4 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKTextInputDebugViewTableCell *)v5 setBackgroundColor:clearColor];

    [(PKTextInputDebugViewTableCell *)v5 setIndentationLevel:1];
  }

  return v5;
}

- (void)setValueAttributedText:(id)text
{
  if (self->_valueAttributedText != text)
  {
    v4 = [text copy];
    valueAttributedText = self->_valueAttributedText;
    self->_valueAttributedText = v4;

    [(PKTextInputDebugViewTableCell *)self _updateLabels];
  }
}

- (void)setTitleText:(id)text
{
  if (self->_titleText != text)
  {
    v4 = [text copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(PKTextInputDebugViewTableCell *)self _updateLabels];
  }
}

- (void)setShowDetailsButton:(BOOL)button
{
  if (self->_showDetailsButton != button)
  {
    self->_showDetailsButton = button;
    [(PKTextInputDebugViewTableCell *)self _updateLabels];
  }
}

- (void)_setupContentViewsIfNeeded
{
  v64[4] = *MEMORY[0x1E69E9840];
  _titleLabel = [(PKTextInputDebugViewTableCell *)self _titleLabel];

  if (!_titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(PKTextInputDebugViewTableCell *)self set_titleLabel:v5];
    [v5 setNumberOfLines:1];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    [v5 setTextColor:v6];

    v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:15.0];
    [v5 setFont:v7];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v5 setBackgroundColor:v8];

    contentView = [(PKTextInputDebugViewTableCell *)self contentView];
    [contentView addSubview:v5];

    topAnchor = [v5 topAnchor];
    contentView2 = [(PKTextInputDebugViewTableCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v64[0] = v52;
    leadingAnchor = [v5 leadingAnchor];
    contentView3 = [(PKTextInputDebugViewTableCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v64[1] = v10;
    trailingAnchor = [v5 trailingAnchor];
    contentView4 = [(PKTextInputDebugViewTableCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v64[2] = v14;
    heightAnchor = [v5 heightAnchor];
    v16 = [heightAnchor constraintGreaterThanOrEqualToConstant:22.0];
    v64[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v17];
  }

  _valueLabel = [(PKTextInputDebugViewTableCell *)self _valueLabel];

  if (!_valueLabel)
  {
    v19 = objc_alloc(MEMORY[0x1E69DCC10]);
    v20 = [v19 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(PKTextInputDebugViewTableCell *)self set_valueLabel:v20];
    [v20 setNumberOfLines:0];
    v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.9 alpha:1.0];
    [v20 setTextColor:v21];

    v22 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [v20 setFont:v22];

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(PKTextInputDebugViewTableCell *)self contentView];
    [contentView5 addSubview:v20];

    topAnchor3 = [v20 topAnchor];
    _titleLabel2 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
    bottomAnchor = [_titleLabel2 bottomAnchor];
    v53 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:6.0];
    v63[0] = v53;
    bottomAnchor2 = [v20 bottomAnchor];
    contentView6 = [(PKTextInputDebugViewTableCell *)self contentView];
    bottomAnchor3 = [contentView6 bottomAnchor];
    v45 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v63[1] = v45;
    leadingAnchor3 = [v20 leadingAnchor];
    contentView7 = [(PKTextInputDebugViewTableCell *)self contentView];
    leadingAnchor4 = [contentView7 leadingAnchor];
    v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:14.0];
    v63[2] = v26;
    trailingAnchor3 = [v20 trailingAnchor];
    contentView8 = [(PKTextInputDebugViewTableCell *)self contentView];
    trailingAnchor4 = [contentView8 trailingAnchor];
    v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-14.0];
    v63[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v31];
  }

  _detailsButton = [(PKTextInputDebugViewTableCell *)self _detailsButton];

  if (!_detailsButton)
  {
    v61 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:13.0];
    v58 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle" withConfiguration:v61];
    v33 = [MEMORY[0x1E69DC738] systemButtonWithImage:v58 target:self action:sel__handleDetailsButton_];
    [(PKTextInputDebugViewTableCell *)self set_detailsButton:v33];
    [v33 _setTouchInsets:{-5.0, -5.0, -5.0, -5.0}];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView9 = [(PKTextInputDebugViewTableCell *)self contentView];
    [contentView9 addSubview:v33];

    centerYAnchor = [v33 centerYAnchor];
    _titleLabel3 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
    centerYAnchor2 = [_titleLabel3 centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v62[0] = v38;
    trailingAnchor5 = [v33 trailingAnchor];
    _titleLabel4 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
    trailingAnchor6 = [_titleLabel4 trailingAnchor];
    v42 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
    v62[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];

    [MEMORY[0x1E696ACD8] activateConstraints:v43];
  }
}

- (void)_updateLabels
{
  [(PKTextInputDebugViewTableCell *)self _setupContentViewsIfNeeded];
  titleText = [(PKTextInputDebugViewTableCell *)self titleText];
  _titleLabel = [(PKTextInputDebugViewTableCell *)self _titleLabel];
  [_titleLabel setText:titleText];

  valueAttributedText = [(PKTextInputDebugViewTableCell *)self valueAttributedText];
  _valueLabel = [(PKTextInputDebugViewTableCell *)self _valueLabel];
  [_valueLabel setAttributedText:valueAttributedText];

  LODWORD(valueAttributedText) = [(PKTextInputDebugViewTableCell *)self showDetailsButton];
  _detailsButton = [(PKTextInputDebugViewTableCell *)self _detailsButton];
  [_detailsButton setHidden:valueAttributedText ^ 1];
}

- (void)_handleDetailsButton:(id)button
{
  delegate = [(PKTextInputDebugViewTableCell *)self delegate];
  [delegate debugViewTableCellDidTapDetailsButton:self];
}

- (PKTextInputDebugViewTableCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end