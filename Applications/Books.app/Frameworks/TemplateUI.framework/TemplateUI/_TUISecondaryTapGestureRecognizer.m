@interface _TUISecondaryTapGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _TUISecondaryTapGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v12 = a4;
  v5 = [(_TUISecondaryTapGestureRecognizer *)self state];
  v6 = v12;
  if (!v5)
  {
    v7 = v12;
    v8 = [v7 buttonMask];
    v9 = [v7 buttonMask] == &dword_0 + 1 && objc_msgSend(v7, "modifierFlags") == &loc_40000;
    v10 = v8 == &dword_0 + 2 || v9;

    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 5;
    }

    [(_TUISecondaryTapGestureRecognizer *)self setState:v11];
    v6 = v12;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([(_TUISecondaryTapGestureRecognizer *)self state:a3]== &dword_0 + 1 || [(_TUISecondaryTapGestureRecognizer *)self state]== &dword_0 + 2)
  {

    [(_TUISecondaryTapGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(_TUISecondaryTapGestureRecognizer *)self state:a3]== &dword_0 + 1 || [(_TUISecondaryTapGestureRecognizer *)self state]== &dword_0 + 2)
  {

    [(_TUISecondaryTapGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(_TUISecondaryTapGestureRecognizer *)self state:a3]> 0)
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