@interface AKActionController
- (AKActionController)initWithController:(id)a3;
- (AKController)controller;
- (BOOL)_isSenderEnabled:(id)a3 segment:(int64_t)a4;
- (BOOL)validateSender:(id)a3 segment:(int64_t)a4;
- (void)performActionForSender:(id)a3 segment:(int64_t)a4;
@end

@implementation AKActionController

- (AKActionController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKActionController;
  v5 = [(AKActionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKActionController *)v5 setController:v4];
  }

  return v6;
}

- (void)performActionForSender:(id)a3 segment:(int64_t)a4
{
  v13 = a3;
  if ([(AKActionController *)self _isSenderEnabled:v13 segment:a4])
  {
    v6 = [v13 tag];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v13 tagForSegment:a4];
    }

    v7 = [(AKActionController *)self controller];
    v8 = [v7 toolController];
    v9 = [v7 attributeController];
    v10 = [v7 toolbarViewController];
    [v10 updateColorWellActivation:v13];

    if ((v6 - 764000) > 0x42)
    {
      if ((v6 - 765000) <= 0x12C)
      {
        v12 = [v13 tag];
        AKLog(@"performing ATTRIBUTE action for sender %@ with tag %ld ");
        [v9 performAttributeActionForSender:v13 segment:{a4, v13, v12}];
      }
    }

    else
    {
      v11 = [v13 tag];
      AKLog(@"performing TOOL action for sender %@ with tag %ld ");
      [v8 performToolActionForSender:{v13, v13, v11}];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_isSenderEnabled:(id)a3 segment:(int64_t)a4
{
  v6 = a3;
  v7 = [(AKActionController *)self controller];
  if ([v7 currentPageIndex] == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = [v6 tag];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 tagForSegment:a4];
  }

  if ((v8 - 764000) > 0x42)
  {
    if ((v8 - 765000) <= 0x12C)
    {
      v9 = [v7 attributeController];
      v10 = [v9 isAttributeSenderEnabled:v6 segment:a4];
      goto LABEL_9;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v9 = [v7 toolController];
  v10 = [v9 isToolSenderEnabled:v6];
LABEL_9:
  v11 = v10;

LABEL_11:
  return v11;
}

- (BOOL)validateSender:(id)a3 segment:(int64_t)a4
{
  v6 = a3;
  v7 = [(AKActionController *)self _isSenderEnabled:v6 segment:a4];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 tag];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 tagForSegment:a4];
    }

    v9 = [(AKActionController *)self controller];
    v10 = v9;
    if ((v8 - 764000) > 0x42)
    {
      if ((v8 - 765000) > 0x12C)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = [v9 attributeController];
      [v11 updateAttributeSenderState:v6 segment:a4 enabled:v7];
    }

    else
    {
      v11 = [v9 toolController];
      [v11 updateToolSenderState:v6 enabled:v7];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end