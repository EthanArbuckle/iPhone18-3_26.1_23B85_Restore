@interface ASReportAConcernDetailsCell
- (ASReportAConcernDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)text;
- (void)layoutSubviews;
- (void)setPlaceholderText:(id)text;
- (void)updatePlaceholderText:(BOOL)text;
@end

@implementation ASReportAConcernDetailsCell

- (ASReportAConcernDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = ASReportAConcernDetailsCell;
  v4 = [(ASReportAConcernDetailsCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textView = v4->_textView;
    v4->_textView = v5;

    textLabel = [(ASReportAConcernDetailsCell *)v4 textLabel];
    font = [textLabel font];
    [(UITextView *)v4->_textView setFont:font];

    contentView = [(ASReportAConcernDetailsCell *)v4 contentView];
    [contentView addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = ASReportAConcernDetailsCell;
  [(ASReportAConcernDetailsCell *)&v38 layoutSubviews];
  contentView = [(ASReportAConcernDetailsCell *)self contentView];
  readableContentGuide = [contentView readableContentGuide];
  [readableContentGuide layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  textView = [(ASReportAConcernDetailsCell *)self textView];
  textContainer = [textView textContainer];
  [textContainer lineFragmentPadding];
  v37 = v15;

  contentView2 = [(ASReportAConcernDetailsCell *)self contentView];
  [contentView2 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect_8 = v21;
  v24 = v23;

  textView2 = [(ASReportAConcernDetailsCell *)self textView];
  [textView2 setFrame:{v18, v20, v22, v24}];

  v34 = v6;
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v18;
  v40.origin.y = v20;
  v40.size.width = rect_8;
  v40.size.height = v24;
  v36 = MinY - CGRectGetMinY(v40);
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = rect_8;
  v42.size.height = v24;
  v35 = MinX - CGRectGetMinX(v42) - v37;
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = rect_8;
  v43.size.height = v24;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = v34;
  v44.origin.y = v8;
  v44.size.width = v10;
  v44.size.height = v12;
  v29 = MaxY - CGRectGetMaxY(v44);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = rect_8;
  v45.size.height = v24;
  MaxX = CGRectGetMaxX(v45);
  v46.origin.x = v34;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  v31 = MaxX - CGRectGetMaxX(v46) - v37;
  textView3 = [(ASReportAConcernDetailsCell *)self textView];
  [textView3 setTextContainerInset:{v36, v35, v29, v31}];
}

- (void)setPlaceholderText:(id)text
{
  objc_storeStrong(&self->_placeholderText, text);
  if (text)
  {
    textView = [(ASReportAConcernDetailsCell *)self textView];
    [textView setDelegate:self];

    [(ASReportAConcernDetailsCell *)self updatePlaceholderText:0];
  }
}

- (NSString)text
{
  textView = [(ASReportAConcernDetailsCell *)self textView];
  text = [textView text];
  placeholderText = [(ASReportAConcernDetailsCell *)self placeholderText];
  v6 = [text isEqualToString:placeholderText];

  if (v6)
  {
    text2 = 0;
  }

  else
  {
    textView2 = [(ASReportAConcernDetailsCell *)self textView];
    text2 = [textView2 text];
  }

  return text2;
}

- (void)updatePlaceholderText:(BOOL)text
{
  textCopy = text;
  textView = [(ASReportAConcernDetailsCell *)self textView];
  text = [textView text];
  v7 = text;
  if (textCopy)
  {
    placeholderText = [(ASReportAConcernDetailsCell *)self placeholderText];
    v9 = [v7 isEqualToString:placeholderText];

    if (!v9)
    {
      return;
    }

    textView2 = [(ASReportAConcernDetailsCell *)self textView];
    [textView2 setText:&stru_1008A39C0];

    textLabel = [(ASReportAConcernDetailsCell *)self textLabel];
    textColor = [textLabel textColor];
    textView3 = [(ASReportAConcernDetailsCell *)self textView];
    [textView3 setTextColor:textColor];
  }

  else
  {
    v13 = [text length];

    if (v13)
    {
      return;
    }

    placeholderText2 = [(ASReportAConcernDetailsCell *)self placeholderText];
    textView4 = [(ASReportAConcernDetailsCell *)self textView];
    [textView4 setText:placeholderText2];

    textLabel = +[UIColor lightGrayColor];
    textColor = [(ASReportAConcernDetailsCell *)self textView];
    [textColor setTextColor:textLabel];
  }
}

@end