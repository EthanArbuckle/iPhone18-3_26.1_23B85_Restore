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
  _errorTitle = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorTitle];
  _errorMessage = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorMessage];
  _errorAcknowledgeButtonTitle = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorAcknowledgeButtonTitle];
  [(NPKBridgeInstructionViewController *)self handleErrorWithTitle:_errorTitle message:_errorMessage acknowledgeButtonTitle:_errorAcknowledgeButtonTitle];
}

- (void)handleSetExpressPassUnlockRequired
{
  _unlockRequiredTitle = [(NPKSetExpressPassCompanionInstructionViewController *)self _unlockRequiredTitle];
  _unlockRequiredMessage = [(NPKSetExpressPassCompanionInstructionViewController *)self _unlockRequiredMessage];
  _errorAcknowledgeButtonTitle = [(NPKSetExpressPassCompanionInstructionViewController *)self _errorAcknowledgeButtonTitle];
  [(NPKBridgeInstructionViewController *)self handleErrorWithTitle:_unlockRequiredTitle message:_unlockRequiredMessage acknowledgeButtonTitle:_errorAcknowledgeButtonTitle];
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
  messageType = [(NPKSetExpressPassCompanionInstructionViewController *)self messageType];
  cardName = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
  v5 = cardName;
  if (!messageType)
  {

    if (!v5)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      paymentCardType = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
      v9 = @"INSTRUCTION_ENABLE_MESSAGE_NO_CARD_NAME";
      goto LABEL_10;
    }

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    paymentCardType2 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
    v11 = @"INSTRUCTION_ENABLE_MESSAGE";
LABEL_8:
    v12 = sub_15D48(v11, paymentCardType2);
    v13 = [v7 localizedStringForKey:v12 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    cardName2 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
    v15 = [NSString stringWithFormat:v13, cardName2];

    goto LABEL_11;
  }

  if (cardName)
  {
    paymentCardType3 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];

    if (paymentCardType3 != 3)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      paymentCardType2 = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
      v11 = @"INSTRUCTION_DISABLE_MESSAGE";
      goto LABEL_8;
    }
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  paymentCardType = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
  v9 = @"INSTRUCTION_DISABLE_MESSAGE_NO_CARD_NAME";
LABEL_10:
  v12 = sub_15D48(v9, paymentCardType);
  v15 = [v7 localizedStringForKey:v12 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
LABEL_11:

  return v15;
}

- (id)_errorTitle
{
  messageType = [(NPKSetExpressPassCompanionInstructionViewController *)self messageType];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  paymentCardType = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
  if (messageType)
  {
    v6 = @"DISABLE_ERROR_TITLE";
  }

  else
  {
    v6 = @"SET_CARD_ERROR_TITLE";
  }

  v7 = sub_15D48(v6, paymentCardType);
  v8 = [v4 localizedStringForKey:v7 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v8;
}

- (id)_errorMessage
{
  messageType = [(NPKSetExpressPassCompanionInstructionViewController *)self messageType];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  paymentCardType = [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType];
  if (messageType)
  {
    v6 = sub_15D48(@"DISABLE_ERROR_MESSAGE", paymentCardType);
    v7 = [v4 localizedStringForKey:v6 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  }

  else
  {
    v8 = sub_15D48(@"SET_CARD_ERROR_MESSAGE_NO_CARD_NAME", paymentCardType);
    v7 = [v4 localizedStringForKey:v8 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

    cardName = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];

    if (!cardName)
    {
      goto LABEL_6;
    }

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = sub_15D48(@"SET_CARD_ERROR_MESSAGE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
    v10 = [v4 localizedStringForKey:v6 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    cardName2 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
    v12 = [NSString stringWithFormat:v10, cardName2];

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
  cardName = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];

  [NSBundle bundleForClass:objc_opt_class()];
  if (cardName)
    v4 = {;
    v5 = sub_15D48(@"SET_CARD_UNLOCK_REQUIRED_MESSAGE", [(NPKSetExpressPassCompanionInstructionViewController *)self paymentCardType]);
    v6 = [v4 localizedStringForKey:v5 value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    cardName2 = [(NPKSetExpressPassCompanionInstructionViewController *)self cardName];
    v8 = [NSString stringWithFormat:v6, cardName2];
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