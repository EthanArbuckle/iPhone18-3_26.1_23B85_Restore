@interface EKEventDetailTextCell
+ (double)maxHeight;
- (BOOL)_shouldTruncateGivenWidth:(double)width;
- (BOOL)update;
- (EKEventDetailTextCell)initWithEvent:(id)event title:(id)title textFromEventBlock:(id)block attributedTextFromEventBlock:(id)eventBlock textViewDelegate:(id)delegate axTextView:(id)view;
- (EKEventDetailTextCellDelegate)delegate;
- (id)_createNewTextView;
- (id)_sizingTextView;
- (void)_layoutForWidth:(double)width;
- (void)cellHeaderTapped;
- (void)layoutSubviews;
- (void)setIsTruncatingText:(BOOL)text;
@end

@implementation EKEventDetailTextCell

- (EKEventDetailTextCell)initWithEvent:(id)event title:(id)title textFromEventBlock:(id)block attributedTextFromEventBlock:(id)eventBlock textViewDelegate:(id)delegate axTextView:(id)view
{
  v90[3] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  blockCopy = block;
  eventBlockCopy = eventBlock;
  delegateCopy = delegate;
  viewCopy = view;
  v88.receiver = self;
  v88.super_class = EKEventDetailTextCell;
  v20 = [(EKEventDetailCell *)&v88 initWithEvent:event editable:0];
  v21 = v20;
  if (v20)
  {
    v87 = delegateCopy;
    objc_storeStrong(&v20->_title, title);
    v22 = _Block_copy(blockCopy);
    textFromEventBlock = v21->_textFromEventBlock;
    v21->_textFromEventBlock = v22;

    v24 = _Block_copy(eventBlockCopy);
    attributedTextFromEventBlock = v21->_attributedTextFromEventBlock;
    v21->_attributedTextFromEventBlock = v24;

    v26 = MEMORY[0x1E696AEC0];
    [titleCopy lowercaseString];
    v27 = v86 = viewCopy;
    v28 = [v26 stringWithFormat:@"event-details-%@-cell", v27];
    [(EKEventDetailTextCell *)v21 setAccessibilityIdentifier:v28];

    v29 = [[EKEventDetailTextCellHeader alloc] initWithTitle:v21->_title];
    headerView = v21->_headerView;
    v21->_headerView = v29;

    [(EKEventDetailTextCellHeader *)v21->_headerView setDelegate:v21];
    [(EKEventDetailTextCellHeader *)v21->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1144766464;
    [(EKEventDetailTextCellHeader *)v21->_headerView setContentCompressionResistancePriority:1 forAxis:v31];
    contentView = [(EKEventDetailTextCell *)v21 contentView];
    [contentView addSubview:v21->_headerView];

    v69 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(EKEventDetailTextCellHeader *)v21->_headerView leadingAnchor];
    contentView2 = [(EKEventDetailTextCell *)v21 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v90[0] = v73;
    trailingAnchor = [(EKEventDetailTextCellHeader *)v21->_headerView trailingAnchor];
    contentView3 = [(EKEventDetailTextCell *)v21 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    [layoutMarginsGuide2 trailingAnchor];
    v33 = v84 = blockCopy;
    v34 = [trailingAnchor constraintEqualToAnchor:v33];
    v90[1] = v34;
    topAnchor = [(EKEventDetailTextCellHeader *)v21->_headerView topAnchor];
    contentView4 = [(EKEventDetailTextCell *)v21 contentView];
    [contentView4 layoutMarginsGuide];
    v37 = v83 = eventBlockCopy;
    topAnchor2 = [v37 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v90[2] = v39;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:3];
    v40 = v85 = titleCopy;
    [v69 activateConstraints:v40];

    _createNewTextView = [(EKEventDetailTextCell *)v21 _createNewTextView];
    textView = v21->_textView;
    v21->_textView = _createNewTextView;

    [(UITextView *)v21->_textView setDelegate:v87];
    [(UITextView *)v21->_textView setAccessibilityIdentifier:v86];
    [(UITextView *)v21->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v43) = 1144750080;
    [(UITextView *)v21->_textView setContentCompressionResistancePriority:1 forAxis:v43];
    contentView5 = [(EKEventDetailTextCell *)v21 contentView];
    [contentView5 addSubview:v21->_textView];

    v63 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UITextView *)v21->_textView leadingAnchor];
    contentView6 = [(EKEventDetailTextCell *)v21 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v74 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v89[0] = v74;
    trailingAnchor2 = [(UITextView *)v21->_textView trailingAnchor];
    contentView7 = [(EKEventDetailTextCell *)v21 contentView];
    layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
    v64 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v89[1] = v64;
    topAnchor3 = [(UITextView *)v21->_textView topAnchor];
    bottomAnchor = [(EKEventDetailTextCellHeader *)v21->_headerView bottomAnchor];
    v60 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
    v89[2] = v60;
    bottomAnchor2 = [(UITextView *)v21->_textView bottomAnchor];
    contentView8 = [(EKEventDetailTextCell *)v21 contentView];
    layoutMarginsGuide5 = [contentView8 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide5 bottomAnchor];
    v48 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v89[3] = v48;
    heightAnchor = [(UITextView *)v21->_textView heightAnchor];
    v50 = *MEMORY[0x1E69DDCF8];
    v51 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v51 lineHeight];
    v53 = v52;
    v54 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v50];
    [v54 descender];
    v56 = [heightAnchor constraintLessThanOrEqualToConstant:v55 + v53 * 10.0];
    v89[4] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
    [v63 activateConstraints:v57];

    blockCopy = v84;
    titleCopy = v85;

    eventBlockCopy = v83;
    delegateCopy = v87;

    viewCopy = v86;
  }

  return v21;
}

