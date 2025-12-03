@interface RAPReportComposerCommentTableViewCell
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (NSString)placeholderText;
- (RAPReportComposerCommentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)preferredHeight;
- (void)_setFont;
- (void)_textDidChange;
- (void)setPlaceholderText:(id)text;
- (void)setPropertiesFromQuestion:(id)question;
- (void)textViewDidBeginEditing:(id)editing;
@end

@implementation RAPReportComposerCommentTableViewCell

- (void)setPlaceholderText:(id)text
{
  textView = self->_textView;
  textCopy = text;
  placeholderLabel = [(TextViewWithPlaceholderText *)textView placeholderLabel];
  [placeholderLabel setText:textCopy];

  v7 = self->_textView;

  [(TextViewWithPlaceholderText *)v7 setNeedsLayout];
}

- (NSString)placeholderText
{
  placeholderLabel = [(TextViewWithPlaceholderText *)self->_textView placeholderLabel];
  text = [placeholderLabel text];

  return text;
}

- (void)textViewDidBeginEditing:(id)editing
{
  if ([(RAPReportComposerCommentTableViewCell *)self analyticTarget])
  {
    analyticTarget = [(RAPReportComposerCommentTableViewCell *)self analyticTarget];

    [GEOAPPortal captureUserAction:10182 target:analyticTarget value:0];
  }
}

- (void)_textDidChange
{
  commentText = [(RAPReportComposerCommentTableViewCell *)self commentText];
  v3 = [RAPCommentQuestion validatedComment:commentText];
  if (([commentText isEqualToString:v3] & 1) == 0)
  {
    [(RAPReportComposerCommentTableViewCell *)self setCommentText:v3];
  }

  textDidChange = [(RAPReportComposerCommentTableViewCell *)self textDidChange];

  if (textDidChange)
  {
    textDidChange2 = [(RAPReportComposerCommentTableViewCell *)self textDidChange];
    commentText2 = [(RAPReportComposerCommentTableViewCell *)self commentText];
    (textDidChange2)[2](textDidChange2, commentText2);
  }
}

- (void)setPropertiesFromQuestion:(id)question
{
  questionCopy = question;
  [(RAPReportComposerCommentTableViewCell *)self setMaximumTextLength:+[RAPCommentQuestion maximumCommentLength]];
  commentsPlaceholderText = [questionCopy commentsPlaceholderText];
  [(RAPReportComposerCommentTableViewCell *)self setPlaceholderText:commentsPlaceholderText];

  comment = [questionCopy comment];
  commentText = [(RAPReportComposerCommentTableViewCell *)self commentText];
  v7 = [comment isEqualToString:commentText];

  if ((v7 & 1) == 0)
  {
    comment2 = [questionCopy comment];
    [(RAPReportComposerCommentTableViewCell *)self setCommentText:comment2];
  }
}

- (void)_setFont
{
  v3 = +[RAPFontManager regularTitleFont];
  [(TextViewWithPlaceholderText *)self->_textView setFont:v3];

  font = [(TextViewWithPlaceholderText *)self->_textView font];
  placeholderLabel = [(TextViewWithPlaceholderText *)self->_textView placeholderLabel];
  [placeholderLabel setFont:font];

  placeholderLabel2 = [(TextViewWithPlaceholderText *)self->_textView placeholderLabel];
  v7 = +[UIColor tertiaryLabelColor];
  [placeholderLabel2 setTextColor:v7];

  [(RAPReportComposerCommentTableViewCell *)self preferredHeight];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:?];
}

- (RAPReportComposerCommentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v39.receiver = self;
  v39.super_class = RAPReportComposerCommentTableViewCell;
  v4 = [(RAPReportComposerCommentTableViewCell *)&v39 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_maximumTextLength = -1;
    [(RAPReportComposerCommentTableViewCell *)v4 setSelectionStyle:0];
    v6 = [TextViewWithPlaceholderText alloc];
    contentView = [(RAPReportComposerCommentTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [(TextViewWithPlaceholderText *)v6 initWithFrame:?];
    textView = v5->_textView;
    v5->_textView = v8;

    [(TextViewWithPlaceholderText *)v5->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TextViewWithPlaceholderText *)v5->_textView setDelegate:v5];
    contentView2 = [(RAPReportComposerCommentTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_textView];

    heightAnchor = [(TextViewWithPlaceholderText *)v5->_textView heightAnchor];
    [(RAPReportComposerCommentTableViewCell *)v5 preferredHeight];
    v12 = [heightAnchor constraintEqualToConstant:?];
    heightConstraint = v5->_heightConstraint;
    v5->_heightConstraint = v12;

    leadingAnchor = [(TextViewWithPlaceholderText *)v5->_textView leadingAnchor];
    contentView3 = [(RAPReportComposerCommentTableViewCell *)v5 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v40[0] = v35;
    trailingAnchor = [(TextViewWithPlaceholderText *)v5->_textView trailingAnchor];
    contentView4 = [(RAPReportComposerCommentTableViewCell *)v5 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
    v40[1] = v31;
    topAnchor = [(TextViewWithPlaceholderText *)v5->_textView topAnchor];
    contentView5 = [(RAPReportComposerCommentTableViewCell *)v5 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v40[2] = v16;
    bottomAnchor = [(TextViewWithPlaceholderText *)v5->_textView bottomAnchor];
    contentView6 = [(RAPReportComposerCommentTableViewCell *)v5 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v40[3] = v20;
    v40[4] = v5->_heightConstraint;
    v21 = [NSArray arrayWithObjects:v40 count:5];
    [NSLayoutConstraint activateConstraints:v21];

    [(RAPReportComposerCommentTableViewCell *)v5 _setFont];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v5 selector:"_setFont" name:UIContentSizeCategoryDidChangeNotification object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v5 selector:"_textDidChange" name:UITextViewTextDidChangeNotification object:v5->_textView];

    [(NSLayoutConstraint *)v5->_heightConstraint setActive:1];
    traitCollection = [(RAPReportComposerCommentTableViewCell *)v5 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      [(TextViewWithPlaceholderText *)v5->_textView setTextContainerInset:0.0, 0.0, 0.0, 0.0];
      v26 = +[UIColor systemGray6Color];
      [(TextViewWithPlaceholderText *)v5->_textView setBackgroundColor:v26];

      layer = [(TextViewWithPlaceholderText *)v5->_textView layer];
      [layer setCornerRadius:7.5];

      [(TextViewWithPlaceholderText *)v5->_textView setClipsToBounds:1];
      v28 = +[UIColor clearColor];
      [(RAPReportComposerCommentTableViewCell *)v5 setBackgroundColor:v28];
    }
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(RAPReportComposerCommentTableViewCell *)self preferredHeight];
  v3 = v2;
  v4 = UITableViewAutomaticDimension;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  width = size.width;
  [(RAPReportComposerCommentTableViewCell *)self intrinsicContentSize:size.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (double)preferredHeight
{
  font = [(TextViewWithPlaceholderText *)self->_textView font];
  [font _mapkit_scaledValueForValue:146.0];
  v4 = v3;

  return v4;
}

@end