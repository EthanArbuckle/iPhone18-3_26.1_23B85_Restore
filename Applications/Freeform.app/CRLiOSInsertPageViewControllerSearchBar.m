@interface CRLiOSInsertPageViewControllerSearchBar
- (BOOL)resignFirstResponder;
- (void)p_recursivelyEnableButtonsInView:(id)a3;
- (void)scribbleInteractionDidFinishWriting:(id)a3;
- (void)scribbleInteractionWillBeginWriting:(id)a3;
@end

@implementation CRLiOSInsertPageViewControllerSearchBar

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = CRLiOSInsertPageViewControllerSearchBar;
  v3 = [(CRLiOSInsertPageViewControllerSearchBar *)&v5 resignFirstResponder];
  [(CRLiOSInsertPageViewControllerSearchBar *)self p_recursivelyEnableButtonsInView:self];
  return v3;
}

- (void)p_recursivelyEnableButtonsInView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
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
    v8 = [v4 subviews];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v8);
          }

          [(CRLiOSInsertPageViewControllerSearchBar *)self p_recursivelyEnableButtonsInView:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)scribbleInteractionWillBeginWriting:(id)a3
{
  v5 = a3;
  if ([-[CRLiOSInsertPageViewControllerSearchBar superclass](self "superclass")])
  {
    v9.super_class = [(CRLiOSInsertPageViewControllerSearchBar *)self superclass];
    objc_msgSendSuper(&v9, a2, v5);
  }

  v6 = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
    [v8 performSelector:"scribbleInteractionWillBeginWriting:" withObject:v5];
  }
}

- (void)scribbleInteractionDidFinishWriting:(id)a3
{
  v5 = a3;
  if ([-[CRLiOSInsertPageViewControllerSearchBar superclass](self "superclass")])
  {
    v9.super_class = [(CRLiOSInsertPageViewControllerSearchBar *)self superclass];
    objc_msgSendSuper(&v9, a2, v5);
  }

  v6 = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CRLiOSInsertPageViewControllerSearchBar *)self delegate];
    [v8 performSelector:"scribbleInteractionDidFinishWriting:" withObject:v5];
  }
}

@end