+ (double)maxHeight
{
  v2 = *MEMORY[0x1E69DDCF8];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 lineHeight];
  v5 = v4;
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v2];
  [v6 descender];
  v8 = v7 + v5 * 10.0;

  return v8;
}

- (BOOL)update
{
  attributedTextFromEventBlock = self->_attributedTextFromEventBlock;
  if (attributedTextFromEventBlock)
  {
    v4 = attributedTextFromEventBlock[2](attributedTextFromEventBlock, self->super._event);
    attributedText = [(UITextView *)self->_textView attributedText];
    v6 = [attributedText isEqualToAttributedString:v4];

    if ((v6 & 1) == 0)
    {
      [(UITextView *)self->_textView setAttributedText:v4];
      [(EKEventDetailTextCellHeader *)self->_headerView setNeedsUpdateProperties];
    }

    v7 = v6 ^ 1;
    goto LABEL_14;
  }

  textFromEventBlock = self->_textFromEventBlock;
  if (!textFromEventBlock)
  {
    return 0;
  }

  v9 = textFromEventBlock[2](textFromEventBlock, self->super._event);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v4 length] || !CUIKShouldDisplayNotes())
  {
    v20 = 0;
    v7 = 0;
    p_textView = &self->_textView;
LABEL_13:
    [(UITextView *)*p_textView setText:v20];
    goto LABEL_14;
  }

  p_textView = &self->_textView;
  font = [(UITextView *)self->_textView font];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v15 = [font isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v16 = *p_textView;
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v13];
    [(UITextView *)v16 setFont:v17];
  }

  text = [(UITextView *)*p_textView text];
  v19 = [text isEqualToString:v4];

  if ((v19 & 1) == 0)
  {
    v7 = 1;
    v20 = v4;
    goto LABEL_13;
  }

  v7 = v15 ^ 1;
LABEL_14:

  return v7;
}

- (id)_createNewTextView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textLayoutManager = [v2 textLayoutManager];
  [textLayoutManager setLimitsLayoutForSuspiciousContents:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  [v2 setEditable:0];
  [v2 setDataDetectorTypes:-1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v2 setTextColor:secondaryLabelColor];

  [v2 setScrollEnabled:0];
  [v2 setTextContainerInset:{0.0, 1.0, 0.0, 1.0}];
  textContainer = [v2 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  return v2;
}

- (id)_sizingTextView
{
  sizingTextView = self->_sizingTextView;
  if (!sizingTextView)
  {
    _createNewTextView = [(EKEventDetailTextCell *)self _createNewTextView];
    v5 = self->_sizingTextView;
    self->_sizingTextView = _createNewTextView;

    sizingTextView = self->_sizingTextView;
  }

  return sizingTextView;
}

- (void)setIsTruncatingText:(BOOL)text
{
  if (self->_isTruncatingText != text)
  {
    textCopy = text;
    self->_isTruncatingText = text;
    textContainer = [(UITextView *)self->_textView textContainer];
    v6 = textContainer;
    if (textCopy)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    [textContainer setLineBreakMode:v7];

    isTruncatingText = self->_isTruncatingText;
    headerView = self->_headerView;

    [(EKEventDetailTextCellHeader *)headerView setShowsShowMoreLabel:isTruncatingText];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKEventDetailTextCell;
  [(EKUITableViewCell *)&v4 layoutSubviews];
  [(EKEventDetailTextCell *)self bounds];
  [(EKEventDetailTextCell *)self _layoutForWidth:v3];
}

- (void)_layoutForWidth:(double)width
{
  [(EKEventDetailTextCell *)self update];
  v5 = [(EKEventDetailTextCell *)self _shouldTruncateGivenWidth:width];

  [(EKEventDetailTextCell *)self setIsTruncatingText:v5];
}

- (BOOL)_shouldTruncateGivenWidth:(double)width
{
  _sizingTextView = [(EKEventDetailTextCell *)self _sizingTextView];
  text = [(UITextView *)self->_textView text];
  [_sizingTextView setText:text];

  _sizingTextView2 = [(EKEventDetailTextCell *)self _sizingTextView];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [_sizingTextView2 setFont:v9];

  _sizingTextView3 = [(EKEventDetailTextCell *)self _sizingTextView];
  [(EKEventDetailTextCell *)self layoutMargins];
  v12 = width - v11;
  [(EKEventDetailTextCell *)self layoutMargins];
  [_sizingTextView3 sizeThatFits:{v12 - v13, 9999.0}];
  v15 = v14;

  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
  [v16 lineHeight];
  v18 = v17;
  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
  [v19 descender];
  LOBYTE(_sizingTextView3) = v15 > v20 + v18 * 10.0;

  return _sizingTextView3;
}

- (void)cellHeaderTapped
{
  delegate = [(EKEventDetailTextCell *)self delegate];
  [delegate requestShowCellDetail];
}

- (EKEventDetailTextCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end