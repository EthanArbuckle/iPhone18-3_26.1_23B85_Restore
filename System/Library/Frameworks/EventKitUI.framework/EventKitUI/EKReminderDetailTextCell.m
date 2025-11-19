@interface EKReminderDetailTextCell
- (EKReminderDetailTextCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 showExtraSpaceAtBottom:(BOOL)a6 allowDataDetector:(BOOL)a7 title:(id)a8 textFromEventAndReminderBlock:(id)a9 noBackgroundStyle:(BOOL)a10;
- (EKReminderDetailTextCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 showExtraSpaceAtBottom:(BOOL)a6 title:(id)a7 attributedText:(id)a8;
- (void)_updateTextViewColorAndFont;
- (void)commonSetupCellWithTitle:(id)a3 showExtraSpaceAtBottom:(BOOL)a4;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation EKReminderDetailTextCell

- (EKReminderDetailTextCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 showExtraSpaceAtBottom:(BOOL)a6 allowDataDetector:(BOOL)a7 title:(id)a8 textFromEventAndReminderBlock:(id)a9 noBackgroundStyle:(BOOL)a10
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v24.receiver = self;
  v24.super_class = EKReminderDetailTextCell;
  v20 = [(EKEventDetailCell *)&v24 initWithEvent:v16 editable:v13];
  v21 = v20;
  if (v20)
  {
    v20->_noBackgroundStyle = a10;
    [(EKReminderDetailTextCell *)v20 commonSetupCellWithTitle:v18 showExtraSpaceAtBottom:v12];
    [(UITextView *)v21->_textView setDataDetectorTypes:v11 << 63 >> 63];
    v22 = v19[2](v19, v16, v17);
    [(UITextView *)v21->_textView setText:v22];
  }

  return v21;
}

- (EKReminderDetailTextCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 showExtraSpaceAtBottom:(BOOL)a6 title:(id)a7 attributedText:(id)a8
{
  v9 = a6;
  v10 = a5;
  v13 = a7;
  v14 = a8;
  v18.receiver = self;
  v18.super_class = EKReminderDetailTextCell;
  v15 = [(EKEventDetailCell *)&v18 initWithEvent:a3 editable:v10];
  v16 = v15;
  if (v15)
  {
    [(EKReminderDetailTextCell *)v15 commonSetupCellWithTitle:v13 showExtraSpaceAtBottom:v9];
    [(UITextView *)v16->_textView setAttributedText:v14];
    [(EKReminderDetailTextCell *)v16 _updateTextViewColorAndFont];
  }

  return v16;
}

- (void)_updateTextViewColorAndFont
{
  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UITextView *)self->_textView setTextColor:v3];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextView *)self->_textView setFont:v4];
}

