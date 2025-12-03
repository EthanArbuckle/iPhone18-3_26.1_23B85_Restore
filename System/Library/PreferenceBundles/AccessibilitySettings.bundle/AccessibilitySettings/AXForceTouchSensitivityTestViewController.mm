@interface AXForceTouchSensitivityTestViewController
- (void)animateDoneButtonSlideIn;
- (void)doneButtonTapped;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation AXForceTouchSensitivityTestViewController

- (void)loadView
{
  v22.receiver = self;
  v22.super_class = AXForceTouchSensitivityTestViewController;
  [(AXForceTouchSensitivityTestViewController *)&v22 loadView];
  v3 = [UIImageView alloc];
  v4 = AXFlowersTestImage();
  v5 = [v3 initWithImage:v4];
  [(AXForceTouchSensitivityTestViewController *)self setMessageImageView:v5];

  messageImageView = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [messageImageView setContentMode:2];

  messageImageView2 = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [messageImageView2 setAccessibilityIgnoresInvertColors:1];

  view = [(AXForceTouchSensitivityTestViewController *)self view];
  messageImageView3 = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [view addSubview:messageImageView3];

  v10 = [UIButton buttonWithType:1];
  [(AXForceTouchSensitivityTestViewController *)self setDoneButton:v10];

  doneButton = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  v12 = settingsLocString(@"FORCE_TOUCH_SENSITIVITY_TEST_DONE", @"Accessibility");
  [doneButton setTitle:v12 forState:0];

  doneButton2 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton2 addTarget:self action:"doneButtonTapped" forControlEvents:64];

  doneButton3 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  v15 = +[UIColor whiteColor];
  [doneButton3 setBackgroundColor:v15];

  doneButton4 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  layer = [doneButton4 layer];
  [layer setCornerRadius:10.0];

  doneButton5 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton5 setClipsToBounds:1];

  doneButton6 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton6 setHidden:1];

  view2 = [(AXForceTouchSensitivityTestViewController *)self view];
  doneButton7 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [view2 addSubview:doneButton7];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = AXForceTouchSensitivityTestViewController;
  [(AXForceTouchSensitivityTestViewController *)&v23 viewDidLayoutSubviews];
  view = [(AXForceTouchSensitivityTestViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  doneButton = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton setFrame:{10.0, v7 + -50.0 + -10.0, v5 + -20.0, 50.0}];

  view2 = [(AXForceTouchSensitivityTestViewController *)self view];
  [view2 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  messageImageView = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [messageImageView setFrame:{v11, v13, v15, v17}];

  messageImageView2 = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [messageImageView2 setClipsToBounds:1];

  messageImageView3 = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [messageImageView3 setIsAccessibilityElement:1];

  v21 = settingsLocString(@"FORCE_TOUCH_SENSITIVITY_TEST_FLOWERS", @"Accessibility");
  messageImageView4 = [(AXForceTouchSensitivityTestViewController *)self messageImageView];
  [messageImageView4 setAccessibilityLabel:v21];
}

- (void)animateDoneButtonSlideIn
{
  view = [(AXForceTouchSensitivityTestViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  doneButton = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton setHidden:0];

  doneButton2 = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton2 setFrame:{10.0, v11, v9 + -20.0, 50.0}];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __69__AXForceTouchSensitivityTestViewController_animateDoneButtonSlideIn__block_invoke;
  v14[3] = &unk_258F48;
  v14[4] = self;
  v14[5] = v5;
  v14[6] = v7;
  *&v14[7] = v9;
  *&v14[8] = v11;
  [UIView animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:0.85 options:0.0 animations:0.6 completion:0.0];
}

void __69__AXForceTouchSensitivityTestViewController_animateDoneButtonSlideIn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) doneButton];
  [v2 setFrame:{10.0, *(a1 + 64) + -50.0 + -10.0, *(a1 + 56) + -20.0, 50.0}];
}

- (void)doneButtonTapped
{
  doneButton = [(AXForceTouchSensitivityTestViewController *)self doneButton];
  [doneButton setHidden:1];

  [(AXForceTouchSensitivityTestViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end