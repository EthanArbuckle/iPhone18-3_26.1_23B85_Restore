@interface MFCorecipientsIndicatorAtom
- (MFCorecipientsIndicatorAtom)init;
- (MFCorecipientsIndicatorAtom)initWithRecipients:(id)a3;
- (MFCorecipientsIndicatorAtomDelegate)delegate;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation MFCorecipientsIndicatorAtom

- (MFCorecipientsIndicatorAtom)init
{
  v3.receiver = self;
  v3.super_class = MFCorecipientsIndicatorAtom;
  return [(MFModernAtomView *)&v3 initWithFrame:0 presentationOptions:2 separatorStyle:0 wrappingSupported:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (MFCorecipientsIndicatorAtom)initWithRecipients:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFCorecipientsIndicatorAtom;
  v5 = [(MFModernAtomView *)&v8 initWithFrame:0 presentationOptions:2 separatorStyle:0 wrappingSupported:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(MFCorecipientsIndicatorAtom *)v5 setRecipients:v4];
  }

  return v6;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8 = a4;
  v6 = [a3 anyObject];
  [v6 locationInView:self];
  v7 = [(MFCorecipientsIndicatorAtom *)self hitTest:v8 withEvent:?];

  if (!v7)
  {
    self->_touchesWereCancelled = 1;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!self->_touchesWereCancelled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [(MFCorecipientsIndicatorAtom *)self recipients];
    [WeakRetained didTapShowCorecipientsForIndicatorAtom:self recipients:v8];
  }

  [(MFModernAtomView *)self setSelected:0];
}

- (MFCorecipientsIndicatorAtomDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end