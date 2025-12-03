@interface CalendarNotesCell
- (CalendarNotesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)placeholder;
- (void)setPlaceholder:(id)placeholder;
@end

@implementation CalendarNotesCell

- (CalendarNotesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CalendarNotesCell;
  v4 = [(EKUITableViewCell *)&v37 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CalendarNotesCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc_init(MEMORY[0x1E69DD168]);
    textView = v5->_textView;
    v5->_textView = v6;

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextView *)v5->_textView setFont:v8];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v5->_textView setTextColor:labelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v5->_textView setBackgroundColor:clearColor];

    [(UITextView *)v5->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v5->_textView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    textContainer = [(UITextView *)v5->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    textLayoutManager = [(UITextView *)v5->_textView textLayoutManager];
    [textLayoutManager setLimitsLayoutForSuspiciousContents:1];

    [(UITextView *)v5->_textView setAccessibilityIdentifier:@"Notes"];
    contentView = [(CalendarNotesCell *)v5 contentView];
    [contentView addSubview:v5->_textView];

    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UITextView *)v5->_textView leadingAnchor];
    contentView2 = [(CalendarNotesCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[0] = v32;
    trailingAnchor = [(UITextView *)v5->_textView trailingAnchor];
    contentView3 = [(CalendarNotesCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[1] = v26;
    topAnchor = [(UITextView *)v5->_textView topAnchor];
    contentView4 = [(CalendarNotesCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[2] = v16;
    bottomAnchor = [(UITextView *)v5->_textView bottomAnchor];
    contentView5 = [(CalendarNotesCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v27 activateConstraints:v22];
  }

  return v5;
}

- (void)setPlaceholder:(id)placeholder
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E69DB648];
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  placeholderCopy = placeholder;
  v7 = [v4 preferredFontForTextStyle:v5];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB650];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v12[1] = tertiaryLabelColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:placeholderCopy attributes:v9];
  [(UITextView *)self->_textView setAttributedPlaceholder:v10];
}

- (NSString)placeholder
{
  attributedPlaceholder = [(UITextView *)self->_textView attributedPlaceholder];
  string = [attributedPlaceholder string];

  return string;
}

@end