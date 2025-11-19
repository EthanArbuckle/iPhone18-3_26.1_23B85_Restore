@interface EKEventDetailTextCell
+ (double)maxHeight;
- (BOOL)_shouldTruncateGivenWidth:(double)a3;
- (BOOL)update;
- (EKEventDetailTextCell)initWithEvent:(id)a3 title:(id)a4 textFromEventBlock:(id)a5 attributedTextFromEventBlock:(id)a6 textViewDelegate:(id)a7 axTextView:(id)a8;
- (EKEventDetailTextCellDelegate)delegate;
- (id)_createNewTextView;
- (id)_sizingTextView;
- (void)_layoutForWidth:(double)a3;
- (void)cellHeaderTapped;
- (void)layoutSubviews;
- (void)setIsTruncatingText:(BOOL)a3;
@end

@implementation EKEventDetailTextCell

- (EKEventDetailTextCell)initWithEvent:(id)a3 title:(id)a4 textFromEventBlock:(id)a5 attributedTextFromEventBlock:(id)a6 textViewDelegate:(id)a7 axTextView:(id)a8
{
  v90[3] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v88.receiver = self;
  v88.super_class = EKEventDetailTextCell;
  v20 = [(EKEventDetailCell *)&v88 initWithEvent:a3 editable:0];
  v21 = v20;
  if (v20)
  {
    v87 = v18;
    objc_storeStrong(&v20->_title, a4);
    v22 = _Block_copy(v16);
    textFromEventBlock = v21->_textFromEventBlock;
    v21->_textFromEventBlock = v22;

    v24 = _Block_copy(v17);
    attributedTextFromEventBlock = v21->_attributedTextFromEventBlock;
    v21->_attributedTextFromEventBlock = v24;

    v26 = MEMORY[0x1E696AEC0];
    [v15 lowercaseString];
    v27 = v86 = v19;
    v28 = [v26 stringWithFormat:@"event-details-%@-cell", v27];
    [(EKEventDetailTextCell *)v21 setAccessibilityIdentifier:v28];

    v29 = [[EKEventDetailTextCellHeader alloc] initWithTitle:v21->_title];
    headerView = v21->_headerView;
    v21->_headerView = v29;

    [(EKEventDetailTextCellHeader *)v21->_headerView setDelegate:v21];
    [(EKEventDetailTextCellHeader *)v21->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1144766464;
    [(EKEventDetailTextCellHeader *)v21->_headerView setContentCompressionResistancePriority:1 forAxis:v31];
    v32 = [(EKEventDetailTextCell *)v21 contentView];
    [v32 addSubview:v21->_headerView];

    v69 = MEMORY[0x1E696ACD8];
    v79 = [(EKEventDetailTextCellHeader *)v21->_headerView leadingAnchor];
    v81 = [(EKEventDetailTextCell *)v21 contentView];
    v77 = [v81 layoutMarginsGuide];
    v75 = [v77 leadingAnchor];
    v73 = [v79 constraintEqualToAnchor:v75];
    v90[0] = v73;
    v67 = [(EKEventDetailTextCellHeader *)v21->_headerView trailingAnchor];
    v71 = [(EKEventDetailTextCell *)v21 contentView];
    v65 = [v71 layoutMarginsGuide];
    [v65 trailingAnchor];
    v33 = v84 = v16;
    v34 = [v67 constraintEqualToAnchor:v33];
    v90[1] = v34;
    v35 = [(EKEventDetailTextCellHeader *)v21->_headerView topAnchor];
    v36 = [(EKEventDetailTextCell *)v21 contentView];
    [v36 layoutMarginsGuide];
    v37 = v83 = v17;
    v38 = [v37 topAnchor];
    v39 = [v35 constraintEqualToAnchor:v38];
    v90[2] = v39;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:3];
    v40 = v85 = v15;
    [v69 activateConstraints:v40];

    v41 = [(EKEventDetailTextCell *)v21 _createNewTextView];
    textView = v21->_textView;
    v21->_textView = v41;

    [(UITextView *)v21->_textView setDelegate:v87];
    [(UITextView *)v21->_textView setAccessibilityIdentifier:v86];
    [(UITextView *)v21->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v43) = 1144750080;
    [(UITextView *)v21->_textView setContentCompressionResistancePriority:1 forAxis:v43];
    v44 = [(EKEventDetailTextCell *)v21 contentView];
    [v44 addSubview:v21->_textView];

    v63 = MEMORY[0x1E696ACD8];
    v80 = [(UITextView *)v21->_textView leadingAnchor];
    v82 = [(EKEventDetailTextCell *)v21 contentView];
    v78 = [v82 layoutMarginsGuide];
    v76 = [v78 leadingAnchor];
    v74 = [v80 constraintEqualToAnchor:v76];
    v89[0] = v74;
    v70 = [(UITextView *)v21->_textView trailingAnchor];
    v72 = [(EKEventDetailTextCell *)v21 contentView];
    v68 = [v72 layoutMarginsGuide];
    v66 = [v68 trailingAnchor];
    v64 = [v70 constraintEqualToAnchor:v66];
    v89[1] = v64;
    v62 = [(UITextView *)v21->_textView topAnchor];
    v61 = [(EKEventDetailTextCellHeader *)v21->_headerView bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:10.0];
    v89[2] = v60;
    v59 = [(UITextView *)v21->_textView bottomAnchor];
    v45 = [(EKEventDetailTextCell *)v21 contentView];
    v46 = [v45 layoutMarginsGuide];
    v47 = [v46 bottomAnchor];
    v48 = [v59 constraintEqualToAnchor:v47];
    v89[3] = v48;
    v49 = [(UITextView *)v21->_textView heightAnchor];
    v50 = *MEMORY[0x1E69DDCF8];
    v51 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v51 lineHeight];
    v53 = v52;
    v54 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v50];
    [v54 descender];
    v56 = [v49 constraintLessThanOrEqualToConstant:v55 + v53 * 10.0];
    v89[4] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
    [v63 activateConstraints:v57];

    v16 = v84;
    v15 = v85;

    v17 = v83;
    v18 = v87;

    v19 = v86;
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
    v5 = [(UITextView *)self->_textView attributedText];
    v6 = [v5 isEqualToAttributedString:v4];

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
  v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v9 stringByTrimmingCharactersInSet:v10];

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
  v12 = [(UITextView *)self->_textView font];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v15 = [v12 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v16 = *p_textView;
    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v13];
    [(UITextView *)v16 setFont:v17];
  }

  v18 = [(UITextView *)*p_textView text];
  v19 = [v18 isEqualToString:v4];

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
  v3 = [v2 textLayoutManager];
  [v3 setLimitsLayoutForSuspiciousContents:1];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v4];

  [v2 setEditable:0];
  [v2 setDataDetectorTypes:-1];
  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v2 setTextColor:v5];

  [v2 setScrollEnabled:0];
  [v2 setTextContainerInset:{0.0, 1.0, 0.0, 1.0}];
  v6 = [v2 textContainer];
  [v6 setLineFragmentPadding:0.0];

  return v2;
}

