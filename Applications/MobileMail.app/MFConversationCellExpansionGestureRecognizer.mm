@interface MFConversationCellExpansionGestureRecognizer
- (MFConversationCellExpansionGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)cancel;
@end

@implementation MFConversationCellExpansionGestureRecognizer

- (MFConversationCellExpansionGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = MFConversationCellExpansionGestureRecognizer;
  v7 = [(MFConversationCellExpansionGestureRecognizer *)&v10 initWithTarget:targetCopy action:action];
  v8 = v7;
  if (v7)
  {
    [(MFConversationCellExpansionGestureRecognizer *)v7 setCancelsTouchesInView:0];
  }

  return v8;
}

- (void)cancel
{
  [(MFConversationCellExpansionGestureRecognizer *)self setEnabled:0];

  [(MFConversationCellExpansionGestureRecognizer *)self setEnabled:1];
}

@end