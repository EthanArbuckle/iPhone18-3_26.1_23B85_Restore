@interface PKTextInputDebugViewTableCell
- (PKTextInputDebugViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PKTextInputDebugViewTableCellDelegate)delegate;
- (void)_handleDetailsButton:(id)a3;
- (void)_setupContentViewsIfNeeded;
- (void)_updateLabels;
- (void)setShowDetailsButton:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)setValueAttributedText:(id)a3;
@end

@implementation PKTextInputDebugViewTableCell

- (PKTextInputDebugViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKTextInputDebugViewTableCell;
  v4 = [(PKTextInputDebugViewTableCell *)&v8 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PKTextInputDebugViewTableCell *)v4 setOpaque:0];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(PKTextInputDebugViewTableCell *)v5 setBackgroundColor:v6];

    [(PKTextInputDebugViewTableCell *)v5 setIndentationLevel:1];
  }

  return v5;
}

- (void)setValueAttributedText:(id)a3
{
  if (self->_valueAttributedText != a3)
  {
    v4 = [a3 copy];
    valueAttributedText = self->_valueAttributedText;
    self->_valueAttributedText = v4;

    [(PKTextInputDebugViewTableCell *)self _updateLabels];
  }
}

- (void)setTitleText:(id)a3
{
  if (self->_titleText != a3)
  {
    v4 = [a3 copy];
    titleText = self->_titleText;
    self->_titleText = v4;

    [(PKTextInputDebugViewTableCell *)self _updateLabels];
  }
}

- (void)setShowDetailsButton:(BOOL)a3
{
  if (self->_showDetailsButton != a3)
  {
    self->_showDetailsButton = a3;
    [(PKTextInputDebugViewTableCell *)self _updateLabels];
  }
}

- (void)_setupContentViewsIfNeeded
{
  v64[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputDebugViewTableCell *)self _titleLabel];

  if (!v3)
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

    v9 = [(PKTextInputDebugViewTableCell *)self contentView];
    [v9 addSubview:v5];

    v56 = [v5 topAnchor];
    v59 = [(PKTextInputDebugViewTableCell *)self contentView];
    v54 = [v59 topAnchor];
    v52 = [v56 constraintEqualToAnchor:v54 constant:10.0];
    v64[0] = v52;
    v48 = [v5 leadingAnchor];
    v50 = [(PKTextInputDebugViewTableCell *)self contentView];
    v46 = [v50 leadingAnchor];
    v10 = [v48 constraintEqualToAnchor:v46 constant:8.0];
    v64[1] = v10;
    v11 = [v5 trailingAnchor];
    v12 = [(PKTextInputDebugViewTableCell *)self contentView];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:-8.0];
    v64[2] = v14;
    v15 = [v5 heightAnchor];
    v16 = [v15 constraintGreaterThanOrEqualToConstant:22.0];
    v64[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v17];
  }

  v18 = [(PKTextInputDebugViewTableCell *)self _valueLabel];

  if (!v18)
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
    v23 = [(PKTextInputDebugViewTableCell *)self contentView];
    [v23 addSubview:v20];

    v57 = [v20 topAnchor];
    v60 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
    v55 = [v60 bottomAnchor];
    v53 = [v57 constraintEqualToAnchor:v55 constant:6.0];
    v63[0] = v53;
    v49 = [v20 bottomAnchor];
    v51 = [(PKTextInputDebugViewTableCell *)self contentView];
    v47 = [v51 bottomAnchor];
    v45 = [v49 constraintEqualToAnchor:v47];
    v63[1] = v45;
    v44 = [v20 leadingAnchor];
    v24 = [(PKTextInputDebugViewTableCell *)self contentView];
    v25 = [v24 leadingAnchor];
    v26 = [v44 constraintEqualToAnchor:v25 constant:14.0];
    v63[2] = v26;
    v27 = [v20 trailingAnchor];
    v28 = [(PKTextInputDebugViewTableCell *)self contentView];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:-14.0];
    v63[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v31];
  }

  v32 = [(PKTextInputDebugViewTableCell *)self _detailsButton];

  if (!v32)
  {
    v61 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:13.0];
    v58 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle" withConfiguration:v61];
    v33 = [MEMORY[0x1E69DC738] systemButtonWithImage:v58 target:self action:sel__handleDetailsButton_];
    [(PKTextInputDebugViewTableCell *)self set_detailsButton:v33];
    [v33 _setTouchInsets:{-5.0, -5.0, -5.0, -5.0}];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [(PKTextInputDebugViewTableCell *)self contentView];
    [v34 addSubview:v33];

    v35 = [v33 centerYAnchor];
    v36 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
    v37 = [v36 centerYAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    v62[0] = v38;
    v39 = [v33 trailingAnchor];
    v40 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
    v41 = [v40 trailingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41 constant:-10.0];
    v62[1] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];

    [MEMORY[0x1E696ACD8] activateConstraints:v43];
  }
}

- (void)_updateLabels
{
  [(PKTextInputDebugViewTableCell *)self _setupContentViewsIfNeeded];
  v3 = [(PKTextInputDebugViewTableCell *)self titleText];
  v4 = [(PKTextInputDebugViewTableCell *)self _titleLabel];
  [v4 setText:v3];

  v5 = [(PKTextInputDebugViewTableCell *)self valueAttributedText];
  v6 = [(PKTextInputDebugViewTableCell *)self _valueLabel];
  [v6 setAttributedText:v5];

  LODWORD(v5) = [(PKTextInputDebugViewTableCell *)self showDetailsButton];
  v7 = [(PKTextInputDebugViewTableCell *)self _detailsButton];
  [v7 setHidden:v5 ^ 1];
}

- (void)_handleDetailsButton:(id)a3
{
  v4 = [(PKTextInputDebugViewTableCell *)self delegate];
  [v4 debugViewTableCellDidTapDetailsButton:self];
}

- (PKTextInputDebugViewTableCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end