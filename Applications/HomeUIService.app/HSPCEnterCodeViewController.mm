@interface HSPCEnterCodeViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (HSPCEnterCodeViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)configureNextViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation HSPCEnterCodeViewController

- (HSPCEnterCodeViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  v16.receiver = self;
  v16.super_class = HSPCEnterCodeViewController;
  v7 = [(HSPCTextFieldViewController *)&v16 initWithCoordinator:coordinator config:configCopy withTextFieldMinimumHeight:100.0];
  if (v7)
  {
    v8 = HULocalizedString();
    [(HSPCEnterCodeViewController *)v7 setTitle:v8];

    v9 = HULocalizedString();
    [(HSPCEnterCodeViewController *)v7 setSubtitle:v9];

    continueAction = [(HSPCTextFieldViewController *)v7 continueAction];
    [continueAction setEnabled:1];

    objc_opt_class();
    v11 = configCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      v14 = [(HSPCEnterCodeViewController *)v7 addOptionalButtonWithTitleKey:@"HSSetupCodeActionButtonCamera" target:v7 futureSelector:"onCameraButton"];
    }
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HSPCEnterCodeViewController;
  [(HSPCTextFieldViewController *)&v11 viewDidLoad];
  textField = [(HSPCTextFieldViewController *)self textField];
  [textField setKeyboardType:11];

  textField2 = [(HSPCTextFieldViewController *)self textField];
  [textField2 setTextAlignment:1];

  v5 = [UIFont monospacedDigitSystemFontOfSize:30.0 weight:UIFontWeightSemibold];
  textField3 = [(HSPCTextFieldViewController *)self textField];
  [textField3 setFont:v5];

  textField4 = [(HSPCTextFieldViewController *)self textField];
  [textField4 setAdjustsFontSizeToFitWidth:1];

  textField5 = [(HSPCTextFieldViewController *)self textField];
  [textField5 setClearButtonMode:0];

  v9 = +[UIColor redColor];
  footnoteLabel = [(HSPCTextFieldViewController *)self footnoteLabel];
  [footnoteLabel setTextColor:v9];
}

- (id)commitConfiguration
{
  objc_initWeak(&location, self);
  coordinator = [(HSPCTextFieldViewController *)self coordinator];
  textFieldText = [(HSPCTextFieldViewController *)self textFieldText];
  v5 = [coordinator didReceiveSetupCode:textFieldText withPayload:0 fromViewController:self];
  v6 = [v5 flatMap:&stru_1000C6918];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A678;
  v9[3] = &unk_1000C5BF0;
  objc_copyWeak(&v10, &location);
  v7 = [v6 recover:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

- (void)configureNextViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v6 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setMode:0];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  footnoteLabel = [(HSPCTextFieldViewController *)self footnoteLabel];
  [footnoteLabel setText:&stru_1000C89F8];

  text = [fieldCopy text];
  v13 = [stringCopy stringByReplacingOccurrencesOfString:@"-" withString:&stru_1000C89F8];
  v14 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_1000C89F8];

  v15 = +[NSCharacterSet decimalDigitCharacterSet];
  invertedSet = [v15 invertedSet];
  v17 = [v14 rangeOfCharacterFromSet:invertedSet];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
    goto LABEL_26;
  }

  if (length == 1)
  {
    v18 = [text substringWithRange:{location, 1}];
    if ([v18 isEqualToString:@"-"])
    {

LABEL_7:
      --location;
      goto LABEL_8;
    }

    v20 = [text substringWithRange:{location, 1}];
    v21 = [v20 isEqualToString:@" "];

    if (v21)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v22 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
  hf_extractDecimalDigits = [v22 hf_extractDecimalDigits];
  v24 = [hf_extractDecimalDigits length];

  if (v24 <= 0x15)
  {
    v25 = [HUStringDisplayFormatter stringByApplyingCodeFormatToString:v22];
    v19 = [v22 isEqualToString:v25];
    if ((v19 & 1) == 0)
    {
      [fieldCopy setText:v25];
      v26 = [text substringToIndex:location];
      hf_extractDecimalDigits2 = [v26 hf_extractDecimalDigits];
      v28 = [hf_extractDecimalDigits2 length];
      v29 = v28 + [v14 length];

      if (v29 <= 20)
      {
        if (v29 <= 18)
        {
          if (v29 <= 15)
          {
            if (v29 <= 11)
            {
              if (v29 < 8 || [v25 length] <= 9)
              {
                v30 = v29 > 4;
              }

              else
              {
                v30 = 2;
              }
            }

            else
            {
              v30 = 3;
            }
          }

          else
          {
            v30 = 4;
          }
        }

        else
        {
          v30 = 5;
        }
      }

      else
      {
        v30 = 6;
      }

      beginningOfDocument = [fieldCopy beginningOfDocument];
      v32 = [fieldCopy positionFromPosition:beginningOfDocument offset:v29 + v30];

      v33 = [fieldCopy textRangeFromPosition:v32 toPosition:v32];
      [fieldCopy setSelectedTextRange:v33];
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_26:
  return v19;
}

- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions
{
  actionsCopy = actions;
  v6 = [NSPredicate predicateWithFormat:@"identifier == %@", @"com.apple.menu.standard-edit"];
  v7 = [actionsCopy filteredArrayUsingPredicate:v6];

  v8 = [UIMenu menuWithChildren:v7];

  return v8;
}

@end