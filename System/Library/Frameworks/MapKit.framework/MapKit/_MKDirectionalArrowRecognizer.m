@interface _MKDirectionalArrowRecognizer
- (_MKDirectionalArrowRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)handleArrowMask:(int64_t)a3;
- (void)keyDown:(id)a3;
- (void)keyUp:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation _MKDirectionalArrowRecognizer

- (void)keyUp:(id)a3
{
  self->_modifierFlags = 0;
  v4 = [a3 key];
  arrows = self->_arrows;
  v7 = v4;
  v6 = [v4 keyCode];
  if (v6 > 79)
  {
    if (v6 == 80)
    {
      arrows &= ~8uLL;
      goto LABEL_13;
    }

    if (v6 != 81)
    {
      if (v6 != 82)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    arrows &= ~4uLL;
    goto LABEL_13;
  }

  switch(v6)
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

- (void)keyDown:(id)a3
{
  v6 = [a3 key];
  self->_modifierFlags = [v6 modifierFlags];
  arrows = self->_arrows;
  v5 = [v6 keyCode];
  if (v5 > 79)
  {
    if (v5 == 80)
    {
      arrows |= 8uLL;
      goto LABEL_13;
    }

    if (v5 != 81)
    {
      if (v5 != 82)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    arrows |= 4uLL;
    goto LABEL_13;
  }

  switch(v5)
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

- (void)handleArrowMask:(int64_t)a3
{
  arrows = self->_arrows;
  self->_arrows = a3;
  self->_lastArrows = arrows;
  v6 = [(_MKDirectionalArrowRecognizer *)self state];
  if (a3)
  {
    if (v6 != 1 && [(_MKDirectionalArrowRecognizer *)self state]!= 2)
    {
      [(_MKDirectionalArrowRecognizer *)self setState:1];
    }

    [(_MKDirectionalArrowRecognizer *)self setState:2];
  }

  else if (v6 == 1 || [(_MKDirectionalArrowRecognizer *)self state]== 2)
  {
    [(_MKDirectionalArrowRecognizer *)self setState:3];
    self->_lastArrows = 0;
  }
}

- (void)setState:(int64_t)a3
{
  self->_state = a3;
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

- (_MKDirectionalArrowRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _MKDirectionalArrowRecognizer;
  v7 = [(_MKDirectionalArrowRecognizer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_action = v9;
    v10 = v8;
  }

  return v8;
}

@end