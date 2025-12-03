@interface MFModernComposeRecipientAtom
- (MFComposeRecipientAtomDelegate)delegate;
- (MFModernComposeRecipientAtom)initWithFrame:(CGRect)frame recipient:(id)recipient presentationOptions:(unint64_t)options;
- (id)keyCommands;
- (void)handleTouchAndHold;
- (void)moveLeft:(id)left;
- (void)moveRight:(id)right;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation MFModernComposeRecipientAtom

- (MFModernComposeRecipientAtom)initWithFrame:(CGRect)frame recipient:(id)recipient presentationOptions:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  recipientCopy = recipient;
  v17.receiver = self;
  v17.super_class = MFModernComposeRecipientAtom;
  height = [(MFModernAtomView *)&v17 initWithFrame:options presentationOptions:0 separatorStyle:0 wrappingSupported:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_recipient, recipient);
    displayString = [recipientCopy displayString];
    [(MFModernAtomView *)v14 setTitle:displayString];
  }

  return v14;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  *(self + 560) &= ~2u;
  *(self + 560) &= ~1u;
  if ([(MFModernAtomView *)self isSelected:began])
  {
    *(self + 560) |= 1u;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained selectComposeRecipientAtom:self];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  anyObject = [moved anyObject];
  [anyObject locationInView:self];
  v7 = [(MFModernComposeRecipientAtom *)self hitTest:eventCopy withEvent:?];

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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  *(self + 560) |= 2u;
  if ((*(self + 560) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectComposeRecipientAtom:self];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
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
    keyCommands = [(MFModernComposeRecipientAtom *)&v13 keyCommands];
    [v8 addObjectsFromArray:keyCommands];

    v10 = [v8 copy];
    v11 = keyCommands_keyCommands_1;
    keyCommands_keyCommands_1 = v10;

    v3 = keyCommands_keyCommands_1;
  }

  return v3;
}

- (void)moveLeft:(id)left
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeRecipientAtomSelectPrevious:self];
}

- (void)moveRight:(id)right
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