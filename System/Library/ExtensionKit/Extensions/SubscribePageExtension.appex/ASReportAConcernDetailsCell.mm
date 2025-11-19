@interface ASReportAConcernDetailsCell
- (ASReportAConcernDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)text;
- (void)layoutSubviews;
- (void)setPlaceholderText:(id)a3;
- (void)updatePlaceholderText:(BOOL)a3;
@end

@implementation ASReportAConcernDetailsCell

- (ASReportAConcernDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = ASReportAConcernDetailsCell;
  v4 = [(ASReportAConcernDetailsCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textView = v4->_textView;
    v4->_textView = v5;

    v7 = [(ASReportAConcernDetailsCell *)v4 textLabel];
    v8 = [v7 font];
    [(UITextView *)v4->_textView setFont:v8];

    v9 = [(ASReportAConcernDetailsCell *)v4 contentView];
    [v9 addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = ASReportAConcernDetailsCell;
  [(ASReportAConcernDetailsCell *)&v38 layoutSubviews];
  v3 = [(ASReportAConcernDetailsCell *)self contentView];
  v4 = [v3 readableContentGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(ASReportAConcernDetailsCell *)self textView];
  v14 = [v13 textContainer];
  [v14 lineFragmentPadding];
  v37 = v15;

  v16 = [(ASReportAConcernDetailsCell *)self contentView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect_8 = v21;
  v24 = v23;

  v25 = [(ASReportAConcernDetailsCell *)self textView];
  [v25 setFrame:{v18, v20, v22, v24}];

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
  v32 = [(ASReportAConcernDetailsCell *)self textView];
  [v32 setTextContainerInset:{v36, v35, v29, v31}];
}

- (void)setPlaceholderText:(id)a3
{
  objc_storeStrong(&self->_placeholderText, a3);
  if (a3)
  {
    v5 = [(ASReportAConcernDetailsCell *)self textView];
    [v5 setDelegate:self];

    [(ASReportAConcernDetailsCell *)self updatePlaceholderText:0];
  }
}

- (NSString)text
{
  v3 = [(ASReportAConcernDetailsCell *)self textView];
  v4 = [v3 text];
  v5 = [(ASReportAConcernDetailsCell *)self placeholderText];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(ASReportAConcernDetailsCell *)self textView];
    v7 = [v8 text];
  }

  return v7;
}

- (void)updatePlaceholderText:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASReportAConcernDetailsCell *)self textView];
  v6 = [v5 text];
  v7 = v6;
  if (v3)
  {
    v8 = [(ASReportAConcernDetailsCell *)self placeholderText];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      return;
    }

    v10 = [(ASReportAConcernDetailsCell *)self textView];
    [v10 setText:&stru_100883270];

    v16 = [(ASReportAConcernDetailsCell *)self textLabel];
    v11 = [v16 textColor];
    v12 = [(ASReportAConcernDetailsCell *)self textView];
    [v12 setTextColor:v11];
  }

  else
  {
    v13 = [v6 length];

    if (v13)
    {
      return;
    }

    v14 = [(ASReportAConcernDetailsCell *)self placeholderText];
    v15 = [(ASReportAConcernDetailsCell *)self textView];
    [v15 setText:v14];

    v16 = +[UIColor lightGrayColor];
    v11 = [(ASReportAConcernDetailsCell *)self textView];
    [v11 setTextColor:v16];
  }
}

@end