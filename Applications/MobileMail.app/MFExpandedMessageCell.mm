@interface MFExpandedMessageCell
- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)point;
- (BOOL)hasVisibleContent;
- (void)_displayMetricsDidChange;
- (void)prepareForQuickReplyAnimationWithContext:(id)context;
- (void)prepareForReuse;
- (void)setConfiguredForSingleMessageDisplay:(BOOL)display;
- (void)setInteractivelyResizing:(BOOL)resizing;
- (void)setMessageFlags:(unint64_t)flags conversationFlags:(unint64_t)conversationFlags;
- (void)setMessageViewController:(id)controller;
- (void)setPredictedMailbox:(id)mailbox;
- (void)setShouldArchiveByDefault:(BOOL)default;
@end

@implementation MFExpandedMessageCell

- (void)setMessageViewController:(id)controller
{
  controllerCopy = controller;
  messageViewController = self->_messageViewController;
  v15 = controllerCopy;
  if (messageViewController != controllerCopy)
  {
    view = [(MFMessageViewController *)messageViewController view];
    [view removeFromSuperview];

    objc_storeStrong(&self->_messageViewController, controller);
    messageViewController = [(MFExpandedMessageCell *)self messageViewController];
    view2 = [messageViewController view];

    contentView = [(MFExpandedMessageCell *)self contentView];
    [contentView bounds];
    [view2 setFrame:?];

    [view2 setAutoresizingMask:18];
    contentView2 = [(MFExpandedMessageCell *)self contentView];
    [contentView2 addSubview:view2];

    displayMetrics = [(MFConversationViewCell *)self displayMetrics];
    messageViewController2 = [(MFExpandedMessageCell *)self messageViewController];
    messageContentView = [messageViewController2 messageContentView];
    [messageContentView setDisplayMetrics:displayMetrics];

    [(MFExpandedMessageCell *)self setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewMessage];
  }
}

- (void)setConfiguredForSingleMessageDisplay:(BOOL)display
{
  displayCopy = display;
  self->_configuredForSingleMessageDisplay = display;
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  [messageViewController setConfiguredForSingleMessageDisplay:displayCopy];

  v6 = sub_10048B594(self);

  [(MFMessageConversationViewCell *)self setRoundedCorners:v6];
}

- (void)setMessageFlags:(unint64_t)flags conversationFlags:(unint64_t)conversationFlags
{
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  messageContentView = [messageViewController messageContentView];
  headerView = [messageContentView headerView];
  [headerView setMessageFlags:flags conversationFlags:conversationFlags];
}

- (void)prepareForQuickReplyAnimationWithContext:(id)context
{
  contextCopy = context;
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  [messageViewController prepareForQuickReplyAnimationWithContext:contextCopy];
}

- (void)_displayMetricsDidChange
{
  displayMetrics = [(MFConversationViewCell *)self displayMetrics];
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  messageContentView = [messageViewController messageContentView];
  [messageContentView setDisplayMetrics:displayMetrics];
}

- (void)setInteractivelyResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  v16.receiver = self;
  v16.super_class = MFExpandedMessageCell;
  [(MFMessageConversationViewCell *)&v16 setInteractivelyResizing:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  messageContentView = [messageViewController messageContentView];
  headerView = [messageContentView headerView];
  headerBlocks = [headerView headerBlocks];

  v9 = [headerBlocks countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(headerBlocks);
        }

        [*(*(&v12 + 1) + 8 * v11) setInteractivelyResizing:resizingCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [headerBlocks countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setShouldArchiveByDefault:(BOOL)default
{
  defaultCopy = default;
  self->_shouldArchiveByDefault = default;
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  messageContentView = [messageViewController messageContentView];
  [messageContentView setShouldArchiveByDefault:defaultCopy];
}

- (void)setPredictedMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v6.receiver = self;
  v6.super_class = MFExpandedMessageCell;
  [(MFMessageConversationViewCell *)&v6 setPredictedMailbox:mailboxCopy];
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  [messageViewController setPredictedMailbox:mailboxCopy];
}

- (BOOL)hasVisibleContent
{
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  messageContentView = [messageViewController messageContentView];
  hasVisibleContent = [messageContentView hasVisibleContent];

  return hasVisibleContent;
}

- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  messageViewController = [(MFExpandedMessageCell *)self messageViewController];
  messageContentView = [messageViewController messageContentView];
  headerView = [messageContentView headerView];

  [(MFExpandedMessageCell *)self convertPoint:headerView toView:x, y];
  v10 = v9;
  v12 = v11;
  [headerView draggableArea];
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