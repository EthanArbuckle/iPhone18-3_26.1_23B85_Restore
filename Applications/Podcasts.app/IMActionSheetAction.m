@interface IMActionSheetAction
- (NSString)titleForAlertController;
- (UIBarButtonItem)buttonItem;
- (UIButton)button;
- (id)titleForCancelAction;
- (void)dealloc;
- (void)setAlertController:(id)a3;
- (void)setButton:(id)a3;
- (void)showActionSheetWithActions:(id)a3 fromButton:(id)a4;
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
    v4 = [(IMAction *)&v7 button];
    v5 = self->_button;
    self->_button = v4;

    button = self->_button;
  }

  return button;
}

- (void)setButton:(id)a3
{
  v5 = a3;
  button = self->_button;
  if (button != v5)
  {
    v10 = v5;
    if (button)
    {
      buttonItem = self->_buttonItem;
      if (buttonItem)
      {
        v8 = [(UIBarButtonItem *)buttonItem customView];
        v9 = self->_button;

        if (v8 == v9)
        {
          [(IMActionSheetAction *)self setButtonItem:0];
        }
      }
    }

    objc_storeStrong(&self->_button, a3);
    v5 = v10;
  }
}

- (UIBarButtonItem)buttonItem
{
  buttonItem = self->_buttonItem;
  if (!buttonItem)
  {
    v7.receiver = self;
    v7.super_class = IMActionSheetAction;
    v4 = [(IMAction *)&v7 buttonItem];
    v5 = self->_buttonItem;
    self->_buttonItem = v4;

    buttonItem = self->_buttonItem;
  }

  return buttonItem;
}

- (void)setAlertController:(id)a3
{
  v5 = a3;
  alertController = self->_alertController;
  if (alertController != v5)
  {
    v7 = alertController;
    v8 = [(UIAlertController *)v7 popoverPresentationController];
    [v8 setDelegate:0];

    v9 = [(UIAlertController *)v7 presentingViewController];

    if (v9)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008AEB8;
      block[3] = &unk_1004D8358;
      v12 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    objc_storeStrong(&self->_alertController, a3);
    v10 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [v10 setDelegate:self];
  }
}

- (void)showActionSheetWithActions:(id)a3 fromButton:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_actions, a3);
  v9 = [(IMActionSheetAction *)self titleForAlertController];
  v29 = self;
  [(IMActionSheetAction *)self messageForAlertController];
  v28 = v30 = v9;
  v10 = [UIAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v9 preferredStyle:?];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
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
        v16 = [v15 title];
        v17 = [v16 length];

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

          v19 = [v15 title];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10008B2A0;
          v32[3] = &unk_1004D9E58;
          v32[4] = v15;
          v33 = v8;
          v20 = [UIAlertAction actionWithTitle:v19 style:v18 handler:v32];

          [v10 addAction:v20];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  v21 = [(IMActionSheetAction *)v29 attributedMessageForAlertController];
  if (v21)
  {
    [v10 _setAttributedMessage:v21];
  }

  v22 = [(IMActionSheetAction *)v29 titleForCancelAction];
  v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:0];
  [v10 addAction:v23];

  [(IMPopoverPresentationAction *)v29 setPresentingButton:v8];
  [(IMActionSheetAction *)v29 setAlertController:v10];
  v24 = [(IMAction *)v29 controller];
  v25 = [v24 delegate];

  [v25 presentViewController:v10 animated:1 completion:0];
  v26 = [v10 popoverPresentationController];
  [v26 setDelegate:v29];

  v27 = [v10 popoverPresentationController];
  [(IMPopoverPresentationAction *)v29 prepareForPopoverPresentation:v27];
}

- (void)updateActionSheet
{
  v3 = [(IMActionSheetAction *)self alertController];
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 presentationController];
    if ([v6 presentationStyle] == 7)
    {
      v7 = [v3 transitionCoordinator];

      if (!v7)
      {
        objc_initWeak(&location, self);
        v8 = [v3 presentingViewController];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10008B4D4;
        v9[3] = &unk_1004D9E80;
        objc_copyWeak(&v10, &location);
        [v8 dismissViewControllerAnimated:0 completion:v9];

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
  v4 = [(IMActionSheetAction *)self titleForAlertControllerBlock];

  if (v4)
  {
    v5 = [(IMActionSheetAction *)self titleForAlertControllerBlock];
    v6 = (v5)[2](v5, self);

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