@interface EKReminderDetailTextCell
- (EKReminderDetailTextCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable showExtraSpaceAtBottom:(BOOL)bottom allowDataDetector:(BOOL)detector title:(id)title textFromEventAndReminderBlock:(id)block noBackgroundStyle:(BOOL)self0;
- (EKReminderDetailTextCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable showExtraSpaceAtBottom:(BOOL)bottom title:(id)title attributedText:(id)text;
- (void)_updateTextViewColorAndFont;
- (void)commonSetupCellWithTitle:(id)title showExtraSpaceAtBottom:(BOOL)bottom;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation EKReminderDetailTextCell

- (EKReminderDetailTextCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable showExtraSpaceAtBottom:(BOOL)bottom allowDataDetector:(BOOL)detector title:(id)title textFromEventAndReminderBlock:(id)block noBackgroundStyle:(BOOL)self0
{
  detectorCopy = detector;
  bottomCopy = bottom;
  editableCopy = editable;
  eventCopy = event;
  reminderCopy = reminder;
  titleCopy = title;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = EKReminderDetailTextCell;
  v20 = [(EKEventDetailCell *)&v24 initWithEvent:eventCopy editable:editableCopy];
  v21 = v20;
  if (v20)
  {
    v20->_noBackgroundStyle = style;
    [(EKReminderDetailTextCell *)v20 commonSetupCellWithTitle:titleCopy showExtraSpaceAtBottom:bottomCopy];
    [(UITextView *)v21->_textView setDataDetectorTypes:detectorCopy << 63 >> 63];
    v22 = blockCopy[2](blockCopy, eventCopy, reminderCopy);
    [(UITextView *)v21->_textView setText:v22];
  }

  return v21;
}

- (EKReminderDetailTextCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable showExtraSpaceAtBottom:(BOOL)bottom title:(id)title attributedText:(id)text
{
  bottomCopy = bottom;
  editableCopy = editable;
  titleCopy = title;
  textCopy = text;
  v18.receiver = self;
  v18.super_class = EKReminderDetailTextCell;
  v15 = [(EKEventDetailCell *)&v18 initWithEvent:event editable:editableCopy];
  v16 = v15;
  if (v15)
  {
    [(EKReminderDetailTextCell *)v15 commonSetupCellWithTitle:titleCopy showExtraSpaceAtBottom:bottomCopy];
    [(UITextView *)v16->_textView setAttributedText:textCopy];
    [(EKReminderDetailTextCell *)v16 _updateTextViewColorAndFont];
  }

  return v16;
}

- (void)_updateTextViewColorAndFont
{
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UITextView *)self->_textView setTextColor:secondaryLabelColor];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextView *)self->_textView setFont:v4];
}

- (void)commonSetupCellWithTitle:(id)title showExtraSpaceAtBottom:(BOOL)bottom
{
  v70[7] = *MEMORY[0x1E69E9840];
  titleCopy = title;
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

  [(UILabel *)self->_title setText:titleCopy];
  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_title setContentCompressionResistancePriority:1 forAxis:v11];
  contentView = [(EKReminderDetailTextCell *)self contentView];
  [contentView addSubview:self->_title];

  v13 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = self->_textView;
  self->_textView = v13;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  textLayoutManager = [(UITextView *)self->_textView textLayoutManager];
  [textLayoutManager setLimitsLayoutForSuspiciousContents:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)self->_textView setBackgroundColor:clearColor];

  [(UITextView *)self->_textView setEditable:0];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setMaximumNumberOfLines:8];

  textContainer2 = [(UITextView *)self->_textView textContainer];
  [textContainer2 setLineBreakMode:4];

  [(UITextView *)self->_textView setScrollEnabled:0];
  [(UITextView *)self->_textView setTextContainerInset:4.0, 0.0, 0.0, 0.0];
  textContainer3 = [(UITextView *)self->_textView textContainer];
  [textContainer3 setLineFragmentPadding:0.0];

  [(EKReminderDetailTextCell *)self _updateTextViewColorAndFont];
  LODWORD(v20) = 1148846080;
  [(UITextView *)self->_textView setContentCompressionResistancePriority:1 forAxis:v20];
  contentView2 = [(EKReminderDetailTextCell *)self contentView];
  [contentView2 addSubview:self->_textView];

  v58 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UILabel *)self->_title leadingAnchor];
  v67 = leadingAnchor;
  contentView3 = [(EKReminderDetailTextCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v66 = leadingAnchor2;
  if (self->_noBackgroundStyle)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 6.0;
  }

  v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v24];
  v70[0] = v65;
  trailingAnchor = [(UILabel *)self->_title trailingAnchor];
  v62 = trailingAnchor;
  contentView4 = [(EKReminderDetailTextCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v61 = trailingAnchor2;
  if (self->_noBackgroundStyle)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = -6.0;
  }

  v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v27];
  v70[1] = v60;
  leadingAnchor3 = [(UITextView *)self->_textView leadingAnchor];
  v57 = leadingAnchor3;
  contentView5 = [(EKReminderDetailTextCell *)self contentView];
  layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v55 = leadingAnchor4;
  if (self->_noBackgroundStyle)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 6.0;
  }

  v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v30];
  v70[2] = v54;
  trailingAnchor3 = [(UITextView *)self->_textView trailingAnchor];
  v52 = trailingAnchor3;
  contentView6 = [(EKReminderDetailTextCell *)self contentView];
  layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
  v50 = trailingAnchor4;
  if (self->_noBackgroundStyle)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = -6.0;
  }

  v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v33];
  v70[3] = v49;
  topAnchor = [(UILabel *)self->_title topAnchor];
  v47 = topAnchor;
  contentView7 = [(EKReminderDetailTextCell *)self contentView];
  topAnchor2 = [contentView7 topAnchor];
  v36 = 15.0;
  if (self->_noBackgroundStyle)
  {
    v36 = 0.0;
  }

  v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v36];
  v70[4] = v37;
  topAnchor3 = [(UITextView *)self->_textView topAnchor];
  bottomAnchor = [(UILabel *)self->_title bottomAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v70[5] = v40;
  bottomAnchor2 = [(UITextView *)self->_textView bottomAnchor];
  contentView8 = [(EKReminderDetailTextCell *)self contentView];
  bottomAnchor3 = [contentView8 bottomAnchor];
  v44 = -15.0;
  if (self->_noBackgroundStyle)
  {
    v44 = 0.0;
  }

  v45 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v44];
  v70[6] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:7];
  [v58 activateConstraints:v46];
}

- (void)setSeparatorStyle:(int64_t)style
{
  hideBottomCellSeparator = self->_hideBottomCellSeparator;
  v4.receiver = self;
  v4.super_class = EKReminderDetailTextCell;
  [(EKReminderDetailTextCell *)&v4 setSeparatorStyle:!hideBottomCellSeparator];
}

@end