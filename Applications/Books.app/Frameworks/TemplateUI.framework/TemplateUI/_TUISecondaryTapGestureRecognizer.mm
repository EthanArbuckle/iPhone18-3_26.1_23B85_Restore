@interface _TUISecondaryTapGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _TUISecondaryTapGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  state = [(_TUISecondaryTapGestureRecognizer *)self state];
  v6 = eventCopy;
  if (!state)
  {
    v7 = eventCopy;
    buttonMask = [v7 buttonMask];
    v9 = [v7 buttonMask] == &dword_0 + 1 && objc_msgSend(v7, "modifierFlags") == &loc_40000;
    v10 = buttonMask == &dword_0 + 2 || v9;

    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 5;
    }

    [(_TUISecondaryTapGestureRecognizer *)self setState:v11];
    v6 = eventCopy;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(_TUISecondaryTapGestureRecognizer *)self state:moved]== &dword_0 + 1 || [(_TUISecondaryTapGestureRecognizer *)self state]== &dword_0 + 2)
  {

    [(_TUISecondaryTapGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(_TUISecondaryTapGestureRecognizer *)self state:ended]== &dword_0 + 1 || [(_TUISecondaryTapGestureRecognizer *)self state]== &dword_0 + 2)
  {

    [(_TUISecondaryTapGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(_TUISecondaryTapGestureRecognizer *)self state:cancelled]> 0)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(_TUISecondaryTapGestureRecognizer *)self setState:v5];
}

@end