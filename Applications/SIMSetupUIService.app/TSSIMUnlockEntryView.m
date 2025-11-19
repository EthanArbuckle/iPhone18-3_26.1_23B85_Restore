@interface TSSIMUnlockEntryView
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (TSSIMUnlockEntryView)initWithActionType:(int64_t)a3 actionSubtype:(int64_t)a4;
- (TSSIMUnlockEntryViewDelegate)delegate;
- (void)_configureDetailLabelText;
- (void)_configureOKButtonWithEnteredText:(id)a3;
- (void)_okButtonPressed:(id)a3;
- (void)resetEnteredTextWithShakeAnimation:(BOOL)a3;
- (void)setAttemptsRemaining:(unint64_t)a3;
- (void)setPinMismatch:(BOOL)a3;
- (void)setUnlocking:(BOOL)a3;
@end

@implementation TSSIMUnlockEntryView

- (TSSIMUnlockEntryView)initWithActionType:(int64_t)a3 actionSubtype:(int64_t)a4
{
  v28.receiver = self;
  v28.super_class = TSSIMUnlockEntryView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(TSSIMUnlockEntryView *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = v9;
  if (v9)
  {
    v9->_actionType = a3;
    v9->_actionSubtype = a4;
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    detailLabel = v10->_detailLabel;
    v10->_detailLabel = v11;

    [(UILabel *)v10->_detailLabel setTextAlignment:1];
    v13 = v10->_detailLabel;
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v10->_detailLabel setNumberOfLines:1];
    [(TSSIMUnlockEntryView *)v10 _configureDetailLabelText];
    v15 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    entryField = v10->_entryField;
    v10->_entryField = v15;

    [(UITextField *)v10->_entryField setDelegate:v10];
    [(UITextField *)v10->_entryField setBorderStyle:3];
    v17 = v10->_entryField;
    if (+[SSServiceUtilities isPad])
    {
      v18 = 11;
    }

    else
    {
      v18 = 127;
    }

    [(UITextField *)v17 setKeyboardType:v18];
    [(UITextField *)v10->_entryField setSecureTextEntry:1];
    v19 = [UIButton buttonWithType:1];
    okButton = v10->_okButton;
    v10->_okButton = v19;

    v21 = v10->_okButton;
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"OK" value:&stru_10001CA70 table:@"Localizable"];
    [(OBTextAccessoryButton *)v21 setTitle:v23 forState:0];

    v24 = v10->_okButton;
    v25 = [UIFont boldSystemFontOfSize:16.0];
    [(OBTextAccessoryButton *)v24 _setFont:v25];

    [(OBTextAccessoryButton *)v10->_okButton setEnabled:0];
    [(OBTextAccessoryButton *)v10->_okButton sizeToFit];
    [(OBTextAccessoryButton *)v10->_okButton addTarget:v10 action:"_okButtonPressed:" forControlEvents:0x2000];
    v26 = [(TSSIMUnlockEntryView *)v10 enteredText];
    [(TSSIMUnlockEntryView *)v10 _configureOKButtonWithEnteredText:v26];
  }

  return v10;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  if (self->_unlocking)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  v10 = a5;
  v11 = a3;
  v12 = +[NSCharacterSet decimalDigitCharacterSet];
  v13 = [v12 invertedSet];

  v14 = [v11 text];

  v15 = [v14 stringByReplacingCharactersInRange:location withString:{length, v10}];

  v16 = [v10 length];
  v17 = [v10 rangeOfCharacterFromSet:v13];

  v18 = [v15 length];
  if (!v16 || (v5 = 0, v17 == 0x7FFFFFFFFFFFFFFFLL) && v18 <= 8)
  {
    [(TSSIMUnlockEntryView *)self _configureOKButtonWithEnteredText:v15];
    v5 = 1;
  }

  return v5;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 length];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained entryView:self didEnterText:v4];
  }

  return v5 != 0;
}

- (BOOL)resignFirstResponder
{
  v4.receiver = self;
  v4.super_class = TSSIMUnlockEntryView;
  [(TSSIMUnlockEntryView *)&v4 resignFirstResponder];
  return [(UITextField *)self->_entryField resignFirstResponder];
}

