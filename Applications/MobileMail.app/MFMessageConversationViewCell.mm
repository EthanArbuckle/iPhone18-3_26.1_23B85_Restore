@interface MFMessageConversationViewCell
+ (double)defaultCornerRadius;
- (MFMessageConversationViewCell)initWithFrame:(CGRect)frame;
- (id)description;
- (void)_updateShadow;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMessageFlags:(unint64_t)flags conversationNotificationLevel:(int64_t)level;
- (void)setRoundedCorners:(int64_t)corners;
- (void)setShouldAddShadow:(BOOL)shadow;
@end

@implementation MFMessageConversationViewCell

- (MFMessageConversationViewCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFMessageConversationViewCell;
  v3 = [(MFConversationViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_shouldAddShadow = MUISolariumFeatureEnabled() ^ 1;
  }

  return v3;
}

- (void)dealloc
{
  predictedMailbox = [(MFMessageConversationViewCell *)self predictedMailbox];
  [predictedMailbox cancel];

  v4.receiver = self;
  v4.super_class = MFMessageConversationViewCell;
  [(MFMessageConversationViewCell *)&v4 dealloc];
}

- (void)setMessageFlags:(unint64_t)flags conversationNotificationLevel:(int64_t)level
{
  viewModel = [(MFConversationViewCell *)self viewModel];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E7B24;
  v9[3] = &unk_1006549B0;
  v9[4] = flags;
  v9[5] = level;
  v8 = [viewModel copyWithFlagsModelBuilder:v9];
  [(MFConversationViewCell *)self setViewModel:v8];
}

- (void)setShouldAddShadow:(BOOL)shadow
{
  if (self->_shouldAddShadow != shadow)
  {
    self->_shouldAddShadow = shadow;
    [(MFMessageConversationViewCell *)self _updateShadow];
  }
}

- (void)setRoundedCorners:(int64_t)corners
{
  if (self->_roundedCorners == corners)
  {
    return;
  }

  self->_roundedCorners = corners;
  contentView = [(MFMessageConversationViewCell *)self contentView];
  layer = [contentView layer];

  [layer setCornerCurve:kCACornerCurveContinuous];
  if (corners > 1)
  {
    if (corners == 2)
    {
      v5 = 3;
      goto LABEL_11;
    }

    if (corners == 3)
    {
      v5 = 12;
      goto LABEL_11;
    }

LABEL_12:
    [objc_opt_class() defaultCornerRadius];
    v6 = v7;
    goto LABEL_13;
  }

  if (corners)
  {
    if (corners == 1)
    {
      v5 = 15;
LABEL_11:
      [layer setMaskedCorners:v5];
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v6 = 0.0;
  [layer setMaskedCorners:0];
LABEL_13:
  [layer setCornerRadius:v6];
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
  roundedCorners = [(MFMessageConversationViewCell *)self roundedCorners];
  contentWrapperView = [(MFConversationViewCell *)self contentWrapperView];
  shouldAddShadow = [(MFMessageConversationViewCell *)self shouldAddShadow];
  [objc_opt_class() defaultCornerRadius];
  [contentWrapperView mf_applyingConversationMessageShadow:shouldAddShadow shouldRoundCorners:roundedCorners == 1 cornerRadius:?];
}

- (void)prepareForReuse
{
  predictedMailbox = [(MFMessageConversationViewCell *)self predictedMailbox];
  [predictedMailbox cancel];

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
  viewModel = [(MFConversationViewCell *)self viewModel];
  senderList = [viewModel senderList];
  firstObject = [senderList firstObject];

  v8 = firstObject;
  emailAddressValue = [v8 emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v11 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v8 stringValue];
  }

  v13 = stringValue;

  v28 = v13;
  v14 = +[MFUIStateCaptor sharedCaptor];
  v15 = [v14 redactedStringForString:v13];

  viewModel2 = [(MFConversationViewCell *)self viewModel];
  messageContentRequest = [viewModel2 messageContentRequest];
  message = [messageContentRequest message];

  viewModel3 = [(MFConversationViewCell *)self viewModel];
  if (message)
  {
    [viewModel3 messageContentRequest];
  }

  else
  {
    [viewModel3 messageLoadingContext];
  }
  v20 = ;
  message2 = [v20 message];

  v22 = objc_opt_class();
  viewModel4 = [(MFConversationViewCell *)self viewModel];
  date = [viewModel4 date];
  v25 = [NSDateFormatter ef_formatDate:date shortStyle:0];
  v26 = [NSString stringWithFormat:@" message = <%@: %p; sender = %@ dateSent = %@>", v22, message2, v15, v25];;

  [v4 insertString:v26 atIndex:{objc_msgSend(v4, "length") - 1}];

  return v4;
}

@end