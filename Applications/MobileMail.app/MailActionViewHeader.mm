@interface MailActionViewHeader
+ (double)defaultHeightWithDisplayMetrics:(id)a3;
- (MailActionViewHeader)initWithFrame:(CGRect)a3;
- (double)_baselineToBaselineSpacingInConversation;
- (double)_messageBottomPaddingInConversation;
- (double)_messageTopPaddingInConversation;
- (double)_topToSenderBaselineInConversation;
- (void)_createPrimaryViews;
- (void)_setAvatarViewFrame:(CGRect)a3;
- (void)_updateFonts;
- (void)_updateLabelColor;
- (void)updateTitle:(id)a3 subject:(id)a4;
@end

@implementation MailActionViewHeader

- (MailActionViewHeader)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MailActionViewHeader;
  v3 = [(MFCollapsedMessageCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [(MailActionViewHeader *)self contentView];
  [v4 setBackgroundColor:v3];

  v5 = [(MFCollapsedMessageCell *)self avatarView];
  [v5 setAlpha:1.0];

  [(MailActionViewHeader *)self setUserInteractionEnabled:0];
  v6 = [(MailActionViewHeader *)self contentView];
  [v6 setClipsToBounds:0];

  v7 = [UIImageView alloc];
  v8 = [(MFCollapsedMessageCell *)self avatarView];
  [v8 frame];
  v9 = [v7 initWithFrame:?];

  v10 = [(MailActionViewHeader *)self contentView];
  [v10 addSubview:v9];

  v11 = +[UIColor secondaryLabelColor];
  [v9 setTintColor:v11];

  [v9 setContentMode:1];
  v12 = [v9 layer];
  v13 = [UIColor colorWithWhite:0.0 alpha:0.25];
  [v12 setShadowColor:{objc_msgSend(v13, "CGColor")}];

  [v12 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];
  LODWORD(v14) = 1.0;
  [v12 setShadowOpacity:v14];
  [v12 setShadowRadius:3.0];
  [(MailActionViewHeader *)self setHeaderIconView:v9];
}

- (void)_updateLabelColor
{
  v5 = +[UIColor labelColor];
  v3 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v3 setTextColor:v5];

  v6 = +[UIColor secondaryLabelColor];
  v4 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v4 setTextColor:v6];
}

- (void)_updateFonts
{
  v5 = +[UIFont mf_messageHeaderSenderLabelFontForMailActionHeader];
  v3 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
  [v3 setFont:v5];

  v6 = +[UIFont mf_messageHeaderSummaryLabelFontForMailActionHeader];
  v4 = [(MFCollapsedMessageCell *)self summaryLabel];
  [v4 setFont:v6];
}

- (double)_topToSenderBaselineInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 topToSenderBaselineInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

- (double)_baselineToBaselineSpacingInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 baselineToBaselineSpacingInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

- (double)_messageBottomPaddingInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 messageBottomPaddingInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

- (double)_messageTopPaddingInConversation
{
  v2 = [(MFConversationViewCell *)self displayMetrics];
  [v2 messageTopPaddingInConversationForMailActionHeader];
  v4 = v3;

  return v4;
}

+ (double)defaultHeightWithDisplayMetrics:(id)a3
{
  v3 = a3;
  [v3 messageTopPaddingInConversationForMailActionHeader];
  v5 = v4;
  [v3 topToSenderBaselineInConversationForMailActionHeader];
  v7 = v6;
  [v3 baselineToBaselineSpacingInConversationForMailActionHeader];
  v9 = v8;
  [v3 messageBottomPaddingInConversationForMailActionHeader];
  v11 = v10;
  v12 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);
  v14 = v5 + v7 + v9 + v11;

  if (IsAccessibilityCategory)
  {
    [v3 baselineToBaselineSpacingInConversationForMailActionHeader];
    v14 = v14 + v15;
  }

  return v14;
}

- (void)_setAvatarViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = MailActionViewHeader;
  [(MFCollapsedMessageCell *)&v9 _setAvatarViewFrame:?];
  v8 = [(MailActionViewHeader *)self headerIconView];
  [v8 setFrame:{x, y, width, height}];
}

- (void)updateTitle:(id)a3 subject:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(MailActionViewHeader *)self title];
  if (([v7 isEqualToString:v15] & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [(MailActionViewHeader *)self subject];
  v9 = [v8 isEqualToString:v6];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = [UIImage imageNamed:@"MFActionViewHeaderIcon"];
    v11 = [(MailActionViewHeader *)self headerIconView];
    [v11 setImage:v10];

    v12 = [(MFCollapsedMessageCell *)self avatarView];
    [v12 removeFromSuperview];

    [(MailActionViewHeader *)self setTitle:v15];
    [(MailActionViewHeader *)self setSubject:v6];
    v13 = [(MFCollapsedMessageCell *)self senderOrSubjectLabel];
    [v13 setText:v15];

    v14 = [(MFCollapsedMessageCell *)self summaryLabel];
    [v14 setText:v6];

    [(MailActionViewHeader *)self setNeedsLayout];
  }
}

@end