- (void)resetEnteredTextWithShakeAnimation:(BOOL)a3
{
  v3 = a3;
  [(UITextField *)self->_entryField setText:0];
  [(TSSIMUnlockEntryView *)self _configureOKButtonWithEnteredText:0];
  if (v3)
  {
    v5 = [CASpringAnimation animationWithKeyPath:@"position"];
    [v5 setAdditive:1];
    [v5 setMass:1.2];
    [v5 setStiffness:1200.0];
    [v5 setDamping:12.0];
    LODWORD(v6) = 1028389654;
    LODWORD(v7) = 990057071;
    LODWORD(v8) = 1059712716;
    LODWORD(v9) = 1.0;
    v10 = [CAMediaTimingFunction functionWithControlPoints:v6];
    [v5 setTimingFunction:v10];

    [v5 setInitialVelocity:0.0];
    [v5 setFillMode:kCAFillModeForwards];
    [v5 durationForEpsilon:0.001];
    [v5 setDuration:?];
    v11 = [NSValue valueWithCGPoint:0.0, 0.0];
    [v5 setFromValue:v11];

    v12 = [NSValue valueWithCGPoint:-75.0, 0.0];
    [v5 setToValue:v12];

    v13 = [CABasicAnimation animationWithKeyPath:@"position"];
    [v13 setAdditive:1];
    LODWORD(v14) = 1054276898;
    LODWORD(v15) = 1058305108;
    LODWORD(v16) = 1.0;
    v17 = [CAMediaTimingFunction functionWithControlPoints:v14];
    [v13 setTimingFunction:v17];

    [v13 setDuration:0.1];
    [v13 setFillMode:kCAFillModeForwards];
    v18 = [NSValue valueWithCGPoint:0.0, 0.0];
    [v13 setFromValue:v18];

    v19 = [NSValue valueWithCGPoint:75.0, 0.0];
    [v13 setToValue:v19];

    v20 = +[CAAnimationGroup animation];
    v27[0] = v5;
    v27[1] = v13;
    v21 = [NSArray arrayWithObjects:v27 count:2];
    [v20 setAnimations:v21];

    [v5 duration];
    v23 = v22;
    [v13 duration];
    if (v23 >= v24)
    {
      v24 = v23;
    }

    [v20 setDuration:v24];

    v25 = [(UITextField *)self->_entryField layer];
    [v25 addAnimation:v20 forKey:0];

    v26 = [(OBTextAccessoryButton *)self->_okButton layer];
    [v26 addAnimation:v20 forKey:0];
  }
}

- (void)setUnlocking:(BOOL)a3
{
  if (self->_unlocking != a3)
  {
    self->_unlocking = a3;
    [(TSSIMUnlockEntryView *)self _configureDetailLabelText];
    v5 = [(TSSIMUnlockEntryView *)self enteredText];
    [(TSSIMUnlockEntryView *)self _configureOKButtonWithEnteredText:v5];
  }
}

- (void)setAttemptsRemaining:(unint64_t)a3
{
  if (self->_attemptsRemaining != a3)
  {
    self->_attemptsRemaining = a3;
    [(TSSIMUnlockEntryView *)self _configureDetailLabelText];
  }
}

- (void)setPinMismatch:(BOOL)a3
{
  if (self->_pinMismatch != a3)
  {
    self->_pinMismatch = a3;
    [(TSSIMUnlockEntryView *)self _configureDetailLabelText];
  }
}

- (void)_okButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(UITextField *)self->_entryField text];
  [WeakRetained entryView:self didEnterText:v4];
}

- (void)_configureOKButtonWithEnteredText:(id)a3
{
  okButton = self->_okButton;
  v4 = !self->_unlocking && [a3 length] != 0;

  [(OBTextAccessoryButton *)okButton setEnabled:v4];
}

- (void)_configureDetailLabelText
{
  if (self->_unlocking)
  {
    goto LABEL_2;
  }

  actionSubtype = self->_actionSubtype;
  if (actionSubtype < 2)
  {
    v7 = +[NSBundle mainBundle];
    v9 = [v7 localizedStringForKey:@"ATTEMPTS_REMAINING_FORMAT" value:&stru_10001CA70 table:@"Plurals"];
    v10 = [NSString localizedStringWithFormat:v9, self->_attemptsRemaining];
  }

  else
  {
    if (actionSubtype == 3)
    {
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"ENTER_NEW_PIN_2_DETAIL";
    }

    else
    {
      if (actionSubtype != 2)
      {
LABEL_2:
        v3 = 0;
        goto LABEL_13;
      }

      pinMismatch = self->_pinMismatch;
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      if (pinMismatch)
      {
        v8 = @"ENTER_NEW_PIN_1_DETAIL_MISMATCH";
      }

      else
      {
        v8 = @"ENTER_NEW_PIN_1_DETAIL";
      }
    }

    v10 = [v6 localizedStringForKey:v8 value:&stru_10001CA70 table:@"Localizable"];
  }

  v3 = v10;
LABEL_13:
  v11 = v3;
  [(UILabel *)self->_detailLabel setText:v3];
  [(TSSIMUnlockEntryView *)self setNeedsDisplay];
}

- (TSSIMUnlockEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end