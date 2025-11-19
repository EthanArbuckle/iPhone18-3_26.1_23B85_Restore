@interface MFMessageConversationViewCell
+ (double)defaultCornerRadius;
- (MFMessageConversationViewCell)initWithFrame:(CGRect)a3;
- (id)description;
- (void)_updateShadow;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMessageFlags:(unint64_t)a3 conversationNotificationLevel:(int64_t)a4;
- (void)setRoundedCorners:(int64_t)a3;
- (void)setShouldAddShadow:(BOOL)a3;
@end

@implementation MFMessageConversationViewCell

- (MFMessageConversationViewCell)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MFMessageConversationViewCell;
  v3 = [(MFConversationViewCell *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->_shouldAddShadow = MUISolariumFeatureEnabled() ^ 1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(MFMessageConversationViewCell *)self predictedMailbox];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = MFMessageConversationViewCell;
  [(MFMessageConversationViewCell *)&v4 dealloc];
}

- (void)setMessageFlags:(unint64_t)a3 conversationNotificationLevel:(int64_t)a4
{
  v7 = [(MFConversationViewCell *)self viewModel];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E7B24;
  v9[3] = &unk_1006549B0;
  v9[4] = a3;
  v9[5] = a4;
  v8 = [v7 copyWithFlagsModelBuilder:v9];
  [(MFConversationViewCell *)self setViewModel:v8];
}

- (void)setShouldAddShadow:(BOOL)a3
{
  if (self->_shouldAddShadow != a3)
  {
    self->_shouldAddShadow = a3;
    [(MFMessageConversationViewCell *)self _updateShadow];
  }
}

- (void)setRoundedCorners:(int64_t)a3
{
  if (self->_roundedCorners == a3)
  {
    return;
  }

  self->_roundedCorners = a3;
  v4 = [(MFMessageConversationViewCell *)self contentView];
  v8 = [v4 layer];

  [v8 setCornerCurve:kCACornerCurveContinuous];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = 3;
      goto LABEL_11;
    }

    if (a3 == 3)
    {
      v5 = 12;
      goto LABEL_11;
    }

LABEL_12:
    [objc_opt_class() defaultCornerRadius];
    v6 = v7;
    goto LABEL_13;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 15;
LABEL_11:
      [v8 setMaskedCorners:v5];
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v6 = 0.0;
  [v8 setMaskedCorners:0];
LABEL_13:
  [v8 setCornerRadius:v6];
}

+ (double)defaultCornerRadius
{
  v2 = MUISolariumFeatureEnabled();
  result = 12.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MFMessageConversationViewCell;
  [(MFMessageConversationViewCell *)&v3 layoutSubviews];
  [(MFMessageConversationViewCell *)self _updateShadow];
}

- (void)_updateShadow
{
  v3 = [(MFMessageConversationViewCell *)self roundedCorners];
  v5 = [(MFConversationViewCell *)self contentWrapperView];
  v4 = [(MFMessageConversationViewCell *)self shouldAddShadow];
  [objc_opt_class() defaultCornerRadius];
  [v5 mf_applyingConversationMessageShadow:v4 shouldRoundCorners:v3 == 1 cornerRadius:?];
}

- (void)prepareForReuse
{
  v3 = [(MFMessageConversationViewCell *)self predictedMailbox];
  [v3 cancel];

  [(MFMessageConversationViewCell *)self setPredictedMailbox:0];
  v4.receiver = self;
  v4.super_class = MFMessageConversationViewCell;
  [(MFConversationViewCell *)&v4 prepareForReuse];
}

- (id)description
{
  v29.receiver = self;
  v29.super_class = MFMessageConversationViewCell;
  v3 = [(MFMessageConversationViewCell *)&v29 description];
  v4 = [v3 mutableCopy];

  [v4 replaceOccurrencesOfString:@"baseClass = ([^;]*); " withString:&stru_100662A88 options:1024 range:{0, objc_msgSend(v4, "length")}];
  v5 = [(MFConversationViewCell *)self viewModel];
  v6 = [v5 senderList];
  v7 = [v6 firstObject];

  v8 = v7;
  v9 = [v8 emailAddressValue];
  v10 = [v9 simpleAddress];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v8 stringValue];
  }

  v13 = v12;

  v28 = v13;
  v14 = +[MFUIStateCaptor sharedCaptor];
  v15 = [v14 redactedStringForString:v13];

  v16 = [(MFConversationViewCell *)self viewModel];
  v17 = [v16 messageContentRequest];
  v18 = [v17 message];

  v19 = [(MFConversationViewCell *)self viewModel];
  if (v18)
  {
    [v19 messageContentRequest];
  }

  else
  {
    [v19 messageLoadingContext];
  }
  v20 = ;
  v21 = [v20 message];

  v22 = objc_opt_class();
  v23 = [(MFConversationViewCell *)self viewModel];
  v24 = [v23 date];
  v25 = [NSDateFormatter ef_formatDate:v24 shortStyle:0];
  v26 = [NSString stringWithFormat:@" message = <%@: %p; sender = %@ dateSent = %@>", v22, v21, v15, v25];;

  [v4 insertString:v26 atIndex:{objc_msgSend(v4, "length") - 1}];

  return v4;
}

@end