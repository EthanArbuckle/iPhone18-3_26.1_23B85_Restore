@interface MFCorecipientsIndicatorAtom
- (MFCorecipientsIndicatorAtom)init;
- (MFCorecipientsIndicatorAtom)initWithRecipients:(id)recipients;
- (MFCorecipientsIndicatorAtomDelegate)delegate;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation MFCorecipientsIndicatorAtom

- (MFCorecipientsIndicatorAtom)init
{
  v3.receiver = self;
  v3.super_class = MFCorecipientsIndicatorAtom;
  return [(MFModernAtomView *)&v3 initWithFrame:0 presentationOptions:2 separatorStyle:0 wrappingSupported:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (MFCorecipientsIndicatorAtom)initWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v8.receiver = self;
  v8.super_class = MFCorecipientsIndicatorAtom;
  v5 = [(MFModernAtomView *)&v8 initWithFrame:0 presentationOptions:2 separatorStyle:0 wrappingSupported:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(MFCorecipientsIndicatorAtom *)v5 setRecipients:recipientsCopy];
  }

  return v6;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  anyObject = [moved anyObject];
  [anyObject locationInView:self];
  v7 = [(MFCorecipientsIndicatorAtom *)self hitTest:eventCopy withEvent:?];

  if (!v7)
  {
    self->_touchesWereCancelled = 1;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (!self->_touchesWereCancelled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    recipients = [(MFCorecipientsIndicatorAtom *)self recipients];
    [WeakRetained didTapShowCorecipientsForIndicatorAtom:self recipients:recipients];
  }

  [(MFModernAtomView *)self setSelected:0];
}

- (MFCorecipientsIndicatorAtomDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end