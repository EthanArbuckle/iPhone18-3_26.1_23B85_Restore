@interface TransferNavigationController
- (MailScene)scene;
- (TransferNavigationController)initWithMessages:(id)messages scene:(id)scene options:(unint64_t)options;
- (void)purgeMemoryForReason:(int)reason;
- (void)updatePrompt;
@end

@implementation TransferNavigationController

- (TransferNavigationController)initWithMessages:(id)messages scene:(id)scene options:(unint64_t)options
{
  messagesCopy = messages;
  sceneCopy = scene;
  v9 = [[TransferMailboxPickerController alloc] initWithItems:messagesCopy scene:sceneCopy];
  v13.receiver = self;
  v13.super_class = TransferNavigationController;
  v10 = [(TransferNavigationController *)&v13 initWithRootViewController:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_scene, sceneCopy);
    objc_storeStrong(&v11->_mailboxPickerController, v9);
    v11->_multipleMessages = [messagesCopy count] > 1;
    [(TransferNavigationController *)v11 updatePrompt];
  }

  return v11;
}

- (void)updatePrompt
{
  scene = [(TransferNavigationController *)self scene];
  interfaceOrientation = [scene interfaceOrientation];

  v5 = 0;
  if ((+[UIDevice mf_isPadIdiom]& 1) == 0 && (interfaceOrientation - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    multipleMessages = self->_multipleMessages;
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (multipleMessages)
    {
      [v7 localizedStringForKey:@"MOVE_MESSAGES_PROMPT" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v7 localizedStringForKey:@"MOVE_MESSAGE_PROMPT" value:&stru_100662A88 table:@"Main"];
    }
    v5 = ;
  }

  v9 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  navigationBar = [(TransferNavigationController *)self navigationBar];
  items = [navigationBar items];

  v12 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v15 + 1) + 8 * v14) setPrompt:v5];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [UIView setAnimationsEnabled:v9];
}

- (void)purgeMemoryForReason:(int)reason
{
  v3 = *&reason;
  v5 = +[UIDevice mf_isPadIdiom];
  if (v3 == 1 || (v5 & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = TransferNavigationController;
    [(TransferNavigationController *)&v6 purgeMemoryForReason:v3];
  }
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end