@interface _TUIToggleViewState
- (_TUIToggleViewState)initWithIsOn:(BOOL)a3;
@end

@implementation _TUIToggleViewState

- (_TUIToggleViewState)initWithIsOn:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TUIToggleViewState;
  result = [(_TUIToggleViewState *)&v5 init];
  if (result)
  {
    result->_isOn = a3;
  }

  return result;
}

@end