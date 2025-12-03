@interface _SFTelephonyNavigationMitigationPolicy
- (BOOL)policyAppliesToURL:(id)l;
- (SFDialogPresenting)dialogPresenter;
- (void)_checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded;
- (void)_handleInput:(int64_t)input;
- (void)handleNavigationToURL:(id)l completionHandler:(id)handler;
@end

@implementation _SFTelephonyNavigationMitigationPolicy

- (BOOL)policyAppliesToURL:(id)l
{
  lCopy = l;
  if ([lCopy isFaceTimeURL] & 1) != 0 || (objc_msgSend(lCopy, "isFaceTimeAudioURL"))
  {
    isFaceTimeMultiwayURL = 1;
  }

  else
  {
    isFaceTimeMultiwayURL = [lCopy isFaceTimeMultiwayURL];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    isTelephonyURL = [lCopy isTelephonyURL];
LABEL_10:
    v5 = isTelephonyURL | isFaceTimeMultiwayURL;
    goto LABEL_11;
  }

  if (([lCopy isDefaultCallingAppURL] & 1) == 0)
  {
    isTelephonyURL = [lCopy isForceTelephonyURL];
    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:

  return v5 & 1;
}

- (void)handleNavigationToURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  [(_SFTelephonyNavigationMitigationPolicy *)self _checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded];
  classification = self->_classification;
  if (classification >= 2)
  {
    if (classification == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
      v7 = [MEMORY[0x1E69B1B00] telephonyNavigationDialogWithCompletionHandler:handlerCopy];
      [WeakRetained presentDialog:v7 sender:self];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)_checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded
{
  if (self->_dateUserLastDeclined)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = [(NSDate *)self->_dateUserLastDeclined dateByAddingTimeInterval:60.0];
    v5 = [date compare:v4];

    if (v5 != -1)
    {
      dateUserLastDeclined = self->_dateUserLastDeclined;
      self->_dateUserLastDeclined = 0;

      [(_SFTelephonyNavigationMitigationPolicy *)self _handleInput:2];
    }
  }
}

- (void)_handleInput:(int64_t)input
{
  [(_SFTelephonyNavigationMitigationPolicy *)self _checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded];
  classification = self->_classification;
  v6 = 2 * ((input - 1) > 1);
  v7 = (input - 3) < 0xFFFFFFFFFFFFFFFELL;
  if (classification)
  {
    v7 = self->_classification;
  }

  if (classification != 1)
  {
    v6 = v7;
  }

  if (classification == 2)
  {
    v8 = 2 * (input != 1);
  }

  else
  {
    v8 = v6;
  }

  self->_classification = v8;
  if (!input)
  {
    date = [MEMORY[0x1E695DF00] date];
    dateUserLastDeclined = self->_dateUserLastDeclined;
    self->_dateUserLastDeclined = date;
  }
}

- (SFDialogPresenting)dialogPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);

  return WeakRetained;
}

@end