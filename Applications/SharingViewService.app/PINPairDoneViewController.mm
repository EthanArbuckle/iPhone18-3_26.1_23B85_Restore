@interface PINPairDoneViewController
- (void)handleDismissButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PINPairDoneViewController

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = PINPairDoneViewController;
  [(PINPairDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v21.receiver = self;
  v21.super_class = PINPairDoneViewController;
  [(SVSBaseViewController *)&v21 viewWillAppear:appearCopy];
  if (*(&self->_doneButton + 1))
  {
    v5 = [UIImage imageNamed:@"AlertCircle.png"];
    v6 = +[UIColor systemRedColor];
    v7 = [v5 _flatImageWithColor:v6];
    [*(&self->_titleLabel + 1) setImage:v7];

    v15 = sub_100127B60(@"PAIR_FAILED", v8, v9, v10, v11, v12, v13, v14, *(&self->_doneButton + 1));
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v15];

    v16 = *(&self->_imageView + 1);
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];
    [v16 setTitle:v18 forState:0];
  }

  else
  {
    v17 = [UIImage imageNamed:@"DoneCheck.png"];
    v18 = +[UIColor systemBlueColor];
    v19 = [v17 _flatImageWithColor:v18];
    [*(&self->_titleLabel + 1) setImage:v19];
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end