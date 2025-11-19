@interface HSPCEnterCodeViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (HSPCEnterCodeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)configureNextViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCEnterCodeViewController

- (HSPCEnterCodeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = HSPCEnterCodeViewController;
  v7 = [(HSPCTextFieldViewController *)&v16 initWithCoordinator:a3 config:v6 withTextFieldMinimumHeight:100.0];
  if (v7)
  {
    v8 = HULocalizedString();
    [(HSPCEnterCodeViewController *)v7 setTitle:v8];

    v9 = HULocalizedString();
    [(HSPCEnterCodeViewController *)v7 setSubtitle:v9];

    v10 = [(HSPCTextFieldViewController *)v7 continueAction];
    [v10 setEnabled:1];

    objc_opt_class();
    v11 = v6;
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
  v3 = [(HSPCTextFieldViewController *)self textField];
  [v3 setKeyboardType:11];

  v4 = [(HSPCTextFieldViewController *)self textField];
  [v4 setTextAlignment:1];

  v5 = [UIFont monospacedDigitSystemFontOfSize:30.0 weight:UIFontWeightSemibold];
  v6 = [(HSPCTextFieldViewController *)self textField];
  [v6 setFont:v5];

  v7 = [(HSPCTextFieldViewController *)self textField];
  [v7 setAdjustsFontSizeToFitWidth:1];

  v8 = [(HSPCTextFieldViewController *)self textField];
  [v8 setClearButtonMode:0];

  v9 = +[UIColor redColor];
  v10 = [(HSPCTextFieldViewController *)self footnoteLabel];
  [v10 setTextColor:v9];
}

- (id)commitConfiguration
{
  objc_initWeak(&location, self);
  v3 = [(HSPCTextFieldViewController *)self coordinator];
  v4 = [(HSPCTextFieldViewController *)self textFieldText];
  v5 = [v3 didReceiveSetupCode:v4 withPayload:0 fromViewController:self];
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

- (void)configureNextViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = v3;
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

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(HSPCTextFieldViewController *)self footnoteLabel];
  [v11 setText:&stru_1000C89F8];

  v12 = [v9 text];
  v13 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1000C89F8];
  v14 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_1000C89F8];

  v15 = +[NSCharacterSet decimalDigitCharacterSet];
  v16 = [v15 invertedSet];
  v17 = [v14 rangeOfCharacterFromSet:v16];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
    goto LABEL_26;
  }

  if (length == 1)
  {
    v18 = [v12 substringWithRange:{location, 1}];
    if ([v18 isEqualToString:@"-"])
    {

LABEL_7:
      --location;
      goto LABEL_8;
    }

    v20 = [v12 substringWithRange:{location, 1}];
    v21 = [v20 isEqualToString:@" "];

    if (v21)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v22 = [v12 stringByReplacingCharactersInRange:location withString:{length, v10}];
  v23 = [v22 hf_extractDecimalDigits];
  v24 = [v23 length];

  if (v24 <= 0x15)
  {
    v25 = [HUStringDisplayFormatter stringByApplyingCodeFormatToString:v22];
    v19 = [v22 isEqualToString:v25];
    if ((v19 & 1) == 0)
    {
      [v9 setText:v25];
      v26 = [v12 substringToIndex:location];
      v27 = [v26 hf_extractDecimalDigits];
      v28 = [v27 length];
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

      v31 = [v9 beginningOfDocument];
      v32 = [v9 positionFromPosition:v31 offset:v29 + v30];

      v33 = [v9 textRangeFromPosition:v32 toPosition:v32];
      [v9 setSelectedTextRange:v33];
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_26:
  return v19;
}

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  v5 = a5;
  v6 = [NSPredicate predicateWithFormat:@"identifier == %@", @"com.apple.menu.standard-edit"];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v8 = [UIMenu menuWithChildren:v7];

  return v8;
}

@end