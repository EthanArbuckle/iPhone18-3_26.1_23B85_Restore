@interface MFExpandedMessageCell
- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)a3;
- (BOOL)hasVisibleContent;
- (void)_displayMetricsDidChange;
- (void)prepareForQuickReplyAnimationWithContext:(id)a3;
- (void)prepareForReuse;
- (void)setConfiguredForSingleMessageDisplay:(BOOL)a3;
- (void)setInteractivelyResizing:(BOOL)a3;
- (void)setMessageFlags:(unint64_t)a3 conversationFlags:(unint64_t)a4;
- (void)setMessageViewController:(id)a3;
- (void)setPredictedMailbox:(id)a3;
- (void)setShouldArchiveByDefault:(BOOL)a3;
@end

@implementation MFExpandedMessageCell

- (void)setMessageViewController:(id)a3
{
  v5 = a3;
  messageViewController = self->_messageViewController;
  v15 = v5;
  if (messageViewController != v5)
  {
    v7 = [(MFMessageViewController *)messageViewController view];
    [v7 removeFromSuperview];

    objc_storeStrong(&self->_messageViewController, a3);
    v8 = [(MFExpandedMessageCell *)self messageViewController];
    v9 = [v8 view];

    v10 = [(MFExpandedMessageCell *)self contentView];
    [v10 bounds];
    [v9 setFrame:?];

    [v9 setAutoresizingMask:18];
    v11 = [(MFExpandedMessageCell *)self contentView];
    [v11 addSubview:v9];

    v12 = [(MFConversationViewCell *)self displayMetrics];
    v13 = [(MFExpandedMessageCell *)self messageViewController];
    v14 = [v13 messageContentView];
    [v14 setDisplayMetrics:v12];

    [(MFExpandedMessageCell *)self setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewMessage];
  }
}

- (void)setConfiguredForSingleMessageDisplay:(BOOL)a3
{
  v3 = a3;
  self->_configuredForSingleMessageDisplay = a3;
  v5 = [(MFExpandedMessageCell *)self messageViewController];
  [v5 setConfiguredForSingleMessageDisplay:v3];

  v6 = sub_10048B594(self);

  [(MFMessageConversationViewCell *)self setRoundedCorners:v6];
}

- (void)setMessageFlags:(unint64_t)a3 conversationFlags:(unint64_t)a4
{
  v8 = [(MFExpandedMessageCell *)self messageViewController];
  v6 = [v8 messageContentView];
  v7 = [v6 headerView];
  [v7 setMessageFlags:a3 conversationFlags:a4];
}

- (void)prepareForQuickReplyAnimationWithContext:(id)a3
{
  v5 = a3;
  v4 = [(MFExpandedMessageCell *)self messageViewController];
  [v4 prepareForQuickReplyAnimationWithContext:v5];
}

- (void)_displayMetricsDidChange
{
  v5 = [(MFConversationViewCell *)self displayMetrics];
  v3 = [(MFExpandedMessageCell *)self messageViewController];
  v4 = [v3 messageContentView];
  [v4 setDisplayMetrics:v5];
}

- (void)setInteractivelyResizing:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = MFExpandedMessageCell;
  [(MFMessageConversationViewCell *)&v16 setInteractivelyResizing:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(MFExpandedMessageCell *)self messageViewController];
  v6 = [v5 messageContentView];
  v7 = [v6 headerView];
  v8 = [v7 headerBlocks];

  v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) setInteractivelyResizing:v3];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setShouldArchiveByDefault:(BOOL)a3
{
  v3 = a3;
  self->_shouldArchiveByDefault = a3;
  v5 = [(MFExpandedMessageCell *)self messageViewController];
  v4 = [v5 messageContentView];
  [v4 setShouldArchiveByDefault:v3];
}

- (void)setPredictedMailbox:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFExpandedMessageCell;
  [(MFMessageConversationViewCell *)&v6 setPredictedMailbox:v4];
  v5 = [(MFExpandedMessageCell *)self messageViewController];
  [v5 setPredictedMailbox:v4];
}

- (BOOL)hasVisibleContent
{
  v2 = [(MFExpandedMessageCell *)self messageViewController];
  v3 = [v2 messageContentView];
  v4 = [v3 hasVisibleContent];

  return v4;
}

- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(MFExpandedMessageCell *)self messageViewController];
  v7 = [v6 messageContentView];
  v8 = [v7 headerView];

  [(MFExpandedMessageCell *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;
  [v8 draggableArea];
  v16.x = v10;
  v16.y = v12;
  if (CGRectContainsPoint(v17, v16))
  {
    v13 = [(MFExpandedMessageCell *)self hitTest:0 withEvent:x, y];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = MFExpandedMessageCell;
  [(MFMessageConversationViewCell *)&v2 prepareForReuse];
}

@end