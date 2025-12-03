@interface AKTextView
- (AKTextViewKeyCommandDelegate)keyCommandDelegate;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isBlockedAction:(SEL)action;
- (id)keyCommands;
- (id)textInputTraits;
- (void)handleBackTabCommand:(id)command;
- (void)handleTabCommand:(id)command;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
@end

@implementation AKTextView

- (id)keyCommands
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0 action:sel_handleTabCommand_];
  v6[0] = v2;
  v3 = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0x20000 action:sel_handleBackTabCommand_];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)handleTabCommand:(id)command
{
  keyCommandDelegate = [(AKTextView *)self keyCommandDelegate];
  if (objc_opt_respondsToSelector())
  {
    [keyCommandDelegate handleTabCommand];
  }
}

- (void)handleBackTabCommand:(id)command
{
  keyCommandDelegate = [(AKTextView *)self keyCommandDelegate];
  if (objc_opt_respondsToSelector())
  {
    [keyCommandDelegate handleBackTabCommand];
  }
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  if (ended != 1)
  {
    v8.receiver = self;
    v8.super_class = AKTextView;
    if ([(AKTextView *)&v8 respondsToSelector:sel_motionEnded_withEvent_])
    {
      v7.receiver = self;
      v7.super_class = AKTextView;
      [(AKTextView *)&v7 motionEnded:ended withEvent:eventCopy];
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = AKTextView;
  canBecomeFirstResponder = [(AKTextView *)&v5 canBecomeFirstResponder];
  [(AKTextView *)self setAutocorrectionType:sub_23F46A014()];
  [(AKTextView *)self setSpellCheckingType:sub_23F46A014()];
  return canBecomeFirstResponder;
}

- (id)textInputTraits
{
  defaultTextInputTraits = [MEMORY[0x277D75C00] defaultTextInputTraits];
  if (sub_23F46A014())
  {
    [defaultTextInputTraits setShortcutConversionType:1];
    [defaultTextInputTraits setDisablePrediction:1];
    [defaultTextInputTraits setHidePrediction:1];
  }

  return defaultTextInputTraits;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(AKTextView *)self isBlockedAction:action])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AKTextView;
    v7 = [(AKTextView *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (BOOL)isBlockedAction:(SEL)action
{
  isFirstResponder = [(AKTextView *)self isFirstResponder];
  if (isFirstResponder)
  {
    isFirstResponder = sub_23F46A014();
    if (isFirstResponder)
    {
      LOBYTE(isFirstResponder) = sel_cut_ == action || sel_copy_ == action || sel_paste_ == action;
    }
  }

  return isFirstResponder;
}

- (AKTextViewKeyCommandDelegate)keyCommandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyCommandDelegate);

  return WeakRetained;
}

@end