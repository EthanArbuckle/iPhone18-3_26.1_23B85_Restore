@interface _TUITextFieldViewState
- (_TUITextFieldViewState)initWithText:(id)a3;
@end

@implementation _TUITextFieldViewState

- (_TUITextFieldViewState)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUITextFieldViewState;
  v6 = [(_TUITextFieldViewState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, a3);
  }

  return v7;
}

@end