- (void)commonSetupCellWithTitle:(id)a3 showExtraSpaceAtBottom:(BOOL)a4
{
  v70[7] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(EKReminderDetailTextCell *)self setSeparatorStyle:0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  title = self->_title;
  self->_title = v6;

  [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_noBackgroundStyle)
  {
    v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:2];
    [(UILabel *)self->_title setFont:v8];

    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    v9 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)self->_title setFont:v9];

    [MEMORY[0x1E69DC888] labelColor];
  }
  v10 = ;
  [(UILabel *)self->_title setTextColor:v10];

  [(UILabel *)self->_title setText:v5];
  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_title setContentCompressionResistancePriority:1 forAxis:v11];
  v12 = [(EKReminderDetailTextCell *)self contentView];
  [v12 addSubview:self->_title];

  v13 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = self->_textView;
  self->_textView = v13;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(UITextView *)self->_textView textLayoutManager];
  [v15 setLimitsLayoutForSuspiciousContents:1];

  v16 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v16];

  [(UITextView *)self->_textView setEditable:0];
  v17 = [(UITextView *)self->_textView textContainer];
  [v17 setMaximumNumberOfLines:8];

  v18 = [(UITextView *)self->_textView textContainer];
  [v18 setLineBreakMode:4];

  [(UITextView *)self->_textView setScrollEnabled:0];
  [(UITextView *)self->_textView setTextContainerInset:4.0, 0.0, 0.0, 0.0];
  v19 = [(UITextView *)self->_textView textContainer];
  [v19 setLineFragmentPadding:0.0];

  [(EKReminderDetailTextCell *)self _updateTextViewColorAndFont];
  LODWORD(v20) = 1148846080;
  [(UITextView *)self->_textView setContentCompressionResistancePriority:1 forAxis:v20];
  v21 = [(EKReminderDetailTextCell *)self contentView];
  [v21 addSubview:self->_textView];

  v58 = MEMORY[0x1E696ACD8];
  v22 = [(UILabel *)self->_title leadingAnchor];
  v67 = v22;
  v69 = [(EKReminderDetailTextCell *)self contentView];
  v68 = [v69 layoutMarginsGuide];
  v23 = [v68 leadingAnchor];
  v66 = v23;
  if (self->_noBackgroundStyle)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 6.0;
  }

  v65 = [v22 constraintEqualToAnchor:v23 constant:v24];
  v70[0] = v65;
  v25 = [(UILabel *)self->_title trailingAnchor];
  v62 = v25;
  v64 = [(EKReminderDetailTextCell *)self contentView];
  v63 = [v64 layoutMarginsGuide];
  v26 = [v63 trailingAnchor];
  v61 = v26;
  if (self->_noBackgroundStyle)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = -6.0;
  }

  v60 = [v25 constraintEqualToAnchor:v26 constant:v27];
  v70[1] = v60;
  v28 = [(UITextView *)self->_textView leadingAnchor];
  v57 = v28;
  v59 = [(EKReminderDetailTextCell *)self contentView];
  v56 = [v59 layoutMarginsGuide];
  v29 = [v56 leadingAnchor];
  v55 = v29;
  if (self->_noBackgroundStyle)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 6.0;
  }

  v54 = [v28 constraintEqualToAnchor:v29 constant:v30];
  v70[2] = v54;
  v31 = [(UITextView *)self->_textView trailingAnchor];
  v52 = v31;
  v53 = [(EKReminderDetailTextCell *)self contentView];
  v51 = [v53 layoutMarginsGuide];
  v32 = [v51 trailingAnchor];
  v50 = v32;
  if (self->_noBackgroundStyle)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = -6.0;
  }

  v49 = [v31 constraintEqualToAnchor:v32 constant:v33];
  v70[3] = v49;
  v34 = [(UILabel *)self->_title topAnchor];
  v47 = v34;
  v48 = [(EKReminderDetailTextCell *)self contentView];
  v35 = [v48 topAnchor];
  v36 = 15.0;
  if (self->_noBackgroundStyle)
  {
    v36 = 0.0;
  }

  v37 = [v34 constraintEqualToAnchor:v35 constant:v36];
  v70[4] = v37;
  v38 = [(UITextView *)self->_textView topAnchor];
  v39 = [(UILabel *)self->_title bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v70[5] = v40;
  v41 = [(UITextView *)self->_textView bottomAnchor];
  v42 = [(EKReminderDetailTextCell *)self contentView];
  v43 = [v42 bottomAnchor];
  v44 = -15.0;
  if (self->_noBackgroundStyle)
  {
    v44 = 0.0;
  }

  v45 = [v41 constraintEqualToAnchor:v43 constant:v44];
  v70[6] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:7];
  [v58 activateConstraints:v46];
}

- (void)setSeparatorStyle:(int64_t)a3
{
  hideBottomCellSeparator = self->_hideBottomCellSeparator;
  v4.receiver = self;
  v4.super_class = EKReminderDetailTextCell;
  [(EKReminderDetailTextCell *)&v4 setSeparatorStyle:!hideBottomCellSeparator];
}

@end