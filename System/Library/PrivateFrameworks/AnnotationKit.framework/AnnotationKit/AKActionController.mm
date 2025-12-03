@interface AKActionController
- (AKActionController)initWithController:(id)controller;
- (AKController)controller;
- (BOOL)_isSenderEnabled:(id)enabled segment:(int64_t)segment;
- (BOOL)validateSender:(id)sender segment:(int64_t)segment;
- (void)performActionForSender:(id)sender segment:(int64_t)segment;
@end

@implementation AKActionController

- (AKActionController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKActionController;
  v5 = [(AKActionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKActionController *)v5 setController:controllerCopy];
  }

  return v6;
}

- (void)performActionForSender:(id)sender segment:(int64_t)segment
{
  senderCopy = sender;
  if ([(AKActionController *)self _isSenderEnabled:senderCopy segment:segment])
  {
    v6 = [senderCopy tag];
    if (objc_opt_respondsToSelector())
    {
      v6 = [senderCopy tagForSegment:segment];
    }

    controller = [(AKActionController *)self controller];
    toolController = [controller toolController];
    attributeController = [controller attributeController];
    toolbarViewController = [controller toolbarViewController];
    [toolbarViewController updateColorWellActivation:senderCopy];

    if ((v6 - 764000) > 0x42)
    {
      if ((v6 - 765000) <= 0x12C)
      {
        v12 = [senderCopy tag];
        AKLog(@"performing ATTRIBUTE action for sender %@ with tag %ld ");
        [attributeController performAttributeActionForSender:senderCopy segment:{segment, senderCopy, v12}];
      }
    }

    else
    {
      v11 = [senderCopy tag];
      AKLog(@"performing TOOL action for sender %@ with tag %ld ");
      [toolController performToolActionForSender:{senderCopy, senderCopy, v11}];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_isSenderEnabled:(id)enabled segment:(int64_t)segment
{
  enabledCopy = enabled;
  controller = [(AKActionController *)self controller];
  if ([controller currentPageIndex] == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = [enabledCopy tag];
  if (objc_opt_respondsToSelector())
  {
    v8 = [enabledCopy tagForSegment:segment];
  }

  if ((v8 - 764000) > 0x42)
  {
    if ((v8 - 765000) <= 0x12C)
    {
      attributeController = [controller attributeController];
      v10 = [attributeController isAttributeSenderEnabled:enabledCopy segment:segment];
      goto LABEL_9;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  attributeController = [controller toolController];
  v10 = [attributeController isToolSenderEnabled:enabledCopy];
LABEL_9:
  v11 = v10;

LABEL_11:
  return v11;
}

- (BOOL)validateSender:(id)sender segment:(int64_t)segment
{
  senderCopy = sender;
  v7 = [(AKActionController *)self _isSenderEnabled:senderCopy segment:segment];
  if (objc_opt_respondsToSelector())
  {
    v8 = [senderCopy tag];
    if (objc_opt_respondsToSelector())
    {
      v8 = [senderCopy tagForSegment:segment];
    }

    controller = [(AKActionController *)self controller];
    v10 = controller;
    if ((v8 - 764000) > 0x42)
    {
      if ((v8 - 765000) > 0x12C)
      {
LABEL_9:

        goto LABEL_10;
      }

      attributeController = [controller attributeController];
      [attributeController updateAttributeSenderState:senderCopy segment:segment enabled:v7];
    }

    else
    {
      attributeController = [controller toolController];
      [attributeController updateToolSenderState:senderCopy enabled:v7];
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