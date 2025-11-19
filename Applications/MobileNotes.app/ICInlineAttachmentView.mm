@interface ICInlineAttachmentView
- (id)containerTableTextView;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)app_updateViewAnnotation;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)openURL:(id)a3;
- (void)respondToTapGesture:(id)a3;
- (void)setupEventHandling;
@end

@implementation ICInlineAttachmentView

- (void)openURL:(id)a3
{
  v8 = a3;
  objc_opt_class();
  v4 = [(ICInlineAttachmentView *)self window];
  v5 = ICCheckedDynamicCast();

  v6 = [v5 ic_viewControllerManager];
  v7 = v6;
  if (v6)
  {
    [v6 openURL:v8];
  }
}

- (void)app_updateViewAnnotation
{
  v3 = [(ICInlineAttachmentView *)self textAttachment];
  v8 = [v3 attachment];

  if ([v8 isHashtagAttachment])
  {
    v4 = [v8 tokenContentIdentifier];
    v5 = [v8 note];
    v6 = [v5 account];
    v7 = [ICHashtag hashtagWithStandardizedContent:v4 account:v6];

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
    v4 = [(ICInlineAttachmentView *)self contextInteraction];

    if (!v4)
    {
      v5 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
      [(ICInlineAttachmentView *)self setContextInteraction:v5];

      v6 = [(ICInlineAttachmentView *)self contextInteraction];
      [(ICInlineAttachmentView *)self addInteraction:v6];
    }
  }
}

- (void)respondToTapGesture:(id)a3
{
  v8 = a3;
  if ([(ICInlineAttachmentView *)self isLinkAttachmentView])
  {
    v4 = [(ICInlineAttachmentView *)self textAttachment];
    v5 = [v4 attachment];
    v6 = [v5 tokenContentIdentifier];
    v7 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ICInlineAttachmentView *)self openURL:v7];
    }
  }

  else
  {
    if (![(ICInlineAttachmentView *)self isCalculateResultAttachmentView])
    {
      goto LABEL_8;
    }

    v7 = [(ICInlineAttachmentView *)self contextInteraction];
    [v8 location];
    [v7 _presentMenuAtLocation:?];
  }

LABEL_8:
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(ICInlineAttachmentView *)self isLinkAttachmentView])
  {
    objc_opt_class();
    v7 = [(ICInlineAttachmentView *)self window];
    v8 = ICCheckedDynamicCast();

    v9 = [v8 ic_viewControllerManager];
    v10 = [v9 noteEditorViewController];
    v11 = [(ICInlineAttachmentView *)self textAttachment];
    v12 = [v11 attachment];

    v13 = [(ICInlineAttachmentView *)self containerTableTextView];
    [(ICInlineAttachmentView *)self convertPoint:v13 toView:x, y];
    v14 = [v10 contextMenuInteraction:v12 atLocation:v13 inTableTextView:?];

    goto LABEL_6;
  }

  if ([(ICInlineAttachmentView *)self isCalculateResultAttachmentView])
  {
    v15 = [(ICInlineAttachmentView *)self textAttachment];
    v8 = [v15 attachment];

    v16 = [v8 note];
    v9 = [v16 calculateDocumentController];

    if (!v9)
    {
      v14 = 0;
      goto LABEL_7;
    }

    [v9 updateAffectingChangeCounts:0];
    v14 = [v9 contextMenuForResultAttachment:v8];
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
  v2 = [(ICInlineAttachmentView *)self superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v4 = ICDynamicCast();
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  if ([(ICInlineAttachmentView *)self isLinkAttachmentView])
  {
    v7 = [(ICInlineAttachmentView *)self textAttachment];
    v8 = [v7 attachment];
    v9 = [v8 tokenContentIdentifier];
    v10 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10014E9BC;
      v11[3] = &unk_100645BA0;
      v11[4] = self;
      v12 = v10;
      [v6 addCompletion:v11];
    }
  }
}

@end