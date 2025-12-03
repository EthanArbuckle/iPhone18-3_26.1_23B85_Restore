@interface IMActionSheetAction
- (NSString)titleForAlertController;
- (UIBarButtonItem)buttonItem;
- (UIButton)button;
- (id)titleForCancelAction;
- (void)dealloc;
- (void)setAlertController:(id)controller;
- (void)setButton:(id)button;
- (void)showActionSheetWithActions:(id)actions fromButton:(id)button;
- (void)updateActionSheet;
@end

@implementation IMActionSheetAction

- (void)dealloc
{
  [(IMActionSheetAction *)self dismissActionSheet];
  v3.receiver = self;
  v3.super_class = IMActionSheetAction;
  [(IMActionSheetAction *)&v3 dealloc];
}

- (UIButton)button
{
  button = self->_button;
  if (!button)
  {
    v7.receiver = self;
    v7.super_class = IMActionSheetAction;
    button = [(IMAction *)&v7 button];
    v5 = self->_button;
    self->_button = button;

    button = self->_button;
  }

  return button;
}

- (void)setButton:(id)button
{
  buttonCopy = button;
  button = self->_button;
  if (button != buttonCopy)
  {
    v10 = buttonCopy;
    if (button)
    {
      buttonItem = self->_buttonItem;
      if (buttonItem)
      {
        customView = [(UIBarButtonItem *)buttonItem customView];
        v9 = self->_button;

        if (customView == v9)
        {
          [(IMActionSheetAction *)self setButtonItem:0];
        }
      }
    }

    objc_storeStrong(&self->_button, button);
    buttonCopy = v10;
  }
}

- (UIBarButtonItem)buttonItem
{
  buttonItem = self->_buttonItem;
  if (!buttonItem)
  {
    v7.receiver = self;
    v7.super_class = IMActionSheetAction;
    buttonItem = [(IMAction *)&v7 buttonItem];
    v5 = self->_buttonItem;
    self->_buttonItem = buttonItem;

    buttonItem = self->_buttonItem;
  }

  return buttonItem;
}

- (void)setAlertController:(id)controller
{
  controllerCopy = controller;
  alertController = self->_alertController;
  if (alertController != controllerCopy)
  {
    v7 = alertController;
    popoverPresentationController = [(UIAlertController *)v7 popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    presentingViewController = [(UIAlertController *)v7 presentingViewController];

    if (presentingViewController)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008AEB8;
      block[3] = &unk_1004D8358;
      v12 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    objc_storeStrong(&self->_alertController, controller);
    popoverPresentationController2 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [popoverPresentationController2 setDelegate:self];
  }
}

- (void)showActionSheetWithActions:(id)actions fromButton:(id)button
{
  actionsCopy = actions;
  buttonCopy = button;
  objc_storeStrong(&self->_actions, actions);
  titleForAlertController = [(IMActionSheetAction *)self titleForAlertController];
  selfCopy = self;
  [(IMActionSheetAction *)self messageForAlertController];
  v28 = v30 = titleForAlertController;
  v10 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:titleForAlertController preferredStyle:?];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = actionsCopy;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        title = [v15 title];
        v17 = [title length];

        if (v17)
        {
          if ([v15 isDestructive])
          {
            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

          title2 = [v15 title];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10008B2A0;
          v32[3] = &unk_1004D9E58;
          v32[4] = v15;
          v33 = buttonCopy;
          v20 = [UIAlertAction actionWithTitle:title2 style:v18 handler:v32];

          [v10 addAction:v20];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  attributedMessageForAlertController = [(IMActionSheetAction *)selfCopy attributedMessageForAlertController];
  if (attributedMessageForAlertController)
  {
    [v10 _setAttributedMessage:attributedMessageForAlertController];
  }

  titleForCancelAction = [(IMActionSheetAction *)selfCopy titleForCancelAction];
  v23 = [UIAlertAction actionWithTitle:titleForCancelAction style:1 handler:0];
  [v10 addAction:v23];

  [(IMPopoverPresentationAction *)selfCopy setPresentingButton:buttonCopy];
  [(IMActionSheetAction *)selfCopy setAlertController:v10];
  controller = [(IMAction *)selfCopy controller];
  delegate = [controller delegate];

  [delegate presentViewController:v10 animated:1 completion:0];
  popoverPresentationController = [v10 popoverPresentationController];
  [popoverPresentationController setDelegate:selfCopy];

  popoverPresentationController2 = [v10 popoverPresentationController];
  [(IMPopoverPresentationAction *)selfCopy prepareForPopoverPresentation:popoverPresentationController2];
}

- (void)updateActionSheet
{
  alertController = [(IMActionSheetAction *)self alertController];
  presentingViewController = [alertController presentingViewController];
  if (presentingViewController)
  {
    v5 = presentingViewController;
    presentationController = [alertController presentationController];
    if ([presentationController presentationStyle] == 7)
    {
      transitionCoordinator = [alertController transitionCoordinator];

      if (!transitionCoordinator)
      {
        objc_initWeak(&location, self);
        presentingViewController2 = [alertController presentingViewController];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10008B4D4;
        v9[3] = &unk_1004D9E80;
        objc_copyWeak(&v10, &location);
        [presentingViewController2 dismissViewControllerAnimated:0 completion:v9];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

- (NSString)titleForAlertController
{
  v3 = self->_titleForAlertController;
  titleForAlertControllerBlock = [(IMActionSheetAction *)self titleForAlertControllerBlock];

  if (titleForAlertControllerBlock)
  {
    titleForAlertControllerBlock2 = [(IMActionSheetAction *)self titleForAlertControllerBlock];
    v6 = (titleForAlertControllerBlock2)[2](titleForAlertControllerBlock2, self);

    v3 = v6;
  }

  return v3;
}

- (id)titleForCancelAction
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Cancel" value:&stru_1004F3018 table:0];

  return v3;
}

@end