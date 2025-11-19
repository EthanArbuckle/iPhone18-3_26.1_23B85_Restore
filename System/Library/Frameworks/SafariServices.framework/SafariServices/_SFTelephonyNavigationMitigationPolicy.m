@interface _SFTelephonyNavigationMitigationPolicy
- (BOOL)policyAppliesToURL:(id)a3;
- (SFDialogPresenting)dialogPresenter;
- (void)_checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded;
- (void)_handleInput:(int64_t)a3;
- (void)handleNavigationToURL:(id)a3 completionHandler:(id)a4;
@end

@implementation _SFTelephonyNavigationMitigationPolicy

- (BOOL)policyAppliesToURL:(id)a3
{
  v3 = a3;
  if ([v3 isFaceTimeURL] & 1) != 0 || (objc_msgSend(v3, "isFaceTimeAudioURL"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isFaceTimeMultiwayURL];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [v3 isTelephonyURL];
LABEL_10:
    v5 = v6 | v4;
    goto LABEL_11;
  }

  if (([v3 isDefaultCallingAppURL] & 1) == 0)
  {
    v6 = [v3 isForceTelephonyURL];
    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:

  return v5 & 1;
}

- (void)handleNavigationToURL:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  [(_SFTelephonyNavigationMitigationPolicy *)self _checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded];
  classification = self->_classification;
  if (classification >= 2)
  {
    if (classification == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
      v7 = [MEMORY[0x1E69B1B00] telephonyNavigationDialogWithCompletionHandler:v8];
      [WeakRetained presentDialog:v7 sender:self];
    }
  }

  else
  {
    v8[2](v8, 1);
  }
}

- (void)_checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded
{
  if (self->_dateUserLastDeclined)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = [(NSDate *)self->_dateUserLastDeclined dateByAddingTimeInterval:60.0];
    v5 = [v3 compare:v4];

    if (v5 != -1)
    {
      dateUserLastDeclined = self->_dateUserLastDeclined;
      self->_dateUserLastDeclined = 0;

      [(_SFTelephonyNavigationMitigationPolicy *)self _handleInput:2];
    }
  }
}

- (void)_handleInput:(int64_t)a3
{
  [(_SFTelephonyNavigationMitigationPolicy *)self _checkIfSuspiciousClassificationHasExpiredAndTransitionIfNeeded];
  classification = self->_classification;
  v6 = 2 * ((a3 - 1) > 1);
  v7 = (a3 - 3) < 0xFFFFFFFFFFFFFFFELL;
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
    v8 = 2 * (a3 != 1);
  }

  else
  {
    v8 = v6;
  }

  self->_classification = v8;
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    dateUserLastDeclined = self->_dateUserLastDeclined;
    self->_dateUserLastDeclined = v9;
  }
}

- (SFDialogPresenting)dialogPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);

  return WeakRetained;
}

@end