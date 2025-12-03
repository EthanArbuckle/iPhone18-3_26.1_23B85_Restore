@interface CNErrorViewController
- (CNErrorViewController)initWithMessage:(id)message;
- (void)viewDidLoad;
@end

@implementation CNErrorViewController

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = CNErrorViewController;
  [(CNErrorViewController *)&v36 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  view = [(CNErrorViewController *)self view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  label = self->_label;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UILabel *)label setTextColor:tertiaryLabelColor];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view2 = [(CNErrorViewController *)self view];
  [view2 setFrame:{v9, v11, v13, v15}];

  view3 = [(CNErrorViewController *)self view];
  [view3 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v37.origin.x = v19;
  v37.origin.y = v21;
  v37.size.width = v23;
  v37.size.height = v25;
  v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), CGRectGetWidth(v37) + -30.0, 100.0}];
  v27 = self->_label;
  self->_label = v26;

  v28 = self->_label;
  v38.origin.x = v19;
  v38.origin.y = v21;
  v38.size.width = v23;
  v38.size.height = v25;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v19;
  v39.origin.y = v21;
  v39.size.width = v23;
  v39.size.height = v25;
  [(UILabel *)v28 setCenter:MidX, CGRectGetMidY(v39)];
  v30 = self->_label;
  errorMessage = [(CNErrorViewController *)self errorMessage];
  [(UILabel *)v30 setText:errorMessage];

  v32 = self->_label;
  v33 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] smallSystemFontSize];
  v34 = [v33 systemFontOfSize:?];
  [(UILabel *)v32 setFont:v34];

  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setAutoresizingMask:45];
  view4 = [(CNErrorViewController *)self view];
  [view4 addSubview:self->_label];
}

- (CNErrorViewController)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CNErrorViewController;
  v6 = [(CNErrorViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorMessage, message);
  }

  return v7;
}

@end