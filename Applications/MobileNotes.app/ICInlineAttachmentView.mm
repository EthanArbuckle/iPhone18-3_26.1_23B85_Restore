@interface ICInlineAttachmentView
- (id)containerTableTextView;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)app_updateViewAnnotation;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)openURL:(id)l;
- (void)respondToTapGesture:(id)gesture;
- (void)setupEventHandling;
@end

@implementation ICInlineAttachmentView

- (void)openURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  window = [(ICInlineAttachmentView *)self window];
  v5 = ICCheckedDynamicCast();

  ic_viewControllerManager = [v5 ic_viewControllerManager];
  v7 = ic_viewControllerManager;
  if (ic_viewControllerManager)
  {
    [ic_viewControllerManager openURL:lCopy];
  }
}

- (void)app_updateViewAnnotation
{
  textAttachment = [(ICInlineAttachmentView *)self textAttachment];
  attachment = [textAttachment attachment];

  if ([attachment isHashtagAttachment])
  {
    tokenContentIdentifier = [attachment tokenContentIdentifier];
    note = [attachment note];
    account = [note account];
    v7 = [ICHashtag hashtagWithStandardizedContent:tokenContentIdentifier account:account];

    [(ICInlineAttachmentView *)self ic_annotateWithTag:v7];
  }
}

- (void)setupEventHandling
{
  if (([(ICInlineAttachmentView *)self isLinkAttachmentView]& 1) != 0 || [(ICInlineAttachmentView *)self isCalculateResultAttachmentView])
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"respondToTapGesture:"];
    [v3 setDelegate:self];
    [v3 setNumberOfTapsRequired:1];
    [(ICInlineAttachmentView *)self addGestureRecognizer:v3];
  }

  if (([(ICInlineAttachmentView *)self isLinkAttachmentView]& 1) != 0 || [(ICInlineAttachmentView *)self isCalculateResultAttachmentView])
  {
    contextInteraction = [(ICInlineAttachmentView *)self contextInteraction];

    if (!contextInteraction)
    {
      v5 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
      [(ICInlineAttachmentView *)self setContextInteraction:v5];

      contextInteraction2 = [(ICInlineAttachmentView *)self contextInteraction];
      [(ICInlineAttachmentView *)self addInteraction:contextInteraction2];
    }
  }
}

- (void)respondToTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(ICInlineAttachmentView *)self isLinkAttachmentView])
  {
    textAttachment = [(ICInlineAttachmentView *)self textAttachment];
    attachment = [textAttachment attachment];
    tokenContentIdentifier = [attachment tokenContentIdentifier];
    contextInteraction = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

    if (contextInteraction && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ICInlineAttachmentView *)self openURL:contextInteraction];
    }
  }

  else
  {
    if (![(ICInlineAttachmentView *)self isCalculateResultAttachmentView])
    {
      goto LABEL_8;
    }

    contextInteraction = [(ICInlineAttachmentView *)self contextInteraction];
    [gestureCopy location];
    [contextInteraction _presentMenuAtLocation:?];
  }

LABEL_8:
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(ICInlineAttachmentView *)self isLinkAttachmentView])
  {
    objc_opt_class();
    window = [(ICInlineAttachmentView *)self window];
    attachment2 = ICCheckedDynamicCast();

    ic_viewControllerManager = [attachment2 ic_viewControllerManager];
    noteEditorViewController = [ic_viewControllerManager noteEditorViewController];
    textAttachment = [(ICInlineAttachmentView *)self textAttachment];
    attachment = [textAttachment attachment];

    containerTableTextView = [(ICInlineAttachmentView *)self containerTableTextView];
    [(ICInlineAttachmentView *)self convertPoint:containerTableTextView toView:x, y];
    v14 = [noteEditorViewController contextMenuInteraction:attachment atLocation:containerTableTextView inTableTextView:?];

    goto LABEL_6;
  }

  if ([(ICInlineAttachmentView *)self isCalculateResultAttachmentView])
  {
    textAttachment2 = [(ICInlineAttachmentView *)self textAttachment];
    attachment2 = [textAttachment2 attachment];

    note = [attachment2 note];
    ic_viewControllerManager = [note calculateDocumentController];

    if (!ic_viewControllerManager)
    {
      v14 = 0;
      goto LABEL_7;
    }

    [ic_viewControllerManager updateAffectingChangeCounts:0];
    v14 = [ic_viewControllerManager contextMenuForResultAttachment:attachment2];
LABEL_6:

LABEL_7:
    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)containerTableTextView
{
  superview = [(ICInlineAttachmentView *)self superview];
  if (superview)
  {
    v3 = superview;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v3 superview];

      v3 = superview2;
      if (!superview2)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    superview2 = ICDynamicCast();
  }

  else
  {
    superview2 = 0;
  }

LABEL_8:

  return superview2;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  if ([(ICInlineAttachmentView *)self isLinkAttachmentView])
  {
    textAttachment = [(ICInlineAttachmentView *)self textAttachment];
    attachment = [textAttachment attachment];
    tokenContentIdentifier = [attachment tokenContentIdentifier];
    v10 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10014E9BC;
      v11[3] = &unk_100645BA0;
      v11[4] = self;
      v12 = v10;
      [animatorCopy addCompletion:v11];
    }
  }
}

@end