@interface MailActionViewHeader
+ (double)defaultHeightWithDisplayMetrics:(id)metrics;
- (MailActionViewHeader)initWithFrame:(CGRect)frame;
- (double)_baselineToBaselineSpacingInConversation;
- (double)_messageBottomPaddingInConversation;
- (double)_messageTopPaddingInConversation;
- (double)_topToSenderBaselineInConversation;
- (void)_createPrimaryViews;
- (void)_setAvatarViewFrame:(CGRect)frame;
- (void)_updateFonts;
- (void)_updateLabelColor;
- (void)updateTitle:(id)title subject:(id)subject;
@end

@implementation MailActionViewHeader

- (MailActionViewHeader)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MailActionViewHeader;
  v3 = [(MFCollapsedMessageCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMessageConversationViewCell *)v3 setShouldAddShadow:0];
    [(MFCollapsedMessageCell *)v4 setIsActionCardHeader:1];
  }

  return v4;
}

- (void)_createPrimaryViews
{
  v15.receiver = self;
  v15.super_class = MailActionViewHeader;
  [(MFCollapsedMessageCell *)&v15 _createPrimaryViews];
  [(MailActionViewHeader *)self _updateLabelColor];
  v3 = +[UIColor clearColor];
  contentView = [(MailActionViewHeader *)self contentView];
  [contentView setBackgroundColor:v3];

  avatarView = [(MFCollapsedMessageCell *)self avatarView];
  [avatarView setAlpha:1.0];

  [(MailActionViewHeader *)self setUserInteractionEnabled:0];
  contentView2 = [(MailActionViewHeader *)self contentView];
  [contentView2 setClipsToBounds:0];

  v7 = [UIImageView alloc];
  avatarView2 = [(MFCollapsedMessageCell *)self avatarView];
  [avatarView2 frame];
  v9 = [v7 initWithFrame:?];

  contentView3 = [(MailActionViewHeader *)self contentView];
  [contentView3 addSubview:v9];

  v11 = +[UIColor secondaryLabelColor];
  [v9 setTintColor:v11];

  [v9 setContentMode:1];
  layer = [v9 layer];
  v13 = [UIColor colorWithWhite:0.0 alpha:0.25];
  [layer setShadowColor:{objc_msgSend(v13, "CGColor")}];

  [layer setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];
  LODWORD(v14) = 1.0;
  [layer setShadowOpacity:v14];
  [layer setShadowRadius:3.0];
  [(MailActionViewHeader *)self setHeaderIconView:v9];
}

- (void)_updateLabelColor
{
  v5 = +[UIColor labelColor];
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [senderOrSubjectLabel setTextColor:v5];

  v6 = +[UIColor secondaryLabelColor];
  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel setTextColor:v6];
}

- (void)_updateFonts
{
  v5 = +[UIFont mf_messageHeaderSenderLabelFontForMailActionHeader];
  senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [senderOrSubjectLabel setFont:v5];

  v6 = +[UIFont mf_messageHeaderSummaryLabelFontForMailActionHeader];
  summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
  [summaryLabel setFont:v6];
}

- (double)_topToSenderBaselineInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics topToSenderBaselineInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

- (double)_baselineToBaselineSpacingInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics baselineToBaselineSpacingInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

- (double)_messageBottomPaddingInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics messageBottomPaddingInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

- (double)_messageTopPaddingInConversation
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  [displayMetrics messageTopPaddingInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

+ (double)defaultHeightWithDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  [metricsCopy messageTopPaddingInConversationForMailActionHeader];
  v5 = v4;
  [metricsCopy topToSenderBaselineInConversationForMailActionHeader];
  v7 = v6;
  [metricsCopy baselineToBaselineSpacingInConversationForMailActionHeader];
  v9 = v8;
  [metricsCopy messageBottomPaddingInConversationForMailActionHeader];
  v11 = v10;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v14 = v5 + v7 + v9 + v11;

  if (IsAccessibilityCategory)
  {
    [metricsCopy baselineToBaselineSpacingInConversationForMailActionHeader];
    v14 = v14 + v15;
  }

  return v14;
}

- (void)_setAvatarViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = MailActionViewHeader;
  [(MFCollapsedMessageCell *)&v9 _setAvatarViewFrame:?];
  headerIconView = [(MailActionViewHeader *)self headerIconView];
  [headerIconView setFrame:{x, y, width, height}];
}

- (void)updateTitle:(id)title subject:(id)subject
{
  titleCopy = title;
  subjectCopy = subject;
  title = [(MailActionViewHeader *)self title];
  if (([title isEqualToString:titleCopy] & 1) == 0)
  {

    goto LABEL_5;
  }

  subject = [(MailActionViewHeader *)self subject];
  v9 = [subject isEqualToString:subjectCopy];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = [UIImage imageNamed:@"MFActionViewHeaderIcon"];
    headerIconView = [(MailActionViewHeader *)self headerIconView];
    [headerIconView setImage:v10];

    avatarView = [(MFCollapsedMessageCell *)self avatarView];
    [avatarView removeFromSuperview];

    [(MailActionViewHeader *)self setTitle:titleCopy];
    [(MailActionViewHeader *)self setSubject:subjectCopy];
    senderOrSubjectLabel = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
    [senderOrSubjectLabel setText:titleCopy];

    summaryLabel = [(MFCollapsedMessageCell *)self summaryLabel];
    [summaryLabel setText:subjectCopy];

    [(MailActionViewHeader *)self setNeedsLayout];
  }
}

@end