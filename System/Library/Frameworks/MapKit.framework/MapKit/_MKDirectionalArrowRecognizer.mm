@interface _MKDirectionalArrowRecognizer
- (_MKDirectionalArrowRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)handleArrowMask:(int64_t)mask;
- (void)keyDown:(id)down;
- (void)keyUp:(id)up;
- (void)setState:(int64_t)state;
@end

@implementation _MKDirectionalArrowRecognizer

- (void)keyUp:(id)up
{
  self->_modifierFlags = 0;
  v4 = [up key];
  arrows = self->_arrows;
  v7 = v4;
  keyCode = [v4 keyCode];
  if (keyCode > 79)
  {
    if (keyCode == 80)
    {
      arrows &= ~8uLL;
      goto LABEL_13;
    }

    if (keyCode != 81)
    {
      if (keyCode != 82)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    arrows &= ~4uLL;
    goto LABEL_13;
  }

  switch(keyCode)
  {
    case '-':
      goto LABEL_11;
    case '.':
LABEL_10:
      arrows &= ~2uLL;
      break;
    case 'O':
      arrows &= ~0x10uLL;
      break;
  }

LABEL_13:
  [(_MKDirectionalArrowRecognizer *)self handleArrowMask:arrows];
}

- (void)keyDown:(id)down
{
  v6 = [down key];
  self->_modifierFlags = [v6 modifierFlags];
  arrows = self->_arrows;
  keyCode = [v6 keyCode];
  if (keyCode > 79)
  {
    if (keyCode == 80)
    {
      arrows |= 8uLL;
      goto LABEL_13;
    }

    if (keyCode != 81)
    {
      if (keyCode != 82)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    arrows |= 4uLL;
    goto LABEL_13;
  }

  switch(keyCode)
  {
    case '-':
      goto LABEL_11;
    case '.':
LABEL_10:
      arrows |= 2uLL;
      break;
    case 'O':
      arrows |= 0x10uLL;
      break;
  }

LABEL_13:
  [(_MKDirectionalArrowRecognizer *)self handleArrowMask:arrows];
}

- (void)handleArrowMask:(int64_t)mask
{
  arrows = self->_arrows;
  self->_arrows = mask;
  self->_lastArrows = arrows;
  state = [(_MKDirectionalArrowRecognizer *)self state];
  if (mask)
  {
    if (state != 1 && [(_MKDirectionalArrowRecognizer *)self state]!= 2)
    {
      [(_MKDirectionalArrowRecognizer *)self setState:1];
    }

    [(_MKDirectionalArrowRecognizer *)self setState:2];
  }

  else if (state == 1 || [(_MKDirectionalArrowRecognizer *)self state]== 2)
  {
    [(_MKDirectionalArrowRecognizer *)self setState:3];
    self->_lastArrows = 0;
  }
}

- (void)setState:(int64_t)state
{
  self->_state = state;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_action)
  {
    action = self->_action;
  }

  else
  {
    action = 0;
  }

  v6 = WeakRetained;
  [WeakRetained performSelector:action withObject:self];
}

- (_MKDirectionalArrowRecognizer)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = _MKDirectionalArrowRecognizer;
  v7 = [(_MKDirectionalArrowRecognizer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
    v10 = v8;
  }

  return v8;
}

@end