@interface _SFFindOnPageUIActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (_SFFindOnPageUIActivity)initWithWebView:(id)view;
- (void)activityDidFinish:(BOOL)finish;
- (void)performActivity;
@end

@implementation _SFFindOnPageUIActivity

- (_SFFindOnPageUIActivity)initWithWebView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _SFFindOnPageUIActivity;
  v6 = [(UIActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webView, view);
    v8 = v7;
  }

  return v7;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    LOBYTE(v6) = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          activeWebView = [v9 activeWebView];
          v6 = [activeWebView URL];

          if (!v6)
          {
            goto LABEL_13;
          }

          LOBYTE(v6) = 1;
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_13:

  return v6 & 1;
}

- (void)performActivity
{
  [(_SFWebView *)self->_webView find:0];

  [(_SFFindOnPageUIActivity *)self activityDidFinish:1];
}

- (void)activityDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v5.receiver = self;
  v5.super_class = _SFFindOnPageUIActivity;
  [(_SFActivity *)&v5 activityDidFinish:?];
  if (finishCopy)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didFindOnPageWithTrigger:1];
  }
}

@end