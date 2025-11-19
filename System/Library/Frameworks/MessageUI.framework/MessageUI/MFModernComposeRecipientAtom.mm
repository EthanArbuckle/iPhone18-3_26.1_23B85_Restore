@interface MFModernComposeRecipientAtom
- (MFComposeRecipientAtomDelegate)delegate;
- (MFModernComposeRecipientAtom)initWithFrame:(CGRect)a3 recipient:(id)a4 presentationOptions:(unint64_t)a5;
- (id)keyCommands;
- (void)handleTouchAndHold;
- (void)moveLeft:(id)a3;
- (void)moveRight:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation MFModernComposeRecipientAtom

- (MFModernComposeRecipientAtom)initWithFrame:(CGRect)a3 recipient:(id)a4 presentationOptions:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = MFModernComposeRecipientAtom;
  v13 = [(MFModernAtomView *)&v17 initWithFrame:a5 presentationOptions:0 separatorStyle:0 wrappingSupported:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recipient, a4);
    v15 = [v12 displayString];
    [(MFModernAtomView *)v14 setTitle:v15];
  }

  return v14;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  *(self + 560) &= ~2u;
  *(self + 560) &= ~1u;
  if ([(MFModernAtomView *)self isSelected:a3])
  {
    *(self + 560) |= 1u;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained selectComposeRecipientAtom:self];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v9 = a4;
  v6 = [a3 anyObject];
  [v6 locationInView:self];
  v7 = [(MFModernComposeRecipientAtom *)self hitTest:v9 withEvent:?];

  if (!v7)
  {
    *(self + 560) |= 2u;
    if ((*(self + 560) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained deselectComposeRecipientAtom:self];
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  *(self + 560) |= 2u;
  if ((*(self + 560) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectComposeRecipientAtom:self];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ((*(self + 560) & 1) != 0 && (*(self + 560) & 2) == 0)
  {
    [(MFModernComposeRecipientAtom *)self handleTouchAndHold];
  }
}

- (void)handleTouchAndHold
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomShowPersonCard:self];
}

- (id)keyCommands
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = keyCommands_keyCommands_1;
  if (!keyCommands_keyCommands_1)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_moveLeft_];
    v14[0] = v5;
    v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_moveRight_];
    v14[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v4 initWithArray:v7];

    v13.receiver = self;
    v13.super_class = MFModernComposeRecipientAtom;
    v9 = [(MFModernComposeRecipientAtom *)&v13 keyCommands];
    [v8 addObjectsFromArray:v9];

    v10 = [v8 copy];
    v11 = keyCommands_keyCommands_1;
    keyCommands_keyCommands_1 = v10;

    v3 = keyCommands_keyCommands_1;
  }

  return v3;
}

- (void)moveLeft:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomSelectPrevious:self];
}

- (void)moveRight:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomSelectNext:self];
}

- (MFComposeRecipientAtomDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end