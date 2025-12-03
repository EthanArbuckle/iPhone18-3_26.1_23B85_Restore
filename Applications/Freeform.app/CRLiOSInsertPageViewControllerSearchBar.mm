@interface CRLiOSInsertPageViewControllerSearchBar
- (BOOL)resignFirstResponder;
- (void)p_recursivelyEnableButtonsInView:(id)view;
- (void)scribbleInteractionDidFinishWriting:(id)writing;
- (void)scribbleInteractionWillBeginWriting:(id)writing;
@end

@implementation CRLiOSInsertPageViewControllerSearchBar

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewControllerSearchBar;
  resignFirstResponder = [(CRLiOSInsertPageViewControllerSearchBar *)&v5 resignFirstResponder];
  [(CRLiOSInsertPageViewControllerSearchBar *)self p_recursivelyEnableButtonsInView:self];
  return resignFirstResponder;
}

- (void)p_recursivelyEnableButtonsInView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, viewCopy);
  v7 = v6;
  if (v6)
  {
    [v6 setEnabled:1];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [viewCopy subviews];
    v9 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(subviews);
          }

          [(CRLiOSInsertPageViewControllerSearchBar *)self p_recursivelyEnableButtonsInView:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)scribbleInteractionWillBeginWriting:(id)writing
{
  writingCopy = writing;
  if ([-[CRLiOSInsertPageViewControllerSearchBar superclass](self "superclass")])
  {
    v9.super_class = [(CRLiOSInsertPageViewControllerSearchBar *)self superclass];
    objc_msgSendSuper(&v9, a2, writingCopy);
  }

  delegate = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
    [delegate2 performSelector:"scribbleInteractionWillBeginWriting:" withObject:writingCopy];
  }
}

- (void)scribbleInteractionDidFinishWriting:(id)writing
{
  writingCopy = writing;
  if ([-[CRLiOSInsertPageViewControllerSearchBar superclass](self "superclass")])
  {
    v9.super_class = [(CRLiOSInsertPageViewControllerSearchBar *)self superclass];
    objc_msgSendSuper(&v9, a2, writingCopy);
  }

  delegate = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
    [delegate2 performSelector:"scribbleInteractionDidFinishWriting:" withObject:writingCopy];
  }
}

@end