- (id)_sizingTextView
{
  sizingTextView = self->_sizingTextView;
  if (!sizingTextView)
  {
    v4 = [(EKEventDetailTextCell *)self _createNewTextView];
    v5 = self->_sizingTextView;
    self->_sizingTextView = v4;

    sizingTextView = self->_sizingTextView;
  }

  return sizingTextView;
}

- (void)setIsTruncatingText:(BOOL)a3
{
  if (self->_isTruncatingText != a3)
  {
    v3 = a3;
    self->_isTruncatingText = a3;
    v5 = [(UITextView *)self->_textView textContainer];
    v6 = v5;
    if (v3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    [v5 setLineBreakMode:v7];

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

- (void)_layoutForWidth:(double)a3
{
  [(EKEventDetailTextCell *)self update];
  v5 = [(EKEventDetailTextCell *)self _shouldTruncateGivenWidth:a3];

  [(EKEventDetailTextCell *)self setIsTruncatingText:v5];
}

- (BOOL)_shouldTruncateGivenWidth:(double)a3
{
  v5 = [(EKEventDetailTextCell *)self _sizingTextView];
  v6 = [(UITextView *)self->_textView text];
  [v5 setText:v6];

  v7 = [(EKEventDetailTextCell *)self _sizingTextView];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 setFont:v9];

  v10 = [(EKEventDetailTextCell *)self _sizingTextView];
  [(EKEventDetailTextCell *)self layoutMargins];
  v12 = a3 - v11;
  [(EKEventDetailTextCell *)self layoutMargins];
  [v10 sizeThatFits:{v12 - v13, 9999.0}];
  v15 = v14;

  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
  [v16 lineHeight];
  v18 = v17;
  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];
  [v19 descender];
  LOBYTE(v10) = v15 > v20 + v18 * 10.0;

  return v10;
}

- (void)cellHeaderTapped
{
  v2 = [(EKEventDetailTextCell *)self delegate];
  [v2 requestShowCellDetail];
}

- (EKEventDetailTextCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end