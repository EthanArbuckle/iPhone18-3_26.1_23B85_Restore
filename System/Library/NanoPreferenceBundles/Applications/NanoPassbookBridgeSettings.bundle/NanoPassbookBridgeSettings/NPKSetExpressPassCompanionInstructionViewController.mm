@interface NPKSetExpressPassCompanionInstructionViewController
- (id)_errorAcknowledgeButtonTitle;
- (id)_errorMessage;
- (id)_errorTitle;
- (id)_instructionMessage;
- (id)_instructionTitle;
- (id)_unlockRequiredMessage;
- (id)_unlockRequiredTitle;
- (void)handleSetExpressPassError;
- (void)handleSetExpressPassUnlockRequired;
@end

@implementation NPKSetExpressPassCompanionInstructionViewController

- (void)handleSetExpressPassError
{
  v5 = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorTitle];
  v3 = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorMessage];
  v4 = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorAcknowledgeButtonTitle];
  [(NPKBridgeInstructionViewController *)self handleErrorWithTitle:v5 message:v3 acknowledgeButtonTitle:v4];
}

- (void)handleSetExpressPassUnlockRequired
{
  v5 = [(NPKSetExpressPassCompanionInstructionViewController *)self _unlockRequiredTitle];
  v3 = [(NPKSetExpressPassCompanionInstructionViewController *)self _unlockRequiredMessage];
  v4 = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorAcknowledgeButtonTitle];
  [(NPKBridgeInstructionViewController *)self handleErrorWithTitle:v5 message:v3 acknowledgeButtonTitle:v4];
}

- (id)_instructionTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = sub_15D48(@"INSTRUCTION_TITLE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
  v5 = [v3 localizedStringForKey:v4 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v5;
}

- (id)_instructionMessage
{
  v3 = [(NPKSetExpressPassCompanionInstructionViewController *)self messageType];
  v4 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
  v5 = v4;
  if (!v3)
  {

    if (!v5)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
      v9 = @"INSTRUCTION_ENABLE_MESSAGE_NO_CARD_NAME";
      goto LABEL_10;
    }

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
    v11 = @"INSTRUCTION_ENABLE_MESSAGE";
LABEL_8:
    v12 = sub_15D48(v11, v10);
    v13 = [v7 localizedStringForKey:v12 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v14 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
    v15 = [NSString stringWithFormat:v13, v14];

    goto LABEL_11;
  }

  if (v4)
  {
    v6 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];

    if (v6 != 3)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
      v11 = @"INSTRUCTION_DISABLE_MESSAGE";
      goto LABEL_8;
    }
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
  v9 = @"INSTRUCTION_DISABLE_MESSAGE_NO_CARD_NAME";
LABEL_10:
  v12 = sub_15D48(v9, v8);
  v15 = [v7 localizedStringForKey:v12 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
LABEL_11:

  return v15;
}

- (id)_errorTitle
{
  v3 = [(NPKSetExpressPassCompanionInstructionViewController *)self messageType];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
  if (v3)
  {
    v6 = @"DISABLE_ERROR_TITLE";
  }

  else
  {
    v6 = @"SET_CARD_ERROR_TITLE";
  }

  v7 = sub_15D48(v6, v5);
  v8 = [v4 localizedStringForKey:v7 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v8;
}

- (id)_errorMessage
{
  v3 = [(NPKSetExpressPassCompanionInstructionViewController *)self messageType];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
  if (v3)
  {
    v6 = sub_15D48(@"DISABLE_ERROR_MESSAGE", v5);
    v7 = [v4 localizedStringForKey:v6 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  }

  else
  {
    v8 = sub_15D48(@"SET_CARD_ERROR_MESSAGE_NO_CARD_NAME", v5);
    v7 = [v4 localizedStringForKey:v8 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

    v9 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];

    if (!v9)
    {
      goto LABEL_6;
    }

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = sub_15D48(@"SET_CARD_ERROR_MESSAGE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
    v10 = [v4 localizedStringForKey:v6 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v11 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
    v12 = [NSString stringWithFormat:v10, v11];

    v7 = v12;
  }

LABEL_6:

  return v7;
}

- (id)_unlockRequiredTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = sub_15D48(@"SET_CARD_UNLOCK_REQUIRED_TITLE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
  v5 = [v3 localizedStringForKey:v4 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v5;
}

- (id)_unlockRequiredMessage
{
  v3 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];

  [NSBundle bundleForClass:objc_opt_class()];
  if (v3)
    v4 = {;
    v5 = sub_15D48(@"SET_CARD_UNLOCK_REQUIRED_MESSAGE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
    v6 = [v4 localizedStringForKey:v5 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v7 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
    v8 = [NSString stringWithFormat:v6, v7];
  }

  else
    v4 = {;
    v5 = sub_15D48(@"SET_CARD_UNLOCK_REQUIRED_MESSAGE_NO_CARD_NAME", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
    v8 = [v4 localizedStringForKey:v5 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  }

  return v8;
}

- (id)_errorAcknowledgeButtonTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = sub_15D48(@"ERROR_ACKNOWLEDGE_BUTTON_TITLE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
  v5 = [v3 localizedStringForKey:v4 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v5;
}

@end